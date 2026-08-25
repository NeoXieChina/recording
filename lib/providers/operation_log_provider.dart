import 'dart:typed_data';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:recording/data/datasources/app_database.dart';
import 'package:recording/data/models/item.dart';
import 'package:recording/data/models/operation_log.dart';
import 'package:share_plus/share_plus.dart';

class OperationLogProvider extends ChangeNotifier {
  final AppDatabase _db = AppDatabase();
  List<OperationLog> _recentLogs = [];
  static const int _maxLogCount = 50;

  List<OperationLog> get recentLogs => _recentLogs;

  Future<void> loadRecentLogs() async {
    _recentLogs = await _db.getRecentOperationLogs(_maxLogCount);
    notifyListeners();
  }

  Future<void> logOperation(
    OperationType type,
    Item item, {
    int? quantityChange,
    Item? oldItem,
    String? operator,
  }) async {
    List<FieldChange>? fieldChanges;
    if (type == OperationType.update && oldItem != null) {
      fieldChanges = _compareItems(oldItem, item);
    }

    final log = OperationLog(
      operationType: type,
      item: item,
      quantityChange: quantityChange,
      fieldChanges: fieldChanges,
      operator: operator,
    );
    await _db.insertOperationLog(log);
    await _db.clearOldOperationLogs(_maxLogCount);
    await loadRecentLogs();
  }

  List<FieldChange> _compareItems(Item oldItem, Item newItem) {
    final changes = <FieldChange>[];

    if (oldItem.name != newItem.name) {
      changes.add(FieldChange(
        fieldName: '名称',
        oldValue: oldItem.name,
        newValue: newItem.name,
      ));
    }
    if (oldItem.category != newItem.category) {
      changes.add(FieldChange(
        fieldName: '分类',
        oldValue: oldItem.category,
        newValue: newItem.category,
      ));
    }
    if (oldItem.itemType != newItem.itemType) {
      changes.add(FieldChange(
        fieldName: '类型',
        oldValue: oldItem.itemType == ItemType.consumable ? "消耗品" : "耐用品",
        newValue: newItem.itemType == ItemType.consumable ? "消耗品" : "耐用品",
      ));
    }
    if (oldItem.quantity != newItem.quantity) {
      changes.add(FieldChange(
        fieldName: '数量',
        oldValue: '${oldItem.quantity} ${oldItem.unit}',
        newValue: '${newItem.quantity} ${newItem.unit}',
      ));
    }
    if (oldItem.unit != newItem.unit) {
      changes.add(FieldChange(
        fieldName: '单位',
        oldValue: oldItem.unit,
        newValue: newItem.unit,
      ));
    }
    if (oldItem.unitPrice != newItem.unitPrice) {
      changes.add(FieldChange(
        fieldName: '单价',
        oldValue: '${oldItem.currencySymbol}${oldItem.unitPrice.toStringAsFixed(2)}',
        newValue: '${newItem.currencySymbol}${newItem.unitPrice.toStringAsFixed(2)}',
      ));
    }
    if (oldItem.currencySymbol != newItem.currencySymbol) {
      changes.add(FieldChange(
        fieldName: '货币符号',
        oldValue: oldItem.currencySymbol,
        newValue: newItem.currencySymbol,
      ));
    }
    if (oldItem.expiryDate != newItem.expiryDate) {
      changes.add(FieldChange(
        fieldName: '过期日期',
        oldValue: oldItem.expiryDate?.toString(),
        newValue: newItem.expiryDate?.toString(),
      ));
    }
    if (oldItem.warrantyDate != newItem.warrantyDate) {
      changes.add(FieldChange(
        fieldName: '保修日期',
        oldValue: oldItem.warrantyDate?.toString(),
        newValue: newItem.warrantyDate?.toString(),
      ));
    }
    if (oldItem.purchaseDate != newItem.purchaseDate) {
      changes.add(FieldChange(
        fieldName: '购买日期',
        oldValue: oldItem.purchaseDate?.toString(),
        newValue: newItem.purchaseDate?.toString(),
      ));
    }
    if (oldItem.productionDate != newItem.productionDate) {
      changes.add(FieldChange(
        fieldName: '生产日期',
        oldValue: oldItem.productionDate?.toString(),
        newValue: newItem.productionDate?.toString(),
      ));
    }
    if (oldItem.shelfLifeMonths != newItem.shelfLifeMonths) {
      changes.add(FieldChange(
        fieldName: '保质期(月)',
        oldValue: oldItem.shelfLifeMonths?.toString(),
        newValue: newItem.shelfLifeMonths?.toString(),
      ));
    }
    if (oldItem.shelfLifeDays != newItem.shelfLifeDays) {
      changes.add(FieldChange(
        fieldName: '保质期(天)',
        oldValue: oldItem.shelfLifeDays?.toString(),
        newValue: newItem.shelfLifeDays?.toString(),
      ));
    }
    if (oldItem.usePurchaseDateForCalculation !=
        newItem.usePurchaseDateForCalculation) {
      changes.add(FieldChange(
        fieldName: '使用购买日期计算',
        oldValue: oldItem.usePurchaseDateForCalculation.toString(),
        newValue: newItem.usePurchaseDateForCalculation.toString(),
      ));
    }
    if (oldItem.useProductionDateForCalculation !=
        newItem.useProductionDateForCalculation) {
      changes.add(FieldChange(
        fieldName: '使用生产日期计算',
        oldValue: oldItem.useProductionDateForCalculation.toString(),
        newValue: newItem.useProductionDateForCalculation.toString(),
      ));
    }
    if (oldItem.storageLocation != newItem.storageLocation) {
      changes.add(FieldChange(
        fieldName: '存储地点',
        oldValue: oldItem.storageLocation.isEmpty ? "未设置" : oldItem.storageLocation,
        newValue:
            newItem.storageLocation.isEmpty ? "未设置" : newItem.storageLocation,
      ));
    }
    if (oldItem.barcode != newItem.barcode) {
      changes.add(FieldChange(
        fieldName: '条码',
        oldValue: oldItem.barcode,
        newValue: newItem.barcode,
      ));
    }
    if (oldItem.notes != newItem.notes) {
      changes.add(FieldChange(
        fieldName: '备注',
        oldValue: oldItem.notes,
        newValue: newItem.notes,
      ));
    }
    if (oldItem.enableAlert != newItem.enableAlert) {
      changes.add(FieldChange(
        fieldName: '预警',
        oldValue: oldItem.enableAlert ? "开启" : "关闭",
        newValue: newItem.enableAlert ? "开启" : "关闭",
      ));
    }
    if (oldItem.alertMethod != newItem.alertMethod) {
      changes.add(FieldChange(
        fieldName: '预警方式',
        oldValue: oldItem.alertMethod.toString(),
        newValue: newItem.alertMethod.toString(),
      ));
    }
    if (oldItem.alertDaysBefore != newItem.alertDaysBefore) {
      changes.add(FieldChange(
        fieldName: '预警天数',
        oldValue: oldItem.alertDaysBefore?.toString(),
        newValue: newItem.alertDaysBefore?.toString(),
      ));
    }

    return changes;
  }

  Future<void> clearAllLogs() async {
    final db = await _db.database;
    await db.delete('operation_logs');
    _recentLogs.clear();
    notifyListeners();
  }

  Future<void> exportLogs() async {
    final allLogs = await _db.getRecentOperationLogs(1000);
    final buffer = StringBuffer();
    buffer.writeln('========================================');
    buffer.writeln('操作日志导出');
    buffer.writeln('========================================');
    buffer.writeln('导出时间: ${DateTime.now()}');
    buffer.writeln('总记录数: ${allLogs.length}');
    buffer.writeln('========================================');
    buffer.writeln('');

    for (final log in allLogs) {
      buffer.write(log.toLogString());
    }

    buffer.writeln('========================================');
    buffer.writeln('日志导出结束');
    buffer.writeln('========================================');

    final fileName = 'operation_logs_${DateTime.now().millisecondsSinceEpoch}.log';
    final bytes = Uint8List.fromList(utf8.encode(buffer.toString()));
    
    final outputPath = await FilePicker.saveFile(
      dialogTitle: '保存操作日志',
      fileName: fileName,
      bytes: bytes,
      type: FileType.custom,
      allowedExtensions: ['log', 'txt'],
    );
    
    if (outputPath != null) {
      await SharePlus.instance.share(
        ShareParams(
          files: [XFile.fromData(bytes, mimeType: 'text/plain', name: fileName)],
        ),
      );
    }
  }
}
