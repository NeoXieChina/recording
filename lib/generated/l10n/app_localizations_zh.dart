// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get app_name => '藏物方寸';

  @override
  String get cancel => '取消';

  @override
  String get confirm => '确定';

  @override
  String get save => '保存';

  @override
  String get delete => '删除';

  @override
  String get edit => '编辑';

  @override
  String get add => '添加';

  @override
  String get edit_item => '编辑物品';

  @override
  String get add_item => '添加物品';

  @override
  String get search => '搜索';

  @override
  String get settings => '设置';

  @override
  String get language_settings => '语言设置';

  @override
  String get language_settings_description => '设置应用显示语言';

  @override
  String get system_default => '系统默认';

  @override
  String get use_system_language => '使用系统语言';

  @override
  String get language_change_hint => '语言更改将在应用重启后生效';

  @override
  String get back => '返回';

  @override
  String get next => '下一步';

  @override
  String get done => '完成';

  @override
  String get loading => '加载中...';

  @override
  String get error => '错误';

  @override
  String get success => '成功';

  @override
  String get warning => '警告';

  @override
  String get info => '信息';

  @override
  String get select_alert_days => '选择提醒天数';

  @override
  String get custom => '自定义';

  @override
  String custom_days(int days) {
    return '自定义（$days天）';
  }

  @override
  String current_selection(int days) {
    return '当前选择：$days天';
  }

  @override
  String alert_days_range(int min, int max) {
    return '提醒天数范围：$min-$max天';
  }

  @override
  String get enter_days => '请输入提醒天数';

  @override
  String get days => '天数';

  @override
  String enter_valid_days(int min, int max) {
    return '请输入$min-$max之间的数字';
  }

  @override
  String get alert_settings => '提醒设置';

  @override
  String get calendar_settings => '日历设置';

  @override
  String get calendar_sync => '日历同步';

  @override
  String get calendar_sync_desc => '开启后将请求日历权限';

  @override
  String get add_test_calendar_event => '添加测试日历事件';

  @override
  String get enable_calendar_sync_first => '请先开启\"日历同步\"开关';

  @override
  String get app_alert_settings => 'App提醒设置';

  @override
  String get local_alerts => '本地提醒';

  @override
  String get local_alerts_desc => '开启后接收应用内过期提醒';

  @override
  String get send_test_notification => '发送测试通知';

  @override
  String get enable_local_alerts_first => '请先开启\"本地提醒\"开关';

  @override
  String get alert_days_settings => '提醒天数设置';

  @override
  String get advance_alert_days => '提前提醒天数';

  @override
  String get advance_alert_days_desc => '设置提前多少天提醒物品过期或保修到期';

  @override
  String get calendar_permission_request => '日历权限请求';

  @override
  String get calendar_permission_desc => '需要访问日历权限来同步物品提醒。是否允许？';

  @override
  String get allow => '允许';

  @override
  String get calendar_permission_granted => '日历权限已授予，日历同步已开启';

  @override
  String get calendar_permission_denied => '日历权限被拒绝，无法开启日历同步';

  @override
  String get calendar_permission_permanently_denied => '权限被永久拒绝';

  @override
  String get calendar_permission_permanently_denied_desc =>
      '日历权限被永久拒绝，请在系统设置中手动开启权限。';

  @override
  String get go_to_settings => '去设置';

  @override
  String get calendar_account_failed => '日历权限已授予，但无法创建日历账户。请检查系统日历设置';

  @override
  String get calendar_account_created => '日历权限已授予，已创建本地日历账户';

  @override
  String get calendar_account_creating => '日历账户创建成功，但系统可能需要一些时间生效';

  @override
  String get test_calendar_event_added => '测试日历事件添加成功';

  @override
  String get test_calendar_event_failed => '添加测试日历事件失败，请检查日历设置';

  @override
  String get calendar_permission_required => '需要日历权限才能添加测试事件';

  @override
  String get test_notification_sent => '测试通知已发送';

  @override
  String test_notification_failed(String error) {
    return '发送测试通知失败: $error';
  }

  @override
  String get notification_permission_required => '需要通知权限才能启用本地提醒';

  @override
  String operation_failed(String error) {
    return '操作失败: $error';
  }

  @override
  String get notification_channel_name => '物品预警通知';

  @override
  String get notification_channel_description => '物品过期或过保提醒';

  @override
  String get item_category_food => '食品';

  @override
  String get item_category_daily_necessities => '日用品';

  @override
  String get item_category_cosmetics => '化妆品';

  @override
  String get item_category_medicine => '药品';

  @override
  String get item_category_electronics => '电子产品';

  @override
  String get item_category_furniture => '家具';

  @override
  String get item_category_clothing => '服装';

  @override
  String get item_category_books => '书籍';

  @override
  String get item_category_other => '其他';

  @override
  String get purchase_channel_online_mall => '线上商城';

  @override
  String get purchase_channel_physical_store => '实体店';

  @override
  String get purchase_channel_supermarket => '超市';

  @override
  String get purchase_channel_specialty_store => '专卖店';

  @override
  String get purchase_channel_secondhand_market => '二手市场';

  @override
  String get purchase_channel_other => '其他';

  @override
  String get default_category => '其他';

  @override
  String get default_purchase_channel => '线上商城';

  @override
  String get item_category => '物品分类';

  @override
  String get custom_category => '自定义分类';

  @override
  String get backup_data => '备份数据';

  @override
  String get backup_data_description => '将全部数据（包括图片）打包为ZIP文件备份';

  @override
  String get backup_all_data => '备份全部数据';

  @override
  String get backup_success => '备份成功';

  @override
  String backup_failed(String error) {
    return '备份失败：$error';
  }

  @override
  String get restore_data => '恢复数据';

  @override
  String get restore_data_description => '从ZIP备份文件恢复全部数据';

  @override
  String get export_data => '导出数据';

  @override
  String get export_data_description => '导出为CSV、TXT、SQL格式';

  @override
  String get import_data => '导入数据';

  @override
  String get import_data_description => '从CSV、TXT、SQL文件导入数据';

  @override
  String get alert_settings_description => '日历提醒和App推送提醒设置';

  @override
  String get about => '关于';

  @override
  String get about_description => '应用信息和版本';

  @override
  String get select_backup_file_first => '请先选择备份文件';

  @override
  String get confirm_restore => '确认恢复';

  @override
  String get confirm_restore_message => '恢复备份将清空所有现有数据并替换为备份数据，此操作不可撤销。确定要继续吗？';

  @override
  String get confirm_again => '再次确认';

  @override
  String get confirm_restore_warning => '您确定要清空所有现有数据并恢复备份吗？此操作将无法恢复！';

  @override
  String get confirm_restore_button => '确定恢复';

  @override
  String restore_success(int count) {
    return '恢复成功，共$count条物品';
  }

  @override
  String restore_failed(String error) {
    return '恢复失败：$error';
  }

  @override
  String get select_backup_file => '选择备份文件';

  @override
  String get restore_backup => '恢复备份';

  @override
  String selected_file(String filename) {
    return '已选择文件：$filename';
  }

  @override
  String get export_success => '数据导出成功';

  @override
  String export_failed(String error) {
    return '导出失败：$error';
  }

  @override
  String get format_csv => 'CSV';

  @override
  String get format_txt => 'TXT';

  @override
  String get format_sql => 'SQL';

  @override
  String get duplicate_data_handling => '重复数据处理';

  @override
  String get duplicate_data_detected => '检测到重复数据，请选择处理方式：';

  @override
  String get skip => '跳过';

  @override
  String get overwrite => '覆盖';

  @override
  String get skip_all => '全部跳过';

  @override
  String get overwrite_all => '全部覆盖';

  @override
  String get select_import_format_first => '请先选择导入格式';

  @override
  String get confirm_import => '确认导入';

  @override
  String get confirm_import_message => '导入数据将覆盖现有数据，此操作不可撤销。确定要继续吗？';

  @override
  String import_success(int count) {
    return '数据导入成功，共导入$count条物品';
  }

  @override
  String import_failed(String error) {
    return '导入失败：$error';
  }

  @override
  String get select_file => '选择文件';

  @override
  String get no_data => '暂无数据';

  @override
  String get no_data_description => '当前没有数据，点击下方按钮添加第一条记录吧！';

  @override
  String get load_failed => '加载失败';

  @override
  String get load_failed_description => '数据加载失败，请检查网络连接后重试';

  @override
  String get retry => '重试';

  @override
  String get network_connection_failed => '网络连接失败';

  @override
  String get network_connection_failed_description => '请检查网络连接后重试';

  @override
  String get no_results => '未找到结果';

  @override
  String get no_results_description => '尝试使用其他关键词搜索';

  @override
  String get clear_search => '清除搜索';

  @override
  String get insufficient_permission => '权限不足';

  @override
  String get insufficient_permission_description => '需要相关权限才能使用此功能';

  @override
  String get request_permission => '请求权限';

  @override
  String get app_info => '应用信息';

  @override
  String get version => '版本';

  @override
  String get developer => '开发者';

  @override
  String get device_info => '设备信息';

  @override
  String get device_model => '设备型号';

  @override
  String get brand => '品牌';

  @override
  String get device_name => '设备名称';

  @override
  String get product => '产品';

  @override
  String get hardware => '硬件';

  @override
  String get android_version => 'Android版本';

  @override
  String get sdk_version => 'SDK版本';

  @override
  String get system_name => '系统名称';

  @override
  String get operating_system => '操作系统';

  @override
  String get system_version => '系统版本';

  @override
  String get dart_version => 'Dart版本';

  @override
  String get device_identifier => '设备标识';

  @override
  String get computer_name => '计算机名';

  @override
  String get build_number => '版本号';

  @override
  String error_getting_device_info(String error) {
    return '无法获取设备信息: $error';
  }

  @override
  String get features => '功能介绍';

  @override
  String get app_description => '智能物品管理应用';

  @override
  String get app_description_detail => '帮助您管理物品的过期日期、保修日期等信息，并提供智能提醒功能。';

  @override
  String get consumable => '消耗品';

  @override
  String get durable => '耐用品';

  @override
  String get sort => '排序';

  @override
  String get name_asc => '名称升序';

  @override
  String get name_desc => '名称降序';

  @override
  String get date_asc => '日期升序';

  @override
  String get date_desc => '日期降序';

  @override
  String get price_asc => '单价升序';

  @override
  String get price_desc => '单价降序';

  @override
  String get quantity_asc => '数量升序';

  @override
  String get quantity_desc => '数量降序';

  @override
  String get total_price_asc => '总价升序';

  @override
  String get total_price_desc => '总价降序';

  @override
  String get clear_all_filters => '清除所有筛选';

  @override
  String get scan_barcode => '扫码入库';

  @override
  String get search_items => '搜索物品...';

  @override
  String get no_items => '暂无物品';

  @override
  String get no_items_description => '点击下方按钮添加第一个物品';

  @override
  String get expired => '已过期';

  @override
  String get expiring_soon => '即将过期';

  @override
  String get warranty_expired => '保修已过期';

  @override
  String get warranty_expiring_soon => '保修即将到期';

  @override
  String days_remaining(int count) {
    return '剩余$count天';
  }

  @override
  String expired_days_ago(int count) {
    return '已过期$count天';
  }

  @override
  String get delete_item => '删除物品';

  @override
  String delete_item_confirm(String name) {
    return '确定要删除\"$name\"吗？';
  }

  @override
  String get item_deleted => '物品已删除';

  @override
  String get failed_to_delete => '删除失败';

  @override
  String failed_to_delete_message(String error) {
    return '无法删除物品: $error';
  }

  @override
  String get date_range_filter => '日期范围筛选';

  @override
  String get price_range_filter => '价格范围筛选';

  @override
  String get my_items => '我的物品';

  @override
  String get click_fab_to_add_item => '点击右下角按钮添加物品';

  @override
  String get confirm_delete => '确认删除';

  @override
  String get filter_options => '筛选选项';

  @override
  String get filter_by_type_category_location => '按类型、分类和地点筛选物品';

  @override
  String categories_count(int count) {
    return '$count 个分类';
  }

  @override
  String get all_categories => '全部分类';

  @override
  String get no_category_data => '暂无分类数据';

  @override
  String get storage_location => '存储地点';

  @override
  String locations_count(int count) {
    return '$count 个地点';
  }

  @override
  String get all_locations => '全部地点';

  @override
  String get no_location_data => '暂无地点数据';

  @override
  String get date_range => '日期范围';

  @override
  String get select_date_range => '选择日期范围';

  @override
  String get price_range => '价格范围';

  @override
  String get unit_price_range => '单价范围';

  @override
  String get min_unit_price => '最低单价';

  @override
  String get max_unit_price => '最高单价';

  @override
  String get total_price_range => '总价范围';

  @override
  String get min_total_price => '最低总价';

  @override
  String get max_total_price => '最高总价';

  @override
  String get clear_price_filter => '清除价格筛选';

  @override
  String get place_barcode_in_frame => '将条码放入框内扫描';

  @override
  String get item_already_exists => '商品已存在';

  @override
  String barcode_with_value(String barcode) {
    return '条码：$barcode';
  }

  @override
  String name_with_value(String name) {
    return '名称：$name';
  }

  @override
  String category_with_value(String category) {
    return '分类：$category';
  }

  @override
  String current_quantity_with_value(String quantity, String unit) {
    return '当前数量：$quantity$unit';
  }

  @override
  String get please_select_operation => '请选择操作：';

  @override
  String get outbound => '出库';

  @override
  String get inbound => '入库';

  @override
  String get inbound_quantity => '入库数量';

  @override
  String get outbound_quantity => '出库数量';

  @override
  String get quantity => '数量';

  @override
  String get enter_inbound_quantity => '请输入入库数量';

  @override
  String get enter_outbound_quantity => '请输入出库数量';

  @override
  String delete_item_confirm_with_irreversible(String name) {
    return '确定要删除「$name」吗？此操作不可撤销。';
  }

  @override
  String get database_reset => '数据库已重置，将重新创建表结构';

  @override
  String database_reset_error(String error) {
    return '重置数据库时出错: $error';
  }

  @override
  String mock_data_init_failed(String error) {
    return '模拟数据初始化失败: $error';
  }

  @override
  String get solution_steps => '解决方案：';

  @override
  String get solution_step_1 => '1. 卸载应用重新安装';

  @override
  String get solution_step_2 => '2. 或清除应用数据';

  @override
  String get solution_step_3 => '3. 或将 resetDatabaseOnStart 设为 true 后重新运行';

  @override
  String notification_service_init_failed(String error) {
    return '提醒服务初始化失败: $error';
  }

  @override
  String check_calendar_account_failed(String error) {
    return '检查日历账户失败: $error';
  }

  @override
  String create_calendar_failed(String error) {
    return '创建日历失败: $error';
  }

  @override
  String add_calendar_event_failed(String error) {
    return '添加日历事件失败: $error';
  }

  @override
  String delete_calendar_event_failed(String error) {
    return '删除日历事件失败: $error';
  }

  @override
  String set_permission_message_failed(String error) {
    return '设置权限提示消息失败: $error';
  }

  @override
  String mock_data_init_success(int count) {
    return '已成功初始化 $count 条模拟数据';
  }

  @override
  String database_has_data(int count) {
    return '数据库已有 $count 条数据，跳过模拟数据初始化';
  }

  @override
  String get database_structure_mismatch => '可能是数据库结构不匹配，建议清除应用数据或重新安装';

  @override
  String get old_database_deleted => '已删除旧数据库文件';

  @override
  String get backup_data_empty => '备份数据为空';

  @override
  String get backup_file_not_found => '备份文件不存在';

  @override
  String file_not_utf8(String error) {
    return '文件编码不是有效的UTF-8格式。请确保文件使用UTF-8编码保存。错误详情: $error';
  }

  @override
  String file_not_found(String filePath) {
    return '文件不存在: $filePath';
  }

  @override
  String file_empty(String filePath) {
    return '文件为空: $filePath';
  }

  @override
  String get file_content_empty => '文件内容解码后为空，可能是编码不匹配';

  @override
  String field_cannot_be_empty(String fieldName) {
    return '$fieldName不能为空';
  }

  @override
  String field_min_length(String fieldName, int minLength) {
    return '$fieldName长度不能少于$minLength个字符';
  }

  @override
  String field_max_length(String fieldName, int maxLength) {
    return '$fieldName长度不能超过$maxLength个字符';
  }

  @override
  String field_invalid_email(String fieldName) {
    return '请输入有效的$fieldName地址';
  }

  @override
  String field_invalid_number(String fieldName, String numberType) {
    return '$fieldName必须是$numberType';
  }

  @override
  String field_min_value(String fieldName, double min) {
    return '$fieldName不能小于$min';
  }

  @override
  String field_max_value(String fieldName, double max) {
    return '$fieldName不能大于$max';
  }

  @override
  String field_positive_integer(String fieldName) {
    return '$fieldName必须是正整数';
  }

  @override
  String field_greater_than_zero(String fieldName) {
    return '$fieldName必须大于0';
  }

  @override
  String field_positive_number(String fieldName) {
    return '$fieldName必须是正数';
  }

  @override
  String field_invalid_date(String fieldName) {
    return '请输入有效的$fieldName';
  }

  @override
  String field_date_not_past(String fieldName) {
    return '$fieldName不能是过去日期';
  }

  @override
  String field_date_not_before(String fieldName, String minDate) {
    return '$fieldName不能早于$minDate';
  }

  @override
  String field_date_not_after(String fieldName, String maxDate) {
    return '$fieldName不能晚于$maxDate';
  }

  @override
  String field_invalid_value(String fieldName) {
    return '请输入有效的$fieldName';
  }

  @override
  String password_min_length(String fieldName) {
    return '$fieldName长度不能少于8个字符';
  }

  @override
  String password_uppercase_required(String fieldName) {
    return '$fieldName必须包含至少一个大写字母';
  }

  @override
  String password_lowercase_required(String fieldName) {
    return '$fieldName必须包含至少一个小写字母';
  }

  @override
  String password_digit_required(String fieldName) {
    return '$fieldName必须包含至少一个数字';
  }

  @override
  String password_special_char_required(String fieldName) {
    return '$fieldName必须包含至少一个特殊字符';
  }

  @override
  String get passwords_not_match => '两次输入的密码不一致';

  @override
  String get item_name_cannot_be_empty => '物品名称不能为空';

  @override
  String name_max_length(int maxLength) {
    return '名称不能超过$maxLength个字符';
  }

  @override
  String quantity_min(int minQuantity) {
    return '数量不能小于$minQuantity';
  }

  @override
  String quantity_max(int maxQuantity) {
    return '数量不能超过$maxQuantity';
  }

  @override
  String get unit_price_not_negative => '单价不能为负数';

  @override
  String unit_price_max(double maxUnitPrice) {
    return '单价不能超过$maxUnitPrice';
  }

  @override
  String get set_production_expiry_for_validity => '请设置生产日期和保质期来自动计算有效期';

  @override
  String get set_purchase_warranty_for_validity => '请设置购买日期和保质期来自动计算保修期';

  @override
  String get calendar_account_creation_failed => '无法创建日历账户，请检查系统日历设置';

  @override
  String get test_notification => '测试通知';

  @override
  String get test_notification_description => '这是一个测试通知，用于验证本地提醒功能';

  @override
  String get day_unit => '天';

  @override
  String days_with_value(int days) {
    return '$days天';
  }

  @override
  String get item_saved => '物品已保存';

  @override
  String get item_updated => '物品已更新';

  @override
  String get item_added => '物品已添加';

  @override
  String get save_success => '保存成功';

  @override
  String get update_success => '更新成功';

  @override
  String get delete_success => '删除成功';

  @override
  String get save_failed => '保存失败';

  @override
  String get update_failed => '更新失败';

  @override
  String get delete_failed => '删除失败';

  @override
  String get test_calendar_event => '测试日历事件';

  @override
  String get test_calendar_event_description => '这是一个测试事件，用于验证日历功能';

  @override
  String get in_app => '应用内';

  @override
  String get enable_alert => '启用到期提醒';

  @override
  String get alert_method => '提醒方式';

  @override
  String get alert_method_in_app => '仅应用内';

  @override
  String get alert_method_calendar => '仅日历';

  @override
  String get alert_method_both => '两者';

  @override
  String get alert_days_before => '提前提醒天数';

  @override
  String get use_global_setting => '使用全局设置';

  @override
  String get barcode_label => '条码';

  @override
  String get name_label => '名称';

  @override
  String get category_label => '分类';

  @override
  String get current_quantity => '当前数量';

  @override
  String get select_operation => '请选择操作';

  @override
  String get unit => '单位';

  @override
  String get custom_unit => '自定义单位';

  @override
  String get enter_unit => '请输入单位';

  @override
  String get custom_location => '自定义地点';

  @override
  String get enter_storage_location => '请输入存储地点';

  @override
  String get scan => '扫码';

  @override
  String get scan_to_stock => '扫码入库';

  @override
  String get item_categories => '物品分类';

  @override
  String get storage_locations => '存储地点';

  @override
  String get place_barcode_in_frame_to_scan => '将条码放入框内扫描';

  @override
  String get barcode => '条码';

  @override
  String get enter_barcode_or_scan => '请输入条码或扫码';

  @override
  String get basic_information => '基础信息';

  @override
  String get item_name => '物品名称';

  @override
  String get enter_item_name => '请输入物品名称';

  @override
  String get enter_category_name => '请输入分类名称';

  @override
  String item_increased(String itemName, String quantity, String unit) {
    return '已增加 $itemName $quantity$unit';
  }

  @override
  String item_decreased(String itemName, String quantity, String unit) {
    return '已减少 $itemName $quantity$unit';
  }
}

/// The translations for Chinese, using the Han script (`zh_Hant`).
class AppLocalizationsZhHant extends AppLocalizationsZh {
  AppLocalizationsZhHant() : super('zh_Hant');

  @override
  String get app_name => '藏物方寸';

  @override
  String get cancel => '取消';

  @override
  String get confirm => '確定';

  @override
  String get save => '保存';

  @override
  String get delete => '刪除';

  @override
  String get edit => '編輯';

  @override
  String get add => '添加';

  @override
  String get edit_item => '編輯物品';

  @override
  String get add_item => '添加物品';

  @override
  String get search => '搜尋';

  @override
  String get settings => '設定';

  @override
  String get language_settings => '語言設定';

  @override
  String get language_settings_description => '設定應用顯示語言';

  @override
  String get system_default => '系統默認';

  @override
  String get use_system_language => '使用系統語言';

  @override
  String get language_change_hint => '語言更改將在應用重啟後生效';

  @override
  String get back => '返回';

  @override
  String get next => '下一步';

  @override
  String get done => '完成';

  @override
  String get loading => '加載中...';

  @override
  String get error => '錯誤';

  @override
  String get success => '成功';

  @override
  String get warning => '警告';

  @override
  String get info => '資訊';

  @override
  String get select_alert_days => '選擇提醒天數';

  @override
  String get custom => '自訂';

  @override
  String custom_days(int days) {
    return '自訂（$days天）';
  }

  @override
  String current_selection(int days) {
    return '當前選擇：$days天';
  }

  @override
  String alert_days_range(int min, int max) {
    return '提醒天數範圍：$min-$max天';
  }

  @override
  String get enter_days => '請輸入提醒天數';

  @override
  String get days => '天數';

  @override
  String enter_valid_days(int min, int max) {
    return '請輸入$min-$max之間的數字';
  }

  @override
  String get alert_settings => '預警設置';

  @override
  String get calendar_settings => '日曆設定';

  @override
  String get calendar_sync => '日曆同步';

  @override
  String get calendar_sync_desc => '開啟後將請求日曆權限';

  @override
  String get add_test_calendar_event => '添加測試日曆事件';

  @override
  String get enable_calendar_sync_first => '請先開啟「日曆同步」開關';

  @override
  String get app_alert_settings => 'App提醒設定';

  @override
  String get local_alerts => '本地提醒';

  @override
  String get local_alerts_desc => '開啟後接收應用內過期提醒';

  @override
  String get send_test_notification => '發送測試通知';

  @override
  String get enable_local_alerts_first => '請先開啟「本地提醒」開關';

  @override
  String get alert_days_settings => '提醒天數設置';

  @override
  String get advance_alert_days => '提前提醒天數';

  @override
  String get advance_alert_days_desc => '設定提前多少天提醒物品過期或保修到期';

  @override
  String get calendar_permission_request => '日曆權限請求';

  @override
  String get calendar_permission_desc => '需要訪問日曆權限來同步物品提醒。是否允許？';

  @override
  String get allow => '允許';

  @override
  String get calendar_permission_granted => '日曆權限已授予，日曆同步已開啟';

  @override
  String get calendar_permission_denied => '日曆權限被拒絕，無法開啟日曆同步';

  @override
  String get calendar_permission_permanently_denied => '權限被永久拒絕';

  @override
  String get calendar_permission_permanently_denied_desc =>
      '日曆權限被永久拒絕，請在系統設定中手動開啟權限。';

  @override
  String get go_to_settings => '去設置';

  @override
  String get calendar_account_failed => '日曆權限已授予，但無法創建日曆帳戶。請檢查系統日曆設定';

  @override
  String get calendar_account_created => '日曆權限已授予，已創建本地日曆帳戶';

  @override
  String get calendar_account_creating => '日曆帳戶創建成功，但系統可能需要一些時間生效';

  @override
  String get test_calendar_event_added => '測試日曆事件添加成功';

  @override
  String get test_calendar_event_failed => '添加測試日曆事件失敗，請檢查日曆設置';

  @override
  String get calendar_permission_required => '需要日曆權限才能添加測試事件';

  @override
  String get test_notification_sent => '測試通知已發送';

  @override
  String test_notification_failed(String error) {
    return '發送測試通知失敗: $error';
  }

  @override
  String get notification_permission_required => '需要通知權限才能啟用本地提醒';

  @override
  String operation_failed(String error) {
    return '操作失敗: $error';
  }

  @override
  String get notification_channel_name => '物品預警通知';

  @override
  String get notification_channel_description => '物品過期或過保提醒';

  @override
  String get item_category_food => '食品';

  @override
  String get item_category_daily_necessities => '日用品';

  @override
  String get item_category_cosmetics => '化妝品';

  @override
  String get item_category_medicine => '藥品';

  @override
  String get item_category_electronics => '電子產品';

  @override
  String get item_category_furniture => '家具';

  @override
  String get item_category_clothing => '服裝';

  @override
  String get item_category_books => '書籍';

  @override
  String get item_category_other => '其他';

  @override
  String get purchase_channel_online_mall => '線上商城';

  @override
  String get purchase_channel_physical_store => '實體店';

  @override
  String get purchase_channel_supermarket => '超市';

  @override
  String get purchase_channel_specialty_store => '專賣店';

  @override
  String get purchase_channel_secondhand_market => '二手市場';

  @override
  String get purchase_channel_other => '其他';

  @override
  String get default_category => '其他';

  @override
  String get default_purchase_channel => '線上商城';

  @override
  String get item_category => '物品分類';

  @override
  String get custom_category => '自訂分類';

  @override
  String get backup_data => '備份資料';

  @override
  String get backup_data_description => '將全部數據（包括圖片）打包為ZIP文件備份';

  @override
  String get backup_all_data => '備份全部資料';

  @override
  String get backup_success => '備份成功';

  @override
  String backup_failed(String error) {
    return '備份失敗：$error';
  }

  @override
  String get restore_data => '恢復資料';

  @override
  String get restore_data_description => '從ZIP備份文件恢復全部數據';

  @override
  String get export_data => '導出資料';

  @override
  String get export_data_description => '導出為CSV、TXT、SQL格式';

  @override
  String get import_data => '導入資料';

  @override
  String get import_data_description => '從CSV、TXT、SQL文件導入數據';

  @override
  String get alert_settings_description => '日曆提醒和App推送提醒設置';

  @override
  String get about => '關於';

  @override
  String get about_description => '應用資訊和版本';

  @override
  String get select_backup_file_first => '請先選擇備份文件';

  @override
  String get confirm_restore => '確認恢復';

  @override
  String get confirm_restore_message => '恢復備份將清空所有現有數據並替換為備份數據，此操作不可撤銷。確定要繼續嗎？';

  @override
  String get confirm_again => '再次確認';

  @override
  String get confirm_restore_warning => '您確定要清空所有現有數據並恢復備份嗎？此操作將無法恢復！';

  @override
  String get confirm_restore_button => '確定恢復';

  @override
  String restore_success(int count) {
    return '恢復成功，共$count條物品';
  }

  @override
  String restore_failed(String error) {
    return '恢復失敗：$error';
  }

  @override
  String get select_backup_file => '選擇備份文件';

  @override
  String get restore_backup => '恢復備份';

  @override
  String selected_file(String filename) {
    return '已選擇檔案：$filename';
  }

  @override
  String get export_success => '數據導出成功';

  @override
  String export_failed(String error) {
    return '導出失敗：$error';
  }

  @override
  String get format_csv => 'CSV';

  @override
  String get format_txt => 'TXT';

  @override
  String get format_sql => 'SQL';

  @override
  String get duplicate_data_handling => '重複數據處理';

  @override
  String get duplicate_data_detected => '檢測到重複數據，請選擇處理方式：';

  @override
  String get skip => '跳過';

  @override
  String get overwrite => '覆蓋';

  @override
  String get skip_all => '全部跳過';

  @override
  String get overwrite_all => '全部覆蓋';

  @override
  String get select_import_format_first => '請先選擇導入格式';

  @override
  String get confirm_import => '確認導入';

  @override
  String get confirm_import_message => '導入資料將覆蓋現有資料，此操作不可撤銷。確定要繼續嗎？';

  @override
  String import_success(int count) {
    return '數據導入成功，共導入$count條物品';
  }

  @override
  String import_failed(String error) {
    return '導入失敗：$error';
  }

  @override
  String get select_file => '選擇文件';

  @override
  String get no_data => '暫無資料';

  @override
  String get no_data_description => '當前沒有資料，點擊下方按鈕添加第一條記錄吧！';

  @override
  String get load_failed => '加載失敗';

  @override
  String get load_failed_description => '數據加載失敗，請檢查網絡連接後重試';

  @override
  String get retry => '重試';

  @override
  String get network_connection_failed => '網絡連接失敗';

  @override
  String get network_connection_failed_description => '請檢查網絡連接後重試';

  @override
  String get no_results => '未找到結果';

  @override
  String get no_results_description => '嘗試使用其他關鍵詞搜索';

  @override
  String get clear_search => '清除搜尋';

  @override
  String get insufficient_permission => '權限不足';

  @override
  String get insufficient_permission_description => '需要相關權限才能使用此功能';

  @override
  String get request_permission => '請求權限';

  @override
  String get app_info => '應用資訊';

  @override
  String get version => '版本';

  @override
  String get developer => '開發者';

  @override
  String get device_info => '設備資訊';

  @override
  String get device_model => '設備型號';

  @override
  String get brand => '品牌';

  @override
  String get device_name => '設備名稱';

  @override
  String get product => '產品';

  @override
  String get hardware => '硬體';

  @override
  String get android_version => 'Android版本';

  @override
  String get sdk_version => 'SDK版本';

  @override
  String get system_name => '系統名稱';

  @override
  String get operating_system => '作業系統';

  @override
  String get system_version => '系統版本';

  @override
  String get dart_version => 'Dart版本';

  @override
  String get device_identifier => '設備標識';

  @override
  String get computer_name => '電腦名稱';

  @override
  String get build_number => '版本號';

  @override
  String error_getting_device_info(String error) {
    return '無法獲取設備資訊: $error';
  }

  @override
  String get features => '功能介紹';

  @override
  String get app_description => '智慧物品管理應用';

  @override
  String get app_description_detail => '幫助您管理物品的過期日期、保固日期等資訊，並提供智慧提醒功能。';

  @override
  String get consumable => '消耗品';

  @override
  String get durable => '耐用品';

  @override
  String get sort => '排序';

  @override
  String get name_asc => '名稱升序';

  @override
  String get name_desc => '名稱降序';

  @override
  String get date_asc => '日期升序';

  @override
  String get date_desc => '日期降序';

  @override
  String get price_asc => '單價升序';

  @override
  String get price_desc => '單價降序';

  @override
  String get quantity_asc => '數量升序';

  @override
  String get quantity_desc => '數量降序';

  @override
  String get total_price_asc => '總價升序';

  @override
  String get total_price_desc => '總價降序';

  @override
  String get clear_all_filters => '清除所有篩選';

  @override
  String get scan_barcode => '掃碼入庫';

  @override
  String get search_items => '搜尋物品...';

  @override
  String get no_items => '暫無物品';

  @override
  String get no_items_description => '點擊下方按鈕添加第一個物品';

  @override
  String get expired => '已過期';

  @override
  String get expiring_soon => '即將過期';

  @override
  String get warranty_expired => '保修已過期';

  @override
  String get warranty_expiring_soon => '保修即將到期';

  @override
  String days_remaining(int count) {
    return '剩餘$count天';
  }

  @override
  String expired_days_ago(int count) {
    return '已過期$count天';
  }

  @override
  String get delete_item => '刪除物品';

  @override
  String delete_item_confirm(String name) {
    return '確定要刪除\"$name\"嗎？';
  }

  @override
  String get item_deleted => '物品已刪除';

  @override
  String get failed_to_delete => '刪除失敗';

  @override
  String failed_to_delete_message(String error) {
    return '無法刪除物品: $error';
  }

  @override
  String get date_range_filter => '日期範圍篩選';

  @override
  String get price_range_filter => '價格範圍篩選';

  @override
  String get my_items => '我的物品';

  @override
  String get click_fab_to_add_item => '點擊右下角按鈕添加物品';

  @override
  String get confirm_delete => '確認刪除';

  @override
  String get filter_options => '篩選選項';

  @override
  String get filter_by_type_category_location => '按類型、分類和地點篩選物品';

  @override
  String categories_count(int count) {
    return '$count 個分類';
  }

  @override
  String get all_categories => '全部分類';

  @override
  String get no_category_data => '暫無分類數據';

  @override
  String get storage_location => '存儲地點';

  @override
  String locations_count(int count) {
    return '$count 個地點';
  }

  @override
  String get all_locations => '全部地點';

  @override
  String get no_location_data => '暫無地點資料';

  @override
  String get date_range => '日期範圍';

  @override
  String get select_date_range => '選擇日期範圍';

  @override
  String get price_range => '價格範圍';

  @override
  String get unit_price_range => '單價範圍';

  @override
  String get min_unit_price => '最低單價';

  @override
  String get max_unit_price => '最高單價';

  @override
  String get total_price_range => '總價範圍';

  @override
  String get min_total_price => '最低總價';

  @override
  String get max_total_price => '最高總價';

  @override
  String get clear_price_filter => '清除價格篩選';

  @override
  String get place_barcode_in_frame => '將條碼放入框內掃描';

  @override
  String get item_already_exists => '商品已存在';

  @override
  String barcode_with_value(String barcode) {
    return '條碼：$barcode';
  }

  @override
  String name_with_value(String name) {
    return '名稱：$name';
  }

  @override
  String category_with_value(String category) {
    return '分類：$category';
  }

  @override
  String current_quantity_with_value(String quantity, String unit) {
    return '當前數量：$quantity$unit';
  }

  @override
  String get please_select_operation => '請選擇操作：';

  @override
  String get outbound => '出庫';

  @override
  String get inbound => '入庫';

  @override
  String get inbound_quantity => '入庫數量';

  @override
  String get outbound_quantity => '出庫數量';

  @override
  String get quantity => '數量';

  @override
  String get enter_inbound_quantity => '請輸入入庫數量';

  @override
  String get enter_outbound_quantity => '請輸入出庫數量';

  @override
  String delete_item_confirm_with_irreversible(String name) {
    return '確定要刪除「$name」嗎？此操作不可撤銷。';
  }

  @override
  String get database_reset => '資料庫已重置，將重新創建表結構';

  @override
  String database_reset_error(String error) {
    return '重置資料庫時出錯: $error';
  }

  @override
  String mock_data_init_failed(String error) {
    return '模擬數據初始化失敗: $error';
  }

  @override
  String get solution_steps => '解決方案：';

  @override
  String get solution_step_1 => '1. 卸載應用重新安裝';

  @override
  String get solution_step_2 => '2. 或清除應用資料';

  @override
  String get solution_step_3 => '3. 或將 resetDatabaseOnStart 設為 true 後重新運行';

  @override
  String notification_service_init_failed(String error) {
    return '提醒服務初始化失敗: $error';
  }

  @override
  String check_calendar_account_failed(String error) {
    return '檢查日曆帳戶失敗: $error';
  }

  @override
  String create_calendar_failed(String error) {
    return '創建日曆失敗: $error';
  }

  @override
  String add_calendar_event_failed(String error) {
    return '添加日曆事件失敗: $error';
  }

  @override
  String delete_calendar_event_failed(String error) {
    return '刪除日曆事件失敗: $error';
  }

  @override
  String set_permission_message_failed(String error) {
    return '設定權限提示訊息失敗: $error';
  }

  @override
  String mock_data_init_success(int count) {
    return '已成功初始化 $count 條模擬資料';
  }

  @override
  String database_has_data(int count) {
    return '資料庫已有 $count 條數據，跳過模擬數據初始化';
  }

  @override
  String get database_structure_mismatch => '可能是資料庫結構不匹配，建議清除應用資料或重新安裝';

  @override
  String get old_database_deleted => '已刪除舊資料庫檔案';

  @override
  String get backup_data_empty => '備份數據為空';

  @override
  String get backup_file_not_found => '備份文件不存在';

  @override
  String file_not_utf8(String error) {
    return '文件編碼不是有效的UTF-8格式。請確保文件使用UTF-8編碼保存。錯誤詳情: $error';
  }

  @override
  String file_not_found(String filePath) {
    return '文件不存在: $filePath';
  }

  @override
  String file_empty(String filePath) {
    return '文件為空: $filePath';
  }

  @override
  String get file_content_empty => '文件內容解碼後為空，可能是編碼不匹配';

  @override
  String field_cannot_be_empty(String fieldName) {
    return '$fieldName不能為空';
  }

  @override
  String field_min_length(String fieldName, int minLength) {
    return '$fieldName長度不能少於$minLength個字符';
  }

  @override
  String field_max_length(String fieldName, int maxLength) {
    return '$fieldName長度不能超過$maxLength個字符';
  }

  @override
  String field_invalid_email(String fieldName) {
    return '請輸入有效的$fieldName地址';
  }

  @override
  String field_invalid_number(String fieldName, String numberType) {
    return '$fieldName必須是$numberType';
  }

  @override
  String field_min_value(String fieldName, double min) {
    return '$fieldName不能小於$min';
  }

  @override
  String field_max_value(String fieldName, double max) {
    return '$fieldName不能大於$max';
  }

  @override
  String field_positive_integer(String fieldName) {
    return '$fieldName必須是正整數';
  }

  @override
  String field_greater_than_zero(String fieldName) {
    return '$fieldName必須大於0';
  }

  @override
  String field_positive_number(String fieldName) {
    return '$fieldName必須是正數';
  }

  @override
  String field_invalid_date(String fieldName) {
    return '請輸入有效的$fieldName';
  }

  @override
  String field_date_not_past(String fieldName) {
    return '$fieldName不能是過去日期';
  }

  @override
  String field_date_not_before(String fieldName, String minDate) {
    return '$fieldName不能早於$minDate';
  }

  @override
  String field_date_not_after(String fieldName, String maxDate) {
    return '$fieldName不能晚於$maxDate';
  }

  @override
  String field_invalid_value(String fieldName) {
    return '請輸入有效的$fieldName';
  }

  @override
  String password_min_length(String fieldName) {
    return '$fieldName長度不能少於8個字元';
  }

  @override
  String password_uppercase_required(String fieldName) {
    return '$fieldName必須包含至少一個大寫字母';
  }

  @override
  String password_lowercase_required(String fieldName) {
    return '$fieldName必須包含至少一個小寫字母';
  }

  @override
  String password_digit_required(String fieldName) {
    return '$fieldName必須包含至少一個數字';
  }

  @override
  String password_special_char_required(String fieldName) {
    return '$fieldName必須包含至少一個特殊字符';
  }

  @override
  String get passwords_not_match => '兩次輸入的密碼不一致';

  @override
  String get item_name_cannot_be_empty => '物品名稱不能為空';

  @override
  String name_max_length(int maxLength) {
    return '名稱不能超過$maxLength個字元';
  }

  @override
  String quantity_min(int minQuantity) {
    return '數量不能小於$minQuantity';
  }

  @override
  String quantity_max(int maxQuantity) {
    return '數量不能超過$maxQuantity';
  }

  @override
  String get unit_price_not_negative => '單價不能為負數';

  @override
  String unit_price_max(double maxUnitPrice) {
    return '單價不能超過$maxUnitPrice';
  }

  @override
  String get set_production_expiry_for_validity => '請設定生產日期和保質期來自動計算有效期';

  @override
  String get set_purchase_warranty_for_validity => '請設定購買日期和保質期來自動計算保修期';

  @override
  String get calendar_account_creation_failed => '無法建立行事曆帳戶，請檢查系統行事曆設定';

  @override
  String get test_notification => '測試通知';

  @override
  String get test_notification_description => '這是一個測試通知，用於驗證本地提醒功能';

  @override
  String get day_unit => '天';

  @override
  String days_with_value(int days) {
    return '$days天';
  }

  @override
  String get item_saved => '物品已保存';

  @override
  String get item_updated => '物品已更新';

  @override
  String get item_added => '物品已添加';

  @override
  String get save_success => '保存成功';

  @override
  String get update_success => '更新成功';

  @override
  String get delete_success => '刪除成功';

  @override
  String get save_failed => '保存失敗';

  @override
  String get update_failed => '更新失敗';

  @override
  String get delete_failed => '刪除失敗';

  @override
  String get test_calendar_event => '測試日曆事件';

  @override
  String get test_calendar_event_description => '這是一個測試事件，用於驗證日曆功能';

  @override
  String get in_app => '應用內';

  @override
  String get enable_alert => '啟用到期提醒';

  @override
  String get alert_method => '提醒方式';

  @override
  String get alert_method_in_app => '僅應用內';

  @override
  String get alert_method_calendar => '僅日曆';

  @override
  String get alert_method_both => '兩者';

  @override
  String get alert_days_before => '提前提醒天數';

  @override
  String get use_global_setting => '使用全局設定';

  @override
  String get barcode_label => '條碼';

  @override
  String get name_label => '名稱';

  @override
  String get category_label => '分類';

  @override
  String get current_quantity => '當前數量';

  @override
  String get select_operation => '請選擇操作';

  @override
  String get unit => '單位';

  @override
  String get custom_unit => '自訂單位';

  @override
  String get enter_unit => '請輸入單位';

  @override
  String get custom_location => '自訂地點';

  @override
  String get enter_storage_location => '請輸入存儲地點';

  @override
  String get scan => '掃碼';

  @override
  String get scan_to_stock => '掃碼入庫';

  @override
  String get item_categories => '物品分類';

  @override
  String get storage_locations => '存儲地點';

  @override
  String get place_barcode_in_frame_to_scan => '將條碼放入框內掃描';

  @override
  String get barcode => '條碼';

  @override
  String get enter_barcode_or_scan => '請輸入條碼或掃碼';

  @override
  String get basic_information => '基礎信息';

  @override
  String get item_name => '物品名稱';

  @override
  String get enter_item_name => '請輸入物品名稱';

  @override
  String get enter_category_name => '請輸入分類名稱';

  @override
  String item_increased(String itemName, String quantity, String unit) {
    return '已增加 $itemName $quantity$unit';
  }

  @override
  String item_decreased(String itemName, String quantity, String unit) {
    return '已減少 $itemName $quantity$unit';
  }
}
