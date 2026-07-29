import 'package:uuid/uuid.dart';

class Reminder {
  final String id;
  final String itemId;
  final DateTime reminderDate;
  final bool isSyncedToCalendar;
  final String? notificationId;

  Reminder({
    String? id,
    required this.itemId,
    required this.reminderDate,
    this.isSyncedToCalendar = false,
    this.notificationId,
  }) : id = id ?? const Uuid().v4();

  Reminder copyWith({
    String? itemId,
    DateTime? reminderDate,
    bool? isSyncedToCalendar,
    String? notificationId,
  }) {
    return Reminder(
      id: id,
      itemId: itemId ?? this.itemId,
      reminderDate: reminderDate ?? this.reminderDate,
      isSyncedToCalendar: isSyncedToCalendar ?? this.isSyncedToCalendar,
      notificationId: notificationId ?? this.notificationId,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'itemId': itemId,
      'reminderDate': reminderDate.millisecondsSinceEpoch,
      'isSyncedToCalendar': isSyncedToCalendar ? 1 : 0,
      'notificationId': notificationId,
    };
  }

  factory Reminder.fromMap(Map<String, dynamic> map) {
    return Reminder(
      id: map['id'] as String,
      itemId: map['itemId'] as String,
      reminderDate: DateTime.fromMillisecondsSinceEpoch(
        map['reminderDate'] as int,
      ),
      isSyncedToCalendar: (map['isSyncedToCalendar'] as int) == 1,
      notificationId: map['notificationId'] as String?,
    );
  }
}
