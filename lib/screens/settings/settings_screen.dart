import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recording/constants.dart';
import 'package:recording/data/datasources/backup_service.dart';
import 'package:recording/providers/settings_provider.dart';

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
      final backupPath = await BackupService().exportBackup();
      provider.setExporting(false);
      if (context.mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('备份导出成功：$backupPath')));
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
        allowedExtensions: ['itembackup', 'zip'],
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
      provider.setCalendarSync(true);
      // 在实际应用中，这里应该调用平台特定的权限API
      // 例如：await Permission.calendar.request();
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('日历权限已请求，请检查系统设置'),
            duration: Duration(seconds: 2),
          ),
        );
      }
    } else {
      provider.setCalendarSync(false);
    }
  }
}
