import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:recording/constants.dart';
import 'package:recording/data/models/app_settings.dart';
import 'package:recording/data/models/item.dart';
import 'package:recording/data/models/location.dart';
import 'package:recording/data/models/operation_log.dart';
import 'package:recording/data/models/reminder.dart';
import 'package:sqflite/sqflite.dart';

class AppDatabase {
  static final AppDatabase _instance = AppDatabase._internal();

  factory AppDatabase() => _instance;

  AppDatabase._internal();

  Database? _db;

  Future<Database> get database async {
    _db ??= await _initDb();
    return _db!;
  }

  Future<Database> _initDb() async {
    final dbPath = await getDatabasesPath();
    final path = p.join(dbPath, AppConstants.databaseName);

    return openDatabase(
      path,
      version: AppConstants.databaseVersion,
      onCreate: _onCreate,
      onUpgrade: _onUpgrade,
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE items (
        id TEXT PRIMARY KEY,
        name TEXT NOT NULL,
        category TEXT NOT NULL,
        itemType INTEGER NOT NULL,
        quantity INTEGER NOT NULL,
        unit TEXT NOT NULL,
        unitPrice REAL NOT NULL,
        currencySymbol TEXT NOT NULL DEFAULT '¥',
        expiryDate INTEGER,
        warrantyDate INTEGER,
        purchaseDate INTEGER,
        productionDate INTEGER,
        shelfLifeMonths INTEGER,
        shelfLifeDays INTEGER,
        usePurchaseDateForCalculation INTEGER NOT NULL DEFAULT 0,
        useProductionDateForCalculation INTEGER NOT NULL DEFAULT 0,
        storageLocation TEXT NOT NULL DEFAULT '',
        barcode TEXT,
        imagePaths TEXT NOT NULL DEFAULT '',
        notes TEXT,
        enableAlert INTEGER NOT NULL DEFAULT 1,
        alertMethod INTEGER NOT NULL DEFAULT 0,
        alertDaysBefore INTEGER,
        createdAt INTEGER NOT NULL,
        updatedAt INTEGER NOT NULL
      )
    ''');

    await db.execute('''
      CREATE TABLE reminders (
        id TEXT PRIMARY KEY,
        itemId TEXT NOT NULL,
        reminderDate INTEGER NOT NULL,
        isSyncedToCalendar INTEGER NOT NULL DEFAULT 0,
        notificationId TEXT,
        FOREIGN KEY (itemId) REFERENCES items (id) ON DELETE CASCADE
      )
    ''');

    await db.execute('''
      CREATE TABLE operation_logs (
        id TEXT PRIMARY KEY,
        operationType INTEGER NOT NULL,
        itemData TEXT NOT NULL,
        quantityChange INTEGER,
        fieldChanges TEXT,
        operator TEXT,
        createdAt INTEGER NOT NULL
      )
    ''');

    await db.execute('''
      CREATE TABLE locations (
        id TEXT PRIMARY KEY,
        name TEXT NOT NULL UNIQUE,
        isPublic INTEGER NOT NULL DEFAULT 0,
        manager TEXT
      )
    ''');

    await db.execute('''
      CREATE TABLE settings (
        id TEXT PRIMARY KEY,
        defaultManager TEXT NOT NULL DEFAULT ''
      )
    ''');

    await db.insert('settings', {'id': 'default', 'defaultManager': ''});
  }

  Future<void> _onUpgrade(Database db, int oldVersion, int newVersion) async {
    if (oldVersion < 2) {
      // 版本1升级到版本2：添加新字段
      await db.execute('''
        ALTER TABLE items ADD COLUMN purchaseDate INTEGER
      ''');
      await db.execute('''
        ALTER TABLE items ADD COLUMN productionDate INTEGER
      ''');
      await db.execute('''
        ALTER TABLE items ADD COLUMN shelfLifeMonths INTEGER
      ''');
      await db.execute('''
        ALTER TABLE items ADD COLUMN shelfLifeDays INTEGER
      ''');
      await db.execute('''
        ALTER TABLE items ADD COLUMN usePurchaseDateForCalculation INTEGER NOT NULL DEFAULT 0
      ''');
      await db.execute('''
        ALTER TABLE items ADD COLUMN useProductionDateForCalculation INTEGER NOT NULL DEFAULT 0
      ''');
    }
    if (oldVersion < 3) {
      // 版本2升级到版本3：添加存储地点字段
      await db.execute('''
        ALTER TABLE items ADD COLUMN storageLocation TEXT NOT NULL DEFAULT ''
      ''');
    }
    if (oldVersion < 4) {
      // 版本3升级到版本4：添加货币符号字段
      await db.execute('''
        ALTER TABLE items ADD COLUMN currencySymbol TEXT NOT NULL DEFAULT '¥'
      ''');
    }
    if (oldVersion < 5) {
      // 版本4升级到版本5：添加条码字段
      await db.execute('''
        ALTER TABLE items ADD COLUMN barcode TEXT
      ''');
    }
    if (oldVersion < 6) {
      // 版本5升级到版本6：添加提醒相关字段
      await db.execute('''
        ALTER TABLE items ADD COLUMN enableAlert INTEGER NOT NULL DEFAULT 1
      ''');
      await db.execute('''
        ALTER TABLE items ADD COLUMN alertMethod INTEGER NOT NULL DEFAULT 0
      ''');
      await db.execute('''
        ALTER TABLE items ADD COLUMN alertDaysBefore INTEGER
      ''');
    }
    if (oldVersion < 7) {
      // 版本6升级到版本7：添加操作日志表
      await db.execute('''
        CREATE TABLE operation_logs (
          id TEXT PRIMARY KEY,
          operationType INTEGER NOT NULL,
          itemData TEXT NOT NULL,
          createdAt INTEGER NOT NULL
        )
      ''');
    }
    if (oldVersion < 8) {
      // 版本7升级到版本8：清空旧格式的操作日志数据
      await db.delete('operation_logs');
    }
    if (oldVersion < 9) {
      // 版本8升级到版本9：添加数量变化字段
      await db.execute('''
        ALTER TABLE operation_logs ADD COLUMN quantityChange INTEGER
      ''');
    }
    if (oldVersion < 10) {
      // 版本9升级到版本10：添加字段变化字段
      await db.execute('''
        ALTER TABLE operation_logs ADD COLUMN fieldChanges TEXT
      ''');
    }
    if (oldVersion < 11) {
      // 版本10升级到版本11：添加操作人字段、地点表、设置表
      await db.execute('''
        ALTER TABLE operation_logs ADD COLUMN operator TEXT
      ''');
      await db.execute('''
        CREATE TABLE locations (
          id TEXT PRIMARY KEY,
          name TEXT NOT NULL UNIQUE,
          isPublic INTEGER NOT NULL DEFAULT 0,
          manager TEXT
        )
      ''');
      await db.execute('''
        CREATE TABLE settings (
          id TEXT PRIMARY KEY,
          defaultManager TEXT NOT NULL DEFAULT ''
        )
      ''');
      await db.insert('settings', {'id': 'default', 'defaultManager': ''});
    }
  }

  Future<List<Item>> getItems() async {
    final db = await database;
    final maps = await db.query('items', orderBy: 'updatedAt DESC');
    return maps.map((m) => Item.fromMap(m)).toList();
  }

  Future<Item?> getItemById(String id) async {
    final db = await database;
    final maps = await db.query('items', where: 'id = ?', whereArgs: [id]);
    if (maps.isEmpty) return null;
    return Item.fromMap(maps.first);
  }

  Future<Item?> getItemByBarcode(String barcode) async {
    final db = await database;
    final maps = await db.query(
      'items',
      where: 'barcode = ?',
      whereArgs: [barcode],
    );
    if (maps.isEmpty) return null;
    return Item.fromMap(maps.first);
  }

  Future<Item> insertItem(Item item) async {
    final db = await database;
    await db.insert('items', item.toMap());
    return item;
  }

  Future<Item> updateItem(Item item) async {
    final db = await database;
    await db.update(
      'items',
      item.toMap(),
      where: 'id = ?',
      whereArgs: [item.id],
    );
    return item;
  }

  Future<void> deleteItem(String id) async {
    final db = await database;

    // 先获取物品的图片路径
    final item = await getItemById(id);
    if (item != null && item.imagePaths.isNotEmpty) {
      // 删除所有关联的图片文件
      for (final imagePath in item.imagePaths) {
        final file = File(imagePath);
        if (await file.exists()) {
          await file.delete();
        }
      }
    }

    await db.delete('reminders', where: 'itemId = ?', whereArgs: [id]);
    await db.delete('items', where: 'id = ?', whereArgs: [id]);
  }

  Future<List<Item>> searchItems(String query) async {
    final db = await database;
    final maps = await db.query(
      'items',
      where: 'name LIKE ? OR category LIKE ? OR notes LIKE ?',
      whereArgs: ['%$query%', '%$query%', '%$query%'],
      orderBy: 'updatedAt DESC',
    );
    return maps.map((m) => Item.fromMap(m)).toList();
  }

  Future<List<Item>> getItemsByType(ItemType type) async {
    final db = await database;
    final maps = await db.query(
      'items',
      where: 'itemType = ?',
      whereArgs: [type.index],
      orderBy: 'updatedAt DESC',
    );
    return maps.map((m) => Item.fromMap(m)).toList();
  }

  Future<List<Item>> getExpiringItems(int days) async {
    final db = await database;
    final threshold = DateTime.now()
        .add(Duration(days: days))
        .millisecondsSinceEpoch;
    final maps = await db.query(
      'items',
      where:
          'itemType = ? AND expiryDate IS NOT NULL AND expiryDate <= ? AND expiryDate >= ? AND enableAlert = 1',
      whereArgs: [
        ItemType.consumable.index,
        threshold,
        DateTime.now().millisecondsSinceEpoch,
      ],
    );
    return maps.map((m) => Item.fromMap(m)).toList();
  }

  Future<List<Item>> getWarrantyExpiringItems(int days) async {
    final db = await database;
    final threshold = DateTime.now()
        .add(Duration(days: days))
        .millisecondsSinceEpoch;
    final maps = await db.query(
      'items',
      where:
          'itemType = ? AND warrantyDate IS NOT NULL AND warrantyDate <= ? AND warrantyDate >= ? AND enableAlert = 1',
      whereArgs: [
        ItemType.durable.index,
        threshold,
        DateTime.now().millisecondsSinceEpoch,
      ],
    );
    return maps.map((m) => Item.fromMap(m)).toList();
  }

  Future<Reminder> insertReminder(Reminder reminder) async {
    final db = await database;
    await db.insert('reminders', reminder.toMap());
    return reminder;
  }

  Future<void> updateReminder(Reminder reminder) async {
    final db = await database;
    await db.update(
      'reminders',
      reminder.toMap(),
      where: 'id = ?',
      whereArgs: [reminder.id],
    );
  }

  Future<void> deleteReminder(String id) async {
    final db = await database;
    await db.delete('reminders', where: 'id = ?', whereArgs: [id]);
  }

  Future<List<Reminder>> getRemindersByItemId(String itemId) async {
    final db = await database;
    final maps = await db.query(
      'reminders',
      where: 'itemId = ?',
      whereArgs: [itemId],
    );
    return maps.map((m) => Reminder.fromMap(m)).toList();
  }

  Future<List<Reminder>> getAllReminders() async {
    final db = await database;
    final maps = await db.query('reminders');
    return maps.map((m) => Reminder.fromMap(m)).toList();
  }

  Future<int> getItemCount() async {
    final db = await database;
    final result = await db.rawQuery('SELECT COUNT(*) as count FROM items');
    return Sqflite.firstIntValue(result) ?? 0;
  }

  Future<OperationLog> insertOperationLog(OperationLog log) async {
    final db = await database;
    await db.insert('operation_logs', log.toMap());
    return log;
  }

  Future<List<OperationLog>> getRecentOperationLogs(int limit) async {
    final db = await database;
    final maps = await db.query(
      'operation_logs',
      orderBy: 'createdAt DESC',
      limit: limit,
    );
    return maps.map((m) => OperationLog.fromMap(m)).toList();
  }

  Future<void> deleteOperationLog(String id) async {
    final db = await database;
    await db.delete('operation_logs', where: 'id = ?', whereArgs: [id]);
  }

  Future<void> clearOldOperationLogs(int keepCount) async {
    final db = await database;
    final allLogs = await db.query(
      'operation_logs',
      orderBy: 'createdAt DESC',
    );
    if (allLogs.length > keepCount) {
      final logsToDelete = allLogs.skip(keepCount);
      for (final log in logsToDelete) {
        await db.delete(
          'operation_logs',
          where: 'id = ?',
          whereArgs: [log['id']],
        );
      }
    }
  }

  Future<void> updateItemQuantity(String itemId, int additionalQuantity) async {
    final item = await getItemById(itemId);
    if (item != null) {
      final updatedItem = item.copyWith(
        quantity: item.quantity + additionalQuantity,
      );
      await updateItem(updatedItem);
    }
  }

  Future<List<Location>> getLocations() async {
    final db = await database;
    final maps = await db.query('locations', orderBy: 'name ASC');
    return maps.map((m) => Location.fromMap(m)).toList();
  }

  Future<Location?> getLocationByName(String name) async {
    final db = await database;
    final maps = await db.query('locations', where: 'name = ?', whereArgs: [name]);
    if (maps.isEmpty) return null;
    return Location.fromMap(maps.first);
  }

  Future<Location> insertLocation(Location location) async {
    final db = await database;
    await db.insert('locations', location.toMap());
    return location;
  }

  Future<Location> updateLocation(Location location) async {
    final db = await database;
    await db.update(
      'locations',
      location.toMap(),
      where: 'id = ?',
      whereArgs: [location.id],
    );
    return location;
  }

  Future<void> deleteLocation(String id) async {
    final db = await database;
    await db.delete('locations', where: 'id = ?', whereArgs: [id]);
  }

  Future<AppSettings> getSettings() async {
    final db = await database;
    final maps = await db.query('settings', where: 'id = ?', whereArgs: ['default']);
    if (maps.isEmpty) {
      final settings = AppSettings(defaultManager: '');
      await db.insert('settings', settings.toMap());
      return settings;
    }
    return AppSettings.fromMap(maps.first);
  }

  Future<AppSettings> updateSettings(AppSettings settings) async {
    final db = await database;
    await db.update(
      'settings',
      settings.toMap(),
      where: 'id = ?',
      whereArgs: [settings.id],
    );
    return settings;
  }
}
