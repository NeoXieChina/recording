import 'dart:convert';

import 'package:recording/data/models/item.dart';
import 'package:uuid/uuid.dart';

enum OperationType {
  create,
  update,
  delete,
  inbound,
  outbound,
}

class FieldChange {
  final String fieldName;
  final String? oldValue;
  final String? newValue;

  FieldChange({
    required this.fieldName,
    this.oldValue,
    this.newValue,
  });

  Map<String, dynamic> toMap() {
    return {
      'fieldName': fieldName,
      'oldValue': oldValue,
      'newValue': newValue,
    };
  }

  factory FieldChange.fromMap(Map<String, dynamic> map) {
    return FieldChange(
      fieldName: map['fieldName'] as String,
      oldValue: map['oldValue'] as String?,
      newValue: map['newValue'] as String?,
    );
  }
}

class OperationLog {
  final String id;
  final OperationType operationType;
  final Item item;
  final int? quantityChange;
  final List<FieldChange>? fieldChanges;
  final DateTime createdAt;

  OperationLog({
    String? id,
    required this.operationType,
    required this.item,
    this.quantityChange,
    this.fieldChanges,
    DateTime? createdAt,
  }) : id = id ?? const Uuid().v4(),
       createdAt = createdAt ?? DateTime.now();

  OperationLog copyWith({
    OperationType? operationType,
    Item? item,
    int? quantityChange,
    List<FieldChange>? fieldChanges,
    DateTime? createdAt,
  }) {
    return OperationLog(
      id: id,
      operationType: operationType ?? this.operationType,
      item: item ?? this.item,
      quantityChange: quantityChange ?? this.quantityChange,
      fieldChanges: fieldChanges ?? this.fieldChanges,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'operationType': operationType.index,
      'itemData': jsonEncode(item.toMap()),
      'quantityChange': quantityChange,
      'fieldChanges': fieldChanges?.map((e) => e.toMap()).toList(),
      'createdAt': createdAt.millisecondsSinceEpoch,
    };
  }

  factory OperationLog.fromMap(Map<String, dynamic> map) {
    return OperationLog(
      id: map['id'] as String,
      operationType: OperationType.values[map['operationType'] as int],
      item: Item.fromMap(jsonDecode(map['itemData'] as String) as Map<String, dynamic>),
      quantityChange: map['quantityChange'] as int?,
      fieldChanges: (map['fieldChanges'] as List<dynamic>?)
          ?.map((e) => FieldChange.fromMap(e as Map<String, dynamic>))
          .toList(),
      createdAt: DateTime.fromMillisecondsSinceEpoch(map['createdAt'] as int),
    );
  }

  String toLogString() {
    final buffer = StringBuffer();
    buffer.writeln('[$createdAt] ${_getOperationTypeName()}');
    buffer.writeln('物品ID: ${item.id}');
    buffer.writeln('物品名称: ${item.name}');
    
    if (operationType == OperationType.update && fieldChanges != null) {
      buffer.writeln('修改字段:');
      for (final change in fieldChanges!) {
        buffer.writeln('  ${change.fieldName}: ${change.oldValue} -> ${change.newValue}');
      }
    } else if (operationType == OperationType.inbound || operationType == OperationType.outbound) {
      buffer.writeln('数量变化: $quantityChange');
    }
    
    buffer.writeln('当前状态:');
    buffer.writeln('  分类: ${item.category}');
    buffer.writeln('  类型: ${item.itemType == ItemType.consumable ? "消耗品" : "耐用品"}');
    buffer.writeln('  数量: ${item.quantity} ${item.unit}');
    buffer.writeln('  单价: ${item.currencySymbol}${item.unitPrice.toStringAsFixed(2)}');
    buffer.writeln('  总价: ${item.currencySymbol}${item.totalPrice.toStringAsFixed(2)}');
    if (item.expiryDate != null) {
      buffer.writeln('  过期日期: ${item.expiryDate}');
    }
    if (item.warrantyDate != null) {
      buffer.writeln('  保修日期: ${item.warrantyDate}');
    }
    if (item.purchaseDate != null) {
      buffer.writeln('  购买日期: ${item.purchaseDate}');
    }
    if (item.productionDate != null) {
      buffer.writeln('  生产日期: ${item.productionDate}');
    }
    if (item.shelfLifeMonths != null || item.shelfLifeDays != null) {
      buffer.writeln('  保质期: ${item.shelfLifeMonths}个月 ${item.shelfLifeDays}天');
    }
    buffer.writeln('  存储地点: ${item.storageLocation.isEmpty ? "未设置" : item.storageLocation}');
    if (item.barcode != null) {
      buffer.writeln('  条码: ${item.barcode}');
    }
    if (item.notes != null) {
      buffer.writeln('  备注: ${item.notes}');
    }
    buffer.writeln('  预警: ${item.enableAlert ? "开启" : "关闭"}');
    if (item.alertDaysBefore != null) {
      buffer.writeln('  预警天数: ${item.alertDaysBefore}天');
    }
    buffer.writeln('');
    return buffer.toString();
  }

  String _getOperationTypeName() {
    switch (operationType) {
      case OperationType.create:
        return '录入';
      case OperationType.update:
        return '编辑';
      case OperationType.delete:
        return '删除';
      case OperationType.inbound:
        return '入库';
      case OperationType.outbound:
        return '出库';
    }
  }
}
