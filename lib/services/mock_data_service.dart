import 'dart:io';
import 'dart:math';
import 'package:path/path.dart' as p;
import 'package:sqflite/sqflite.dart';
import 'package:flutter/foundation.dart';
import 'package:recording/data/datasources/app_database.dart';
import 'package:recording/data/models/item.dart';
import 'package:recording/constants.dart';

/// 模拟数据服务
/// 
/// 此服务用于在应用安装后初始化测试数据，便于调试和演示。
/// 
/// 使用说明：
/// 1. 在 lib/main.dart 中将 enableMockData 设置为 true 启用模拟数据
/// 2. 应用首次启动时会自动插入20条模拟数据
/// 3. 模拟数据包括消耗品和耐用品，涵盖各种分类和存储地点
/// 
/// 上线前移除步骤：
/// 1. 将 lib/main.dart 中的 enableMockData 常量改为 false
/// 2. 或直接删除模拟数据初始化代码
/// 
/// 注意：模拟数据仅在数据库为空时插入，不会覆盖现有数据。

/// 模拟数据服务，用于在调试模式下初始化测试数据
class MockDataService {
  final AppDatabase _db;

  MockDataService(this._db);

  /// 生成随机中文名称
  String _generateRandomChineseName() {
    final List<String> adjectives = [
      '新鲜', '优质', '经典', '时尚', '实用', '智能', '便携', '高效', '环保', '健康',
      '美味', '营养', '精致', '耐用', '舒适', '安全', '快速', '经济', '豪华', '简约'
    ];
    
    final List<String> nouns = [
      '大米', '牛奶', '面包', '鸡蛋', '苹果', '香蕉', '橙子', '咖啡', '茶叶', '巧克力',
      '洗发水', '沐浴露', '牙膏', '纸巾', '洗衣液', '洗洁精', '面膜', '口红', '香水', '护肤品',
      '感冒药', '创可贴', '维生素', '止痛药', '消毒水', '体温计', '口罩', '棉签', '药膏', '眼药水',
      '手机', '耳机', '充电器', '键盘', '鼠标', '平板', '笔记本', '显示器', '路由器', '摄像头',
      '沙发', '椅子', '桌子', '床', '衣柜', '书架', '灯具', '地毯', '窗帘', '装饰画',
      'T恤', '牛仔裤', '外套', '鞋子', '帽子', '围巾', '手套', '袜子', '内衣', '睡衣',
      '小说', '教材', '杂志', '漫画', '词典', '笔记本', '钢笔', '铅笔', '橡皮', '尺子'
    ];
    
    final random = Random();
    final adjective = adjectives[random.nextInt(adjectives.length)];
    final noun = nouns[random.nextInt(nouns.length)];
    return '$adjective$noun';
  }

  /// 生成随机存储地点
  String _generateRandomLocation() {
    final List<String> locations = [
      '厨房冰箱',
      '厨房柜子',
      '客厅电视柜',
      '客厅茶几',
      '卧室衣柜',
      '卧室床头柜',
      '书房书架',
      '书房书桌',
      '卫生间储物柜',
      '阳台储物间',
      '车库工具箱',
      '地下室储物架',
      '办公室抽屉',
      '儿童房玩具箱',
      '衣帽间',
      '餐厅酒柜',
      '玄关鞋柜',
      '洗衣房',
      '阁楼',
      '花园工具房'
    ];
    
    final random = Random();
    return locations[random.nextInt(locations.length)];
  }

  /// 生成随机备注
  String? _generateRandomNotes() {
    final List<String> notes = [
      '日常必需品，需要定期补充',
      '促销时购买，性价比高',
      '朋友推荐，使用效果不错',
      '备用物品，防止急需时没有',
      '季节性用品，注意保存期限',
      '家庭常备，消耗较快',
      '品质优良，值得回购',
      '特殊场合使用，平时少用',
      '旅行时购买，有纪念意义',
      '工作需要，经常使用',
      '儿童专用，注意安全',
      '宠物用品，定期检查',
      '健身辅助，帮助锻炼',
      '学习工具，提高效率',
      '装饰用品，美化环境',
      '清洁用品，保持卫生',
      '急救用品，注意有效期',
      '电子产品，防潮防尘',
      '衣物类，注意季节更换',
      '食品类，注意保鲜'
    ];
    
    final random = Random();
    // 70%的概率添加备注
    if (random.nextDouble() < 0.7) {
      return notes[random.nextInt(notes.length)];
    }
    return null;
  }

  /// 生成随机日期（过去30天内）
  DateTime _generateRandomPastDate() {
    final random = Random();
    final now = DateTime.now();
    final daysAgo = random.nextInt(30);
    return now.subtract(Duration(days: daysAgo));
  }

  /// 生成随机未来日期（1-365天内）
  DateTime _generateRandomFutureDate(int minDays, int maxDays) {
    final random = Random();
    final days = minDays + random.nextInt(maxDays - minDays + 1);
    return DateTime.now().add(Duration(days: days));
  }

  /// 生成模拟物品数据
  List<Item> _generateMockItems() {
    final random = Random();
    final items = <Item>[];
    final now = DateTime.now();

    // 消耗品类物品
    for (int i = 0; i < 12; i++) {
      final category = AppConstants.itemCategories[random.nextInt(AppConstants.itemCategories.length)];
      final purchaseDate = _generateRandomPastDate();
      final expiryDate = _generateRandomFutureDate(1, 180); // 1-180天内过期
      
      items.add(Item(
        name: _generateRandomChineseName(),
        category: category,
        itemType: ItemType.consumable,
        quantity: 1 + random.nextInt(10), // 1-10个
        unit: ['个', '瓶', '包', '盒', '袋', '件'][random.nextInt(6)],
        unitPrice: (10 + random.nextInt(200)).toDouble(), // 10-210元
        currencySymbol: AppConstants.currencySymbol,
        expiryDate: expiryDate,
        purchaseDate: purchaseDate,
        storageLocation: _generateRandomLocation(),
        notes: _generateRandomNotes(),
        createdAt: purchaseDate,
        updatedAt: now,
      ));
    }

    // 耐用品类物品
    for (int i = 0; i < 8; i++) {
      final category = AppConstants.itemCategories[random.nextInt(AppConstants.itemCategories.length)];
      final purchaseDate = _generateRandomPastDate();
      final warrantyDate = _generateRandomFutureDate(30, 730); // 30-730天内保修到期
      
      items.add(Item(
        name: _generateRandomChineseName(),
        category: category,
        itemType: ItemType.durable,
        quantity: 1,
        unit: '个',
        unitPrice: (100 + random.nextInt(2000)).toDouble(), // 100-2100元
        currencySymbol: AppConstants.currencySymbol,
        warrantyDate: warrantyDate,
        purchaseDate: purchaseDate,
        storageLocation: _generateRandomLocation(),
        notes: _generateRandomNotes(),
        createdAt: purchaseDate,
        updatedAt: now,
      ));
    }

    return items;
  }

  /// 初始化模拟数据（仅在数据库为空时）
  Future<void> initializeMockData() async {
    try {
      // 检查数据库中是否有数据
      final itemCount = await _db.getItemCount();
      
      // 如果数据库为空，则插入模拟数据
      if (itemCount == 0) {
        final mockItems = _generateMockItems();
        
        for (final item in mockItems) {
          await _db.insertItem(item);
        }
        
        debugPrint('✅ 已成功初始化 ${mockItems.length} 条模拟数据');
      } else {
        debugPrint('📊 数据库已有 $itemCount 条数据，跳过模拟数据初始化');
      }
    } catch (e) {
      debugPrint('❌ 初始化模拟数据时出错: $e');
      debugPrint('⚠️ 可能是数据库结构不匹配，建议清除应用数据或重新安装');
    }
  }

  /// 开发工具：重置数据库（仅用于调试）
  Future<void> resetDatabaseForDebug() async {
    try {
      final db = await _db.database;
      await db.close();
      final dbPath = await getDatabasesPath();
      final path = p.join(dbPath, AppConstants.databaseName);
      final file = File(path);
      if (await file.exists()) {
        await file.delete();
        debugPrint('🗑️ 已删除旧数据库文件');
      }
    } catch (e) {
      debugPrint('❌ 重置数据库时出错: $e');
    }
  }
}