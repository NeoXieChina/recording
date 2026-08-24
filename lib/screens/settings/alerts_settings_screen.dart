import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:provider/provider.dart';
import 'package:recording/generated/l10n/app_localizations.dart';
import 'package:recording/providers/settings_provider.dart';
import 'package:recording/screens/settings/alert_days_selection_screen.dart';
import 'package:recording/services/calendar_service.dart';
import 'package:recording/services/notification_service.dart';

class AlertsSettingsScreen extends StatefulWidget {
  const AlertsSettingsScreen({super.key});

  @override
  State<AlertsSettingsScreen> createState() => _AlertsSettingsScreenState();
}

class _AlertsSettingsScreenState extends State<AlertsSettingsScreen> {
  // 构建提醒天数显示 - 只显示当前值，不可点击
  Widget _buildAlertDaysDisplay(
    BuildContext context,
    SettingsProvider provider,
  ) {
    final currentValue = provider.alertDays;
    String displayText;

    if (currentValue >= 1 && currentValue <= 30) {
      displayText = AppLocalizations.of(context).days_with_value(currentValue);
    } else {
      displayText = AppLocalizations.of(context).custom_days(currentValue);
    }

    return Text(
      displayText,
      style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 16),
    );
  }

  Future<void> _requestCalendarPermission(
    BuildContext context,
    SettingsProvider provider,
  ) async {
    if (!context.mounted) return;

    final l10n = AppLocalizations.of(context);

    // 检查当前权限状态
    final status = await Permission.calendarFullAccess.status;
    if (status.isGranted) {
      // 权限已授予，直接开启同步
      provider.setCalendarSync(true);
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(l10n.calendar_permission_granted),
            duration: const Duration(seconds: 2),
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
        title: Text(AppLocalizations.of(context).calendar_permission_request),
        content: Text(AppLocalizations.of(context).calendar_permission_desc),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: Text(AppLocalizations.of(context).cancel),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: Text(AppLocalizations.of(context).allow),
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
              SnackBar(
                content: Text(
                  AppLocalizations.of(context).calendar_account_failed,
                ),
                duration: const Duration(seconds: 3),
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
                SnackBar(
                  content: Text(
                    AppLocalizations.of(context).calendar_account_creating,
                  ),
                  duration: const Duration(seconds: 3),
                ),
              );
            }
            // 即使hasAccount为false，也继续尝试添加事件
          } else if (context.mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  AppLocalizations.of(context).calendar_account_created,
                ),
                duration: const Duration(seconds: 2),
              ),
            );
          }
        }

        provider.setCalendarSync(true);
        if (!context.mounted) return;
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(l10n.calendar_permission_granted),
            duration: const Duration(seconds: 2),
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
            title: Text(
              AppLocalizations.of(
                context,
              ).calendar_permission_permanently_denied,
            ),
            content: Text(
              AppLocalizations.of(
                context,
              ).calendar_permission_permanently_denied_desc,
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text(AppLocalizations.of(context).cancel),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  openAppSettings();
                },
                child: Text(AppLocalizations.of(context).go_to_settings),
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
          SnackBar(
            content: Text(
              AppLocalizations.of(context).calendar_permission_denied,
            ),
            duration: const Duration(seconds: 2),
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
    final l10n = AppLocalizations.of(context);

    // 检查日历权限
    final status = await Permission.calendarFullAccess.status;
    if (!status.isGranted) {
      // 请求权限
      final permissionStatus = await Permission.calendarFullAccess.request();
      if (!permissionStatus.isGranted) {
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                AppLocalizations.of(context).calendar_permission_required,
              ),
              duration: const Duration(seconds: 2),
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
            SnackBar(
              content: Text(
                AppLocalizations.of(context).calendar_account_creation_failed,
              ),
              duration: const Duration(seconds: 3),
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
            SnackBar(
              content: Text(
                AppLocalizations.of(context).calendar_account_creating,
              ),
              duration: const Duration(seconds: 3),
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
      title: l10n.test_calendar_event,
      description: l10n.test_calendar_event_description,
      location: l10n.in_app,
      startTime: startTime,
      endTime: endTime,
      reminderMinutes: 5,
    );

    if (!context.mounted) return;
    if (success) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(AppLocalizations.of(context).test_calendar_event_added),
          duration: const Duration(seconds: 2),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            AppLocalizations.of(context).test_calendar_event_failed,
          ),
          duration: const Duration(seconds: 3),
        ),
      );
    }
  }

  Future<void> _sendTestNotification(BuildContext context) async {
    if (!context.mounted) return;

    final l10n = AppLocalizations.of(context);
    final notificationService = NotificationService();

    try {
      await notificationService.showInstantNotification(
        title: l10n.test_notification,
        body: l10n.test_notification_description,
        payload: 'test_notification',
        id: 9999,
      );
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(l10n.test_notification_sent),
            duration: const Duration(seconds: 2),
          ),
        );
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(l10n.test_notification_failed(e.toString())),
            duration: const Duration(seconds: 3),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: Text(l10n.alert_settings),
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
                            l10n.calendar_settings,
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: theme.colorScheme.onSurface.withAlpha(
                                (0.6 * 255).round(),
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          SwitchListTile(
                            title: Text(l10n.calendar_sync),
                            subtitle: Text(l10n.calendar_sync_desc),
                            value: provider.calendarSync,
                            onChanged: (v) async {
                              if (v) {
                                await _requestCalendarPermission(
                                  context,
                                  provider,
                                );
                              } else {
                                provider.setCalendarSync(false);
                              }
                            },
                          ),
                          const SizedBox(height: 8),
                          SizedBox(
                            width: double.infinity,
                            child: OutlinedButton(
                              onPressed: provider.calendarSync
                                  ? () => _addTestCalendarEvent(context)
                                  : null,
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                padding: const EdgeInsets.symmetric(
                                  vertical: 12,
                                ),
                              ),
                              child: Text(l10n.add_test_calendar_event),
                            ),
                          ),
                          if (!provider.calendarSync)
                            Padding(
                              padding: const EdgeInsets.only(top: 4),
                              child: Text(
                                l10n.enable_calendar_sync_first,
                                style: theme.textTheme.bodySmall?.copyWith(
                                  color: theme.colorScheme.onSurface.withAlpha(
                                    (0.6 * 255).round(),
                                  ),
                                ),
                              ),
                            ),
                          const SizedBox(height: 24),

                          // App提醒设置部分
                          Text(
                            l10n.app_alert_settings,
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: theme.colorScheme.onSurface.withAlpha(
                                (0.6 * 255).round(),
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          SwitchListTile(
                            title: Text(l10n.local_alerts),
                            subtitle: Text(l10n.local_alerts_desc),
                            value: provider.localAlertsEnabled,
                            onChanged: (v) async {
                              try {
                                await provider.setLocalAlertsEnabled(v);
                                if (v && !provider.localAlertsEnabled) {
                                  // 权限被拒绝，开关被重置为false
                                  if (context.mounted) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          l10n.notification_permission_required,
                                        ),
                                        duration: const Duration(seconds: 2),
                                      ),
                                    );
                                  }
                                }
                              } catch (e) {
                                if (context.mounted) {
                                  final l10n = AppLocalizations.of(context);
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(l10n.operation_failed_message(e.toString())),
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
                              onPressed: provider.localAlertsEnabled
                                  ? () => _sendTestNotification(context)
                                  : null,
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                padding: const EdgeInsets.symmetric(
                                  vertical: 12,
                                ),
                              ),
                              child: Text(l10n.send_test_notification),
                            ),
                          ),
                          if (!provider.localAlertsEnabled)
                            Padding(
                              padding: const EdgeInsets.only(top: 4),
                              child: Text(
                                l10n.enable_local_alerts_first,
                                style: theme.textTheme.bodySmall?.copyWith(
                                  color: theme.colorScheme.onSurface.withAlpha(
                                    (0.6 * 255).round(),
                                  ),
                                ),
                              ),
                            ),
                          const SizedBox(height: 24),

                          // 提醒天数设置部分
                          Text(
                            l10n.alert_days_settings,
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: theme.colorScheme.onSurface.withAlpha(
                                (0.6 * 255).round(),
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          ListTile(
                            title: Text(l10n.advance_alert_days),
                            subtitle: Text(l10n.advance_alert_days_desc),
                            trailing: _buildAlertDaysDisplay(context, provider),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const AlertDaysSelectionScreen(),
                                ),
                              );
                            },
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
