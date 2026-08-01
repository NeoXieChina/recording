import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:recording/constants.dart';
import 'package:recording/data/models/item.dart';
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
          'itemType = ? AND expiryDate IS NOT NULL AND expiryDate <= ? AND expiryDate >= ?',
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
          'itemType = ? AND warrantyDate IS NOT NULL AND warrantyDate <= ? AND warrantyDate >= ?',
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
}
