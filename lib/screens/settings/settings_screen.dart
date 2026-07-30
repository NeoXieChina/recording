import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:provider/provider.dart';
import 'package:recording/constants.dart';
import 'package:recording/data/datasources/backup_service.dart';
import 'package:recording/providers/settings_provider.dart';
import 'package:recording/services/calendar_service.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('设置')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildBackupSection(context),
            const SizedBox(height: 24),
            _buildAlertSection(context),
            const SizedBox(height: 24),
            _buildAboutSection(context),
          ],
        ),
      ),
    );
  }

  Widget _buildBackupSection(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.cloud_upload,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(width: 8),
                Text('备份与恢复', style: Theme.of(context).textTheme.titleMedium),
              ],
            ),
            const SizedBox(height: 16),
            Consumer<SettingsProvider>(
              builder: (context, provider, _) {
                return Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: FilledButton.icon(
                        onPressed: provider.isExporting
                            ? null
                            : () => _exportBackup(context, provider),
                        icon: provider.isExporting
                            ? const SizedBox(
                                width: 16,
                                height: 16,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                ),
                              )
                            : const Icon(Icons.upload_file),
                        label: Text(provider.isExporting ? '导出中...' : '一键导出'),
                        style: FilledButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 12),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        onPressed: provider.isImporting
                            ? null
                            : () => _importBackup(context, provider),
                        icon: provider.isImporting
                            ? const SizedBox(
                                width: 16,
                                height: 16,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                ),
                              )
                            : const Icon(Icons.folder_open),
                        label: Text(provider.isImporting ? '恢复中...' : '一键恢复'),
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 12),
                        ),
                      ),
                    ),
                    if (provider.isImporting) ...[
                      const SizedBox(height: 12),
                      LinearProgressIndicator(value: provider.importProgress),
                    ],
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAlertSection(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.notifications_active,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(width: 8),
                Text('智能预警', style: Theme.of(context).textTheme.titleMedium),
              ],
            ),
            const SizedBox(height: 16),
            Consumer<SettingsProvider>(
              builder: (context, provider, _) {
                return Column(
                  children: [
                    SwitchListTile(
                      title: const Text('日历同步'),
                      subtitle: const Text('开启后将请求日历权限'),
                      value: provider.calendarSync,
                      onChanged: (v) async {
                        if (v) {
                          await _requestCalendarPermission(context, provider);
                        } else {
                          provider.setCalendarSync(false);
                        }
                      },
                      secondary: const Icon(Icons.calendar_today),
                    ),
                    const SizedBox(height: 8),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        onPressed: () => _addTestCalendarEvent(context),
                        icon: const Icon(Icons.add_alert),
                        label: const Text('添加测试日历事件'),
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 12),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    ListTile(
                      leading: const Icon(Icons.timer),
                      title: const Text('提前提醒天数'),
                      trailing: DropdownButton<int>(
                        value: provider.alertDays,
                        items: List.generate(
                          AppConstants.maxAlertDays,
                          (i) => DropdownMenuItem(
                            value: i + 1,
                            child: Text('${i + 1}天'),
                          ),
                        ),
                        onChanged: (v) {
                          if (v != null) provider.setAlertDays(v);
                        },
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAboutSection(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.info, color: Theme.of(context).colorScheme.primary),
                const SizedBox(width: 8),
                Text('关于', style: Theme.of(context).textTheme.titleMedium),
              ],
            ),
            const SizedBox(height: 12),
            ListTile(
              title: const Text('应用名称'),
              trailing: Text(AppConstants.appName),
            ),
            const ListTile(title: Text('版本'), trailing: Text('1.0.0')),
          ],
        ),
      ),
    );
  }

  Future<void> _exportBackup(
    BuildContext context,
    SettingsProvider provider,
  ) async {
    provider.setExporting(true);
    try {
      // 先获取备份数据
      final backupData = await BackupService().exportBackupToBytes();

      // 获取下载目录作为默认初始目录
      Directory? downloadsDir;
      try {
        downloadsDir = await getDownloadsDirectory();
      } catch (e) {
        // 忽略错误，使用null
      }

      // 让用户选择保存位置
      final savePath = await FilePicker.saveFile(
        dialogTitle: '保存备份文件',
        fileName:
            'backup_${DateTime.now().toIso8601String().replaceAll(':', '-').replaceAll('.', '-')}.zip',
        allowedExtensions: ['zip'],
        type: FileType.custom,
        initialDirectory: downloadsDir?.path,
        bytes: backupData,
      );

      if (savePath == null) {
        provider.setExporting(false);
        return; // 用户取消了
      }

      provider.setExporting(false);
      if (context.mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('备份导出成功：$savePath')));
      }
    } catch (e) {
      provider.setExporting(false);
      if (context.mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('导出失败：$e')));
      }
    }
  }

  Future<void> _importBackup(
    BuildContext context,
    SettingsProvider provider,
  ) async {
    try {
      final result = await FilePicker.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['zip', 'itembackup'],
      );
      if (result == null || result.files.isEmpty) return;

      final filePath = result.files.single.path;
      if (filePath == null) return;

      provider.setImporting(true, progress: 0.0);
      final count = await BackupService().importBackup(filePath);
      provider.setImporting(false);

      if (context.mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('恢复成功，共$count条物品')));
      }
    } catch (e) {
      provider.setImporting(false);
      if (context.mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('恢复失败：$e')));
      }
    }
  }

  Future<void> _requestCalendarPermission(
    BuildContext context,
    SettingsProvider provider,
  ) async {
    if (!context.mounted) return;

    // 检查当前权限状态
    final status = await Permission.calendarFullAccess.status;
    if (status.isGranted) {
      // 权限已授予，直接开启同步
      provider.setCalendarSync(true);
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('日历权限已授予，日历同步已开启'),
            duration: Duration(seconds: 2),
          ),
        );
      }
      return;
    }

    // 显示权限请求对话框
    if (!context.mounted) return;
    final result = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('日历权限请求'),
        content: const Text('需要访问日历权限来同步物品提醒。是否允许？'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('取消'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('允许'),
          ),
        ],
      ),
    );

    if (result == true) {
      // 请求日历权限
      final permissionStatus = await Permission.calendarFullAccess.request();
      if (permissionStatus.isGranted) {
        // 检查是否有日历账户
        var hasAccount = await CalendarService.hasCalendarAccount();
        if (!hasAccount) {
          // 尝试创建本地日历
          final created = await CalendarService.createCalendar();
          if (!created) {
            provider.setCalendarSync(false);
            if (!context.mounted) return;
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('日历权限已授予，但无法创建日历账户。请检查系统日历设置'),
                duration: Duration(seconds: 3),
              ),
            );
            return;
          }

          // 给系统一点时间处理日历创建
          await Future.delayed(const Duration(milliseconds: 500));

          // 再次检查是否有日历账户
          hasAccount = await CalendarService.hasCalendarAccount();
          if (!hasAccount) {
            if (context.mounted) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('日历账户创建成功，但系统可能需要一些时间生效'),
                  duration: Duration(seconds: 3),
                ),
              );
            }
            // 即使hasAccount为false，也继续尝试添加事件
          } else if (context.mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('日历权限已授予，已创建本地日历账户'),
                duration: Duration(seconds: 2),
              ),
            );
          }
        }

        provider.setCalendarSync(true);
        // 添加测试日历事件
        final now = DateTime.now();
        final startTime = DateTime(
          now.year,
          now.month,
          now.day,
          now.hour,
          now.minute + 5,
        );
        final endTime = startTime.add(const Duration(hours: 1));
        final success = await CalendarService.addEvent(
          title: '测试日历事件',
          description: '这是一个测试事件，用于验证日历功能',
          location: '应用内',
          startTime: startTime,
          endTime: endTime,
          reminderMinutes: 5,
        );
        if (!context.mounted) return;
        if (success) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('日历权限已授予，日历同步已开启，已添加测试事件'),
              duration: Duration(seconds: 2),
            ),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('日历权限已授予，但无法添加日历事件。请检查系统日历设置'),
              duration: Duration(seconds: 3),
            ),
          );
        }
      } else if (permissionStatus.isPermanentlyDenied) {
        // 权限被永久拒绝，提示用户去设置页面
        if (!context.mounted) {
          provider.setCalendarSync(false);
          return;
        }
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('权限被永久拒绝'),
            content: const Text('日历权限被永久拒绝，请在系统设置中手动开启权限。'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('取消'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  openAppSettings();
                },
                child: const Text('去设置'),
              ),
            ],
          ),
        );
        provider.setCalendarSync(false);
      } else {
        // 权限被拒绝
        if (!context.mounted) {
          provider.setCalendarSync(false);
          return;
        }
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('日历权限被拒绝，无法开启日历同步'),
            duration: Duration(seconds: 2),
          ),
        );
        provider.setCalendarSync(false);
      }
    } else {
      provider.setCalendarSync(false);
    }
  }

  Future<void> _addTestCalendarEvent(BuildContext context) async {
    if (!context.mounted) return;

    // 检查日历权限
    final status = await Permission.calendarFullAccess.status;
    if (!status.isGranted) {
      // 请求权限
      final permissionStatus = await Permission.calendarFullAccess.request();
      if (!permissionStatus.isGranted) {
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('需要日历权限才能添加测试事件'),
              duration: Duration(seconds: 2),
            ),
          );
        }
        return;
      }
    }

    // 检查是否有日历账户
    var hasAccount = await CalendarService.hasCalendarAccount();
    if (!hasAccount) {
      // 尝试创建本地日历
      final created = await CalendarService.createCalendar();
      if (!created) {
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('无法创建日历账户，请检查系统日历设置'),
              duration: Duration(seconds: 3),
            ),
          );
        }
        return;
      }

      // 给系统一点时间处理日历创建
      await Future.delayed(const Duration(milliseconds: 500));

      // 再次检查是否有日历账户
      hasAccount = await CalendarService.hasCalendarAccount();
      if (!hasAccount) {
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('日历账户创建成功，但系统可能需要一些时间生效'),
              duration: Duration(seconds: 3),
            ),
          );
        }
        // 即使hasAccount为false，也尝试添加事件，因为日历可能已创建但查询需要时间
      } else if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('已创建本地日历账户'),
            duration: Duration(seconds: 2),
          ),
        );
      }
    }

    // 添加测试日历事件
    final now = DateTime.now();
    final startTime = DateTime(
      now.year,
      now.month,
      now.day,
      now.hour,
      now.minute + 10,
    );
    final endTime = startTime.add(const Duration(hours: 1));

    final success = await CalendarService.addEvent(
      title: '物品提醒测试事件',
      description: '这是一个测试事件，用于验证日历功能是否正常工作',
      location: '物品提醒应用',
      startTime: startTime,
      endTime: endTime,
      reminderMinutes: 5,
    );

    if (!context.mounted) return;

    if (success) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('测试日历事件添加成功！请查看系统日历'),
          duration: Duration(seconds: 3),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('添加测试事件失败。请检查日历权限和系统日历设置'),
          duration: Duration(seconds: 3),
        ),
      );
    }
  }
}
