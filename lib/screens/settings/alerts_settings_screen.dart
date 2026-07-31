import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:provider/provider.dart';
import 'package:recording/constants.dart';
import 'package:recording/providers/settings_provider.dart';
import 'package:recording/services/calendar_service.dart';
import 'package:recording/services/notification_service.dart';

class AlertsSettingsScreen extends StatefulWidget {
  const AlertsSettingsScreen({super.key});

  @override
  State<AlertsSettingsScreen> createState() => _AlertsSettingsScreenState();
}

class _AlertsSettingsScreenState extends State<AlertsSettingsScreen> {
  // 显示自定义天数输入对话框
  void _showCustomDaysDialog(BuildContext context, SettingsProvider provider) {
    final controller = TextEditingController(text: provider.alertDays.toString());
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('自定义提醒天数'),
        content: TextField(
          controller: controller,
          decoration: const InputDecoration(
            hintText: '请输入提醒天数',
            labelText: '天数',
          ),
          keyboardType: TextInputType.number,
          autofocus: true,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('取消'),
          ),
          TextButton(
            onPressed: () {
              final text = controller.text.trim();
              if (text.isEmpty) {
                Navigator.pop(context);
                return;
              }
              final days = int.tryParse(text);
              if (days != null && days >= AppConstants.minAlertDays && days <= AppConstants.maxAlertDays) {
                provider.setAlertDays(days);
                Navigator.pop(context);
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('请输入${AppConstants.minAlertDays}-${AppConstants.maxAlertDays}之间的数字'),
                  ),
                );
                // 不关闭对话框，让用户继续编辑
              }
            },
            child: const Text('确定'),
          ),
        ],
      ),
    );
  }

  // 构建提醒天数选择器
  Widget _buildAlertDaysSelector(BuildContext context, SettingsProvider provider) {
    return GestureDetector(
      onTap: () {
        final RenderBox renderBox = context.findRenderObject() as RenderBox;
        final position = renderBox.localToGlobal(Offset.zero);
        final size = renderBox.size;
        
        // 创建预置天数选项（1-30天）
        final predefinedDays = List<int>.generate(
          30, // 预置1-30天
          (i) => i + 1,
        );
        
        // 创建菜单项
        final menuItems = <PopupMenuItem<int>>[];
        
        // 计算菜单宽度，限制在120-150之间
        final menuWidth = size.width.clamp(120, 150).toDouble();
        
        // 获取当前值
        final currentValue = provider.alertDays;
        
        // 创建所有要显示的天数选项
        final daysToShow = <int>{};
        
        // 添加预置天数（1-30天）
        daysToShow.addAll(predefinedDays);
        
        // 如果当前值不在1-30范围内，也添加到菜单中
        if (currentValue >= AppConstants.minAlertDays && 
            currentValue <= AppConstants.maxAlertDays &&
            !predefinedDays.contains(currentValue)) {
          daysToShow.add(currentValue);
        }
        
        // 排序并添加到菜单
        final sortedDays = daysToShow.toList()..sort();
        
        // 添加天数选项
        for (final days in sortedDays) {
          menuItems.add(PopupMenuItem(
            value: days,
            height: 48,
            child: SizedBox(
              width: double.infinity, // 填充菜单宽度
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('$days天'),
                  if (provider.alertDays == days)
                    Icon(Icons.check, color: Theme.of(context).colorScheme.primary, size: 20),
                ],
              ),
            ),
          ));
        }
        
        // 添加自定义选项
        menuItems.add(PopupMenuItem(
          value: -1, // 使用-1表示自定义
          height: 48,
          child: SizedBox(
            width: double.infinity, // 填充菜单宽度
            child: Row(
              children: [
                const Icon(Icons.add, size: 18),
                const SizedBox(width: 8),
                const Text('自定义'),
              ],
            ),
          ),
        ));
        
        final maxMenuHeight = 240.0; // 5 * 48 = 240，最多显示5项
        
        // 获取屏幕尺寸
        final screenSize = MediaQuery.of(context).size;
        
        // 检查下方是否有足够空间显示菜单
        final availableSpaceBelow = screenSize.height - (position.dy + size.height);
        final itemCount = menuItems.length;
        final menuHeight = (itemCount * 48.0).clamp(0.0, maxMenuHeight);
        final showBelow = availableSpaceBelow >= menuHeight;
        
        // 计算菜单位置
        final menuTop = showBelow
            ? position.dy + size.height // 显示在输入框下方
            : position.dy - menuHeight; // 显示在输入框上方
        
        final menuBottom = showBelow
            ? screenSize.height // 菜单可以向下扩展到屏幕底部
            : position.dy; // 菜单顶部到输入框顶部
        
        showMenu<int>(
          context: context,
          position: RelativeRect.fromLTRB(
            position.dx,
            menuTop,
            position.dx + menuWidth,
            menuBottom,
          ),
          constraints: BoxConstraints(
            maxHeight: maxMenuHeight,
            minWidth: menuWidth,
            maxWidth: menuWidth,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 4,
          items: menuItems,
        ).then((selectedValue) {
          if (selectedValue == -1) {
            // 自定义选项
            if (context.mounted) {
              _showCustomDaysDialog(context, provider);
            }
          } else if (selectedValue != null) {
            provider.setAlertDays(selectedValue);
          }
        });
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
            Text('${provider.alertDays}天'),
            const SizedBox(width: 8),
            const Icon(Icons.arrow_drop_down, size: 20),
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