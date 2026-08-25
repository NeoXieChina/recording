// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kannada (`kn`).
class AppLocalizationsKn extends AppLocalizations {
  AppLocalizationsKn([String locale = 'kn']) : super(locale);

  @override
  String get app_name => 'ಸಂಗ್ರಹದ ಚದುರ್ತಿ';

  @override
  String get cancel => 'ರದ್ದುಮಾಡು';

  @override
  String get confirm => 'ನಿಶ್ಚಿತ ಮಾಡು';

  @override
  String get save => 'ಉಳಿಸು';

  @override
  String get delete => 'ಅಳಿಸು';

  @override
  String get edit => 'ಸಂಪಾದನೆ';

  @override
  String get add => 'ಸೇರಿಸು';

  @override
  String get edit_item => 'ಐಟಂಗಳನ್ನು ಸಂಪಾದಿಸಿ';

  @override
  String get add_item => 'ಐಟಂಗಳನ್ನು ಸೇರಿಸಿ';

  @override
  String get search => 'ಹುಡುಕಿ';

  @override
  String get settings => 'ಸೆಟ್ಟಿಂಗ್‌ಗಳು';

  @override
  String get language_settings => 'ಭಾಷಾ ಸಂಯೋಜನೆ';

  @override
  String get language_settings_description =>
      'ಆಪ್ ಪ್ರದರ್ಶನ ಭಾಷೆಯನ್ನು ಸೆಟ್ ಮಾಡಿ';

  @override
  String get system_default => 'ಸಿಸ್ಟಮ್ ಡೀಫಾಲ್ಟ್';

  @override
  String get use_system_language => 'ಸಿಸ್ಟಮ್ ಭಾಷೆಯನ್ನು ಬಳಸುವುದು';

  @override
  String get language_change_hint =>
      'ಭಾಷೆ ಬದಲಾವಣೆ ಅಪ್ಲಿಕೇಶನ್ ಮರುಪ್ರಾರಂಭದ ನಂತರ ಪರಿಣಾಮಕಾರಿ ಆಗಲಿದೆ';

  @override
  String get back => 'ಹಿಂದೆಗೆ';

  @override
  String get next => 'ಮುಂದಿನ ಹಂತ';

  @override
  String get done => 'ಪೂರ್ಣ';

  @override
  String get loading => 'ಲೋಡ್ ಆಗುತ್ತಿದೆ...';

  @override
  String get error => 'ದೋಷ';

  @override
  String get success => 'ಸಫಲತೆ';

  @override
  String get warning => 'ಎಚ್ಚರಿಕೆ';

  @override
  String get info => 'ಮಾಹಿತಿ';

  @override
  String get select_alert_days => 'ಸ್ಮರಣ ದಿನಗಳನ್ನು ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get custom => 'ಕಸ್ಟಮ್';

  @override
  String custom_days(int days) {
    return 'ಕಸ್ಟಮ್ ($days ದಿನಗಳು)';
  }

  @override
  String current_selection(int days) {
    return 'ಪ್ರಸ್ತುತ ಆಯ್ಕೆ: $days ದಿನ';
  }

  @override
  String alert_days_range(int min, int max) {
    return 'ಸ್ಮರಣೆ ದಿನಗಳ ಶ್ರೇಣಿ: $min-$max ದಿನಗಳು';
  }

  @override
  String get enter_days => 'ದಯವಿಟ್ಟು ಮೆಚ್ಚಿನ ದಿನಗಳನ್ನು ನಮೂದಿಸಿ';

  @override
  String get days => 'ದಿನಗಳ ಸಂಖ್ಯೆ';

  @override
  String enter_valid_days(int min, int max) {
    return 'ದಯವಿಟ್ಟು $min ಮತ್ತು $max ನಡುವಿನ ಸಂಖ್ಯೆಯನ್ನು ನಮೂದಿಸಿ';
  }

  @override
  String get alert_settings => 'ಎಚ್ಚರಿಕೆ ಸೆಟ್ಟಿಂಗ್';

  @override
  String get calendar_settings => 'ಕ್ಯಾಲೆಂಡರ್ ಸೆಟ್ಟಿಂಗ್‌ಗಳು';

  @override
  String get calendar_sync => 'ದಿನಪತ್ರಿಕೆ ಸಮకాలಿಕಗೊಳಿಸುವಿಕೆ';

  @override
  String get calendar_sync_desc =>
      'ಚಾಲನೆಯಿಂದ ನಂತರ ಕ್ಯಾಲೆಂಡರ್ ಅನುಮತಿಯನ್ನು ಕೇಳಲಾಗುತ್ತದೆ';

  @override
  String get add_test_calendar_event => 'ಪರೀಕ್ಷಾ ಕ್ಯಾಲೆಂಡರ್ ಘಟನೆ ಸೇರಿಸಿ';

  @override
  String get enable_calendar_sync_first =>
      'ದಯವಿಟ್ಟು ಮೊದಲು \'ಕ್ಯಾಲೆಂಡರ್ ಸಿಂಕ್\' ಸ್ವಿಚ್ ಅನ್ನು ಆನ್ ಮಾಡಿ';

  @override
  String get app_alert_settings => 'ಆಪ್ ಸೂಚನೆ ಸೆಟ್ಟಿಂಗ್‌ಗಳು';

  @override
  String get local_alerts => 'ಸ್ಥಳೀಯ ನೆನಪಿನ ಸೂಚನೆ';

  @override
  String get local_alerts_desc =>
      'ಚಾಲನೆಯಾದ ನಂತರ ಆ್ಯಪ್‌ನಲ್ಲಿ ಅವಧಿ ಮೀರಿದ ಸೂಚನೆಗಳನ್ನು ಸ್ವೀಕರಿಸಿ';

  @override
  String get send_test_notification => 'ಪರೀಕ್ಷಾ ನೋಟిఫಿಕೇಶನ್ ಕಳುಹಿಸಿ';

  @override
  String get enable_local_alerts_first =>
      'ದಯವಿಟ್ಟು ಮೊದಲು \'ಸ್ಥಳೀಯ ನೆನಪಿನ\' ಸ್ವಿಚ್ ಅನ್ನು ಸಕ್ರಿಯಗೊಳಿಸಿ';

  @override
  String get alert_days_settings => 'ಸ್ಮರಣ ದಿನಗಳ ಸೆಟ್ಟಿಂಗ್';

  @override
  String get advance_alert_days => 'ಮುನ್ನೋಟ ಸೂಚನೆ ದಿನಗಳು';

  @override
  String get advance_alert_days_desc =>
      'ವಸ್ತು ಅವಧಿ ಮುಗಿಯುವ ಅಥವಾ ಭರವಸೆ ಅವಧಿ ಮುಗಿಯುವ ಮುನ್ನ ಎಷ್ಟು ದಿನಗಳಿಯಿಂದ ನೆನಪಿಸಬೇಕೆಂದು ಸೆಟ್ ಮಾಡುವುದು';

  @override
  String get calendar_permission_request => 'ಕ್ಯಾಲೆಂಡರ್ ಅನುಮತಿ ವಿನಂತಿ';

  @override
  String get calendar_permission_desc =>
      'ವಸ್ತುಗಳ ನೆನಪುವಿನ同期ಗೆ ಕ್ಯಾಲೆಂಡರ್ ಅನುಮತಿಯನ್ನು ಪ್ರವೇಶಿಸಲು ಅಗತ್ಯವಿದೆ. ಅನುವಾದಿಸಬೇಕೆ嗎?';

  @override
  String get allow => 'ಅನುಮತಿಸಿ';

  @override
  String get calendar_permission_granted =>
      'ಕ್ಯಾಲೆಂಡರ್ ಪ್ರಾಧಿಕಾರವನ್ನು ನೀಡಲಾಗಿದೆ, ಕ್ಯಾಲೆಂಡರ್ ಸಂಗತಿಯು ಸಕ್ರಿಯವಾಗಿದೆ';

  @override
  String get calendar_permission_denied =>
      'ಕ್ಯಾಲೆಂಡರ್ ಪ್ರಾಧಿಕಾರವನ್ನು ನಿರಾಕರಿಸಲಾಗಿದೆ, ಕ್ಯಾಲೆಂಡರ್ ಸಮಕಾಲಿಕরণವನ್ನು ಪ್ರಾರಂಭ нельзя';

  @override
  String get calendar_permission_permanently_denied =>
      'ಅಧಿಕಾರವನ್ನು ಶಾಶ್ವತವಾಗಿ ನಿರಾಕರಿಸಲಾಗಿದೆ';

  @override
  String get calendar_permission_permanently_denied_desc =>
      'ಕ್ಯಾಲೆಂಡರ್ ಅನುಮತಿಯನ್ನು ಶಾಶ್ವತವಾಗಿ ನಿರಾಕರಿಸಲಾಗಿದೆ, ದಯವಿಟ್ಟು ಸಿಸ್ಟಮ್ ಸೆಟ್ಟಿಂಗ್ಸ್‌ನಲ್ಲಿ ಅನುಮತಿಗಳನ್ನು ಕೈಯಿಂದ ಸಕ್ರಿಯಗೊಳಿಸಿ.';

  @override
  String get go_to_settings => 'ಸೆಟ್ಟಿಂಗ್‌ಗಳನ್ನು ತೆರಳಿ';

  @override
  String get calendar_account_failed =>
      'ಕ್ಯಾಲೆಂಡರ್ ಪ್ರವೇಶ ಹಂಚಿಕೆಯಾಗಿದೆ, ಆದರೆ ಕ್ಯಾಲೆಂಡರ್ ಖಾತೆಯನ್ನು ರಚಿಸಲಾಗುವುದಿಲ್ಲ. ದಯವಿಟ್ಟು ಸಿಸ್ಟಮ್ ಕ್ಯಾಲೆಂಡರ್ ಸೆಟ್ಟಿಂಗ್‌ಗಳನ್ನು ಪರಿಶೀಲಿಸಿ';

  @override
  String get calendar_account_created =>
      'ಕ್ಯಾಲೆಂಡರ್ ಅನುಮತಿಗಳು ನೀಡಲಾಗಿದೆ, ಸ್ಥಳೀಯ ಕ್ಯಾಲೆಂಡರ್ ಖಾತೆ ರಚಿಸಲಾಗಿದೆ';

  @override
  String get calendar_account_creating =>
      'ಕ್ಯಾಲೆಂಡರ್ ಖಾತೆ ಸಫಲವಾಗಿ ರಚಿಸಲಾಗಿದೆ, ಆದರೆ ವ್ಯವಸ್ಥೆಗೆ ಪರಿಣಾಮ ತಲುಪಲು ಕೆಲವು ಸಮಯ ಬೇಕಾಗಬಹುದು';

  @override
  String get test_calendar_event_added =>
      'ಕ್ಯಾಲೆಂಡರ್ ಘಟನೆಯು ಯಶಸ್ವಿಯಾಗಿ ಸೇರಿಸಲಾಗಿದೆ';

  @override
  String get test_calendar_event_failed =>
      'ಟೆಸ್ಟ್ ಕ್ಯಾಲೆಂಡರ್ ಘಟನೆ ಸೇರಿಸುವಲ್ಲಿ ವಿಫಲವಾಗಿದೆ, ದಯವಿಟ್ಟು ಕ್ಯಾಲೆಂಡರ್ ಸೆಟ್ಟಿಂಗ್‌ಗಳನ್ನು ಪರಿಶೀಲಿಸಿ';

  @override
  String get calendar_permission_required =>
      'ಪರೀಕ್ಷಾ ಘಟನೆಗಳನ್ನು ಸೇರಿಸಲು ಕ್ಯಾಲೆಂಡರ್ ಪ್ರಾಧಿಕಾರ ಅಗತ್ಯವಿದೆ';

  @override
  String get test_notification_sent => 'ಟೆಸ್ಟು ಸೂಚನೆಗಳನ್ನು ಕಳುಹಿಸಲಾಗಿದೆ';

  @override
  String test_notification_failed(String error) {
    return 'ಟೆಸ್ಟಿಂಗ್ ನೋಟಿಫಿಕೇಶನ್ ಕಳುಹಿಸಲು ವಿಫಲವಾಗಿದೆ: $error';
  }

  @override
  String get notification_permission_required =>
      'ಸ್ಥಳೀಯ ಸೂಚನೆಗಳನ್ನು ಸಕ್ರಿಯಗೊಳಿಸಲು ಅಧಿಸೂಚನೆಯ ಅನುಮತಿಯ ಅವಶ್ಯಕತೆ ಇದೆ';

  @override
  String operation_failed(String error) {
    return 'ಚಾಲನೆ ವಿಫಲವಾಗಿದೆ: $error';
  }

  @override
  String get notification_channel_name => 'ವಸ್ತು ಎಚ್ಚರಿಕೆ ಸೂಚನೆ';

  @override
  String get notification_channel_description =>
      'ವಸ್ತುಗಳು ಅವಧಿ ಮುಗಿದಾಗ ಅಥವಾ ಭದ್ರತಾ ಅವಧಿ ಮುಗಿದಾಗ ಸೂಚನೆ';

  @override
  String get item_category_food => 'ಆಹಾರ';

  @override
  String get item_category_daily_necessities => 'ದೈನಂದಿನ ಉಪಯೋಗದ ವಸ್ತುಗಳು';

  @override
  String get item_category_cosmetics => 'ಸೌಂದರ್ಯಉತ್ಪನ್ನಗಳು';

  @override
  String get item_category_medicine => 'ಮದ್ದು';

  @override
  String get item_category_electronics => 'ಎಲೆಕ್ಟ್ರಾನಿಕ್ ಉತ್ಪನ್ನಗಳು';

  @override
  String get item_category_furniture => 'ಮೆಬ್ಬಿಡು';

  @override
  String get item_category_clothing => 'ಉಡುಪು';

  @override
  String get item_category_books => 'ಪುಸ್ತಕಗಳು';

  @override
  String get item_category_other => 'ಇತರೆ';

  @override
  String get purchase_channel_online_mall => 'ಆನ್‌ಲೈನ್ ಮಾಲ್';

  @override
  String get purchase_channel_physical_store => 'ಖಾಸಗಿ ಅಂಗಡಿ';

  @override
  String get purchase_channel_supermarket => 'ಸೂಪರ್‌ಮಾರ್ಕೆಟ್';

  @override
  String get purchase_channel_specialty_store => 'ಸ್ವತಂತ್ರ ಅಂಗಡಿ';

  @override
  String get purchase_channel_secondhand_market => 'ದ್ವಿತೀಯಕಾಲಿನ ಮಾರುಕಟ್ಟೆ';

  @override
  String get purchase_channel_other => 'ಇತರೆ';

  @override
  String get default_category => 'ಇತರೆ';

  @override
  String get default_purchase_channel => 'ಆನ್‌ಲೈನ್ ಮಾಲ್';

  @override
  String get item_category => 'ವಸ್ತುಗಳನ್ನು ವರ್ಗಾವಣೆ ಮಾಡುವುದು';

  @override
  String get custom_category => 'ಸ್ವಯಂ ಪ್ರಕಾರೀಕರಣ';

  @override
  String get backup_data => 'ಡೇಟಾ ಬ್ಯಾಕಪ್';

  @override
  String get backup_data_description =>
      'ಎಲ್ಲಾ ಡೇಟಾವನ್ನು (ಚಿತ್ರಗಳನ್ನು ಸೇರಿಟ್ಟು) ZIP ಫೈಲ್ ಆಗಿ ಪ್ಯಾಕ್ ಮಾಡಿ ಬ್ಯಾಕಪ್ ಮಾಡಿ';

  @override
  String get backup_all_data => 'ಎಲ್ಲಾ ಡೇಟಾವನ್ನು ಬ್ಯಾಕಪ್ ಮಾಡಿ';

  @override
  String get backup_success => 'ಬ್ಯಾಕಪ್ ಯಶಸ್ವಿಯಾಗಿದೆ';

  @override
  String backup_failed(String error) {
    return 'ಬ್ಯಾಕ್ಅಪ್ ವಿಫಲವಾಗಿದೆ: $error';
  }

  @override
  String get restore_data => 'ಡೇಟಾವನ್ನು ಪುನಃಸ್ಥಾಪನೆ ಮಾಡು';

  @override
  String get restore_data_description =>
      'ZIP ಬ್ಯಾಕ್‌ಅಪ್ ಫೈಲ್‌ನಿಂದ ಎಲ್ಲಾ ಡೇಟಾವನ್ನು ಪುನರುತ್ಪಾದನೆ ಮಾಡು';

  @override
  String get export_data => 'ಡೇಟಾವನ್ನು ರಫ್ತುಮಾಡಿ';

  @override
  String get export_data_description =>
      'CSV, TXT, SQL ಫಾರ್ಮ್ಯಾಟ್ ಗೆ ರಫ್ತು ಮಾಡು';

  @override
  String get import_data => 'ಡೇಟಾವನ್ನು ಆಮದುಮಾಡಿ';

  @override
  String get import_data_description =>
      'CSV, TXT, SQL ಫೈಲ್‌ಗಳಿಂದ ಡೇಟಾ आयಮ್ಪೋರ್ಟ್ ಮಾಡಿ';

  @override
  String get alert_settings_description =>
      'ಕ್ಯಾಲೆಂಡರ್ ನೆನಪಿನ ಹಾಗೂ ಆ್ಯಪ್ ಪುಷ್ ನೆನಪಿನ ಸೆಟ್ಟಿಂಗ್‌ಗಳು';

  @override
  String get about => 'ಬಗ್ಗೆ';

  @override
  String get about_description => 'ಅಪ್ಲಿಕೇಶನ್ ಮಾಹಿತಿ ಮತ್ತು ಆವೃತ್ತಿ';

  @override
  String get select_backup_file_first =>
      'ದಯವಿಟ್ಟು ಮೊದಲು ಬ್ಯಾಕ್ಅಪ್ ಫೈಲ್ ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get confirm_restore => 'ಮರುಸ್ಥಾಪನೆಯನ್ನು ದೃಢೀಕರಿಸಿ';

  @override
  String get confirm_restore_message =>
      'ಬ್ಯಾಕ್‌ಅಪ್ ಪುನಃಸ್ಥಾಪನೆ ಮಾಡುವುದರಿಂದ ಎಲ್ಲಾ ಪ್ರಸ್ತುತ ಡೇಟಾವನ್ನು ಖಾಲಿ ಮಾಡಲಾಗುತ್ತದೆ ಮತ್ತು ಬ್ಯಾಕ್‌ಅಪ್ ಡೇಟಾವಿನಿಂದ ಬದಲಿಸಲಾಗುತ್ತದೆ, ಈ ಕ್ರಿಯೆಯನ್ನು ರದ್ದುಗೊಳಿಸಲಾಗುವುದಿಲ್ಲ. ನೀವು ಮುಂದುವರೆಯಲು ಖಚಿತವಿದ್ದೀರಾ?';

  @override
  String get confirm_again => 'ಮತ್ತು ಒಪ್ಪಿಗೆ ನಿಶ್ಚಿತಗೊಳಿಸಿ';

  @override
  String get confirm_restore_warning =>
      'ನೀವು ಎಲ್ಲ текущಿ ಡೇಟಾವನ್ನು ಶೂನ್ಯಗೊಳಿಸಿ ಬ್ಯಾಕ್ಅಪ್ ಅನ್ನು ಮರುಸ್ಥಾಪಿಸಲು ಖಚಿತನಾ? ಈ ಕ್ರಿಯೆ ಮರಳಿಸಲು ಸಾಧ್ಯವಿಲ್ಲ!';

  @override
  String get confirm_restore_button => 'ಮರುಸ್ಥಾಪನೆ ನಿಶ್ಚಿತಗೊಳಿಸಿ';

  @override
  String restore_success(int count) {
    return 'ಪುನಃಸ್ಥಾಪನೆ ಯಶಸ್ವിയായി, ಒಟ್ಟಾರೆ $count ಐಟಂಗಳು';
  }

  @override
  String restore_failed(String error) {
    return 'ಪುನಃಸ್ಥಾಪನೆ ವಿಫಲವಾಗಿದೆ: $error';
  }

  @override
  String get select_backup_file => 'ಬ್ಯಾಕಪ್ ಫೈಲ್ ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get restore_backup => 'ಬ್ಯಾಕಪ್ ನವೀಕರಿಸಿ';

  @override
  String selected_file(String filename) {
    return 'ಎಲ್ಲಾ ಆಯ್ತು ಫೈಲ್: $filename';
  }

  @override
  String get export_success => 'ಡೇಟಾ ರಫ್ತು ಯಶಸ್ವಿ';

  @override
  String export_failed(String error) {
    return 'ಎಗ್ಸ್ಪೋರ್ಟ್ ವಿಫಲವಾಗಿದೆ: $error';
  }

  @override
  String get format_csv => 'CSV';

  @override
  String get format_txt => 'ಟಿಎಕ್ಸ್ಟು';

  @override
  String get format_sql => 'SQL';

  @override
  String get duplicate_data_handling => 'ಮರುಪರಿಶೀಲನಾ ಡೇಟಾ ಪ್ರಕ್ರಿಯೆ';

  @override
  String get duplicate_data_detected =>
      'ನಕಲಿ ಡೇಟಾ ಗುರುತಿಸಲಾಗಿದೆ, ದಯವಿಟ್ಟು ಪ್ರಕ್ರಿಯೆ ಮಾಡುವ ವಿಧಾನವನ್ನು ಆಯ್ಕೆಮಾಡಿ:';

  @override
  String get skip => 'ಉಲ್ಲೇಖಿಸಿ';

  @override
  String get overwrite => 'ಮುಚ್ಚುವ';

  @override
  String get skip_all => 'ಎಲ್ಲವನ್ನು ಕಡೆಗಣಿಸಿ';

  @override
  String get overwrite_all => 'ಎಲ್ಲಾ ವಿಸ್ತರಣೆ';

  @override
  String get select_import_format_first =>
      'ದಯವಿಟ್ಟು ಮೊದಲು ಆಮದು ರೂಪವನ್ನು ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get confirm_import => 'ಆಮದುಗಳನ್ನು ದೃಢೀಕರಿಸಿ';

  @override
  String get confirm_import_message =>
      'ಡೇಟಾವನ್ನು ಆಮದು ಮಾಡುವುದರಿಂದ ಇ موجودデータ覆盖 ಆಗುತ್ತದೆ, ಈ ಕಾರ್ಯವನ್ನು ಹಿಮ್ಮೆಟ್ಟಿಸಲು ಸಾಧ್ಯವಿಲ್ಲ. ಮುಂದುವರೆಯಲು ನೀವು ಖಚಿತರಾಗಿದ್ದೀರಾ?';

  @override
  String import_success(int count) {
    return 'ಡೇಟಾ ಆಮದು ಯಶಸ್ವಿಯಾಗಿ ಸಂಪೂರ್ಣವಾಗಿ $count ಐಟಂಗಳನ್ನು ಆಮದು ಮಾಡಲಾಗಿದೆ';
  }

  @override
  String import_failed(String error) {
    return 'ಆಮ್ದಾನ ವಿಫಲ: $error';
  }

  @override
  String get select_file => 'ಫೈಲ್ ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get no_data => 'ಡೇಟಾ ಇಲ್ಲ';

  @override
  String get no_data_description =>
      'ಪ್ರಸ್ತುತ ಯಾವುದೇ ಡೇಟಾವಿಲ್ಲ, ಕೆಳಗಿನ ಬಟನ್ ಕ್ಲಿಕ್ ಮಾಡಿ ಮೊದಲ ದಾಖಲೆಯನ್ನು ಸೇರಿಸಿ!';

  @override
  String get load_failed => 'ಲೋಡ್ ಆಗಲಿಲ್ಲ';

  @override
  String get load_failed_description =>
      'ಡೇಟಾ ಲೋಡ್ ವಿಫಲವಾಗಿದೆ, ದಯವಿಟ್ಟು ನೆಟ್‌ವರ್ಕ್ ಸಂಪರ್ಕವನ್ನು ಪರಿಶೀಲಿಸಿ ಮತ್ತು ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ';

  @override
  String get retry => 'ಮತ್ತು ಪ್ರಯತ್ನಿಸಿ';

  @override
  String get network_connection_failed => 'ಜಾಲ ಸಂಯೋಜನೆ ವಿಫಲವಾಗಿದೆ';

  @override
  String get network_connection_failed_description =>
      'ದಯವಿಟ್ಟು ನೆಟ್ವರ್ಕ್ ಸಂಪರ್ಕವನ್ನು ಪರಿಶೀಲಿಸಿ ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ';

  @override
  String get no_results => 'ಫಲಿತಾಂಶ ಕಂಡುಬಂದಿಲ್ಲ';

  @override
  String get no_results_description =>
      'ಮತ್ತೊಂದು ಕೀವರ್ಡ್ ಬಳಸಿ ಹುಡುಕಲು ಪ್ರಯತ್ನಿಸಿ';

  @override
  String get clear_search => 'ಸಂದರ್ಶನಗಳನ್ನು ಮಾಯಮಾಡಿ';

  @override
  String get insufficient_permission => 'ಅನುಮತಿ ಇಲ್ಲ';

  @override
  String get insufficient_permission_description =>
      'ಈ ಕಾರ್ಯವನ್ನು ಬಳಸಲು ಸಂಬಂಧಿತ ಹಕ್ಕುಗಳು ಅಗತ್ಯವಿವೆ';

  @override
  String get request_permission => 'ಅನುಮತಿ ಕೇಳು';

  @override
  String get app_info => 'ಅಪ್ಲಿಕೇಶನ್ ಮಾಹಿತಿ';

  @override
  String get version => 'ಆವೃತ್ತಿ';

  @override
  String get developer => 'ವಿಕಸಕರ';

  @override
  String get device_info => 'ಉಪಕರಣ ಮಾಹಿತಿ';

  @override
  String get device_model => 'ಉಪಕರಣ ಮಾದರಿ';

  @override
  String get brand => 'ಬ್ರ್ಯಾಂಡ್';

  @override
  String get device_name => 'ಉಪಕರಣದ ಹೆಸರು';

  @override
  String get product => 'ಉತ್ಪನ್ನ';

  @override
  String get hardware => 'ಹಾರ್ಡ್‌ವೇರ್';

  @override
  String get android_version => 'Android ಆವೃತ್ತಿ';

  @override
  String get sdk_version => 'SDK ಆವೃತ್ತಿ';

  @override
  String get system_name => 'ಸಿಸ್ಟಮ್ ಹೆಸರು';

  @override
  String get operating_system => 'ಆಪರೇಟಿಂಗ್ ಸಿಸ್ಟಮ್';

  @override
  String get system_version => 'ಸಿಸ್ಟಮ್ ಆವೃತ್ತಿ';

  @override
  String get dart_version => 'ಡಾರ್ಟ್ ಆವೃತ್ತಿ';

  @override
  String get device_identifier => 'ಸಾಧನ ಗುರುತು';

  @override
  String get computer_name => 'ಕಂಪ್ಯೂಟರ್ ಹೆಸರು';

  @override
  String get build_number => 'ಆವೃತ್ತಿ ಸಂಖ್ಯೆ';

  @override
  String error_getting_device_info(String error) {
    return 'ಸಾಧನ ಮಾಹಿತಿಯನ್ನು ಪಡೆಯಲಾಗಲಿಲ್ಲ: $error';
  }

  @override
  String get features => 'ಕಾರ್ಯಾಚರಣೆ ಪರಿಚయం';

  @override
  String get app_description => 'ಸ್ಮಾರ್ಟ್ ಐಟಂ ನಿರ್ವಹಣಾ ಅಪ್ಲಿಕೇಶನ್';

  @override
  String get app_description_detail =>
      'ನೀವು ವಸ್ತುಗಳ ಅವಧಿ 날ಾಂಕ, ಖಾತರೀಕೃತ ದಿನಾಂಕ ಮುಂತಾದ ಮಾಹಿತಿಯನ್ನು ನಿರ್ವಹಿಸಲು ಸಹಾಯಮಾಡುತ್ತದೆ ಮತ್ತು ವಿಚಾರಣಾತ್ಮಕ ಸ್ಮರಣೆ ಕಾರ್ಯವನ್ನು ಒದಗಿಸುತ್ತದೆ.';

  @override
  String get consumable => 'ಬಳಕೆಯ ವಸ್ತುಗಳು';

  @override
  String get durable => 'ದೀರ್ಘಕಾಲ ಬಳಸಬಹುದಾದ ಸರಕು';

  @override
  String get sort => 'ವಿನ್ಯಾಸ';

  @override
  String get name_asc => 'ಹೆಸರು ಏರುವ ಕ್ರಮದಲ್ಲಿ';

  @override
  String get name_desc => 'ಹೆಸರು ಇಳಿದ ಕ್ರಮದಲ್ಲಿ';

  @override
  String get date_asc => 'ದಿನಾಂಕ ಏರುವ ಕ್ರಮದಲ್ಲಿ';

  @override
  String get date_desc => 'ದಿನಾಂಕ ಇಳಿದ ಕ್ರಮ';

  @override
  String get price_asc => 'ಒಂದು ಘಟಕದ ಬೆಲೆಯ ಏರಿಕೆ ಕ್ರಮ';

  @override
  String get price_desc => 'ಒಂದು ಘಟಕದ ಬೆಲೆಯ ಇಳಿವಣಿ ಕ್ರಮ';

  @override
  String get quantity_asc => 'ಮಾತ್ರೆಯ ಏರುವ ಕ್ರಮ';

  @override
  String get quantity_desc => 'ಮಾತ್ರೆಯ ಇಳುವರಿಯ ಕ್ರಮ';

  @override
  String get total_price_asc => 'ಒಟ್ಟು ಬೆಲೆ ಏರಿಕೆಯಲ್ಲಿ';

  @override
  String get total_price_desc => 'ಒಟ್ಟು ಬೆಲೆ ಇಳಿಜಾರಿನ ಕ್ರಮ';

  @override
  String get clear_all_filters => 'ಎಲ್ಲಾ ಫಿಲ್ಟರ್‌ಗಳನ್ನು ಅಳಿಸಿ';

  @override
  String get scan_barcode => 'ಸ್ಕ್ಯಾನ್ ಮಾಡಿ ನுழೆಯಿರಿ';

  @override
  String get search_items => 'ವಸ್ತುಗಳನ್ನು ಹುಡುಕಿ...';

  @override
  String get no_items => 'ಇಷ್ಟಾಪಟ್ಟ ವಸ್ತುಗಳಿಲ್ಲ';

  @override
  String get no_items_description =>
      'ಕೆಳಗಿನ ಬಟನ್ ಅನ್ನು ಕ್ಲಿಕ್ ಮಾಡಿ ಮೊದಲ ಐಟಂ ಸೇರಿಸಿ';

  @override
  String get expired => 'ಮೀರಿದ ಕಾಲಾವಧಿ';

  @override
  String get expiring_soon => 'ಶೀಘ್ರದಲ್ಲೇ ಅವಧಿ ಮುಗಿಯುವುದು';

  @override
  String get warranty_expired => 'ವಾರಂಟಿ ಮುಗಿದಿದೆ';

  @override
  String get warranty_expiring_soon =>
      'ಹುಣಿಸಿಕೊಂಡಿರುವ ಜಾಮೀನಿನ ಅವಧಿ ಶೀಘ್ರವೇ ಮುಗಿಯಲಿದೆ';

  @override
  String days_remaining(int count) {
    return 'ಮಿಕ್ಕಿರುವ $count ದಿನಗಳು';
  }

  @override
  String expired_days_ago(int count) {
    return 'ಹಳೆಯದಾಗಿದೆ$countದಿನಗಳು';
  }

  @override
  String get delete_item => 'ಐಟಂಗಳನ್ನು ಅಳಿಸಿ';

  @override
  String delete_item_confirm(String name) {
    return 'ನೀವು \"$name\" ಅನ್ನು ಅಳಿಸಲು ಖಚಿತನಾ?';
  }

  @override
  String get item_deleted => 'ವಸ್ತುವು ಅಳಿಸಲಾಗಿದೆ';

  @override
  String get failed_to_delete => 'ಅಳಿಸಲು ವಿಫಲವಾಗಿದೆ';

  @override
  String failed_to_delete_message(String error) {
    return 'ವಸ್ತು ಅಳಿಸಲಾಗುವುದಿಲ್ಲ: $error';
  }

  @override
  String get date_range_filter => 'ತಾರೀಖಿನ ಶ್ರೇಣಿಯ ಅಂಶಗಳ ಫಿಲ್ಟರ್';

  @override
  String get price_range_filter => 'ಬೆಲೆಯ ಶ್ರೇಣಿಯ ತხრಿಕೆ';

  @override
  String get my_items => 'ನನ್ನ ವಸ್ತುಗಳು';

  @override
  String get click_fab_to_add_item =>
      'ಕೋನೆಯಲ್ಲಿ ತಿರುವು ಬಟನ್ ಕ್ಲಿಕ್ ಮಾಡಿ ಐಟಂ ಸೇರಿಸಿ';

  @override
  String get confirm_delete => 'ಅಳಿಸಲು ದೃಢೀಕರಿಸಿ';

  @override
  String get filter_options => 'ಶುಧ್ಧೀಕರಿಸುವ ಆಯ್ಕೆ';

  @override
  String get filter_by_type_category_location =>
      'ವಸ್ತುಗಳನ್ನು ಪ್ರಕಾರ, ವರ್ಗ ಹಾಗೂ ಸ್ಥಳ ಪ್ರಕಾರ ಶೋಧಿಸಿ';

  @override
  String categories_count(int count) {
    return '$count ವರ್ಗಗಳು';
  }

  @override
  String get all_categories => 'ಎಲ್ಲಾ ವರ್ಗಗಳು';

  @override
  String get no_category_data => 'ವರ್ಗೀಕರಣ ಡೇಟಾ ಇಲ್ಲ';

  @override
  String get storage_location => 'ಸಂಗ್ರಹಸ್ಥಳ';

  @override
  String locations_count(int count) {
    return '$count ಸ್ಥಳಗಳು';
  }

  @override
  String get all_locations => 'ಎಲ್ಲಾ ಸ್ಥಳಗಳು';

  @override
  String get no_location_data => 'ಸ್ಥಳದ ಡೇಟಾ ಇಲ್ಲ';

  @override
  String get date_range => 'ದಿನಾಂಕ ವ್ಯಾಪ್ತಿ';

  @override
  String get select_date_range => 'ದಿನಾಂಕ ಶ್ರೇಣಿಯನ್ನು ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get price_range => 'ಬೆಲೆಯ ವ್ಯಾಪ್ತಿ';

  @override
  String get unit_price_range => 'ಒಂದು ಘಟಕದ ಬೆಲೆಯ ವ್ಯಾಪ್ತಿ';

  @override
  String get min_unit_price => 'ಕನಿಷ್ಠ ಏಕಕ ದರ';

  @override
  String get max_unit_price => 'ಗರಿಷ್ಠ ಏಕಕಾಲಿನ ಬೆಲೆ';

  @override
  String get total_price_range => 'ಒಟ್ಟು ಬೆಲೆಯ ಶ್ರೇಣಿಯಲ್ಲಿ';

  @override
  String get min_total_price => 'ಕನಿಷ್ಠ ಒಟ್ಟು ಬೆಲೆ';

  @override
  String get max_total_price => 'ಗರಿಷ್ಠ ಒಟ್ಟು ಬೆಲೆ';

  @override
  String get clear_price_filter => 'ಬೆಲೆ ಶ್ರೇಣಿಯ ಫಿಲ್ಟರ್ ಅನ್ನು ತೆರವುಮಾಡಿ';

  @override
  String get place_barcode_in_frame =>
      'ಬಾರ್‌ಕೋಡ್ ಅನ್ನು ಫ್ರೇಮ್ ಒಳಗೆ ಇರಿಸಿ ಸ್ಕ್ಯಾನ್ ಮಾಡಿ';

  @override
  String get item_already_exists => 'ಮಾಲು ಈಗಾಗಲೇ ಅಸ್ತಿತ್ವದಲ್ಲಿದೆ';

  @override
  String barcode_with_value(String barcode) {
    return 'ಬಾರ್ಕೋಡ್: $barcode';
  }

  @override
  String name_with_value(String name) {
    return 'ಹೆಸರು: $name';
  }

  @override
  String category_with_value(String category) {
    return 'ವರ್ಗೀಕರಣ: $category';
  }

  @override
  String current_quantity_with_value(String quantity, String unit) {
    return 'ಪ್ರಸ್ತುತ ಪ್ರಮಾಣ: $quantity$unit';
  }

  @override
  String get please_select_operation => 'ದಯವಿಟ್ಟು ಕ್ರಿಯೆಯನ್ನು ಆಯ್ಕೆಮಾಡಿ:';

  @override
  String get outbound => 'ಖಾತೆಯಿಂದ ಹೊರಹರಿಸಿದೆ';

  @override
  String get inbound => 'ಖಾತೆಯಲ್ಲಿ ಸೇರ್ಪಡೆ';

  @override
  String get inbound_quantity => 'ಸಂಗ್ರಹಿತ ಪ್ರಮಾಣ';

  @override
  String get outbound_quantity => 'ಮಾಳುಗಳನ್ನು ಹೊರತರುವ ಪ್ರಮಾಣ';

  @override
  String get quantity => 'ಪ್ರಮಾಣ';

  @override
  String get enter_inbound_quantity =>
      'ದಯವಿಟ್ಟು ಸ್ಟಾಕ್‌ನಲ್ಲಿ ಸೇರ್ಣುವ ಪ್ರಮಾಣವನ್ನು ನಮೂದಿಸಿ';

  @override
  String get enter_outbound_quantity =>
      'ದಯವಿಟ್ಟು ಶಿಪ್ಮೆಂಟ್ ಸಂಖ್ಯೆಯನ್ನು ನಮೂದಿಸಿ';

  @override
  String delete_item_confirm_with_irreversible(String name) {
    return 'ನೀವು \"$name\" ಅನ್ನು ಅಳಿಸಲು ಖಾತ್ರಿ ಪಡುತ್ತೀರಾ? ಈ ಕ್ರಿಯೆಯನ್ನು ಮರುಪಡೆಯಲಾಗುವುದಿಲ್ಲ.';
  }

  @override
  String get database_reset =>
      'ಡೇಟಾಬೇಸ್ ಮರುಹೊಂದಿಸಲಾಗಿದೆ, ಟೇಬಲ್ ರಚನೆ ಪುನಃ ಸೃಷ್ಟಿಸಲಾಗುತ್ತದೆ';

  @override
  String database_reset_error(String error) {
    return 'ಡೇಟಾಬೇಸ್ನ್ನು ಮರುಹೊಂದಿಸಲು ತಪ್ಪಾಗಿದೆ: $error';
  }

  @override
  String mock_data_init_failed(String error) {
    return 'ಸಿಮ್ಯುಲೇಟೆಡ್ ಡೇಟಾ ಆರಂಭ 실패: $error';
  }

  @override
  String get solution_steps => 'ದೃಢೀಕರಣ ಪರಿಹಾರ:';

  @override
  String get solution_step_1 =>
      '1. ಅಪ್ಲಿಕೇಶನ್ ಅನ್ನು ಅನ್‌ಇನ್‌ಸ್ಟಾಲ್ ಮಾಡಿ ಮರುಸ್ಥಾಪನೆ ಮಾಡಿ';

  @override
  String get solution_step_2 => '2. ಅಥವಾ ಅಪ್ಲಿಕೇಶನ್ ಡೇಟಾವನ್ನು_Clear ಮಾಡಿರಿ';

  @override
  String get solution_step_3 =>
      '3. ಅಥವಾ resetDatabaseOnStart ಅನ್ನು true ಗೆ ಸೆಟ್ ಮಾಡಿ ಮತ್ತು ನಂತರ ಮರುಪ್ರಾರಂಭಿಸಿ';

  @override
  String notification_service_init_failed(String error) {
    return 'ಸ್ಮರಣ الخدمة ಪ್ರಾರಂಭಿಸಲು ವಿಫಲವಾಗಿದೆ: $error';
  }

  @override
  String check_calendar_account_failed(String error) {
    return 'ಕ್ಯಾಲೆಂಡರ್ ಖಾತೆಯನ್ನು ಪರಿಶೀಲಿಸಲು ವಿಫಲವಾಯಿತು: $error';
  }

  @override
  String create_calendar_failed(String error) {
    return 'ಕ್ಯಾಲೆಂಡರ್ ನಿರ್ಮಿಸಲು ವಿಫಲವಾಗಿದೆ: $error';
  }

  @override
  String add_calendar_event_failed(String error) {
    return 'ಕ್ಯಾಲೆಂಡರ್ ಘಟನೆ ಸೇರಿಸಲು ವಿಫಲವಾಗಿದೆ: $error';
  }

  @override
  String delete_calendar_event_failed(String error) {
    return 'ಕ್ಯಾಲೆಂಡರ್ ಘಟನೆ ಅಳಿಸುವಲ್ಲಿ ವಿಫಲವಾಗಿದೆ: $error';
  }

  @override
  String set_permission_message_failed(String error) {
    return 'ಅಧಿಕಾರ ಸೂಚನೆ ಸಂದೇಶವನ್ನು ಹೊಂದಿಸಲು ವಿಫಲವಾಗಿದೆ: $error';
  }

  @override
  String mock_data_init_success(int count) {
    return 'ಯಶಸ್ವಿಯಾಗಿ $count ನಕಲಿ ಡೇಟಾ ಪೂರ್ವನಿರ್ಧಾರಗೊಳಿಸಲಾಗಿದೆ';
  }

  @override
  String database_has_data(int count) {
    return 'ಡೇಟಾಬೇಸಿನಲ್ಲಿ ಈಗಾಗಲೇ $count ದಾಖಲೆಗಳಿವೆ, ಅಾನುಕರಣ ಡೇಟಾ ಆರಂಭಿಕಗೊಳಿಸುವಿಕೆಯನ್ನು ಬಿಟ್ಟುಮಾಡಿ';
  }

  @override
  String get database_structure_mismatch =>
      'ದತ್ತಸಂಗ್ರಹಣ ರಚನೆ ಹೊಂದಿಕೆಯಾಗದಿರಬಹುದು, ಅಪ್ಲಿಕೇಶನ್ ಡೇಟಾವನ್ನು ಅಳಿಸಲು ಅಥವಾ ಪುನಃಸ್ಥಾಪನೆ ಮಾಡಲು ಸಲಹೆ ಮಾಡಲಾಗುತ್ತದೆ';

  @override
  String get old_database_deleted => 'ಹಳೆಯ ಡೇಟಾಬೇಸ್ ಫೈಲ್ ಅನ್ನು ಅಳಿಸಲಾಗಿದೆ';

  @override
  String get backup_data_empty => 'ಬ್ಯಾಕಪ್ ಡೇಟಾ ಖಾಲಿ ಇದೆ';

  @override
  String get backup_file_not_found => 'ಬ್ಯಾಕಪ್ ಫೈಲ್ ಇಲ್ಲ';

  @override
  String file_not_utf8(String error) {
    return 'ಫೈಲ್ ಎನ್‌ಕೋಡಿಂಗ್ ಮಾನ್ಯ UTF-8 ಫಾರ್ಮ್ಯಾಟ್ ಅಲ್ಲ. ದಯವಿಟ್ಟು ಫೈಲ್ ಅನ್ನು UTF-8 ಎನ್‌ಕೋಡಿಂಗ್‌ನಲ್ಲಿ ಉಳಿಸಲಾಗಿದೆ ಎಂದು ಖಚಿತಪಡಿಸಿ. ದೋಷದ ವಿವರಗಳು: $error';
  }

  @override
  String file_not_found(String filePath) {
    return 'ಫೈಲ್ ಇಲ್ಲ: $filePath';
  }

  @override
  String file_empty(String filePath) {
    return 'ಫೈಲ್ ಖಾಲಿ ಇದೆ: $filePath';
  }

  @override
  String get file_content_empty =>
      'ಫೈಲ್ ವಿಷಯವನ್ನು ಡಿಕೋಡ್ ಮಾಡಿದ ನಂತರ ಖಾಲಿ ಇದೆ, ಅದು ಎನ್‌ಕೋಡಿಂಗ್ ಹೊಂದಾಣಿಕೆ ಆಗದಿರುವ ಸಾಧ್ಯತೆ ಇದೆ';

  @override
  String field_cannot_be_empty(String fieldName) {
    return '$fieldName ಖಾಲಿಯಾಗಿರಬಾರದು';
  }

  @override
  String field_min_length(String fieldName, int minLength) {
    return '$fieldName ಉದ್ದವು ಕನಿಷ್ಠ $minLength ಅಕ್ಷರಗಳಿಗಿಂತ ಕಡಿಮೆ ಇರಬಾರದು';
  }

  @override
  String field_max_length(String fieldName, int maxLength) {
    return '$fieldName ಉದ್ದವು $maxLength ಅಕ್ಷರಗಳನ್ನು ಮೀರಬಾರದು';
  }

  @override
  String field_invalid_email(String fieldName) {
    return 'ದಯವಿಟ್ಟು ಮಾನ್ಯ $fieldName ವಿಳಾಸವನ್ನು ನಮೂದಿಸಿ';
  }

  @override
  String field_invalid_number(String fieldName, String numberType) {
    return '$fieldName$numberType ಆಗಿರಬೇಕು';
  }

  @override
  String field_min_value(String fieldName, double min) {
    return '$fieldName $min ಕಿಂತ ಕಡಿಮೆ ಅಲ್ಲ';
  }

  @override
  String field_max_value(String fieldName, double max) {
    return '$fieldName $max ಗಿಂತ ಹೆಚ್ಚು ಇರಕೂಡದು';
  }

  @override
  String field_positive_integer(String fieldName) {
    return '$fieldNameವು ಧನ ಪೂರ್ಣಾಂಕವಾಗಿರಬೇಕು';
  }

  @override
  String field_greater_than_zero(String fieldName) {
    return '$fieldName ಶೂನ್ಯಕ್ಕಿಂತ ಹೆಚ್ಚು ಇರಬೇಕು';
  }

  @override
  String field_positive_number(String fieldName) {
    return '$fieldName ಧನ ಸಂಖ್ಯೆಯಾಗಿರಬೇಕು';
  }

  @override
  String field_invalid_date(String fieldName) {
    return 'ದಯವಿಟ್ಟು ಮಾನ್ಯ $fieldName ನಮೂದಿಸಿ';
  }

  @override
  String field_date_not_past(String fieldName) {
    return '$fieldName ಹಿಂದಿನ ದಿನಾಂಕವಾಗಿರಬಾರದು';
  }

  @override
  String field_date_not_before(String fieldName, String minDate) {
    return '$fieldName $minDate ಕ್ಕೆ ಮುಂಚಿತವಾಗ бытьಾರದು';
  }

  @override
  String field_date_not_after(String fieldName, String maxDate) {
    return '$fieldName $maxDate ಕ್ಕಿಂತ ತಡವಾಗ бытьಾರದು';
  }

  @override
  String field_invalid_value(String fieldName) {
    return 'ದಯವಿಟ್ಟು ಮಾನ್ಯ $fieldName ನಮೂದಿಸಿ';
  }

  @override
  String password_min_length(String fieldName) {
    return '$fieldName ಉದ್ದವು ಕನಿಷ್ಠ 8 ಅಕ್ಷರಗಳು ಇರಬೇಕು';
  }

  @override
  String password_uppercase_required(String fieldName) {
    return '$fieldName ಕನಿಷ್ಠ ಒಂದು ದೊಡ್ಡ ಅಕ್ಷರವನ್ನು ಹೊಂದಿರಬೇಕು';
  }

  @override
  String password_lowercase_required(String fieldName) {
    return '$fieldName ಕನಿಷ್ಠ ಒಂದು ಸಣ್ಣ ಅಕ್ಷರವನ್ನು ಹೊಂದಿರಬೇಕು';
  }

  @override
  String password_digit_required(String fieldName) {
    return '$fieldName ಕನಿಷ್ಠ ಒಂದು ಅಂಕಿಯನ್ನು ಒಳಗೊಂಡಿರಬೇಕು';
  }

  @override
  String password_special_char_required(String fieldName) {
    return '$fieldName ಕನಿಷ್ಠ ಒಂದು ವಿಶೇಷ ಅಕ್ಷರವನ್ನು ಹೊಂದಿರಬೇಕು';
  }

  @override
  String get passwords_not_match => 'ರ δυರಾಯಿಸಿದ ಎರಡು ಪಾಸ್‌ವರ್ಡ್‌ಗಳು一致ವಾಗಿಲ್ಲ';

  @override
  String get item_name_cannot_be_empty => 'ವಸ್ತುವಿನ ಹೆಸರು ಖಾಲಿಯಾಗಿರಬಾರದು';

  @override
  String name_max_length(int maxLength) {
    return 'ಹೆಸರಿನು $maxLength ಅಕ್ಷರಕ್ಕಿಂತ ಹೆಚ್ಚು ಇರಬಾರದು';
  }

  @override
  String quantity_min(int minQuantity) {
    return 'ಎಣಿಕೆ $minQuantity ಕ್ಕಿಂತ ಕಡಿಮೆ ಇರಬಾರದು';
  }

  @override
  String quantity_max(int maxQuantity) {
    return 'ಪ್ರಮಾಣವು $maxQuantity ಅನ್ನು ಮೀರಬಾರದು';
  }

  @override
  String get unit_price_not_negative =>
      'ಪ್ರತಿ ಘಟಕದ ಬೆಲೆ ನೆಗೆಟಿವ್ ಆಗಿರಲು ಸಾಧ್ಯವಿಲ್ಲ';

  @override
  String unit_price_max(double maxUnitPrice) {
    return 'ಏಕಕ ದರ $maxUnitPrice ಅನ್ನು ಮೀರಬಾರದು';
  }

  @override
  String get set_production_expiry_for_validity =>
      'ದಯವಿಟ್ಟು ಉತ್ಪಾದನಾ ದಿನಾಂಕ ಮತ್ತು ಶೇಖರಣಾ ಅವಧಿಯನ್ನು ಹೊಂದಿಸಿ ताकि ಮಾನ್ಯತೆ ಅವಧಿಯನ್ನು ಸ್ವಯಂಚಾಲಿತವಾಗಿ ಲೆಕ್ಕಿಸಬಹುದು';

  @override
  String get set_purchase_warranty_for_validity =>
      'ದಯವಿಟ್ಟು ಖರೀದಿ ದಿನಾಂಕ ಮತ್ತು ಮেয়ಾದಿನ ಅವಧಿಯನ್ನು ಹೊಂದಿಸಿ, ಗ್ಯಾರಂಟಿ ಅವಧಿಯನ್ನು ಸ್ವಯಂಚಾಲಿತವಾಗಿ ಲೆಕ್ಕಹಾಕಲು';

  @override
  String get calendar_account_creation_failed =>
      'ಕ್ಯಾಲೆಂಡರ್ ಖಾತೆಯನ್ನು ರಚಿಸಲು ಸಾಧ್ಯವಿಲ್ಲ, ದಯವಿಟ್ಟು ಸిస్టಮ್ ಕ್ಯಾಲೆಂಡರ್ ಸೆಟ್ಟಿಂಗ್‌ಗಳನ್ನು ಪರಿಶೀಲಿಸಿ';

  @override
  String get test_notification => 'ಪರೀಕ್ಷೆ通知';

  @override
  String get test_notification_description =>
      'ಇದು ಸ್ಥಳೀಯ ನೆನಪಿನ ಕಾರ್ಯವನ್ನು ಪರಿಶೀಲಿಸಲು ಬಳಸುವ ಪರೀಕ್ಷಾ ಸೂಚನೆ';

  @override
  String get day_unit => 'ಆಕಾಶ';

  @override
  String days_with_value(int days) {
    return '$days天';
  }

  @override
  String get item_saved => 'ವಸ್ತು ಸಂರಕ್ಷಿಸಲಾಗಿದೆ';

  @override
  String get item_updated => 'ವಸ್ತು ನವೀಕರಿಸಲಾಗಿದೆ';

  @override
  String get item_added => 'ವಸ್ತು ಸೇರಿಸಿದೆ';

  @override
  String get save_success => 'ಉಳಿಸಲಾಗುಚು ಯಶಸ್ವಿ';

  @override
  String get update_success => 'ಅಪ්ඩೇಟ್ ಯಶಸ್ವಿಯಾಯಿತು';

  @override
  String get delete_success => 'ಅಳಿಸಲಾಗುಚು ಯಶಸ್ವಿ';

  @override
  String get save_failed => 'ಉಳಿಸಲು ವಿಫಲವಾಗಿದೆ';

  @override
  String get update_failed => 'ಅಪ්ඩೇಟ್ ವಿಫಲವಾಯಿತು';

  @override
  String get delete_failed => 'ಅಳಿಸಲು ವಿಫಲವಾಗಿದೆ';

  @override
  String get test_calendar_event => 'ಕಾಲೆಂಡರ್ ಘಟನೆಗಳನ್ನು ಪರೀಕ್ಷೆ ಮಾಡಿ';

  @override
  String get test_calendar_event_description =>
      'ಇದು ಕ್ಯಾಲೆಂಡರ್ ಕಾರ್ಯಕ್ಷಮತೆಯನ್ನು ಪರಿಶೀಲಿಸಲು ಬಳಸುವ ಒಂದು ಪರೀಕ್ಷಾ ಘಟನೆ';

  @override
  String get in_app => 'ಆ್ಯಪ್‌ ಒಳಗೆ';

  @override
  String get enable_alert => 'ಮ್ಯಾಡ್‌ವಾನ್ಸ್ ನೋಟಿಫಿಕೇಶನ್ ಅನ್ನು ಸಕ್ರಿಯಗೊಳಿಸಿ';

  @override
  String get alert_method => 'ಸ್ಮರಣೆಯ ವಿಧಾನ';

  @override
  String get alert_method_in_app => 'ಮಾತ್ರ ಅಪ್ಲಿಕೇಶನ್‌ನಲ್ಲಿ';

  @override
  String get alert_method_calendar => 'ಕ್ಯಾಲೆಂಡರ್ ಮಾತ್ರ';

  @override
  String get alert_method_both => 'ಎರಡೂ';

  @override
  String get alert_days_before => 'ಮುನ್ನೋಟ ಸೂಚನೆ ದಿನಗಳು';

  @override
  String get use_global_setting => 'ಗ್ಲೋಬಲ್ ಸೆಟ್ಟಿಂಗ್ಗಳನ್ನು ಬಳಸುವುದು';

  @override
  String get barcode_label => 'ಬಾರ್ಕೋಡ್';

  @override
  String get name_label => 'ಹೆಸರು';

  @override
  String get category_label => 'ವರ್ಗೀಕರಣ';

  @override
  String get current_quantity => 'ಪ್ರಸ್ತುತ ಪ್ರಮಾಣ';

  @override
  String get select_operation => 'ದಯವಿಟ್ಟು ಕಾರ್ಯವನ್ನು ಆರಿಸಿ';

  @override
  String get unit => 'ಘಟಕ';

  @override
  String get custom_unit => 'ಸ್ವಯಂ ಪ್ರಕಾರದ ಘಟಕ';

  @override
  String get enter_unit => 'ದಯವಿಟ್ಟು ಯೂನಿಟ್ ನಮೂದಿಸಿ';

  @override
  String get custom_location => 'ಸ್ವಯಂ ಪ್ರಕಾರದ ಸ್ಥಳ';

  @override
  String get enter_storage_location => 'ದಯವಿಟ್ಟು ಸಂಗ್ರಹಣಾ ಸ್ಥಳವನ್ನು ನಮೂದಿಸಿ';

  @override
  String get scan => 'ಸ್ಕ್ಯಾನ್ ಕೋಡ್';

  @override
  String get scan_to_stock => 'ಸ್ಕ್ಯಾನ್ ಮಾಡಿ ನுழைவಾಯಿಲಿಗೆ';

  @override
  String get item_categories => 'ವಸ್ತುಗಳನ್ನು ವರ್ಗಾವಣೆ ಮಾಡುವುದು';

  @override
  String get storage_locations => 'ಸಂಗ್ರಹಸ್ಥಳ';

  @override
  String get place_barcode_in_frame_to_scan =>
      'ಬಾರ್‌ಕೋಡ್ ಅನ್ನು ಫ್ರೇಮ್ ಒಳಗೆ ಇರಿಸಿ اسڪ್ಯಾನ್ ಮಾಡಿ';

  @override
  String get barcode => 'ಬಾರ್ಕೋಡ್';

  @override
  String get enter_barcode_or_scan =>
      'ದಯವಿಟ್ಟು ಬಾರ್ಕೋಡ್ ಅನ್ನು ಟೈಪ್ ಮಾಡಿ ಅಥವಾ ಸ್ಕ್ಯಾನ್ ಮಾಡಿ';

  @override
  String get basic_information => 'ಮೂಲ ಮಾಹಿತಿ';

  @override
  String get item_name => 'ವಸ್ತು ಹೆಸರು';

  @override
  String get enter_item_name => 'ದಯವಿಟ್ಟು ವಸ್ತುವಿನ ಹೆಸರು ನಮೂದಿಸಿ';

  @override
  String get enter_category_name => 'ದಯವಿಟ್ಟು ವರ್ಗದ ಹೆಸರು ನಮೂದಿಸಿ';

  @override
  String item_increased(String itemName, String quantity, String unit) {
    return 'ಹೆಚ್ಚಿಸಲಾಗಿದೆ $itemName $quantity$unit';
  }

  @override
  String item_decreased(String itemName, String quantity, String unit) {
    return 'ಎಲ್ಲಾ ಕಡಿಮೆ ಮಾಡಲಾಗಿದೆ $itemName $quantity$unit';
  }

  @override
  String get unsaved_changes => 'ಸೇಫ್ ಆಗದ ಬದಲಾವಣೆಗಳು';

  @override
  String get unsaved_changes_message =>
      'ನಿಮ್ಮಲ್ಲಿ ಉಳಿಸಿಕೊಂಡಿಲ್ಲದ ಬದಲಾವಣೆಗಳಿವೆ, ದಯವಿಟ್ಟು ಕಾರ್ಯವನ್ನು ಆರಿಸಿ:';

  @override
  String get discard => 'ತ್ಯಜಿಸು';

  @override
  String get unit_piece => 'ಒಂದು';

  @override
  String get unit_item => 'ವಸ್ತು';

  @override
  String get unit_box => 'ಪೆಟ್ಟಿಗೆ';

  @override
  String get unit_package => 'ಪ್ಯಾಕ್';

  @override
  String get unit_bottle => 'ಬಾಟಲಿ';

  @override
  String get unit_carton => 'ಪೆಟ್ಟಿಗೆ';

  @override
  String get unit_set => 'ಸೆಟ್';

  @override
  String get unit_kg => 'ಕಿಲೋಗ್ರಾಂ';

  @override
  String get unit_g => 'ಜಿ';

  @override
  String get unit_l => 'ಎಲ್';

  @override
  String get unit_ml => 'ಮಿಲಿಲಿಟರ್';

  @override
  String get unit_m => 'ಎಂ';

  @override
  String get unit_cm => 'ಸೆಂಮೀ';

  @override
  String get quantity_label => 'ಪ್ರಮಾಣ';

  @override
  String get unit_price_label => 'ಪ್ರತಿಯೂನಿಟ್ ಬೆಲೆ';

  @override
  String get currency_label => 'ಕರೆನ್ಸಿ';

  @override
  String get total_price_label => 'ಒಟ್ಟು ಬೆಲೆ:';

  @override
  String get storage_location_label => 'ಸಂಗ್ರಹಸ್ಥಳ';

  @override
  String get item_properties => 'ವಸ್ತು ಗುಣಲಕ್ಷಣಗಳು';

  @override
  String get expiry_date_label => 'ಕಾಲಮಾನ';

  @override
  String get warranty_expiry_date_label => 'ಗೂಡಿಕೆಯ ಅವಧಿಯ ಕೊನೆಯ ದಿನ';

  @override
  String get production_date_label => 'ಉತ್ಪಾದನೆಯ ದಿನಾಂಕ';

  @override
  String get purchase_date_label => 'ಖರೀದಿ ದಿನಾಂಕ';

  @override
  String auto_calculated_from(String dateType) {
    return '_${dateType}_ ಮತ್ತು ಶೆಲ್ಫ್ ಲೈಫ್ ಆಧರಿಸಿ ಸ್ವಯಂಚಾಲಿತವಾಗಿ ಲೆಕ್ಕಹಾಕಿ';
  }

  @override
  String get auto_calculated => 'ಸ್ವಯಂಚಾಲಿತ ಗಣನೆ';

  @override
  String get images_label => 'ಚಿತ್ರ';

  @override
  String get notes_label => 'ಟಿಪ್ಪಣಿ';

  @override
  String get add_notes_hint => 'ಟಿಪ್ಪಣಿಗಳನ್ನು ಸೇರಿಸಿ (ಐಚ್ಛಿಕ)';

  @override
  String get year_label => 'ವರ್ಷ';

  @override
  String get month_label => 'ಚಂದ್ರ';

  @override
  String get day_label => 'ಆಕಾಶ';

  @override
  String selected_count(int count) {
    return 'ನಿರ್ದೇಶಿತ $count ಐಟಂಗಳು';
  }

  @override
  String get select_all => 'ಎಲ್ಲಾ ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get deselect_all => 'ಎಲ್ಲಾ ಆಯ್ಕೆ ತೆರವುಮಾಡಿ';

  @override
  String get batch_change_location =>
      'ಸಂಗ್ರಹಣ ಸ್ಥಳಗಳನ್ನು ಹ್ತುಕಟ್ಟಾಗಿ ಬದಲಾಯಿಸುವುದು';

  @override
  String confirm_delete_selected(int count) {
    return 'ನಿರ್ಧರಿಸಲಾಗಿದೆ ಆಯ್ದ $count ವಸ್ತುಗಳನ್ನು ಅಳಿಸಲು嗎?';
  }

  @override
  String deleted_count_items(int count) {
    return '$count ಐಟಂಗಳನ್ನು ಅಳಿಸಲಾಗಿದೆ';
  }

  @override
  String get no_storage_location_available =>
      'ಈಗಾಗಲೇ ಯಾವುದೇ ಸಂಗ್ರಹ ಸ್ಥಳವನ್ನು ಆಯ್ಕೆ ಮಾಡಲು ಲಭ್ಯವಿಲ್ಲ';

  @override
  String get batch_change_location_title =>
      'ಸಂಗ್ರಹಣ ಸ್ಥಳಗಳನ್ನು ಹ್ತುಕಟ್ಟಾಗಿ ಬದಲಾಯಿಸುವುದು';

  @override
  String moved_count_items_to_location(int count, String location) {
    return '$count ಐಟಂಗಳನ್ನು $location ಗೆ ಸ್ಥಳಾಂತರಿಸಲಾಗಿದೆ';
  }

  @override
  String get operation_type_create => 'ಎಂಟರ್ ಮಾಡುವುದು';

  @override
  String get operation_type_update => 'ಸಂಪಾದನೆ';

  @override
  String get operation_type_delete => 'ಅಳಿಸು';

  @override
  String get operation_type_inbound => 'ಖಾತೆಯಲ್ಲಿ ಸೇರ್ಪಡೆ';

  @override
  String get operation_type_outbound => 'ಖಾತೆಯಿಂದ ಹೊರಹರಿಸಿದೆ';

  @override
  String export_failed_message(String error) {
    return 'ಎಗ್ಸ್ಪೋರ್ಟ್ ವಿಫಲವಾಗಿದೆ: $error';
  }

  @override
  String get clear_logs => 'ಲಾಗ್ ತೆರವುಗೊಳಿಸಿ';

  @override
  String get confirm_clear_logs =>
      'ಎಲ್ಲಾ ಕಾರ್ಯ ದಾಖಲೆಗಳನ್ನು ಮರುಹೊಂದಿಸಲಾಗದಂತೆ ಸಂಪೂರ್ಣವಾಗಿ ಶೂನ್ಯಗೊಳಿಸಲು ಖಚಿತವೇ?';

  @override
  String get logs_cleared => 'ಲಾಗ್ ಕ್ಲೀರ್ ಮಾಡಿಸಲಾಗಿದೆ';

  @override
  String get operation_logs_title => 'ಆಪರೇಶನ್ ಲಾಗ್';

  @override
  String get export_logs => 'ಲಾಗ್ ರಫ್ತುಮಾಡಿ';

  @override
  String get clear_logs_tooltip => 'ಲಾಗ್ ತೆರವುಗೊಳಿಸಿ';

  @override
  String get no_operation_logs => 'ಇಷ್ಟೆ ಪ್ರಚಾಲನಾ ಲಾಗ್ ಇಲ್ಲ';

  @override
  String get log_item_label => 'ವಸ್ತು:';

  @override
  String get log_category_label => 'ವರ್ಗೀಕರಣ:';

  @override
  String get log_type_label => 'ಪ್ರಕಾರ:';

  @override
  String get log_quantity_label => 'ಪ್ರಮಾಣ: ';

  @override
  String get log_unit_price_label => 'એકમ ಬೆಲೆ:';

  @override
  String get log_total_price_label => 'ಒಟ್ಟು ಬೆಲೆ:';

  @override
  String get log_expiry_date_label => 'ಮಾರ್ಗ ಮಾಯದ ದಿನಾಂಕ:';

  @override
  String get log_warranty_date_label => 'ವಾರಂಟಿ ದಿನಾಂಕ:';

  @override
  String get log_purchase_date_label => 'ಖರೀದಿ ದಿನಾಂಕ:';

  @override
  String get log_production_date_label => 'ಉತ್ಪಾದನಾ ದಿನಾಂಕ:';

  @override
  String get log_shelf_life_label => 'ಮಾರಾಟದ ಅವಧಿ:';

  @override
  String get log_storage_location_label => 'ಸಂಗ್ರಹಣ ಸ್ಥಳ:';

  @override
  String get log_barcode_label => 'ಬಾರ್ ಕೋಡ್:';

  @override
  String get log_notes_label => 'ಕಮೆಂಟ್:';

  @override
  String get log_alert_label => 'ಎಚ್ಚರಿಕೆ:';

  @override
  String get log_alert_days_label => 'ಎಚ್ಚರಿಕೆ ದಿನಗಳು:';

  @override
  String get log_quantity_change_label => 'ಮಾತ್ರೆಯ ಬದಲಾವಣೆ:';

  @override
  String get log_field_changes_label => 'ಕ್ಷೇತ್ರಗಳನ್ನು ಸಂಪಾದಿಸಿ:';

  @override
  String get log_not_set => 'ಸೆಟ್ ಮಾಡಲಾಗಿಲ್ಲ';

  @override
  String get log_empty => 'ಖಾಲಿ';

  @override
  String get log_alert_enabled => 'ಮುಂದುವರಿಸಿ';

  @override
  String get log_alert_disabled => 'ಮುಚ್ಚು';

  @override
  String get operation_logs_menu => 'ಆಪರೇಶನ್ ಲಾಗ್';

  @override
  String get operation_logs_description =>
      'ಆಪರೇಷನ್ ದಾಖಲೆಯನ್ನು ವೀಕ್ಷಿಸಿ ಮತ್ತು ಪುನಃಸ್ಥಾಪಿಸಿ';

  @override
  String operation_failed_message(String error) {
    return 'ಚಾಲನೆ ವಿಫಲವಾಗಿದೆ: $error';
  }

  @override
  String get no_date => 'ದಿನಾಂಕವಿಲ್ಲ';

  @override
  String get shelf_life_months_suffix => 'ತಿಂಗಳ';

  @override
  String get shelf_life_days_suffix => 'ಆಕಾಶ';

  @override
  String get alert_days_suffix => 'ಆಕಾಶ';

  @override
  String get unknown => 'ಅಜ್ಞಾತ';

  @override
  String get developer_name => 'ಲಿಯೋ';

  @override
  String get log_operation_date_label => 'ಕಾರ್ಯಾಚರಣೆಯ ದಿನಾಂಕ:';

  @override
  String get uncategorized => 'ವರ್ಗीकೃತವಾಗಿಲ್ಲ';

  @override
  String get no_location => 'ಸ್ಥಳವಿಲ್ಲ';

  @override
  String get item_category_cannot_be_empty => 'ವಸ್ತು ವರ್ಗೀಕರಣ ಖಾಲಿಯಲ್ಲಿರಬಾರದು';

  @override
  String get storage_location_cannot_be_empty => 'ಸಂಗ್ರಹಣ ಸ್ಥಳ ಖಾಲಿ ಇರಬಾರದು';

  @override
  String get created_at_asc => 'ಸಮಯವನ್ನು ಹೆಚ್ಚುವರಿ ಕ್ರಮದಲ್ಲಿ ಸೇರಿಸಿ';

  @override
  String get created_at_desc => 'ಸಮಯವನ್ನು ಇಳಿಜಾರಿನ ಕ್ರಮದಲ್ಲಿ ಸೇರಿಸಿ';
}
