import 'package:flutter/material.dart';
import 'package:recording/constants.dart';
import 'package:recording/data/datasources/app_database.dart';
import 'package:recording/services/notification_service.dart';
import 'package:workmanager/workmanager.dart';

class AlertService {
  static final AlertService _instance = AlertService._internal();

  factory AlertService() => _instance;

  AlertService._internal();

  final NotificationService _notificationService = NotificationService();
  bool _isInitialized = false;

  Future<void> initialize() async {
    if (_isInitialized) return;
    await _notificationService.initialize();
    await Workmanager().initialize(callbackDispatcher);
    _isInitialized = true;
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
    final alertDays = AppConstants.defaultAlertDays;

    final expiringItems = await db.getExpiringItems(alertDays);
    final ns = NotificationService();
    for (var i = 0; i < expiringItems.length; i++) {
      final item = expiringItems[i];
      if (item.expiryDate != null) {
        final remaining = item.expiryDate!.difference(DateTime.now()).inDays;
        await ns.showItemExpiryAlert(
          itemName: item.name,
          expiryDate: item.expiryDate!,
          remainingDays: remaining,
          itemId: item.id,
          id: 2000 + i,
        );
      }
    }

    final warrantyItems = await db.getWarrantyExpiringItems(alertDays);
    for (var i = 0; i < warrantyItems.length; i++) {
      final item = warrantyItems[i];
      if (item.warrantyDate != null) {
        final remaining = item.warrantyDate!.difference(DateTime.now()).inDays;
        await ns.showItemWarrantyAlert(
          itemName: item.name,
          warrantyDate: item.warrantyDate!,
          remainingDays: remaining,
          itemId: item.id,
          id: 3000 + i,
        );
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
