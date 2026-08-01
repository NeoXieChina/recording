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
  String get search => '搜索';

  @override
  String get settings => '设置';

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
  String get alert_settings => '预警设置';

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
  String get system_version => '系统版本';

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
  String item_increased(String name, String quantity, String unit) {
    return '已增加 $name $quantity$unit';
  }

  @override
  String delete_item_confirm_with_irreversible(String name) {
    return '确定要删除「$name」吗？此操作不可撤销。';
  }

  @override
  String item_decreased(String name, String quantity, String unit) {
    return '已减少 $name $quantity$unit';
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
}
