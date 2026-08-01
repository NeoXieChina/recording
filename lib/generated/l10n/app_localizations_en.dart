// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get app_name => 'App Name';

  @override
  String get cancel => 'Cancel';

  @override
  String get confirm => 'Confirm';

  @override
  String get save => 'Save';

  @override
  String get delete => 'Delete';

  @override
  String get edit => 'Edit';

  @override
  String get add => 'Add';

  @override
  String get search => 'Search';

  @override
  String get settings => 'Settings';

  @override
  String get back => 'Return';

  @override
  String get next => 'Next step';

  @override
  String get done => 'Completed';

  @override
  String get loading => 'Loading...';

  @override
  String get error => 'Error';

  @override
  String get success => 'Success';

  @override
  String get warning => 'Warning';

  @override
  String get info => 'Information';

  @override
  String get select_alert_days => 'Select reminder days';

  @override
  String get custom => 'Custom';

  @override
  String custom_days(int days) {
    return 'Custom ($days days)';
  }

  @override
  String alert_days_range(int min, int max) {
    return 'Reminder days range: $min-$max days';
  }

  @override
  String get enter_days => 'Please enter the reminder days';

  @override
  String get days => 'Number of days';

  @override
  String enter_valid_days(int min, int max) {
    return 'Please enter a number between $min and $max';
  }

  @override
  String get alert_settings => 'Alert Settings';

  @override
  String get calendar_settings => 'Calendar Settings';

  @override
  String get calendar_sync => 'Calendar Sync';

  @override
  String get calendar_sync_desc =>
      'Will request calendar permissions when enabled';

  @override
  String get add_test_calendar_event => 'Add test calendar event';

  @override
  String get enable_calendar_sync_first =>
      'Please turn on the \'Calendar Sync\' switch first';

  @override
  String get app_alert_settings => 'App Notification Settings';

  @override
  String get local_alerts => 'Local reminder';

  @override
  String get local_alerts_desc =>
      'Receive in-app expiration reminders after enabling';

  @override
  String get send_test_notification => 'Send test notification';

  @override
  String get enable_local_alerts_first =>
      'Please turn on the \'Local Notifications\' switch first';

  @override
  String get alert_days_settings => 'Reminder Days Setting';

  @override
  String get advance_alert_days => 'Number of days for advance notice';

  @override
  String get advance_alert_days_desc =>
      'Set how many days in advance to remind about item expiration or warranty expiration';

  @override
  String get calendar_permission_request => 'Calendar Permission Request';

  @override
  String get calendar_permission_desc =>
      'Access to the calendar is required to sync item reminders. Allow?';

  @override
  String get allow => 'Allow';

  @override
  String get calendar_permission_granted =>
      'Calendar permissions have been granted, and calendar sync has been enabled';

  @override
  String get calendar_permission_denied =>
      'Calendar permission was denied, unable to enable calendar sync';

  @override
  String get calendar_permission_permanently_denied =>
      'Permission permanently denied';

  @override
  String get calendar_permission_permanently_denied_desc =>
      'Calendar permission has been permanently denied. Please manually enable the permission in the system settings.';

  @override
  String get go_to_settings => 'Go to settings';

  @override
  String get calendar_account_failed =>
      'Calendar permissions have been granted, but a calendar account cannot be created. Please check the system calendar settings.';

  @override
  String get calendar_account_created =>
      'Calendar permissions have been granted, and a local calendar account has been created';

  @override
  String get calendar_account_creating =>
      'The calendar account was created successfully, but the system may take some time to take effect.';

  @override
  String get test_calendar_event_added =>
      'Test calendar event added successfully';

  @override
  String get test_calendar_event_failed =>
      'Failed to add test calendar event, please check your calendar settings';

  @override
  String get calendar_permission_required =>
      'Calendar permission is required to add a test event';

  @override
  String get test_notification_sent => 'Test notification has been sent';

  @override
  String test_notification_failed(String error) {
    return 'Failed to send test notification: $error';
  }

  @override
  String get notification_permission_required =>
      'Notification permission is required to enable local reminders';

  @override
  String operation_failed(String error) {
    return 'Operation failed: $error';
  }

  @override
  String get notification_channel_name => 'Item Alert Notification';

  @override
  String get notification_channel_description =>
      'Item Expiry or Warranty Reminder';

  @override
  String get item_category_food => 'Food';

  @override
  String get item_category_daily_necessities => 'Daily necessities';

  @override
  String get item_category_cosmetics => 'Cosmetics';

  @override
  String get item_category_medicine => 'Medicine';

  @override
  String get item_category_electronics => 'Electronic products';

  @override
  String get item_category_furniture => 'Furniture';

  @override
  String get item_category_clothing => 'Clothing';

  @override
  String get item_category_books => 'Books';

  @override
  String get item_category_other => 'Other';

  @override
  String get purchase_channel_online_mall => 'Online store';

  @override
  String get purchase_channel_physical_store => 'Physical store';

  @override
  String get purchase_channel_supermarket => 'Supermarket';

  @override
  String get purchase_channel_specialty_store => 'Exclusive store';

  @override
  String get purchase_channel_secondhand_market => 'Second-hand market';

  @override
  String get purchase_channel_other => 'Other';

  @override
  String get default_category => 'Other';

  @override
  String get default_purchase_channel => 'Online store';

  @override
  String get item_category => 'Item Classification';

  @override
  String get custom_category => 'Custom Category';

  @override
  String get backup_data => 'Backup data';

  @override
  String get backup_data_description =>
      'Pack all data (including images) into a ZIP file for backup';

  @override
  String get backup_all_data => 'Back up all data';

  @override
  String get backup_success => 'Backup successful';

  @override
  String backup_failed(String error) {
    return 'Backup failed: $error';
  }

  @override
  String get restore_data => 'Recover data';

  @override
  String get restore_data_description =>
      'Restore all data from ZIP backup file';

  @override
  String get export_data => 'Export Data';

  @override
  String get export_data_description => 'Export as CSV, TXT, SQL format';

  @override
  String get import_data => 'Import Data';

  @override
  String get import_data_description => 'Import data from CSV, TXT, SQL files';

  @override
  String get alert_settings_description =>
      'Calendar reminders and app push notification settings';

  @override
  String get about => 'About';

  @override
  String get about_description => 'App Information and Version';

  @override
  String get select_backup_file_first => 'Please select a backup file first';

  @override
  String get confirm_restore => 'Confirm restoration';

  @override
  String get confirm_restore_message =>
      'Restoring the backup will erase all existing data and replace it with the backup data. This action cannot be undone. Are you sure you want to continue?';

  @override
  String get confirm_again => 'Confirm again';

  @override
  String get confirm_restore_warning =>
      'Are you sure you want to erase all existing data and restore the backup? This action cannot be undone!';

  @override
  String get confirm_restore_button => 'Confirm restoration';

  @override
  String restore_success(int count) {
    return 'Restored successfully, a total of $count items';
  }

  @override
  String restore_failed(String error) {
    return 'Restore failed: $error';
  }

  @override
  String get select_backup_file => 'Select backup file';

  @override
  String get restore_backup => 'Restore Backup';

  @override
  String selected_file(String filename) {
    return 'Selected file: $filename';
  }

  @override
  String get export_success => 'Data export successful';

  @override
  String export_failed(String error) {
    return 'Export failed: $error';
  }

  @override
  String get format_csv => 'CSV';

  @override
  String get format_txt => 'TXT';

  @override
  String get format_sql => 'SQL';

  @override
  String get duplicate_data_handling => 'Duplicate data processing';

  @override
  String get duplicate_data_detected =>
      'Duplicate data detected, please choose a handling method:';

  @override
  String get skip => 'Skip';

  @override
  String get overwrite => 'cover';

  @override
  String get skip_all => 'Skip all';

  @override
  String get overwrite_all => 'Full coverage';

  @override
  String get select_import_format_first =>
      'Please select the import format first';

  @override
  String get confirm_import => 'Confirm import';

  @override
  String get confirm_import_message =>
      'Importing data will overwrite existing data. This action cannot be undone. Are you sure you want to continue?';

  @override
  String import_success(int count) {
    return 'Data import successful, a total of $count items were imported';
  }

  @override
  String import_failed(String error) {
    return 'Import failed: $error';
  }

  @override
  String get select_file => 'Select File';

  @override
  String get no_data => 'No Data';

  @override
  String get no_data_description =>
      'No data available, click the button below to add your first record!';

  @override
  String get load_failed => 'Load Failed';

  @override
  String get load_failed_description =>
      'Failed to load data, please check your network connection and try again';

  @override
  String get retry => 'Retry';

  @override
  String get network_connection_failed => 'Network Connection Failed';

  @override
  String get network_connection_failed_description =>
      'Please check your network connection and try again';

  @override
  String get no_results => 'No Results Found';

  @override
  String get no_results_description => 'Try using different keywords to search';

  @override
  String get clear_search => 'Clear Search';

  @override
  String get insufficient_permission => 'Insufficient Permission';

  @override
  String get insufficient_permission_description =>
      'Required permissions are needed to use this feature';

  @override
  String get request_permission => 'Request Permission';

  @override
  String get app_info => 'App Information';

  @override
  String get version => 'Version';

  @override
  String get developer => 'Developer';

  @override
  String get device_info => 'Device Information';

  @override
  String get device_model => 'Device Model';

  @override
  String get brand => 'Brand';

  @override
  String get device_name => 'Device Name';

  @override
  String get product => 'Product';

  @override
  String get hardware => 'Hardware';

  @override
  String get android_version => 'Android Version';

  @override
  String get sdk_version => 'SDK Version';

  @override
  String get system_name => 'System Name';

  @override
  String get system_version => 'System Version';

  @override
  String get device_identifier => 'Device Identifier';

  @override
  String get computer_name => 'Computer Name';

  @override
  String get build_number => 'Build Number';

  @override
  String error_getting_device_info(String error) {
    return 'Unable to get device information: $error';
  }

  @override
  String get features => 'Features';

  @override
  String get app_description => 'Smart Item Management App';

  @override
  String get app_description_detail =>
      'Helps you manage item expiration dates, warranty dates, and provides intelligent reminder features.';

  @override
  String get consumable => 'Consumable';

  @override
  String get durable => 'Durable';

  @override
  String get sort => 'Sort';

  @override
  String get name_asc => 'Name Ascending';

  @override
  String get name_desc => 'Name Descending';

  @override
  String get date_asc => 'Date Ascending';

  @override
  String get date_desc => 'Date Descending';

  @override
  String get price_asc => 'Price Ascending';

  @override
  String get price_desc => 'Price Descending';

  @override
  String get quantity_asc => 'Quantity Ascending';

  @override
  String get quantity_desc => 'Quantity Descending';

  @override
  String get total_price_asc => 'Total Price Ascending';

  @override
  String get total_price_desc => 'Total Price Descending';

  @override
  String get clear_all_filters => 'Clear All Filters';

  @override
  String get scan_barcode => 'Scan Barcode';

  @override
  String get search_items => 'Search items...';

  @override
  String get no_items => 'No Items';

  @override
  String get no_items_description =>
      'Click the button below to add your first item';

  @override
  String get expired => 'Expired';

  @override
  String get expiring_soon => 'Expiring Soon';

  @override
  String get warranty_expired => 'Warranty Expired';

  @override
  String get warranty_expiring_soon => 'Warranty Expiring Soon';

  @override
  String days_remaining(int count) {
    return '$count days remaining';
  }

  @override
  String expired_days_ago(int count) {
    return 'Expired $count days ago';
  }

  @override
  String get delete_item => 'Delete Item';

  @override
  String delete_item_confirm(String name) {
    return 'Are you sure you want to delete \"$name\"?';
  }

  @override
  String get item_deleted => 'Item deleted';

  @override
  String get failed_to_delete => 'Failed to delete';

  @override
  String failed_to_delete_message(String error) {
    return 'Failed to delete item: $error';
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
