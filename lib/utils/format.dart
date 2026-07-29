import 'package:intl/intl.dart';
import 'package:recording/constants.dart';

/// 格式化工具类
class FormatUtils {
  /// 日期格式化器
  static final DateFormat _dateFormat = DateFormat(AppConstants.dateFormat);
  static final DateFormat _dateTimeFormat = DateFormat(
    AppConstants.dateTimeFormat,
  );

  /// 价格格式化器
  static final NumberFormat _priceFormat = NumberFormat.currency(
    symbol: AppConstants.currencySymbol,
    decimalDigits: AppConstants.priceDecimalDigits,
  );

  /// 格式化日期（yyyy-MM-dd）
  static String formatDate(DateTime date) {
    return _dateFormat.format(date);
  }

  /// 格式化日期时间（yyyy-MM-dd HH:mm:ss）
  static String formatDateTime(DateTime dateTime) {
    return _dateTimeFormat.format(dateTime);
  }

  /// 解析日期字符串
  static DateTime? parseDate(String dateString) {
    try {
      return _dateFormat.parse(dateString);
    } catch (e) {
      return null;
    }
  }

  /// 解析日期时间字符串
  static DateTime? parseDateTime(String dateTimeString) {
    try {
      return _dateTimeFormat.parse(dateTimeString);
    } catch (e) {
      return null;
    }
  }

  /// 格式化价格
  static String formatPrice(double price, {String? currencySymbol}) {
    if (currencySymbol != null) {
      return NumberFormat.currency(
        symbol: currencySymbol,
        decimalDigits: AppConstants.priceDecimalDigits,
      ).format(price);
    }
    return _priceFormat.format(price);
  }

  /// 解析价格字符串
  static double? parsePrice(String priceString, {String? currencySymbol}) {
    try {
      // 移除货币符号和千位分隔符
      String cleanString = priceString;
      if (currencySymbol != null) {
        cleanString = cleanString.replaceAll(currencySymbol, '');
      } else {
        cleanString = cleanString.replaceAll(AppConstants.currencySymbol, '');
      }
      cleanString = cleanString.replaceAll(',', '').trim();
      return double.parse(cleanString);
    } catch (e) {
      return null;
    }
  }

  /// 格式化数量
  static String formatQuantity(int quantity) {
    return quantity.toString();
  }

  /// 计算总价
  static double calculateTotalPrice(double unitPrice, int quantity) {
    return unitPrice * quantity;
  }

  /// 格式化总价
  static String formatTotalPrice(double unitPrice, int quantity, {String? currencySymbol}) {
    final totalPrice = calculateTotalPrice(unitPrice, quantity);
    return formatPrice(totalPrice, currencySymbol: currencySymbol);
  }

  /// 格式化剩余天数
  /// [isWarranty] 是否为保修日期（true: 过保, false: 到期）
  static String formatRemainingDays(DateTime targetDate, {bool isWarranty = false}) {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final target = DateTime(targetDate.year, targetDate.month, targetDate.day);

    final difference = target.difference(today);
    final days = difference.inDays;

    final suffix = isWarranty ? '过保' : '到期';

    if (days == 0) {
      return '今天$suffix';
    } else if (days == 1) {
      return '明天$suffix';
    } else if (days == -1) {
      return '昨天已$suffix';
    } else if (days < 0) {
      return '已${isWarranty ? '过保' : '过期'}${-days}天';
    } else {
      return '剩余$days天$suffix';
    }
  }

  /// 格式化文件大小
  static String formatFileSize(int bytes) {
    if (bytes < 1024) {
      return '${bytes}B';
    } else if (bytes < 1024 * 1024) {
      return '${(bytes / 1024).toStringAsFixed(1)}KB';
    } else if (bytes < 1024 * 1024 * 1024) {
      return '${(bytes / (1024 * 1024)).toStringAsFixed(1)}MB';
    } else {
      return '${(bytes / (1024 * 1024 * 1024)).toStringAsFixed(1)}GB';
    }
  }

  /// 格式化时间间隔
  static String formatDuration(Duration duration) {
    if (duration.inDays > 0) {
      return '${duration.inDays}天${duration.inHours.remainder(24)}小时';
    } else if (duration.inHours > 0) {
      return '${duration.inHours}小时${duration.inMinutes.remainder(60)}分钟';
    } else if (duration.inMinutes > 0) {
      return '${duration.inMinutes}分钟${duration.inSeconds.remainder(60)}秒';
    } else {
      return '${duration.inSeconds}秒';
    }
  }

  /// 格式化分类显示名称
  static String formatCategory(String category) {
    return category;
  }

  /// 格式化购买渠道显示名称
  static String formatPurchaseChannel(String channel) {
    return channel;
  }

  /// 截断文本
  static String truncateText(String text, int maxLength) {
    if (text.length <= maxLength) {
      return text;
    }
    return '${text.substring(0, maxLength)}...';
  }

  /// 格式化物品类型显示名称
  static String formatItemType(String type) {
    switch (type) {
      case 'consumable':
        return '消耗品';
      case 'durable':
        return '耐用品';
      default:
        return type;
    }
  }

  /// 格式化物品状态
  static String formatItemStatus(DateTime? expiryDate, DateTime? warrantyDate) {
    final now = DateTime.now();

    if (expiryDate != null) {
      final daysUntilExpiry = expiryDate.difference(now).inDays;
      if (daysUntilExpiry < 0) {
        return '已过期';
      } else if (daysUntilExpiry <= 7) {
        return '即将过期';
      } else {
        return '正常';
      }
    } else if (warrantyDate != null) {
      final daysUntilWarranty = warrantyDate.difference(now).inDays;
      if (daysUntilWarranty < 0) {
        return '已过保';
      } else if (daysUntilWarranty <= 30) {
        return '即将过保';
      } else {
        return '在保';
      }
    }

    return '正常';
  }

  /// 获取物品状态颜色
  static int getItemStatusColor(DateTime? expiryDate, DateTime? warrantyDate) {
    final now = DateTime.now();

    if (expiryDate != null) {
      final daysUntilExpiry = expiryDate.difference(now).inDays;
      if (daysUntilExpiry < 0) {
        return 0xFFFF5252; // 红色 - 已过期
      } else if (daysUntilExpiry <= 7) {
        return 0xFFFF9800; // 橙色 - 即将过期
      } else {
        return 0xFF4CAF50; // 绿色 - 正常
      }
    } else if (warrantyDate != null) {
      final daysUntilWarranty = warrantyDate.difference(now).inDays;
      if (daysUntilWarranty < 0) {
        return 0xFFFF5252; // 红色 - 已过保
      } else if (daysUntilWarranty <= 30) {
        return 0xFFFF9800; // 橙色 - 即将过保
      } else {
        return 0xFF4CAF50; // 绿色 - 在保
      }
    }

    return 0xFF2196F3; // 蓝色 - 正常
  }

  /// 格式化图片数量
  static String formatImageCount(int count) {
    if (count == 0) {
      return '无图片';
    } else if (count == 1) {
      return '1张图片';
    } else {
      return '$count张图片';
    }
  }

  /// 格式化创建时间（相对时间）
  static String formatRelativeTime(DateTime dateTime) {
    final now = DateTime.now();
    final difference = now.difference(dateTime);

    if (difference.inDays > 365) {
      final years = (difference.inDays / 365).floor();
      return '$years年前';
    } else if (difference.inDays > 30) {
      final months = (difference.inDays / 30).floor();
      return '$months个月前';
    } else if (difference.inDays > 0) {
      return '${difference.inDays}天前';
    } else if (difference.inHours > 0) {
      return '${difference.inHours}小时前';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes}分钟前';
    } else {
      return '刚刚';
    }
  }
}
