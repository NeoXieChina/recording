/// 表单校验工具类
class ValidationUtils {
  /// 校验是否为空
  static String? required(String? value, {String fieldName = '该字段'}) {
    if (value == null || value.trim().isEmpty) {
      return '$fieldName不能为空';
    }
    return null;
  }

  /// 校验最小长度
  static String? minLength(
    String? value,
    int minLength, {
    String fieldName = '该字段',
  }) {
    if (value == null) {
      return '$fieldName不能为空';
    }
    if (value.trim().length < minLength) {
      return '$fieldName长度不能少于$minLength个字符';
    }
    return null;
  }

  /// 校验最大长度
  static String? maxLength(
    String? value,
    int maxLength, {
    String fieldName = '该字段',
  }) {
    if (value == null) {
      return null; // 空值由required校验
    }
    if (value.trim().length > maxLength) {
      return '$fieldName长度不能超过$maxLength个字符';
    }
    return null;
  }

  /// 校验长度范围
  static String? lengthRange(
    String? value,
    int minLength,
    int maxLength, {
    String fieldName = '该字段',
  }) {
    if (value == null) {
      return '$fieldName不能为空';
    }
    final trimmedValue = value.trim();
    if (trimmedValue.length < minLength) {
      return '$fieldName长度不能少于$minLength个字符';
    }
    if (trimmedValue.length > maxLength) {
      return '$fieldName长度不能超过$maxLength个字符';
    }
    return null;
  }

  /// 校验邮箱格式
  static String? email(String? value, {String fieldName = '邮箱'}) {
    if (value == null || value.isEmpty) {
      return null; // 空值由required校验
    }
    final emailRegex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );
    if (!emailRegex.hasMatch(value.trim())) {
      return '请输入有效的$fieldName地址';
    }
    return null;
  }

  /// 校验手机号格式（中国）
  static String? phone(String? value, {String fieldName = '手机号'}) {
    if (value == null || value.isEmpty) {
      return null; // 空值由required校验
    }
    final phoneRegex = RegExp(r'^1[3-9]\d{9}$');
    if (!phoneRegex.hasMatch(value.trim())) {
      return '请输入有效的$fieldName';
    }
    return null;
  }

  /// 校验数字
  static String? number(
    String? value, {
    String fieldName = '数值',
    double? min,
    double? max,
    bool allowDecimal = true,
  }) {
    if (value == null || value.isEmpty) {
      return null; // 空值由required校验
    }
    final numValue = allowDecimal
        ? double.tryParse(value.trim())
        : int.tryParse(value.trim());
    if (numValue == null) {
      return '$fieldName必须是${allowDecimal ? '数字' : '整数'}';
    }
    if (min != null && numValue < min) {
      return '$fieldName不能小于$min';
    }
    if (max != null && numValue > max) {
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
  }) {
    if (value == null || value.isEmpty) {
      return null; // 空值由required校验
    }
    final intValue = int.tryParse(value.trim());
    if (intValue == null) {
      return '$fieldName必须是正整数';
    }
    if (intValue <= 0) {
      return '$fieldName必须大于0';
    }
    if (min != null && intValue < min) {
      return '$fieldName不能小于$min';
    }
    if (max != null && intValue > max) {
      return '$fieldName不能大于$max';
    }
    return null;
  }

  /// 校验正数（包括小数）
  static String? positiveNumber(
    String? value, {
    String fieldName = '数值',
    double? min,
    double? max,
  }) {
    if (value == null || value.isEmpty) {
      return null; // 空值由required校验
    }
    final numValue = double.tryParse(value.trim());
    if (numValue == null) {
      return '$fieldName必须是正数';
    }
    if (numValue <= 0) {
      return '$fieldName必须大于0';
    }
    if (min != null && numValue < min) {
      return '$fieldName不能小于$min';
    }
    if (max != null && numValue > max) {
      return '$fieldName不能大于$max';
    }
    return null;
  }

  /// 校验日期
  static String? date(
    String? value, {
    String fieldName = '日期',
    DateTime? minDate,
    DateTime? maxDate,
    bool allowPast = true,
  }) {
    if (value == null || value.isEmpty) {
      return null; // 空值由required校验
    }
    final dateValue = DateTime.tryParse(value.trim());
    if (dateValue == null) {
      return '请输入有效的$fieldName';
    }
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final inputDate = DateTime(dateValue.year, dateValue.month, dateValue.day);

    if (!allowPast && inputDate.isBefore(today)) {
      return '$fieldName不能是过去日期';
    }
    if (minDate != null && inputDate.isBefore(minDate)) {
      final minDateStr =
          '${minDate.year}-${minDate.month.toString().padLeft(2, '0')}-${minDate.day.toString().padLeft(2, '0')}';
      return '$fieldName不能早于$minDateStr';
    }
    if (maxDate != null && inputDate.isAfter(maxDate)) {
      final maxDateStr =
          '${maxDate.year}-${maxDate.month.toString().padLeft(2, '0')}-${maxDate.day.toString().padLeft(2, '0')}';
      return '$fieldName不能晚于$maxDateStr';
    }
    return null;
  }

  /// 校验URL格式
  static String? url(String? value, {String fieldName = '网址'}) {
    if (value == null || value.isEmpty) {
      return null; // 空值由required校验
    }
    final urlRegex = RegExp(
      r'^(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*\/?$',
    );
    if (!urlRegex.hasMatch(value.trim())) {
      return '请输入有效的$fieldName';
    }
    return null;
  }

  /// 校验密码强度
  static String? password(String? value, {String fieldName = '密码'}) {
    if (value == null || value.isEmpty) {
      return null; // 空值由required校验
    }
    if (value.length < 8) {
      return '$fieldName长度不能少于8个字符';
    }
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return '$fieldName必须包含至少一个大写字母';
    }
    if (!value.contains(RegExp(r'[a-z]'))) {
      return '$fieldName必须包含至少一个小写字母';
    }
    if (!value.contains(RegExp(r'[0-9]'))) {
      return '$fieldName必须包含至少一个数字';
    }
    if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return '$fieldName必须包含至少一个特殊字符';
    }
    return null;
  }

  /// 校验确认密码
  static String? confirmPassword(
    String? value,
    String password, {
    String fieldName = '确认密码',
  }) {
    if (value == null || value.isEmpty) {
      return '$fieldName不能为空';
    }
    if (value != password) {
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
  static String? itemName(String? value) {
    return combine([
      () => required(value, fieldName: '物品名称'),
      () => maxLength(value, 100, fieldName: '物品名称'),
    ]);
  }

  /// 校验物品分类
  static String? itemCategory(String? value) {
    return required(value, fieldName: '物品分类');
  }

  /// 校验物品数量
  static String? itemQuantity(String? value) {
    return combine([
      () => required(value, fieldName: '数量'),
      () => positiveInteger(value, fieldName: '数量', min: 1, max: 9999),
    ]);
  }

  /// 校验物品单价
  static String? itemUnitPrice(String? value) {
    return combine([
      () => required(value, fieldName: '单价'),
      () => positiveNumber(value, fieldName: '单价', min: 0, max: 999999.99),
    ]);
  }

  /// 校验保质期（消耗品）
  static String? expiryDate(String? value) {
    return combine([
      () => required(value, fieldName: '保质期'),
      () => date(
        value,
        fieldName: '保质期',
        allowPast: false,
        minDate: DateTime.now(),
      ),
    ]);
  }

  /// 校验保修期（耐用品）
  static String? warrantyDate(String? value) {
    return combine([
      () => required(value, fieldName: '保修期'),
      () => date(
        value,
        fieldName: '保修期',
        allowPast: false,
        minDate: DateTime.now(),
      ),
    ]);
  }

  /// 校验购买日期
  static String? purchaseDate(String? value) {
    return date(value, fieldName: '购买日期');
  }

  /// 校验备注
  static String? notes(String? value) {
    return maxLength(value, 500, fieldName: '备注');
  }
}
