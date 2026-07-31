import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class CalendarService {
  static const MethodChannel _channel = MethodChannel(
    'com.leosoft.cwfc/calendar',
  );

  /// 检查是否有可用的日历账户
  static Future<bool> hasCalendarAccount() async {
    try {
      final result = await _channel.invokeMethod<bool>('hasCalendarAccount');
      return result ?? false;
    } on PlatformException catch (e) {
      debugPrint('检查日历账户失败: ${e.message}');
      return false;
    }
  }

  /// 创建本地日历
  static Future<bool> createCalendar() async {
    try {
      final result = await _channel.invokeMethod<bool>('createCalendar');
      return result ?? false;
    } on PlatformException catch (e) {
      debugPrint('创建日历失败: ${e.message}');
      return false;
    }
  }

  /// 添加日历事件
  static Future<bool> addEvent({
    required String title,
    required String description,
    required String location,
    required DateTime startTime,
    required DateTime endTime,
    int reminderMinutes = 5,
  }) async {
    try {
      final result = await _channel.invokeMethod<bool>('addCalendarEvent', {
        'title': title,
        'description': description,
        'location': location,
        'beginTimeMillis': startTime.millisecondsSinceEpoch,
        'endTimeMillis': endTime.millisecondsSinceEpoch,
        'reminderMinutes': reminderMinutes,
      });
      return result ?? false;
    } on PlatformException catch (e) {
      debugPrint('添加日历事件失败: ${e.message}');
      return false;
    }
  }

  /// 删除日历事件
  static Future<bool> deleteEvent(int eventId) async {
    try {
      final result = await _channel.invokeMethod<bool>('deleteCalendarEvent', {
        'eventId': eventId,
      });
      return result ?? false;
    } on PlatformException catch (e) {
      debugPrint('删除日历事件失败: ${e.message}');
      return false;
    }
  }

  /// 设置权限被拒绝时的提示消息
  static Future<void> setDenyPermissionMessage(String message) async {
    try {
      await _channel.invokeMethod('setDenyPermissionMessage', {
        'message': message,
      });
    } on PlatformException catch (e) {
      debugPrint('设置权限提示消息失败: ${e.message}');
    }
  }
}
