/// 应用常量定义
class AppConstants {
  /// 应用名称
  static const String appName = '藏物方寸';

  /// 数据库相关常量
  static const String databaseName = 'item_manager.db';
  static const int databaseVersion = 10;

  /// 图片存储相关常量
  static const String imageDirectory = 'item_images';
  static const int imageQuality = 80;
  static const int imageMaxWidth = 800;
  static const int imageMaxHeight = 800;

  /// 备份相关常量
  static const String backupDirectory = 'backups';
  static const String backupFileExtension = '.zip';
  static const String backupMetadataFile = 'metadata.json';

  /// 通知相关常量
  static const String notificationChannelId = 'item_alerts';
  static const String notificationChannelName = '物品预警通知';
  static const String notificationChannelDescription = '物品过期或过保提醒';

  /// 预警设置
  static const int defaultAlertDays = 7; // 默认提前7天预警
  static const int maxAlertDays = 180; // 最大提前180天预警
  static const int minAlertDays = 1; // 最小提前1天预警

  /// 物品分类（中文，用于向后兼容）
  static const List<String> itemCategories = [
    '食品',
    '日用品',
    '化妆品',
    '药品',
    '电子产品',
    '家具',
    '服装',
    '书籍',
    '其他',
  ];

  /// 物品分类键（用于本地化）
  static const List<String> itemCategoryKeys = [
    'item_category_food',
    'item_category_daily_necessities',
    'item_category_cosmetics',
    'item_category_medicine',
    'item_category_electronics',
    'item_category_furniture',
    'item_category_clothing',
    'item_category_books',
    'item_category_other',
  ];

  /// 购买渠道（中文，用于向后兼容）
  static const List<String> purchaseChannels = [
    '线上商城',
    '实体店',
    '超市',
    '专卖店',
    '二手市场',
    '其他',
  ];

  /// 购买渠道键（用于本地化）
  static const List<String> purchaseChannelKeys = [
    'purchase_channel_online_mall',
    'purchase_channel_physical_store',
    'purchase_channel_supermarket',
    'purchase_channel_specialty_store',
    'purchase_channel_secondhand_market',
    'purchase_channel_other',
  ];

  /// 日期格式
  static const String dateFormat = 'yyyy-MM-dd';
  static const String dateTimeFormat = 'yyyy-MM-dd HH:mm:ss';

  /// 价格格式
  static const String currencySymbol = '¥';
  static const int priceDecimalDigits = 2;

  /// 可用货币符号
  static const List<String> currencySymbols = ['¥', '\$', '€', '£', '₹', '₽'];

  /// 验证规则
  static const int maxNameLength = 100;
  static const int maxNotesLength = 500;
  static const double minUnitPrice = 0.0;
  static const double maxUnitPrice = 999999.99;
  static const int minQuantity = 1;
  static const int maxQuantity = 9999;

  /// 默认值
  static const String defaultCategory = '其他';
  static const String defaultPurchaseChannel = '线上商城';
}
