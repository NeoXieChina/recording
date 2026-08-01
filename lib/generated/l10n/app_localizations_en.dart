// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get app_name => 'Hidden Treasures In One’s Hands';

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
  String get edit_item => 'Edit Item';

  @override
  String get add_item => 'Add Item';

  @override
  String get search => 'Search';

  @override
  String get settings => 'Settings';

  @override
  String get language_settings => 'Language Settings';

  @override
  String get language_settings_description => 'Set app display language';

  @override
  String get system_default => 'System Default';

  @override
  String get use_system_language => 'Use system language';

  @override
  String get language_change_hint =>
      'The language change will take effect after the application restarts.';

  @override
  String get back => 'Back';

  @override
  String get next => 'Next';

  @override
  String get done => 'Finish';

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
  String current_selection(int days) {
    return 'Current selection: $days days';
  }

  @override
  String alert_days_range(int min, int max) {
    return 'Reminder days range: $min-$max days';
  }

  @override
  String get enter_days => 'Please enter the reminder days';

  @override
  String get days => 'Days';

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
  String get calendar_sync_desc => 'Enabling will request calendar permissions';

  @override
  String get add_test_calendar_event => 'Add Test Calendar Event';

  @override
  String get enable_calendar_sync_first =>
      'Please turn on the \'Calendar Sync\' switch first';

  @override
  String get app_alert_settings => 'App Reminder Settings';

  @override
  String get local_alerts => 'Local Reminders';

  @override
  String get local_alerts_desc =>
      'Turn on to receive in-app expiration reminders';

  @override
  String get send_test_notification => 'Send test notification';

  @override
  String get enable_local_alerts_first =>
      'Please turn on the \'Local Reminder\' switch first';

  @override
  String get alert_days_settings => 'Reminder days setting';

  @override
  String get advance_alert_days => 'Number of days in advance to remind';

  @override
  String get advance_alert_days_desc =>
      'Set how many days in advance to remind about item expiration or warranty expiration';

  @override
  String get calendar_permission_request => 'Calendar permission request';

  @override
  String get calendar_permission_desc =>
      'Calendar access is needed to sync item reminders. Allow?';

  @override
  String get allow => 'Allow';

  @override
  String get calendar_permission_granted =>
      'Calendar permission granted, calendar sync is enabled';

  @override
  String get calendar_permission_denied =>
      'Calendar permission denied, unable to enable calendar sync';

  @override
  String get calendar_permission_permanently_denied =>
      'Permission permanently denied';

  @override
  String get calendar_permission_permanently_denied_desc =>
      'Calendar permission has been permanently denied. Please manually enable the permission in the system settings.';

  @override
  String get go_to_settings => 'Go to Settings';

  @override
  String get calendar_account_failed =>
      'Calendar permissions have been granted, but a calendar account cannot be created. Please check the system calendar settings';

  @override
  String get calendar_account_created =>
      'Calendar permissions have been granted, and a local calendar account has been created';

  @override
  String get calendar_account_creating =>
      'Calendar account created successfully, but the system may take some time to take effect';

  @override
  String get test_calendar_event_added =>
      'Test calendar event added successfully';

  @override
  String get test_calendar_event_failed =>
      'Failed to add test calendar event, please check calendar settings';

  @override
  String get calendar_permission_required =>
      'Calendar permission is required to add test events';

  @override
  String get test_notification_sent => 'Test notification has been sent';

  @override
  String test_notification_failed(String error) {
    return 'Failed to send test notification: $error';
  }

  @override
  String get notification_permission_required =>
      'Notification permission is required to enable local alerts';

  @override
  String operation_failed(String error) {
    return 'Operation failed: $error';
  }

  @override
  String get notification_channel_name => 'Item Warning Notification';

  @override
  String get notification_channel_description =>
      'Item Expiration or Warranty Expiry Reminder';

  @override
  String get item_category_food => 'Food';

  @override
  String get item_category_daily_necessities => 'Daily necessities';

  @override
  String get item_category_cosmetics => 'Cosmetics';

  @override
  String get item_category_medicine => 'Medicines';

  @override
  String get item_category_electronics => 'Electronic products';

  @override
  String get item_category_furniture => 'Furniture';

  @override
  String get item_category_clothing => 'Clothing';

  @override
  String get item_category_books => 'Books';

  @override
  String get item_category_other => 'Others';

  @override
  String get purchase_channel_online_mall => 'Online Store';

  @override
  String get purchase_channel_physical_store => 'Physical Store';

  @override
  String get purchase_channel_supermarket => 'Supermarket';

  @override
  String get purchase_channel_specialty_store => 'Specialty Store';

  @override
  String get purchase_channel_secondhand_market => 'Second-hand Market';

  @override
  String get purchase_channel_other => 'Others';

  @override
  String get default_category => 'Others';

  @override
  String get default_purchase_channel => 'Online store';

  @override
  String get item_category => 'Item categories';

  @override
  String get custom_category => 'Custom categories';

  @override
  String get backup_data => 'Backup data';

  @override
  String get backup_data_description =>
      'Package all data (including images) into a ZIP file for backup';

  @override
  String get backup_all_data => 'Backup all data';

  @override
  String get backup_success => 'Backup successful';

  @override
  String backup_failed(String error) {
    return 'Backup failed: $error';
  }

  @override
  String get restore_data => 'Restore data';

  @override
  String get restore_data_description =>
      'Restore all data from ZIP backup file';

  @override
  String get export_data => 'Export Data';

  @override
  String get export_data_description => 'Export as CSV, TXT, SQL formats';

  @override
  String get import_data => 'Import Data';

  @override
  String get import_data_description => 'Import data from CSV, TXT, SQL files';

  @override
  String get alert_settings_description =>
      'Calendar reminders and App push notification settings';

  @override
  String get about => 'About';

  @override
  String get about_description => 'Application Information and Version';

  @override
  String get select_backup_file_first => 'Please select a backup file first';

  @override
  String get confirm_restore => 'Confirm Restore';

  @override
  String get confirm_restore_message =>
      'Restoring the backup will erase all existing data and replace it with the backup data. This action cannot be undone. Are you sure you want to continue?';

  @override
  String get confirm_again => 'Confirm again';

  @override
  String get confirm_restore_warning =>
      'Are you sure you want to clear all existing data and restore the backup? This action cannot be undone!';

  @override
  String get confirm_restore_button => 'Confirm Restore';

  @override
  String restore_success(int count) {
    return 'Restoration successful, a total of $count items';
  }

  @override
  String restore_failed(String error) {
    return 'Restore failed: $error';
  }

  @override
  String get select_backup_file => 'Select backup file';

  @override
  String get restore_backup => 'Restore backup';

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
  String get duplicate_data_handling => 'Duplicate Data Handling';

  @override
  String get duplicate_data_detected =>
      'Duplicate data detected, please select a handling method:';

  @override
  String get skip => 'Skip';

  @override
  String get overwrite => 'Overwrite';

  @override
  String get skip_all => 'Skip All';

  @override
  String get overwrite_all => 'Overwrite all';

  @override
  String get select_import_format_first =>
      'Please select an import format first';

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
  String get select_file => 'Select file';

  @override
  String get no_data => 'No data available';

  @override
  String get no_data_description =>
      'There is currently no data. Click the button below to add the first record!';

  @override
  String get load_failed => 'Failed to load';

  @override
  String get load_failed_description =>
      'Data loading failed, please check your network connection and try again';

  @override
  String get retry => 'Retry';

  @override
  String get network_connection_failed => 'Network connection failed';

  @override
  String get network_connection_failed_description =>
      'Please check your network connection and try again';

  @override
  String get no_results => 'No results found';

  @override
  String get no_results_description => 'Try searching with other keywords';

  @override
  String get clear_search => 'Clear search';

  @override
  String get insufficient_permission => 'Insufficient permissions';

  @override
  String get insufficient_permission_description =>
      'You need the relevant permissions to use this feature';

  @override
  String get request_permission => 'Request Permission';

  @override
  String get app_info => 'App Info';

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
  String get operating_system => 'Operating System';

  @override
  String get system_version => 'System Version';

  @override
  String get dart_version => 'Dart version';

  @override
  String get device_identifier => 'Device Identifier';

  @override
  String get computer_name => 'Computer Name';

  @override
  String get build_number => 'Version Number';

  @override
  String error_getting_device_info(String error) {
    return 'Unable to retrieve device information: $error';
  }

  @override
  String get features => 'Function Introduction';

  @override
  String get app_description => 'Intelligent Item Management Application';

  @override
  String get app_description_detail =>
      'Helps you manage information such as expiration dates and warranty dates of items, and provides intelligent reminder functions.';

  @override
  String get consumable => 'Consumables';

  @override
  String get durable => 'Durable goods';

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
  String get price_asc => 'Unit Price Ascending';

  @override
  String get price_desc => 'Unit price descending';

  @override
  String get quantity_asc => 'Quantity ascending';

  @override
  String get quantity_desc => 'Quantity descending';

  @override
  String get total_price_asc => 'Total price ascending';

  @override
  String get total_price_desc => 'Total price descending';

  @override
  String get clear_all_filters => 'Clear all filters';

  @override
  String get scan_barcode => 'Scan code to store';

  @override
  String get search_items => 'Search items...';

  @override
  String get no_items => 'No items available';

  @override
  String get no_items_description =>
      'Click the button below to add the first item';

  @override
  String get expired => 'Expired';

  @override
  String get expiring_soon => 'About to expire';

  @override
  String get warranty_expired => 'Warranty has expired';

  @override
  String get warranty_expiring_soon => 'Warranty is about to expire';

  @override
  String days_remaining(int count) {
    return '$count days remaining';
  }

  @override
  String expired_days_ago(int count) {
    return 'Expired $count days';
  }

  @override
  String get delete_item => 'Delete item';

  @override
  String delete_item_confirm(String name) {
    return 'Are you sure you want to delete \"$name\"?';
  }

  @override
  String get item_deleted => 'Item deleted';

  @override
  String get failed_to_delete => 'Deletion failed';

  @override
  String failed_to_delete_message(String error) {
    return 'Unable to delete item: $error';
  }

  @override
  String get date_range_filter => 'Date range filter';

  @override
  String get price_range_filter => 'Price range filter';

  @override
  String get my_items => 'My items';

  @override
  String get click_fab_to_add_item =>
      'Click the bottom right button to add items';

  @override
  String get confirm_delete => 'Confirm deletion';

  @override
  String get filter_options => 'Filter options';

  @override
  String get filter_by_type_category_location =>
      'Filter items by type, category, and location';

  @override
  String categories_count(int count) {
    return '$count categories';
  }

  @override
  String get all_categories => 'All categories';

  @override
  String get no_category_data => 'No category data';

  @override
  String get storage_location => 'Storage location';

  @override
  String locations_count(int count) {
    return '$count locations';
  }

  @override
  String get all_locations => 'All locations';

  @override
  String get no_location_data => 'No location data';

  @override
  String get date_range => 'Date range';

  @override
  String get select_date_range => 'Select date range';

  @override
  String get price_range => 'Price range';

  @override
  String get unit_price_range => 'Unit price range';

  @override
  String get min_unit_price => 'Minimum Unit Price';

  @override
  String get max_unit_price => 'Maximum Unit Price';

  @override
  String get total_price_range => 'Total Price Range';

  @override
  String get min_total_price => 'Minimum Total Price';

  @override
  String get max_total_price => 'Maximum Total Price';

  @override
  String get clear_price_filter => 'Clear price filter';

  @override
  String get place_barcode_in_frame => 'Place the barcode in the box to scan';

  @override
  String get item_already_exists => 'The item already exists';

  @override
  String barcode_with_value(String barcode) {
    return 'Barcode: $barcode';
  }

  @override
  String name_with_value(String name) {
    return 'Name: $name';
  }

  @override
  String category_with_value(String category) {
    return 'Category: $category';
  }

  @override
  String current_quantity_with_value(String quantity, String unit) {
    return 'Current quantity: $quantity$unit';
  }

  @override
  String get please_select_operation => 'Please select an action:';

  @override
  String get outbound => 'Outbound';

  @override
  String get inbound => 'Inbound';

  @override
  String get inbound_quantity => 'Inbound Quantity';

  @override
  String get outbound_quantity => 'Outbound Quantity';

  @override
  String get quantity => 'Quantity';

  @override
  String get enter_inbound_quantity => 'Please enter the inbound quantity';

  @override
  String get enter_outbound_quantity =>
      'Please enter the quantity to be shipped';

  @override
  String delete_item_confirm_with_irreversible(String name) {
    return 'Are you sure you want to delete \"$name\"? This action cannot be undone.';
  }

  @override
  String get database_reset =>
      'The database has been reset, and the table structure will be recreated';

  @override
  String database_reset_error(String error) {
    return 'Error resetting the database: $error';
  }

  @override
  String mock_data_init_failed(String error) {
    return 'Simulation data initialization failed: $error';
  }

  @override
  String get solution_steps => 'Solution:';

  @override
  String get solution_step_1 => '1. Uninstall the app and reinstall';

  @override
  String get solution_step_2 => '2. Or clear the app data';

  @override
  String get solution_step_3 =>
      '3. Or set resetDatabaseOnStart to true and run again';

  @override
  String notification_service_init_failed(String error) {
    return 'Reminder service initialization failed: $error';
  }

  @override
  String check_calendar_account_failed(String error) {
    return 'Failed to check calendar account: $error';
  }

  @override
  String create_calendar_failed(String error) {
    return 'Failed to create calendar: $error';
  }

  @override
  String add_calendar_event_failed(String error) {
    return 'Failed to add calendar event: $error';
  }

  @override
  String delete_calendar_event_failed(String error) {
    return 'Failed to delete calendar event: $error';
  }

  @override
  String set_permission_message_failed(String error) {
    return 'Failed to set permission prompt message: $error';
  }

  @override
  String mock_data_init_success(int count) {
    return 'Successfully initialized $count pieces of simulated data';
  }

  @override
  String database_has_data(int count) {
    return 'The database already has $count records, skipping mock data initialization';
  }

  @override
  String get database_structure_mismatch =>
      'It may be due to a mismatched database structure. It is recommended to clear the app data or reinstall';

  @override
  String get old_database_deleted => 'Old database files have been deleted';

  @override
  String get backup_data_empty => 'Backup data is empty';

  @override
  String get backup_file_not_found => 'Backup file does not exist';

  @override
  String file_not_utf8(String error) {
    return 'The file encoding is not a valid UTF-8 format. Please ensure the file is saved using UTF-8 encoding. Error details: $error';
  }

  @override
  String file_not_found(String filePath) {
    return 'File does not exist: $filePath';
  }

  @override
  String file_empty(String filePath) {
    return 'The file is empty: $filePath';
  }

  @override
  String get file_content_empty =>
      'The file content is empty after decoding, possibly due to encoding mismatch';

  @override
  String field_cannot_be_empty(String fieldName) {
    return '$fieldName cannot be empty';
  }

  @override
  String field_min_length(String fieldName, int minLength) {
    return '$fieldName length cannot be less than $minLength characters';
  }

  @override
  String field_max_length(String fieldName, int maxLength) {
    return '$fieldName length cannot exceed $maxLength characters';
  }

  @override
  String field_invalid_email(String fieldName) {
    return 'Please enter a valid $fieldName address';
  }

  @override
  String field_invalid_number(String fieldName, String numberType) {
    return '$fieldName must be $numberType';
  }

  @override
  String field_min_value(String fieldName, double min) {
    return '$fieldName cannot be less than $min';
  }

  @override
  String field_max_value(String fieldName, double max) {
    return '$fieldName cannot be greater than $max';
  }

  @override
  String field_positive_integer(String fieldName) {
    return '$fieldName must be a positive integer';
  }

  @override
  String field_greater_than_zero(String fieldName) {
    return '$fieldName must be greater than 0';
  }

  @override
  String field_positive_number(String fieldName) {
    return '$fieldName must be a positive number';
  }

  @override
  String field_invalid_date(String fieldName) {
    return 'Please enter a valid $fieldName';
  }

  @override
  String field_date_not_past(String fieldName) {
    return '$fieldName cannot be a past date';
  }

  @override
  String field_date_not_before(String fieldName, String minDate) {
    return '$fieldName cannot be earlier than $minDate';
  }

  @override
  String field_date_not_after(String fieldName, String maxDate) {
    return '$fieldName cannot be later than $maxDate';
  }

  @override
  String field_invalid_value(String fieldName) {
    return 'Please enter a valid $fieldName';
  }

  @override
  String password_min_length(String fieldName) {
    return '$fieldName cannot be less than 8 characters long';
  }

  @override
  String password_uppercase_required(String fieldName) {
    return '$fieldName must contain at least one uppercase letter';
  }

  @override
  String password_lowercase_required(String fieldName) {
    return '$fieldName must contain at least one lowercase letter';
  }

  @override
  String password_digit_required(String fieldName) {
    return '$fieldName must contain at least one number';
  }

  @override
  String password_special_char_required(String fieldName) {
    return '$fieldName must contain at least one special character';
  }

  @override
  String get passwords_not_match => 'The passwords entered twice do not match';

  @override
  String get item_name_cannot_be_empty => 'Item name cannot be empty';

  @override
  String name_max_length(int maxLength) {
    return 'Name cannot exceed $maxLength characters';
  }

  @override
  String quantity_min(int minQuantity) {
    return 'The quantity cannot be less than $minQuantity';
  }

  @override
  String quantity_max(int maxQuantity) {
    return 'Quantity cannot exceed $maxQuantity';
  }

  @override
  String get unit_price_not_negative => 'Unit price cannot be negative';

  @override
  String unit_price_max(double maxUnitPrice) {
    return 'Unit price cannot exceed $maxUnitPrice';
  }

  @override
  String get set_production_expiry_for_validity =>
      'Please set the production date and shelf life to automatically calculate the validity period';

  @override
  String get set_purchase_warranty_for_validity =>
      'Please set the purchase date and shelf life to automatically calculate the warranty period';

  @override
  String get calendar_account_creation_failed =>
      'Unable to create a calendar account, please check the system calendar settings';

  @override
  String get test_notification => 'Test Notification';

  @override
  String get test_notification_description =>
      'This is a test notification, used to verify the local reminder function';

  @override
  String get day_unit => 'Day';

  @override
  String days_with_value(int days) {
    return '$days days';
  }

  @override
  String get item_saved => 'Item saved';

  @override
  String get item_updated => 'Item updated';

  @override
  String get item_added => 'Item added';

  @override
  String get save_success => 'Save successful';

  @override
  String get update_success => 'Update successful';

  @override
  String get delete_success => 'Delete successful';

  @override
  String get save_failed => 'Save failed';

  @override
  String get update_failed => 'Update failed';

  @override
  String get delete_failed => 'Delete failed';

  @override
  String get test_calendar_event => 'Test Calendar Event';

  @override
  String get test_calendar_event_description =>
      'This is a test event used to verify the calendar functionality';

  @override
  String get in_app => 'In-app';

  @override
  String get enable_alert => 'Enable expiration reminder';

  @override
  String get alert_method => 'Reminder method';

  @override
  String get alert_method_in_app => 'App only';

  @override
  String get alert_method_calendar => 'Calendar only';

  @override
  String get alert_method_both => 'Both';

  @override
  String get alert_days_before => 'Number of days for advance notice';

  @override
  String get use_global_setting => 'Use global settings';

  @override
  String get barcode_label => 'Barcode';

  @override
  String get name_label => 'Name';

  @override
  String get category_label => 'Classification';

  @override
  String get current_quantity => 'Current quantity';

  @override
  String get select_operation => 'Please select an operation';

  @override
  String get unit => 'unit';

  @override
  String get custom_unit => 'Custom Unit';

  @override
  String get enter_unit => 'Please enter the unit';

  @override
  String get custom_location => 'Custom Location';

  @override
  String get enter_storage_location => 'Please enter the storage location';

  @override
  String get scan => 'Scan the QR code';

  @override
  String get scan_to_stock => 'Scan code to enter inventory';

  @override
  String get item_categories => 'Item Classification';

  @override
  String get storage_locations => 'Storage location';

  @override
  String get place_barcode_in_frame_to_scan =>
      'Place the barcode inside the frame to scan';

  @override
  String get barcode => 'Barcode';

  @override
  String get enter_barcode_or_scan =>
      'Please enter the barcode or scan the code';

  @override
  String get basic_information => 'Basic Information';

  @override
  String get item_name => 'Item Name';

  @override
  String get enter_item_name => 'Please enter the item name';

  @override
  String get enter_category_name => 'Please enter the category name';

  @override
  String item_increased(String itemName, String quantity, String unit) {
    return 'Has added $itemName $quantity$unit';
  }

  @override
  String item_decreased(String itemName, String quantity, String unit) {
    return 'Has been reduced by $itemName $quantity$unit';
  }
}
