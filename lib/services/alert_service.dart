import 'package:flutter/material.dart';
import 'package:recording/constants.dart';
import 'package:recording/data/datasources/app_database.dart';
import 'package:recording/services/calendar_service.dart';
import 'package:recording/services/notification_service.dart';
import 'package:workmanager/workmanager.dart';

class AlertService {
  static final AlertService _instance = AlertService._internal();

  factory AlertService() => _instance;

  AlertService._internal();

  final NotificationService _notificationService = NotificationService();
  bool _isInitialized = false;
  bool _localAlertsEnabled = false;
  bool _calendarSyncEnabled = false;

  bool get localAlertsEnabled => _localAlertsEnabled;

  bool get calendarSyncEnabled => _calendarSyncEnabled;

  Future<void> initialize() async {
    if (_isInitialized) return;
    await _notificationService.initialize();
    await Workmanager().initialize(callbackDispatcher);
    _isInitialized = true;
  }

  /// 启用本地提醒
  Future<bool> enableLocalAlerts() async {
    if (!_isInitialized) await initialize();
    // 请求通知权限
    final granted = await _notificationService.requestPermissions();
    if (!granted) {
      return false;
    }
    _localAlertsEnabled = true;
    await _updateDailyCheckRegistration();
    return true;
  }

  /// 禁用本地提醒
  Future<void> disableLocalAlerts() async {
    _localAlertsEnabled = false;
    await _updateDailyCheckRegistration();
  }

  /// 启用日历同步
  Future<void> enableCalendarSync() async {
    _calendarSyncEnabled = true;
    await _updateDailyCheckRegistration();
  }

  /// 禁用日历同步
  Future<void> disableCalendarSync() async {
    _calendarSyncEnabled = false;
    await _updateDailyCheckRegistration();
  }

  /// 根据当前状态更新每日检查任务注册
  Future<void> _updateDailyCheckRegistration() async {
    if (_localAlertsEnabled || _calendarSyncEnabled) {
      await registerDailyCheck();
    } else {
      await cancelDailyCheck();
    }
  }

  @pragma('vm:entry-point')
  static void callbackDispatcher() {
    Workmanager().executeTask((task, inputData) async {
      try {
        switch (task) {
          case 'check_expiry_items':
            await _checkExpiryItems();
            return true;
          case 'daily_check':
            await _performDailyCheck();
            return true;
          default:
            return false;
        }
      } catch (e) {
        return false;
      }
    });
  }

  static Future<void> _checkExpiryItems() async {
    final db = AppDatabase();
    final globalAlertDays = AppConstants.defaultAlertDays;

    // 检查日历账户是否可用
    bool calendarAvailable = false;
    try {
      calendarAvailable = await CalendarService.hasCalendarAccount();
      if (!calendarAvailable) {
        // 尝试创建日历账户
        calendarAvailable = await CalendarService.createCalendar();
      }
    } catch (e) {
      debugPrint('日历账户检查失败: $e');
    }

    final expiringItems = await db.getExpiringItems(globalAlertDays);
    final ns = NotificationService();
    for (var i = 0; i < expiringItems.length; i++) {
      final item = expiringItems[i];
      if (item.expiryDate != null) {
        final remaining = item.expiryDate!.difference(DateTime.now()).inDays;
        // 发送应用内通知（如果启用）
        if (item.alertMethod == 0 || item.alertMethod == 2) {
          await ns.showItemExpiryAlert(
            itemName: item.name,
            expiryDate: item.expiryDate!,
            remainingDays: remaining,
            itemId: item.id,
            id: 2000 + i,
          );
        }
        // 创建日历事件（如果启用且日历可用）
        if ((item.alertMethod == 1 || item.alertMethod == 2) &&
            calendarAvailable) {
          final daysBefore = item.alertDaysBefore ?? globalAlertDays;
          final alertDate = item.expiryDate!.subtract(
            Duration(days: daysBefore),
          );
          // 如果提醒日期已经过去，则不创建事件
          if (alertDate.isAfter(DateTime.now())) {
            try {
              await CalendarService.addEvent(
                title: '物品过期提醒：${item.name}',
                description: '物品 ${item.name} 将在 $remaining 天后过期',
                location: item.storageLocation.isNotEmpty
                    ? item.storageLocation
                    : '未指定',
                startTime: alertDate,
                endTime: alertDate.add(const Duration(hours: 1)),
                reminderMinutes: 0, // 日历事件自带提醒
              );
            } catch (e) {
              debugPrint('创建日历事件失败: $e');
            }
          }
        }
      }
    }

    final warrantyItems = await db.getWarrantyExpiringItems(globalAlertDays);
    for (var i = 0; i < warrantyItems.length; i++) {
      final item = warrantyItems[i];
      if (item.warrantyDate != null) {
        final remaining = item.warrantyDate!.difference(DateTime.now()).inDays;
        // 发送应用内通知（如果启用）
        if (item.alertMethod == 0 || item.alertMethod == 2) {
          await ns.showItemWarrantyAlert(
            itemName: item.name,
            warrantyDate: item.warrantyDate!,
            remainingDays: remaining,
            itemId: item.id,
            id: 3000 + i,
          );
        }
        // 创建日历事件（如果启用且日历可用）
        if ((item.alertMethod == 1 || item.alertMethod == 2) &&
            calendarAvailable) {
          final daysBefore = item.alertDaysBefore ?? globalAlertDays;
          final alertDate = item.warrantyDate!.subtract(
            Duration(days: daysBefore),
          );
          if (alertDate.isAfter(DateTime.now())) {
            try {
              await CalendarService.addEvent(
                title: '保修到期提醒：${item.name}',
                description: '物品 ${item.name} 的保修期将在 $remaining 天后到期',
                location: item.storageLocation.isNotEmpty
                    ? item.storageLocation
                    : '未指定',
                startTime: alertDate,
                endTime: alertDate.add(const Duration(hours: 1)),
                reminderMinutes: 0,
              );
            } catch (e) {
              debugPrint('创建日历事件失败: $e');
            }
          }
        }
      }
    }
  }

  static Future<void> _performDailyCheck() async {
    await _checkExpiryItems();
  }

  Future<void> registerDailyCheck({TimeOfDay? checkTime}) async {
    if (!_isInitialized) await initialize();
    await cancelDailyCheck();
    final time = checkTime ?? const TimeOfDay(hour: 9, minute: 0);
    final now = DateTime.now();
    var scheduledTime = DateTime(
      now.year,
      now.month,
      now.day,
      time.hour,
      time.minute,
    );
    if (scheduledTime.isBefore(now)) {
      scheduledTime = scheduledTime.add(const Duration(days: 1));
    }
    final delay = scheduledTime.difference(now).inMilliseconds;

    await Workmanager().registerPeriodicTask(
      'daily_item_check',
      'daily_check',
      frequency: const Duration(days: 1),
      initialDelay: Duration(milliseconds: delay),
      constraints: Constraints(networkType: NetworkType.notRequired),
    );
  }

  Future<void> cancelDailyCheck() async {
    await Workmanager().cancelByUniqueName('daily_item_check');
    await _notificationService.cancelNotification(1000);
  }

  Future<bool> areAlertsEnabled() async {
    final pending = await _notificationService.getPendingNotifications();
    return pending.any((n) => n.id == 1000);
  }

  Future<void> checkNow() async {
    if (!_isInitialized) await initialize();
    await Workmanager().registerOneOffTask(
      'immediate_check',
      'check_expiry_items',
      initialDelay: const Duration(seconds: 1),
      constraints: Constraints(networkType: NetworkType.notRequired),
    );
  }
}
