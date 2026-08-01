import 'package:flutter/material.dart';
import 'package:recording/generated/l10n/app_localizations.dart';

/// 表单校验工具类
class ValidationUtils {
  /// 校验是否为空
  static String? required(
    String? value, {
    String fieldName = '该字段',
    BuildContext? context,
  }) {
    if (value == null || value.trim().isEmpty) {
      if (context != null) {
        return AppLocalizations.of(context).field_cannot_be_empty(fieldName);
      }
      return '$fieldName不能为空';
    }
    return null;
  }

  /// 校验最小长度
  static String? minLength(
    String? value,
    int minLength, {
    String fieldName = '该字段',
    BuildContext? context,
  }) {
    if (value == null) {
      if (context != null) {
        return AppLocalizations.of(context).field_cannot_be_empty(fieldName);
      }
      return '$fieldName不能为空';
    }
    if (value.trim().length < minLength) {
      if (context != null) {
        return AppLocalizations.of(
          context,
        ).field_min_length(fieldName, minLength);
      }
      return '$fieldName长度不能少于$minLength个字符';
    }
    return null;
  }

  /// 校验最大长度
  static String? maxLength(
    String? value,
    int maxLength, {
    String fieldName = '该字段',
    BuildContext? context,
  }) {
    if (value == null) {
      return null; // 空值由required校验
    }
    if (value.trim().length > maxLength) {
      if (context != null) {
        return AppLocalizations.of(
          context,
        ).field_max_length(fieldName, maxLength);
      }
      return '$fieldName长度不能超过$maxLength个字符';
    }
    return null;
  }

  /// 校验正数（包括小数）
  static String? positiveNumber(
    String? value, {
    String fieldName = '数值',
    double? min,
    double? max,
    BuildContext? context,
  }) {
    if (value == null || value.isEmpty) {
      return null; // 空值由required校验
    }
    final numValue = double.tryParse(value.trim());
    if (numValue == null) {
      if (context != null) {
        return AppLocalizations.of(context).field_positive_number(fieldName);
      }
      return '$fieldName必须是正数';
    }
    if (numValue <= 0) {
      if (context != null) {
        return AppLocalizations.of(context).field_greater_than_zero(fieldName);
      }
      return '$fieldName必须大于0';
    }
    if (min != null && numValue < min) {
      if (context != null) {
        return AppLocalizations.of(context).field_min_value(fieldName, min);
      }
      return '$fieldName不能小于$min';
    }
    if (max != null && numValue > max) {
      if (context != null) {
        return AppLocalizations.of(context).field_max_value(fieldName, max);
      }
      return '$fieldName不能大于$max';
    }
    return null;
  }

  /// 校验数字（整数或小数）
  static String? validateNumber(
    String? value, {
    String fieldName = '数值',
    bool allowDecimal = true,
    double? min,
    double? max,
    BuildContext? context,
  }) {
    if (value == null || value.isEmpty) {
      return null; // 空值由required校验
    }
    final num? numValue = allowDecimal
        ? double.tryParse(value.trim())
        : int.tryParse(value.trim());
    if (numValue == null) {
      if (context != null) {
        return AppLocalizations.of(
          context,
        ).field_invalid_number(fieldName, allowDecimal ? '数字' : '整数');
      }
      return '$fieldName必须是${allowDecimal ? '数字' : '整数'}';
    }
    if (min != null && numValue < min) {
      if (context != null) {
        return AppLocalizations.of(context).field_min_value(fieldName, min);
      }
      return '$fieldName不能小于$min';
    }
    if (max != null && numValue > max) {
      if (context != null) {
        return AppLocalizations.of(context).field_max_value(fieldName, max);
      }
      return '$fieldName不能大于$max';
    }
    return null;
  }

  /// 校验正整数
  static String? positiveInteger(
    String? value, {
    String fieldName = '数值',
    int? min,
    int? max,
    BuildContext? context,
  }) {
    return validateNumber(
      value,
      fieldName: fieldName,
      allowDecimal: false,
      min: min?.toDouble(),
      max: max?.toDouble(),
      context: context,
    );
  }

  /// 校验日期
  static String? date(
    String? value, {
    String fieldName = '日期',
    DateTime? minDate,
    DateTime? maxDate,
    bool allowPast = true,
    BuildContext? context,
  }) {
    if (value == null || value.isEmpty) {
      return null; // 空值由required校验
    }
    final dateValue = DateTime.tryParse(value.trim());
    if (dateValue == null) {
      if (context != null) {
        return AppLocalizations.of(context).field_invalid_date(fieldName);
      }
      return '请输入有效的$fieldName';
    }
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final inputDate = DateTime(dateValue.year, dateValue.month, dateValue.day);

    if (!allowPast && inputDate.isBefore(today)) {
      if (context != null) {
        return AppLocalizations.of(context).field_date_not_past(fieldName);
      }
      return '$fieldName不能是过去日期';
    }
    if (minDate != null && inputDate.isBefore(minDate)) {
      final minDateStr =
          '${minDate.year}-${minDate.month.toString().padLeft(2, '0')}-${minDate.day.toString().padLeft(2, '0')}';
      if (context != null) {
        return AppLocalizations.of(
          context,
        ).field_date_not_before(fieldName, minDateStr);
      }
      return '$fieldName不能早于$minDateStr';
    }
    if (maxDate != null && inputDate.isAfter(maxDate)) {
      final maxDateStr =
          '${maxDate.year}-${maxDate.month.toString().padLeft(2, '0')}-${maxDate.day.toString().padLeft(2, '0')}';
      if (context != null) {
        return AppLocalizations.of(
          context,
        ).field_date_not_after(fieldName, maxDateStr);
      }
      return '$fieldName不能晚于$maxDateStr';
    }
    return null;
  }

  /// 校验URL格式
  static String? url(
    String? value, {
    String fieldName = '网址',
    BuildContext? context,
  }) {
    if (value == null || value.isEmpty) {
      return null; // 空值由required校验
    }
    final urlRegex = RegExp(
      r'^(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*\/?$',
    );
    if (!urlRegex.hasMatch(value.trim())) {
      if (context != null) {
        return AppLocalizations.of(context).field_invalid_value(fieldName);
      }
      return '请输入有效的$fieldName';
    }
    return null;
  }

  /// 校验密码强度
  static String? password(
    String? value, {
    String fieldName = '密码',
    BuildContext? context,
  }) {
    if (value == null || value.isEmpty) {
      return null; // 空值由required校验
    }
    if (value.length < 8) {
      if (context != null) {
        return AppLocalizations.of(context).password_min_length(fieldName);
      }
      return '$fieldName长度不能少于8个字符';
    }
    if (!value.contains(RegExp(r'[A-Z]'))) {
      if (context != null) {
        return AppLocalizations.of(
          context,
        ).password_uppercase_required(fieldName);
      }
      return '$fieldName必须包含至少一个大写字母';
    }
    if (!value.contains(RegExp(r'[a-z]'))) {
      if (context != null) {
        return AppLocalizations.of(
          context,
        ).password_lowercase_required(fieldName);
      }
      return '$fieldName必须包含至少一个小写字母';
    }
    if (!value.contains(RegExp(r'[0-9]'))) {
      if (context != null) {
        return AppLocalizations.of(context).password_digit_required(fieldName);
      }
      return '$fieldName必须包含至少一个数字';
    }
    if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      if (context != null) {
        return AppLocalizations.of(
          context,
        ).password_special_char_required(fieldName);
      }
      return '$fieldName必须包含至少一个特殊字符';
    }
    return null;
  }

  /// 校验确认密码
  static String? confirmPassword(
    String? value,
    String password, {
    String fieldName = '确认密码',
    BuildContext? context,
  }) {
    if (value == null || value.isEmpty) {
      if (context != null) {
        return AppLocalizations.of(context).field_cannot_be_empty(fieldName);
      }
      return '$fieldName不能为空';
    }
    if (value != password) {
      if (context != null) {
        return AppLocalizations.of(context).passwords_not_match;
      }
      return '两次输入的密码不一致';
    }
    return null;
  }

  /// 组合多个校验规则
  static String? combine(List<String? Function()> validators) {
    for (final validator in validators) {
      final error = validator();
      if (error != null) {
        return error;
      }
    }
    return null;
  }

  /// 校验物品名称
  static String? itemName(String? value, {BuildContext? context}) {
    return combine([
      () => required(value, fieldName: '物品名称', context: context),
      () => maxLength(value, 100, fieldName: '物品名称', context: context),
    ]);
  }

  /// 校验物品分类
  static String? itemCategory(String? value, {BuildContext? context}) {
    return required(value, fieldName: '物品分类', context: context);
  }

  /// 校验物品数量
  static String? itemQuantity(String? value, {BuildContext? context}) {
    return combine([
      () => required(value, fieldName: '数量', context: context),
      () => positiveInteger(
        value,
        fieldName: '数量',
        min: 1,
        max: 9999,
        context: context,
      ),
    ]);
  }

  /// 校验物品单价
  static String? itemUnitPrice(String? value, {BuildContext? context}) {
    return combine([
      () => required(value, fieldName: '单价', context: context),
      () => positiveNumber(
        value,
        fieldName: '单价',
        min: 0,
        max: 999999.99,
        context: context,
      ),
    ]);
  }

  /// 校验保质期（消耗品）
  static String? expiryDate(String? value, {BuildContext? context}) {
    return combine([
      () => required(value, fieldName: '保质期', context: context),
      () => date(
        value,
        fieldName: '保质期',
        allowPast: false,
        minDate: DateTime.now(),
        context: context,
      ),
    ]);
  }

  /// 校验保修期（耐用品）
  static String? warrantyDate(String? value, {BuildContext? context}) {
    return combine([
      () => required(value, fieldName: '保修期', context: context),
      () => date(
        value,
        fieldName: '保修期',
        allowPast: false,
        minDate: DateTime.now(),
        context: context,
      ),
    ]);
  }

  /// 校验购买日期
  static String? purchaseDate(String? value, {BuildContext? context}) {
    return date(value, fieldName: '购买日期', context: context);
  }

  /// 校验备注
  static String? notes(String? value, {BuildContext? context}) {
    return maxLength(value, 500, fieldName: '备注', context: context);
  }
}
