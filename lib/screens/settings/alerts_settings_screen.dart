import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:provider/provider.dart';
import 'package:recording/providers/settings_provider.dart';
import 'package:recording/services/calendar_service.dart';
import 'package:recording/services/notification_service.dart';
import 'package:recording/screens/settings/alert_days_selection_screen.dart';

class AlertsSettingsScreen extends StatefulWidget {
  const AlertsSettingsScreen({super.key});

  @override
  State<AlertsSettingsScreen> createState() => _AlertsSettingsScreenState();
}

class _AlertsSettingsScreenState extends State<AlertsSettingsScreen> {


  // 构建提醒天数选择器 - 显示当前值并允许点击导航到选择页面
  Widget _buildAlertDaysSelector(BuildContext context, SettingsProvider provider) {
    final currentValue = provider.alertDays;
    String displayText;
    
    if (currentValue >= 1 && currentValue <= 30) {
      displayText = '$currentValue天';
    } else {
      displayText = '自定义（$currentValue天）';
    }
    
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const AlertDaysSelectionScreen(),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).colorScheme.outline),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              displayText,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontSize: 16,
              ),
            ),
            const SizedBox(width: 8),
            const Icon(Icons.arrow_forward_ios, size: 16),
          ],
        ),
      ),
    );
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
        if (!context.mounted) return;
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('日历权限已授予，日历同步已开启'),
            duration: Duration(seconds: 2),
          ),
        );
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
        return;
      }
    }

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
          content: Text('测试日历事件添加成功'),
          duration: Duration(seconds: 2),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('添加测试日历事件失败，请检查日历设置'),
          duration: Duration(seconds: 3),
        ),
      );
    }
  }

  Future<void> _sendTestNotification(BuildContext context) async {
    if (!context.mounted) return;

    final notificationService = NotificationService();

    try {
      await notificationService.showInstantNotification(
        title: '测试通知',
        body: '这是一个测试通知，用于验证本地提醒功能',
        payload: 'test_notification',
        id: 9999,
      );
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('测试通知已发送'),
            duration: Duration(seconds: 2),
          ),
        );
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('发送测试通知失败: $e'),
            duration: const Duration(seconds: 3),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    
    return Scaffold(
      body: CustomScrollView(
        slivers: [
           SliverAppBar.large(
             title: Text(
               '预警设置',
                 style: theme.textTheme.titleLarge,
             ),
             leading: IconButton(
               icon: const Icon(Icons.arrow_back),
               onPressed: () => Navigator.of(context).pop(),
             ),
             centerTitle: false,
             elevation: 0,
             pinned: true,
          ),
          SliverPadding(
            padding: const EdgeInsets.all(24),
            sliver: SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Consumer<SettingsProvider>(
                    builder: (context, provider, _) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // 日历设置部分
                          Text(
                            '日历设置',
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: theme.colorScheme.onSurface.withAlpha((0.6 * 255).round()),
                            ),
                          ),
                          const SizedBox(height: 8),
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
                          ),
                          const SizedBox(height: 8),
                           SizedBox(
                             width: double.infinity,
                             child: OutlinedButton(
                               onPressed: provider.calendarSync ? () => _addTestCalendarEvent(context) : null,
                               style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(25),
                                 ),
                                 padding: const EdgeInsets.symmetric(vertical: 12),
                               ),
                               child: const Text('添加测试日历事件'),
                             ),
                           ),
                           if (!provider.calendarSync)
                             Padding(
                               padding: const EdgeInsets.only(top: 4),
                               child: Text(
                                 '请先开启"日历同步"开关',
                                 style: theme.textTheme.bodySmall?.copyWith(
                                   color: theme.colorScheme.onSurface.withAlpha((0.6 * 255).round()),
                                 ),
                               ),
                             ),
                          const SizedBox(height: 24),
                          
                          // App提醒设置部分
                          Text(
                            'App提醒设置',
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: theme.colorScheme.onSurface.withAlpha((0.6 * 255).round()),
                            ),
                          ),
                          const SizedBox(height: 8),
                          SwitchListTile(
                            title: const Text('本地提醒'),
                            subtitle: const Text('开启后接收应用内过期提醒'),
                            value: provider.localAlertsEnabled,
                            onChanged: (v) async {
                              try {
                                await provider.setLocalAlertsEnabled(v);
                                if (v && !provider.localAlertsEnabled) {
                                  // 权限被拒绝，开关被重置为false
                                  if (context.mounted) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text('需要通知权限才能启用本地提醒'),
                                        duration: Duration(seconds: 2),
                                      ),
                                    );
                                  }
                                }
                              } catch (e) {
                                if (context.mounted) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text('操作失败: $e'),
                                      duration: const Duration(seconds: 2),
                                    ),
                                  );
                                }
                              }
                            },
                          ),
                          const SizedBox(height: 8),
                           SizedBox(
                             width: double.infinity,
                             child: OutlinedButton(
                               onPressed: provider.localAlertsEnabled ? () => _sendTestNotification(context) : null,
                               style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(25),
                                 ),
                                 padding: const EdgeInsets.symmetric(vertical: 12),
                               ),
                               child: const Text('发送测试通知'),
                             ),
                           ),
                           if (!provider.localAlertsEnabled)
                             Padding(
                               padding: const EdgeInsets.only(top: 4),
                               child: Text(
                                 '请先开启"本地提醒"开关',
                                 style: theme.textTheme.bodySmall?.copyWith(
                                   color: theme.colorScheme.onSurface.withAlpha((0.6 * 255).round()),
                                 ),
                               ),
                             ),
                          const SizedBox(height: 24),
                          
                          // 提醒天数设置部分
                          Text(
                            '提醒天数设置',
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: theme.colorScheme.onSurface.withAlpha((0.6 * 255).round()),
                            ),
                          ),
                          const SizedBox(height: 8),
                          ListTile(
                            title: const Text('提前提醒天数'),
                            subtitle: const Text('设置提前多少天提醒物品过期或保修到期'),
                            trailing: _buildAlertDaysSelector(context, provider),
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}