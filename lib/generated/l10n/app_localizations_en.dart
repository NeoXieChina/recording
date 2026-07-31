// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get app_name => 'Treasure within a small space';

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
  String custom_days(Object days) {
    return 'Custom ($days days)';
  }

  @override
  String alert_days_range(Object min, Object max) {
    return 'Reminder days range: $min-$max days';
  }

  @override
  String get enter_days => 'Please enter the reminder days';

  @override
  String get days => 'Number of days';

  @override
  String enter_valid_days(Object min, Object max) {
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
  String test_notification_failed(Object error) {
    return 'Failed to send test notification: $error';
  }

  @override
  String get notification_permission_required =>
      'Notification permission is required to enable local reminders';

  @override
  String operation_failed(Object error) {
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
  String backup_failed(Object error) {
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
  String restore_success(Object count) {
    return 'Restored successfully, a total of $count items';
  }

  @override
  String restore_failed(Object error) {
    return 'Restore failed: $error';
  }

  @override
  String get select_backup_file => 'Select backup file';

  @override
  String get restore_backup => 'Restore Backup';

  @override
  String selected_file(Object filename) {
    return 'Selected file: $filename';
  }

  @override
  String get export_success => 'Data export successful';

  @override
  String export_failed(Object error) {
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
  String import_success(Object count) {
    return 'Data import successful, a total of $count items were imported';
  }

  @override
  String import_failed(Object error) {
    return 'Import failed: $error';
  }

  @override
  String get select_file => 'Select File';
}
