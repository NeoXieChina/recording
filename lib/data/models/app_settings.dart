import 'package:uuid/uuid.dart';

class AppSettings {
  final String id;
  final String defaultManager;

  AppSettings({
    String? id,
    required this.defaultManager,
  }) : id = id ?? const Uuid().v4();

  AppSettings copyWith({
    String? defaultManager,
  }) {
    return AppSettings(
      id: id,
      defaultManager: defaultManager ?? this.defaultManager,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'defaultManager': defaultManager,
    };
  }

  factory AppSettings.fromMap(Map<String, dynamic> map) {
    return AppSettings(
      id: map['id'] as String,
      defaultManager: map['defaultManager'] as String? ?? '',
    );
  }
}
