import 'package:uuid/uuid.dart';

class Location {
  final String id;
  final String name;
  final bool isPublic;
  final String? manager;

  Location({
    String? id,
    required this.name,
    this.isPublic = false,
    this.manager,
  }) : id = id ?? const Uuid().v4();

  Location copyWith({
    String? name,
    bool? isPublic,
    String? manager,
  }) {
    return Location(
      id: id,
      name: name ?? this.name,
      isPublic: isPublic ?? this.isPublic,
      manager: manager ?? this.manager,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'isPublic': isPublic ? 1 : 0,
      'manager': manager,
    };
  }

  factory Location.fromMap(Map<String, dynamic> map) {
    return Location(
      id: map['id'] as String,
      name: map['name'] as String,
      isPublic: (map['isPublic'] as int?) == 1,
      manager: map['manager'] as String?,
    );
  }
}
