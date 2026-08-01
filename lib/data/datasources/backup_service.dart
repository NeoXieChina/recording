import 'dart:convert';
import 'dart:io';

import 'package:archive/archive.dart';
import 'package:flutter/foundation.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:recording/constants.dart';
import 'package:recording/data/datasources/app_database.dart';
import 'package:recording/data/models/item.dart';
import 'package:recording/data/models/reminder.dart';

class BackupService {
  static final BackupService _instance = BackupService._internal();

  factory BackupService() => _instance;

  BackupService._internal();

  final AppDatabase _db = AppDatabase();

  Future<Uint8List> exportBackupToBytes() async {
    final items = await _db.getItems();
    final reminders = await _db.getAllReminders();

    final archive = Archive();

    final itemsJson = _encodeItems(items);
    archive.addFile(ArchiveFile('items.json', itemsJson.length, itemsJson));

    final remindersJson = _encodeReminders(reminders);
    archive.addFile(
      ArchiveFile('reminders.json', remindersJson.length, remindersJson),
    );

    final appDir = await getApplicationDocumentsDirectory();
    final imageDir = Directory('${appDir.path}/${AppConstants.imageDirectory}');
    if (await imageDir.exists()) {
      final files = await imageDir.list().toList();
      for (final file in files) {
        if (file is File) {
          final bytes = await file.readAsBytes();
          final relativePath = file.path.replaceFirst('${imageDir.path}/', '');
          archive.addFile(
            ArchiveFile('images/$relativePath', bytes.length, bytes),
          );
        }
      }
    }

    // 在单独的isolate中执行ZIP编码以避免阻塞UI
    final zipData = await compute(_encodeArchive, archive);
    if (zipData.isEmpty) {
      throw Exception('备份数据为空');
    }

    return Uint8List.fromList(zipData);
  }

  Future<String> exportBackup({String? savePath}) async {
    final zipData = await exportBackupToBytes();

    final appDir = await getApplicationDocumentsDirectory();

    String backupPath;
    if (savePath != null) {
      backupPath = savePath;
    } else {
      final backupDir = Directory(
        '${appDir.path}/${AppConstants.backupDirectory}',
      );
      if (!(await backupDir.exists())) {
        await backupDir.create(recursive: true);
      }

      final timestamp = DateTime.now()
          .toIso8601String()
          .replaceAll(':', '-')
          .replaceAll('.', '-');
      backupPath = '${backupDir.path}/backup_$timestamp.zip';
    }

    final backupFile = File(backupPath);
    await backupFile.writeAsBytes(zipData);

    return backupPath;
  }

  Future<int> importBackup(String zipPath) async {
    final zipFile = File(zipPath);
    if (!(await zipFile.exists())) {
      throw Exception('备份文件不存在');
    }

    final zipBytes = await zipFile.readAsBytes();
    final archive = await compute(_decodeArchive, zipBytes);

    final appDir = await getApplicationDocumentsDirectory();

    for (final file in archive) {
      if (file.isFile) {
        final data = file.content as List<int>;
        if (file.name == 'items.json') {
          await _importItems(data, appDir.path);
        } else if (file.name == 'reminders.json') {
          await _importReminders(data);
        } else if (file.name.startsWith('images/')) {
          final imagePath =
              '${appDir.path}/${AppConstants.imageDirectory}/${file.name.replaceFirst('images/', '')}';
          final imageFile = File(imagePath);
          await imageFile.parent.create(recursive: true);
          await imageFile.writeAsBytes(data);
        }
      }
    }

    return await _db.getItemCount();
  }

  List<int> _encodeItems(List<Item> items) {
    final jsonList = items.map((i) => i.toMap()).toList();
    final jsonStr = _jsonEncode(jsonList);
    // 使用UTF-8编码JSON数据
    return utf8.encode(jsonStr);
  }

  List<int> _encodeReminders(List<Reminder> reminders) {
    final jsonList = reminders.map((r) => r.toMap()).toList();
    final jsonStr = _jsonEncode(jsonList);
    // 使用UTF-8编码JSON数据
    return utf8.encode(jsonStr);
  }

  Future<void> _importItems(List<int> data, String appDirPath) async {
    // 使用UTF-8解码JSON数据
    final jsonStr = utf8.decode(data);
    final List<dynamic> jsonList = _jsonDecode(jsonStr);
    for (final map in jsonList) {
      final item = Item.fromMap(map as Map<String, dynamic>);

      // 更新图片路径：将旧路径转换为新设备的路径
      final updatedImagePaths = <String>[];
      for (final imagePath in item.imagePaths) {
        if (imagePath.isNotEmpty) {
          // 从原始路径中提取相对路径（相对于item_images目录）
          String relativePath = '';
          final imageDirName = AppConstants.imageDirectory;

          // 尝试从路径中提取item_images之后的部分
          final normalizedPath = imagePath.replaceAll('\\', '/');
          final dirIndex = normalizedPath.indexOf('$imageDirName/');
          if (dirIndex != -1) {
            // 提取item_images之后的部分（包括可能的子目录）
            final startIndex = dirIndex + imageDirName.length + 1; // +1 for '/'
            if (startIndex < normalizedPath.length) {
              relativePath = normalizedPath.substring(startIndex);
            }
          }

          // 如果无法提取相对路径，则只使用文件名
          if (relativePath.isEmpty) {
            relativePath = p.basename(imagePath);
          }

          // 构建新路径
          final newPath = p.join(appDirPath, imageDirName, relativePath);
          updatedImagePaths.add(newPath);
        }
      }

      // 创建更新后的物品
      final updatedItem = item.copyWith(imagePaths: updatedImagePaths);
      final existing = await _db.getItemById(updatedItem.id);
      if (existing != null) {
        await _db.updateItem(updatedItem);
      } else {
        await _db.insertItem(updatedItem);
      }
    }
  }

  Future<void> _importReminders(List<int> data) async {
    // 使用UTF-8解码JSON数据
    final jsonStr = utf8.decode(data);
    final List<dynamic> jsonList = _jsonDecode(jsonStr);
    for (final map in jsonList) {
      final reminder = Reminder.fromMap(map as Map<String, dynamic>);
      await _db.insertReminder(reminder);
    }
  }

  String _jsonEncode(dynamic obj) {
    final buffer = StringBuffer();
    _writeJson(obj, buffer);
    return buffer.toString();
  }

  void _writeJson(dynamic obj, StringBuffer buffer) {
    if (obj is Map) {
      buffer.write('{');
      var first = true;
      for (final key in obj.keys) {
        if (!first) buffer.write(',');
        first = false;
        buffer.write('"$key":');
        _writeJson(obj[key], buffer);
      }
      buffer.write('}');
    } else if (obj is List) {
      buffer.write('[');
      for (var i = 0; i < obj.length; i++) {
        if (i > 0) buffer.write(',');
        _writeJson(obj[i], buffer);
      }
      buffer.write(']');
    } else if (obj is String) {
      buffer.write('"${obj.replaceAll('"', '\\"').replaceAll('\n', '\\n')}"');
    } else if (obj is num || obj is bool) {
      buffer.write(obj.toString());
    } else {
      buffer.write('null');
    }
  }

  dynamic _jsonDecode(String str) {
    return _parseJson(str, 0).value;
  }

  ({dynamic value, int pos}) _parseJson(String str, int pos) {
    pos = _skipWhitespace(str, pos);
    if (str[pos] == '{') {
      final map = <String, dynamic>{};
      pos++;
      pos = _skipWhitespace(str, pos);
      if (str[pos] != '}') {
        while (true) {
          final keyResult = _parseJson(str, pos);
          final key = keyResult.value as String;
          pos = _skipWhitespace(str, keyResult.pos + 1);
          final valResult = _parseJson(str, pos);
          map[key] = valResult.value;
          pos = _skipWhitespace(str, valResult.pos);
          if (str[pos] == '}') break;
          pos++;
        }
      }
      return (value: map, pos: pos + 1);
    } else if (str[pos] == '[') {
      final list = <dynamic>[];
      pos++;
      pos = _skipWhitespace(str, pos);
      if (str[pos] != ']') {
        while (true) {
          final result = _parseJson(str, pos);
          list.add(result.value);
          pos = _skipWhitespace(str, result.pos);
          if (str[pos] == ']') break;
          pos++;
        }
      }
      return (value: list, pos: pos + 1);
    } else if (str[pos] == '"') {
      pos++;
      final buffer = StringBuffer();
      while (str[pos] != '"') {
        if (str[pos] == '\\') {
          pos++;
          if (str[pos] == 'n') {
            buffer.write('\n');
          } else {
            buffer.write(str[pos]);
          }
        } else {
          buffer.write(str[pos]);
        }
        pos++;
      }
      return (value: buffer.toString(), pos: pos + 1);
    } else if (str[pos] == 't') {
      return (value: true, pos: pos + 4);
    } else if (str[pos] == 'f') {
      return (value: false, pos: pos + 5);
    } else if (str[pos] == 'n') {
      return (value: null, pos: pos + 4);
    } else {
      final start = pos;
      while (pos < str.length && '0123456789.eE+-'.contains(str[pos])) {
        pos++;
      }
      final numStr = str.substring(start, pos);
      return (
        value: numStr.contains('.') ? double.parse(numStr) : int.parse(numStr),
        pos: pos,
      );
    }
  }

  int _skipWhitespace(String str, int pos) {
    while (pos < str.length && ' \t\n\r'.contains(str[pos])) {
      pos++;
    }
    return pos;
  }

  // 在isolate中执行ZIP编码的静态函数
  static List<int> _encodeArchive(Archive archive) {
    return ZipEncoder().encode(archive);
  }

  // 在isolate中执行ZIP解码的静态函数
  static Archive _decodeArchive(List<int> zipBytes) {
    return ZipDecoder().decodeBytes(zipBytes);
  }
}
