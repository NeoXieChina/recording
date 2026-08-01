/// 日志本地化工具类
/// 用于在没有BuildContext的情况下获取本地化日志消息
class LogLocalization {
  /// 数据库重置日志
  static String get databaseReset => '数据库已重置，将重新创建表结构';

  /// 数据库重置错误日志
  static String databaseResetError(String error) => '重置数据库时出错: $error';

  /// 模拟数据初始化失败日志
  static String mockDataInitFailed(String error) => '模拟数据初始化失败: $error';

  /// 解决方案提示
  static String get solutionSteps => '解决方案：';

  /// 解决方案步骤1
  static String get solutionStep1 => '1. 卸载应用重新安装';

  /// 解决方案步骤2
  static String get solutionStep2 => '2. 或清除应用数据';

  /// 解决方案步骤3
  static String get solutionStep3 => '3. 或将 resetDatabaseOnStart 设为 true 后重新运行';

  /// 提醒服务初始化失败日志
  static String notificationServiceInitFailed(String error) =>
      '提醒服务初始化失败: $error';

  /// 检查日历账户失败日志
  static String checkCalendarAccountFailed(String error) => '检查日历账户失败: $error';

  /// 创建日历失败日志
  static String createCalendarFailed(String error) => '创建日历失败: $error';

  /// 添加日历事件失败日志
  static String addCalendarEventFailed(String error) => '添加日历事件失败: $error';

  /// 删除日历事件失败日志
  static String deleteCalendarEventFailed(String error) => '删除日历事件失败: $error';

  /// 设置权限提示消息失败日志
  static String setPermissionMessageFailed(String error) =>
      '设置权限提示消息失败: $error';

  /// 模拟数据初始化成功日志
  static String mockDataInitSuccess(int count) => '已成功初始化 $count 条模拟数据';

  /// 数据库已有数据日志
  static String databaseHasData(int count) => '数据库已有 $count 条数据，跳过模拟数据初始化';

  /// 数据库结构不匹配提示
  static String get databaseStructureMismatch => '可能是数据库结构不匹配，建议清除应用数据或重新安装';

  /// 旧数据库文件已删除日志
  static String get oldDatabaseDeleted => '已删除旧数据库文件';

  /// 备份数据为空错误
  static String get backupDataEmpty => '备份数据为空';

  /// 备份文件不存在错误
  static String get backupFileNotFound => '备份文件不存在';

  /// 文件编码不是UTF-8错误
  static String fileNotUtf8(String error) =>
      '文件编码不是有效的UTF-8格式。请确保文件使用UTF-8编码保存。错误详情: $error';

  /// 文件不存在错误
  static String fileNotFound(String filePath) => '文件不存在: $filePath';

  /// 文件为空错误
  static String fileEmpty(String filePath) => '文件为空: $filePath';

  /// 文件内容解码后为空错误
  static String get fileContentEmpty => '文件内容解码后为空，可能是编码不匹配';

  /// 验证错误消息

  /// 字段不能为空
  static String fieldCannotBeEmpty(String fieldName) => '$fieldName不能为空';

  /// 字段最小长度
  static String fieldMinLength(String fieldName, int minLength) =>
      '$fieldName长度不能少于$minLength个字符';

  /// 字段最大长度
  static String fieldMaxLength(String fieldName, int maxLength) =>
      '$fieldName长度不能超过$maxLength个字符';

  /// 无效邮箱格式
  static String invalidEmail(String fieldName) => '请输入有效的$fieldName地址';

  /// 无效手机号格式
  static String invalidPhone(String fieldName) => '请输入有效的$fieldName';

  /// 无效数字格式
  static String invalidNumber(String fieldName, bool allowDecimal) =>
      '$fieldName必须是${allowDecimal ? '数字' : '整数'}';

  /// 小于最小值
  static String lessThanMin(String fieldName, dynamic min) =>
      '$fieldName不能小于$min';

  /// 大于最大值
  static String greaterThanMax(String fieldName, dynamic max) =>
      '$fieldName不能大于$max';

  /// 必须为正整数
  static String mustBePositiveInteger(String fieldName) => '$fieldName必须是正整数';

  /// 必须大于零
  static String mustBeGreaterThanZero(String fieldName) => '$fieldName必须大于0';

  /// 必须为正数
  static String mustBePositiveNumber(String fieldName) => '$fieldName必须是正数';

  /// 无效日期格式
  static String invalidDate(String fieldName) => '请输入有效的$fieldName';

  /// 日期不能是过去
  static String dateCannotBePast(String fieldName) => '$fieldName不能是过去日期';

  /// 日期不能早于
  static String dateCannotBeBefore(String fieldName, String minDate) =>
      '$fieldName不能早于$minDate';

  /// 日期不能晚于
  static String dateCannotBeAfter(String fieldName, String maxDate) =>
      '$fieldName不能晚于$maxDate';

  /// 无效URL格式
  static String invalidUrl(String fieldName) => '请输入有效的$fieldName';

  /// 密码最小长度
  static String passwordMinLength(String fieldName) => '$fieldName长度不能少于8个字符';

  /// 密码必须包含大写字母
  static String passwordUppercaseRequired(String fieldName) =>
      '$fieldName必须包含至少一个大写字母';

  /// 密码必须包含小写字母
  static String passwordLowercaseRequired(String fieldName) =>
      '$fieldName必须包含至少一个小写字母';

  /// 密码必须包含数字
  static String passwordDigitRequired(String fieldName) =>
      '$fieldName必须包含至少一个数字';

  /// 密码必须包含特殊字符
  static String passwordSpecialCharRequired(String fieldName) =>
      '$fieldName必须包含至少一个特殊字符';

  /// 密码不匹配
  static String get passwordsNotMatch => '两次输入的密码不一致';
}
