// 条件导入dart:io，只在支持dart:io的平台导入
import 'dart:io' if (dart.library.io) 'dart:io' as io;

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:recording/constants.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;
import 'package:uuid/uuid.dart';

/// 通知服务类
class NotificationService {
  static final NotificationService _instance = NotificationService._internal();

  factory NotificationService() => _instance;

  NotificationService._internal();

  late FlutterLocalNotificationsPlugin _notificationsPlugin;
  final Uuid _uuid = Uuid();
  bool _isInitialized = false;

  /// 初始化通知服务
  Future<void> initialize() async {
    if (_isInitialized) return;

    // 初始化时区数据
    tz.initializeTimeZones();

    // 配置Android初始化设置
    const AndroidInitializationSettings androidInitializationSettings =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    // 配置iOS初始化设置
    const DarwinInitializationSettings
    darwinInitializationSettings = DarwinInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
      // onDidReceiveLocalNotification: _onDidReceiveLocalNotification, // 已废弃
    );

    // 配置Linux初始化设置
    const LinuxInitializationSettings linuxInitializationSettings =
        LinuxInitializationSettings(
          defaultActionName: '打开通知',
          defaultIcon: null, // 可选，默认图标路径
        );

    // 配置Windows初始化设置
    WindowsInitializationSettings? windowsInitializationSettings;
    if (!kIsWeb && io.Platform.isWindows) {
      windowsInitializationSettings = WindowsInitializationSettings(
        appName: AppConstants.appName,
        appUserModelId: 'com.leosoft.cwfc',
        guid: _uuid.v4(),
      );
    }

    // 配置Web初始化设置
    WebInitializationSettings? webInitializationSettings;
    if (kIsWeb) {
      webInitializationSettings = const WebInitializationSettings();
    }

    // 配置初始化设置
    final InitializationSettings initializationSettings =
        InitializationSettings(
          android: androidInitializationSettings,
          iOS: darwinInitializationSettings,
          macOS: darwinInitializationSettings,
          linux: linuxInitializationSettings,
          windows: windowsInitializationSettings,
          web: webInitializationSettings,
        );

    _notificationsPlugin = FlutterLocalNotificationsPlugin();

    // 初始化通知插件
    await _notificationsPlugin.initialize(
      settings: initializationSettings,
      onDidReceiveNotificationResponse: _onDidReceiveNotificationResponse,
    );

    // 创建通知通道（Android 8.0+）
    await _createNotificationChannel();

    _isInitialized = true;
  }

  /// 创建通知通道（Android 8.0+）
  Future<void> _createNotificationChannel() async {
    if (!kIsWeb && io.Platform.isAndroid) {
      const AndroidNotificationChannel channel = AndroidNotificationChannel(
        AppConstants.notificationChannelId,
        AppConstants.notificationChannelName,
        description: AppConstants.notificationChannelDescription,
        importance: Importance.high,
        playSound: true,
        enableVibration: true,
        enableLights: true,
        showBadge: true,
      );

      await _notificationsPlugin
          .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin
          >()
          ?.createNotificationChannel(channel);
    }
  }

  /// 请求通知权限
  Future<bool> requestPermissions() async {
    if (!kIsWeb) {
      if (io.Platform.isIOS || io.Platform.isMacOS) {
        final bool? result = await _notificationsPlugin
            .resolvePlatformSpecificImplementation<
              IOSFlutterLocalNotificationsPlugin
            >()
            ?.requestPermissions(alert: true, badge: true, sound: true);
        return result ?? false;
      } else if (io.Platform.isAndroid) {
        // Android 13+需要请求通知权限
        final status = await Permission.notification.status;
        if (status.isGranted) {
          return true;
        }
        // 请求权限
        final result = await Permission.notification.request();
        return result.isGranted;
      }
    } else {
      // Web平台权限请求
      // 注意：Web平台需要在用户交互后请求权限
      // 暂时返回false，实际实现需要使用dart:html的Notification API
      // 需要添加条件导入：import 'dart:html' if (dart.library.html) 'dart:html' as html;
      return false;
    }
    return true;
  }

  /// 检查通知是否启用
  Future<bool> areNotificationsEnabled() async {
    if (!kIsWeb) {
      if (io.Platform.isAndroid) {
        // 检查通知权限
        final status = await Permission.notification.status;
        if (!status.isGranted) {
          return false;
        }
        // 检查系统通知是否启用
        final result = await _notificationsPlugin
            .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin
            >()
            ?.areNotificationsEnabled();
        return result ?? false;
      } else if (io.Platform.isIOS || io.Platform.isMacOS) {
        final result = await _notificationsPlugin
            .resolvePlatformSpecificImplementation<
              IOSFlutterLocalNotificationsPlugin
            >()
            ?.checkPermissions();
        // 简化处理，假设有权限
        return result != null;
      }
    } else {
      // Web平台需要检查Notification.permission
      // 注意：这里需要导入dart:html，但为了跨平台兼容性，我们返回false
      // 实际实现需要在Web平台特定代码中处理
      return false;
    }
    return false;
  }

  /// 显示即时通知
  Future<void> showInstantNotification({
    required String title,
    required String body,
    String? payload,
    int id = 0,
  }) async {
    if (!_isInitialized) {
      await initialize();
    }

    const AndroidNotificationDetails androidNotificationDetails =
        AndroidNotificationDetails(
          AppConstants.notificationChannelId,
          AppConstants.notificationChannelName,
          channelDescription: AppConstants.notificationChannelDescription,
          importance: Importance.high,
          priority: Priority.high,
          ticker: 'ticker',
          playSound: true,
          enableVibration: true,
          enableLights: true,
          showWhen: true,
          autoCancel: true,
        );

    const DarwinNotificationDetails darwinNotificationDetails =
        DarwinNotificationDetails(
          presentAlert: true,
          presentBadge: true,
          presentSound: true,
        );

    // Windows通知详情
    WindowsNotificationDetails? windowsNotificationDetails;
    if (!kIsWeb && io.Platform.isWindows) {
      windowsNotificationDetails = const WindowsNotificationDetails();
    }

    // Linux通知详情
    LinuxNotificationDetails? linuxNotificationDetails;
    if (!kIsWeb && io.Platform.isLinux) {
      linuxNotificationDetails = const LinuxNotificationDetails(
        urgency: LinuxNotificationUrgency.normal,
      );
    }

    // Web通知详情
    WebNotificationDetails? webNotificationDetails;
    if (kIsWeb) {
      webNotificationDetails = const WebNotificationDetails();
    }

    final NotificationDetails notificationDetails = NotificationDetails(
      android: androidNotificationDetails,
      iOS: darwinNotificationDetails,
      macOS: darwinNotificationDetails,
      linux: linuxNotificationDetails,
      windows: windowsNotificationDetails,
      web: webNotificationDetails,
    );

    // 使用show方法显示即时通知
    await _notificationsPlugin.show(
      id: id,
      title: title,
      body: body,
      notificationDetails: notificationDetails,
      payload: payload,
    );
  }

  /// 调度每日重复通知
  Future<void> scheduleDailyNotification({
    required String title,
    required String body,
    required int hour,
    required int minute,
    String? payload,
    int id = 0,
  }) async {
    if (!_isInitialized) {
      await initialize();
    }

    // Web和Windows平台不支持定时通知，使用即时通知作为降级
    if (kIsWeb || (!kIsWeb && io.Platform.isWindows)) {
      // 对于Web/Windows平台，无法调度重复通知，记录日志或忽略
      // 平台 ${kIsWeb ? 'Web' : 'Windows'} 不支持重复通知
      return;
    }

    const AndroidNotificationDetails androidNotificationDetails =
        AndroidNotificationDetails(
          AppConstants.notificationChannelId,
          AppConstants.notificationChannelName,
          channelDescription: AppConstants.notificationChannelDescription,
          importance: Importance.high,
          priority: Priority.high,
          ticker: 'ticker',
          playSound: true,
          enableVibration: true,
          enableLights: true,
          showWhen: true,
          autoCancel: true,
        );

    const DarwinNotificationDetails darwinNotificationDetails =
        DarwinNotificationDetails(
          presentAlert: true,
          presentBadge: true,
          presentSound: true,
        );

    // Windows通知详情
    WindowsNotificationDetails? windowsNotificationDetails;
    if (!kIsWeb && io.Platform.isWindows) {
      windowsNotificationDetails = const WindowsNotificationDetails();
    }

    // Linux通知详情
    LinuxNotificationDetails? linuxNotificationDetails;
    if (!kIsWeb && io.Platform.isLinux) {
      linuxNotificationDetails = const LinuxNotificationDetails(
        urgency: LinuxNotificationUrgency.normal,
      );
    }

    // Web通知详情
    WebNotificationDetails? webNotificationDetails;
    if (kIsWeb) {
      webNotificationDetails = const WebNotificationDetails();
    }

    final NotificationDetails notificationDetails = NotificationDetails(
      android: androidNotificationDetails,
      iOS: darwinNotificationDetails,
      macOS: darwinNotificationDetails,
      linux: linuxNotificationDetails,
      windows: windowsNotificationDetails,
      web: webNotificationDetails,
    );

    final tz.TZDateTime now = tz.TZDateTime.now(tz.local);
    tz.TZDateTime scheduledDate = tz.TZDateTime(
      tz.local,
      now.year,
      now.month,
      now.day,
      hour,
      minute,
      0, // 秒
    );

    // 如果时间已过，安排到明天
    if (scheduledDate.isBefore(now)) {
      scheduledDate = scheduledDate.add(const Duration(days: 1));
    }

    // 使用zonedSchedule方法安排定时通知
    await _notificationsPlugin.zonedSchedule(
      id: id,
      title: title,
      body: body,
      scheduledDate: scheduledDate,
      notificationDetails: notificationDetails,
      androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
      payload: payload,
    );
  }

  /// 取消指定ID的通知
  Future<void> cancelNotification(int id) async {
    if (!_isInitialized) {
      await initialize();
    }
    await _notificationsPlugin.cancel(id: id);
  }

  /// 取消所有通知
  Future<void> cancelAllNotifications() async {
    if (!_isInitialized) {
      await initialize();
    }
    await _notificationsPlugin.cancelAll();
  }

  /// 获取待处理的通知请求
  Future<List<PendingNotificationRequest>> getPendingNotifications() async {
    if (!_isInitialized) {
      await initialize();
    }
    return await _notificationsPlugin.pendingNotificationRequests();
  }

  /// 显示物品过期预警通知
  Future<void> showItemExpiryAlert({
    required String itemName,
    required DateTime expiryDate,
    required int remainingDays,
    required String itemId,
    int id = 0,
  }) async {
    final title = '物品即将过期';
    final body = '$itemName 还剩$remainingDays天过期';

    await showInstantNotification(
      title: title,
      body: body,
      payload: itemId,
      id: id,
    );
  }

  /// 显示物品保修到期预警通知
  Future<void> showItemWarrantyAlert({
    required String itemName,
    required DateTime warrantyDate,
    required int remainingDays,
    required String itemId,
    int id = 0,
  }) async {
    final title = '物品保修即将到期';
    final body = '$itemName 的保修还剩$remainingDays天到期';

    await showInstantNotification(
      title: title,
      body: body,
      payload: itemId,
      id: id,
    );
  }

  /// 调度物品过期检查任务
  Future<void> scheduleExpiryCheck({
    required TimeOfDay checkTime,
    int notificationId = 1000,
  }) async {
    await scheduleDailyNotification(
      title: '物品过期检查',
      body: '正在检查物品过期情况...',
      hour: checkTime.hour,
      minute: checkTime.minute,
      payload: 'expiry_check',
      id: notificationId,
    );
  }

  /// 处理通知点击响应
  static void _onDidReceiveNotificationResponse(
    NotificationResponse notificationResponse,
  ) {
    // 处理通知点击事件
    final String? payload = notificationResponse.payload;
    if (payload != null && payload.isNotEmpty) {
      // 这里可以处理跳转到对应物品详情页的逻辑
      // 例如：使用路由导航到物品详情页
      // 通知被点击，payload: $payload
    }
  }
}
