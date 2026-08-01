import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:path_provider/path_provider.dart';
import 'package:recording/data/datasources/app_database.dart';
import 'package:recording/data/models/item.dart';
import 'package:recording/data/models/reminder.dart';

enum ExportFormat { csv, txt, sql }

enum DuplicateAction { skip, overwrite, skipAll, overwriteAll }

class DataExportService {
  static final DataExportService _instance = DataExportService._internal();

  factory DataExportService() => _instance;

  DataExportService._internal();

  final AppDatabase _db = AppDatabase();

  Future<String> exportData(ExportFormat format, {String? savePath}) async {
    final bytes = await exportDataToBytes(format);

    if (savePath != null) {
      final file = File(savePath);
      await file.writeAsBytes(bytes);
      return savePath;
    } else {
      final appDir = await getApplicationDocumentsDirectory();
      final exportDir = Directory('${appDir.path}/exports');
      if (!(await exportDir.exists())) {
        await exportDir.create(recursive: true);
      }

      final timestamp = DateTime.now()
          .toIso8601String()
          .replaceAll(':', '-')
          .replaceAll('.', '-');
      final fileExtension = getFileExtension(format);
      final exportPath = '${exportDir.path}/export_$timestamp.$fileExtension';
      final file = File(exportPath);
      await file.writeAsBytes(bytes);
      return exportPath;
    }
  }

  Future<Uint8List> exportDataToBytes(ExportFormat format) async {
    final items = await _db.getItems();
    final reminders = await _db.getAllReminders();

    String content;
    switch (format) {
      case ExportFormat.csv:
        content = _exportToCsv(items, reminders);
        break;
      case ExportFormat.txt:
        content = _exportToTxt(items, reminders);
        break;
      case ExportFormat.sql:
        content = _exportToSql(items, reminders);
        break;
    }

    // 使用UTF-8编码导出
    return Uint8List.fromList(utf8.encode(content));
  }

  String getFileExtension(ExportFormat format) {
    switch (format) {
      case ExportFormat.csv:
        return 'csv';
      case ExportFormat.txt:
        return 'txt';
      case ExportFormat.sql:
        return 'sql';
    }
  }

  String _decodeWithFallback(List<int> bytes) {
    if (bytes.isEmpty) {
      return '';
    }

    // 首先检查并移除UTF-8 BOM (EF BB BF)
    List<int> contentBytes = bytes;
    if (bytes.length >= 3 &&
        bytes[0] == 0xEF &&
        bytes[1] == 0xBB &&
        bytes[2] == 0xBF) {
      contentBytes = bytes.sublist(3);
    }

    // 使用UTF-8解码（严格模式）
    try {
      return utf8.decode(contentBytes);
    } catch (e) {
      // UTF-8解码失败，尝试使用UTF-8并忽略无效字符作为最后手段
      try {
        return utf8.decode(contentBytes, allowMalformed: true);
      } catch (e2) {
        // 如果仍然失败，抛出详细的错误信息
        throw FormatException('文件编码不是有效的UTF-8格式。请确保文件使用UTF-8编码保存。错误详情: $e2');
      }
    }
  }

  Future<int> importData(
    String filePath,
    ExportFormat format, {
    DuplicateAction duplicateAction = DuplicateAction.skip,
  }) async {
    final file = File(filePath);
    if (!(await file.exists())) {
      throw Exception('文件不存在: $filePath');
    }

    // 检查文件大小
    final fileSize = await file.length();
    if (fileSize == 0) {
      throw Exception('文件为空: $filePath');
    }

    // 读取文件字节
    final bytes = await file.readAsBytes();
    // 使用多种编码尝试解码
    final content = _decodeWithFallback(bytes);

    // 检查解码后的内容是否为空
    if (content.isEmpty) {
      throw Exception('文件内容解码后为空，可能是编码不匹配');
    }
    List<Item> items = [];
    List<Reminder> reminders = [];

    switch (format) {
      case ExportFormat.csv:
        final result = _importFromCsv(content);
        items = result.$1;
        reminders = result.$2;
        break;
      case ExportFormat.txt:
        final result = _importFromTxt(content);
        items = result.$1;
        reminders = result.$2;
        break;
      case ExportFormat.sql:
        final result = _importFromSql(content);
        items = result.$1;
        reminders = result.$2;
        break;
    }

    int importedCount = 0;
    bool skipAll = duplicateAction == DuplicateAction.skipAll;
    bool overwriteAll = duplicateAction == DuplicateAction.overwriteAll;

    for (final item in items) {
      final existing = await _db.getItemById(item.id);

      if (existing != null) {
        if (skipAll) {
          continue;
        } else if (overwriteAll) {
          await _db.updateItem(item);
          importedCount++;
        } else if (duplicateAction == DuplicateAction.skip) {
          continue;
        } else if (duplicateAction == DuplicateAction.overwrite) {
          await _db.updateItem(item);
          importedCount++;
        }
      } else {
        await _db.insertItem(item);
        importedCount++;
      }
    }

    for (final reminder in reminders) {
      await _db.insertReminder(reminder);
    }

    return importedCount;
  }

  String _exportToCsv(List<Item> items, List<Reminder> reminders) {
    final buffer = StringBuffer();

    // 写入CSV头部
    buffer.writeln(
      'id,name,category,itemType,quantity,unit,unitPrice,currencySymbol,expiryDate,warrantyDate,purchaseDate,productionDate,shelfLifeMonths,shelfLifeDays,usePurchaseDateForCalculation,useProductionDateForCalculation,storageLocation,barcode,imagePaths,notes,createdAt,updatedAt',
    );

    // 写入物品数据
    for (final item in items) {
      final imagePaths = item.imagePaths.isNotEmpty
          ? item.imagePaths.join('|')
          : '';
      buffer.writeln(
        '"${item.id}","${_escapeCsv(item.name)}","${_escapeCsv(item.category)}",${item.itemType == ItemType.consumable ? "consumable" : "durable"},${item.quantity},"${_escapeCsv(item.unit)}",${item.unitPrice},"${item.currencySymbol}","${item.expiryDate?.toIso8601String()}","${item.warrantyDate?.toIso8601String()}","${item.purchaseDate?.toIso8601String()}","${item.productionDate?.toIso8601String()}",${item.shelfLifeMonths},${item.shelfLifeDays},${item.usePurchaseDateForCalculation},${item.useProductionDateForCalculation},"${_escapeCsv(item.storageLocation)}","${item.barcode}","${_escapeCsv(imagePaths)}","${_escapeCsv(item.notes ?? '')}","${item.createdAt.toIso8601String()}","${item.updatedAt.toIso8601String()}"',
      );
    }

    // 添加分隔行
    buffer.writeln();
    buffer.writeln('REMINDERS');
    buffer.writeln('id,itemId,reminderDate,isSyncedToCalendar,notificationId');

    // 写入提醒数据
    for (final reminder in reminders) {
      buffer.writeln(
        '"${reminder.id}","${reminder.itemId}","${reminder.reminderDate.toIso8601String()}","${reminder.isSyncedToCalendar}","${reminder.notificationId ?? ""}"',
      );
    }

    return buffer.toString();
  }

  String _exportToTxt(List<Item> items, List<Reminder> reminders) {
    final buffer = StringBuffer();

    buffer.writeln('=== 物品数据 ===');
    buffer.writeln('共 ${items.length} 条记录');
    buffer.writeln();

    for (final item in items) {
      buffer.writeln('ID: ${item.id}');
      buffer.writeln('名称: ${item.name}');
      buffer.writeln('分类: ${item.category}');
      buffer.writeln(
        '类型: ${item.itemType == ItemType.consumable ? "消耗品" : "耐用品"}',
      );
      buffer.writeln('数量: ${item.quantity} ${item.unit}');
      buffer.writeln('单价: ${item.currencySymbol}${item.unitPrice}');
      buffer.writeln('总价: ${item.currencySymbol}${item.totalPrice}');
      buffer.writeln('过期日期: ${item.expiryDate?.toIso8601String() ?? "无"}');
      buffer.writeln('保修日期: ${item.warrantyDate?.toIso8601String() ?? "无"}');
      buffer.writeln('购买日期: ${item.purchaseDate?.toIso8601String() ?? "无"}');
      buffer.writeln('生产日期: ${item.productionDate?.toIso8601String() ?? "无"}');
      buffer.writeln(
        '保质期: ${item.shelfLifeMonths != null ? "${item.shelfLifeMonths}个月" : ""}${item.shelfLifeDays != null ? "${item.shelfLifeDays}天" : ""}',
      );
      buffer.writeln('存储地点: ${item.storageLocation}');
      buffer.writeln('条码: ${item.barcode ?? "无"}');
      buffer.writeln('图片: ${item.imagePaths.length}张');
      buffer.writeln('备注: ${item.notes ?? "无"}');
      buffer.writeln('创建时间: ${item.createdAt.toIso8601String()}');
      buffer.writeln('更新时间: ${item.updatedAt.toIso8601String()}');
      buffer.writeln('---');
    }

    buffer.writeln();
    buffer.writeln('=== 提醒数据 ===');
    buffer.writeln('共 ${reminders.length} 条记录');
    buffer.writeln();

    for (final reminder in reminders) {
      buffer.writeln('ID: ${reminder.id}');
      buffer.writeln('物品ID: ${reminder.itemId}');
      buffer.writeln('提醒日期: ${reminder.reminderDate.toIso8601String()}');
      buffer.writeln('已同步到日历: ${reminder.isSyncedToCalendar ? "是" : "否"}');
      buffer.writeln('通知ID: ${reminder.notificationId ?? "无"}');
      buffer.writeln('---');
    }

    return buffer.toString();
  }

  String _exportToSql(List<Item> items, List<Reminder> reminders) {
    final buffer = StringBuffer();

    buffer.writeln('-- 物品数据表插入语句');
    buffer.writeln('BEGIN TRANSACTION;');
    buffer.writeln();

    for (final item in items) {
      final imagePaths = item.imagePaths.isNotEmpty
          ? item.imagePaths.join('|')
          : '';

      buffer.writeln(
        'INSERT OR REPLACE INTO items (id, name, category, item_type, quantity, unit, unit_price, currency_symbol, expiry_date, warranty_date, purchase_date, production_date, shelf_life_months, shelf_life_days, use_purchase_date_for_calculation, use_production_date_for_calculation, storage_location, barcode, image_paths, notes, created_at, updated_at) VALUES (',
      );
      buffer.write("  '${item.id}', ");
      buffer.write("'${_escapeSql(item.name)}', ");
      buffer.write("'${_escapeSql(item.category)}', ");
      buffer.write(
        "'${item.itemType == ItemType.consumable ? "consumable" : "durable"}', ",
      );
      buffer.write("${item.quantity}, ");
      buffer.write("'${_escapeSql(item.unit)}', ");
      buffer.write("${item.unitPrice}, ");
      buffer.write("'${item.currencySymbol}', ");
      buffer.write(
        "${item.expiryDate != null ? "'${item.expiryDate!.toIso8601String()}'" : "NULL"}, ",
      );
      buffer.write(
        "${item.warrantyDate != null ? "'${item.warrantyDate!.toIso8601String()}'" : "NULL"}, ",
      );
      buffer.write(
        "${item.purchaseDate != null ? "'${item.purchaseDate!.toIso8601String()}'" : "NULL"}, ",
      );
      buffer.write(
        "${item.productionDate != null ? "'${item.productionDate!.toIso8601String()}'" : "NULL"}, ",
      );
      buffer.write("${item.shelfLifeMonths ?? "NULL"}, ");
      buffer.write("${item.shelfLifeDays ?? "NULL"}, ");
      buffer.write("${item.usePurchaseDateForCalculation ? 1 : 0}, ");
      buffer.write("${item.useProductionDateForCalculation ? 1 : 0}, ");
      buffer.write("'${_escapeSql(item.storageLocation)}', ");
      buffer.write("${item.barcode != null ? "'${item.barcode}'" : "NULL"}, ");
      buffer.write("'${_escapeSql(imagePaths)}', ");
      buffer.write(
        "${item.notes != null ? "'${_escapeSql(item.notes!)}'" : "NULL"}, ",
      );
      buffer.write("'${item.createdAt.toIso8601String()}', ");
      buffer.write("'${item.updatedAt.toIso8601String()}'");
      buffer.writeln(');');
    }

    buffer.writeln();
    buffer.writeln('-- 提醒数据表插入语句');
    buffer.writeln();

    for (final reminder in reminders) {
      buffer.writeln(
        'INSERT OR REPLACE INTO reminders (id, item_id, reminder_date, is_synced_to_calendar, notification_id) VALUES (',
      );
      buffer.write("  '${reminder.id}', ");
      buffer.write("'${reminder.itemId}', ");
      buffer.write("'${reminder.reminderDate.toIso8601String()}', ");
      buffer.write("${reminder.isSyncedToCalendar ? 1 : 0}, ");
      buffer.write(
        reminder.notificationId != null
            ? "'${reminder.notificationId}'"
            : "NULL",
      );
      buffer.writeln(');');
    }

    buffer.writeln();
    buffer.writeln('COMMIT;');

    return buffer.toString();
  }

  (List<Item>, List<Reminder>) _importFromCsv(String content) {
    final lines = content.split('\n');
    final items = <Item>[];
    final reminders = <Reminder>[];
    bool inRemindersSection = false;

    for (int i = 0; i < lines.length; i++) {
      final line = lines[i].trim();
      if (line.isEmpty) continue;

      if (line == 'REMINDERS') {
        inRemindersSection = true;
        continue;
      }

      if (i == 0 && !inRemindersSection) {
        // 跳过CSV头部
        continue;
      }

      if (inRemindersSection && i == lines.indexOf('REMINDERS') + 1) {
        // 跳过提醒头部
        continue;
      }

      if (inRemindersSection) {
        // 解析提醒数据
        final parts = _parseCsvLine(line);
        if (parts.length >= 3) {
          try {
            final reminder = Reminder(
              id: parts[0],
              itemId: parts[1],
              reminderDate: DateTime.parse(parts[2]),
              isSyncedToCalendar: parts.length > 3
                  ? parts[3].toLowerCase() == 'true'
                  : false,
              notificationId: parts.length > 4 && parts[4].isNotEmpty
                  ? parts[4]
                  : null,
            );
            reminders.add(reminder);
          } catch (e) {
            // 跳过解析错误的行
          }
        }
      } else {
        // 解析物品数据
        final parts = _parseCsvLine(line);
        if (parts.length >= 22) {
          try {
            final item = Item(
              id: parts[0],
              name: _unescapeCsv(parts[1]),
              category: _unescapeCsv(parts[2]),
              itemType: parts[3] == 'consumable'
                  ? ItemType.consumable
                  : ItemType.durable,
              quantity: int.tryParse(parts[4]) ?? 1,
              unit: _unescapeCsv(parts[5]),
              unitPrice: double.tryParse(parts[6]) ?? 0.0,
              currencySymbol: parts[7],
              expiryDate: parts[8].isNotEmpty
                  ? DateTime.tryParse(parts[8])
                  : null,
              warrantyDate: parts[9].isNotEmpty
                  ? DateTime.tryParse(parts[9])
                  : null,
              purchaseDate: parts[10].isNotEmpty
                  ? DateTime.tryParse(parts[10])
                  : null,
              productionDate: parts[11].isNotEmpty
                  ? DateTime.tryParse(parts[11])
                  : null,
              shelfLifeMonths: parts[12].isNotEmpty
                  ? int.tryParse(parts[12])
                  : null,
              shelfLifeDays: parts[13].isNotEmpty
                  ? int.tryParse(parts[13])
                  : null,
              usePurchaseDateForCalculation: parts[14].toLowerCase() == 'true',
              useProductionDateForCalculation:
                  parts[15].toLowerCase() == 'true',
              storageLocation: _unescapeCsv(parts[16]),
              barcode: parts[17].isNotEmpty ? parts[17] : null,
              imagePaths: parts[18].isNotEmpty ? parts[18].split('|') : [],
              notes: parts[19].isNotEmpty ? _unescapeCsv(parts[19]) : null,
              createdAt: DateTime.parse(parts[20]),
              updatedAt: DateTime.parse(parts[21]),
            );
            items.add(item);
          } catch (e) {
            // 跳过解析错误的行
          }
        }
      }
    }

    return (items, reminders);
  }

  (List<Item>, List<Reminder>) _importFromTxt(String content) {
    // 简化实现：TXT格式主要用于查看，导入功能有限
    // 实际应用中可能需要更复杂的解析逻辑
    return ([], []);
  }

  (List<Item>, List<Reminder>) _importFromSql(String content) {
    // 简化实现：SQL导入需要解析SQL语句
    // 实际应用中可能需要SQLite数据库直接执行SQL
    return ([], []);
  }

  List<String> _parseCsvLine(String line) {
    final result = <String>[];
    final chars = line.split('');
    StringBuffer current = StringBuffer();
    bool inQuotes = false;

    for (int i = 0; i < chars.length; i++) {
      final char = chars[i];

      if (char == '"') {
        if (i + 1 < chars.length && chars[i + 1] == '"') {
          // 转义的双引号
          current.write('"');
          i++;
        } else {
          inQuotes = !inQuotes;
        }
      } else if (char == ',' && !inQuotes) {
        result.add(current.toString());
        current.clear();
      } else {
        current.write(char);
      }
    }

    result.add(current.toString());
    return result;
  }

  String _escapeCsv(String value) {
    if (value.contains(',') || value.contains('"') || value.contains('\n')) {
      return value.replaceAll('"', '""');
    }
    return value;
  }

  String _unescapeCsv(String value) {
    return value.replaceAll('""', '"');
  }

  String _escapeSql(String value) {
    return value.replaceAll("'", "''").replaceAll('\\', '\\\\');
  }
}
