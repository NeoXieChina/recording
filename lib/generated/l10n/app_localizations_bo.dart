// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tibetan (`bo`).
class AppLocalizationsBo extends AppLocalizations {
  AppLocalizationsBo([String locale = 'bo']) : super(locale);

  @override
  String get app_name => 'བར་སྟོང་ཆུང་ངུའི་ནང་གི་ནོར་བུ་';

  @override
  String get cancel => 'ཕྱིར་འཐེན།';

  @override
  String get confirm => 'གཏན་འཁེལ་བྱས་པ།';

  @override
  String get save => 'ཉར་ཚགས་བྱས་པ།';

  @override
  String get delete => 'བསུབ་པ།';

  @override
  String get edit => 'རྩོམ་སྒྲིག་པ།';

  @override
  String get add => 'ཁ་སྣོན་';

  @override
  String get edit_item => 'རྩོམ་སྒྲིག་རྣམ་གྲངས་';

  @override
  String get add_item => 'རྣམ་གྲངས་ཁ་སྣོན་བྱས་པ།';

  @override
  String get search => 'འཚོལ་ཞིབ།';

  @override
  String get settings => 'སྒྲིག་སྟངས་';

  @override
  String get language_settings => 'སྐད་ཆའི་སྒྲིག་སྟངས་';

  @override
  String get language_settings_description => 'app display language set';

  @override
  String get system_default => 'མ་ལག་གི་སྔོན་འགྲོ།';

  @override
  String get use_system_language => 'མ་ལག་གི་སྐད་བརྡ་སྤྱོད་པ།';

  @override
  String get language_change_hint =>
      'ཉེར་སྤྱོད་བསྐྱར་དུ་མགོ་རྩོམ་རྗེས་སྐད་ཆའི་འགྱུར་ལྡོག་ལ་ནུས་པ་ཐོན་རྒྱུ་རེད།';

  @override
  String get back => 'ཕྱིར་ལོག';

  @override
  String get next => 'གོམ་རིམ་རྗེས་མམ།';

  @override
  String get done => 'ལེགས་འགྲུབ་བྱུང་བ།';

  @override
  String get loading => 'Loading...';

  @override
  String get error => 'ནོར་འཛོལ་བྱུང་བ།';

  @override
  String get success => 'ལེགས་འགྲུབ་བྱུང་བ།';

  @override
  String get warning => 'ཉེན་བརྡ།';

  @override
  String get info => 'བརྡ་འཕྲིན།';

  @override
  String get select_alert_days => 'དྲན་སྐུལ་ཉིན་མོ་འདེམས་སྒྲུག་བྱས་པ།';

  @override
  String get custom => 'གོམས་གཤིས་';

  @override
  String custom_days(int days) {
    return 'གོམས་གཤིས་(ཉིན་$days)';
  }

  @override
  String current_selection(int days) {
    return 'མིག་སྔའི་གདམ་གསེས། ཉིན་$days';
  }

  @override
  String alert_days_range(int min, int max) {
    return 'དྲན་སྐུལ་ཉིན་མོའི་ཁྱབ་ཚད། ཉིན་$minནས་ཉིན་$maxབར་ཡིན།';
  }

  @override
  String get enter_days => 'དྲན་སྐུལ་ཉིན་མོ་ནང་འཇུག་རོགས།';

  @override
  String get days => 'ཉིན་གྲངས་ཀྱི་གྲངས་ཀ་';

  @override
  String enter_valid_days(int min, int max) {
    return '$minནས་$maxབར་གྱི་གྲངས་ཀ་ཞིག་འཇུག་རོགས།';
  }

  @override
  String get alert_settings => 'ཉེན་བརྡའི་སྒྲིག་སྟངས་';

  @override
  String get calendar_settings => 'ལོ་ཐོའི་སྒྲིག་སྟངས་';

  @override
  String get calendar_sync => 'ལོ་ཐོ་མཉམ་འབྱུང་';

  @override
  String get calendar_sync_desc =>
      'ནུས་པ་ཐོན་དུས་ལོ་ཐོའི་ཆོག་འཐུས་རེ་ཞུ་བྱེད་སྲིད།';

  @override
  String get add_test_calendar_event =>
      'ཚོད་ལྟའི་ཉིན་ཐོའི་དོན་རྐྱེན་ཁ་སྣོན་བྱས་པ།';

  @override
  String get enable_calendar_sync_first =>
      'ཁྱོད་ཀྱིས་སྔོན་ལ་\'Calendar Sync\' གློག་སྒོ་ཕྱེས་རོགས།';

  @override
  String get app_alert_settings => 'App Notification Settings';

  @override
  String get local_alerts => 'ས་གནས་ཀྱི་དྲན་སྐུལ་';

  @override
  String get local_alerts_desc =>
      'ནུས་པ་ཐོན་རྗེས་ཉེར་སྤྱོད་ནང་གི་དུས་ལས་ཡོལ་བའི་དྲན་སྐུལ་འབྱོར་བ།';

  @override
  String get send_test_notification =>
      'ཚད་ལེན་ཚོད་ལྟ་བྱ་རྒྱུའི་བརྡ་ཐོ་གཏོང་རོགས།';

  @override
  String get enable_local_alerts_first =>
      'སྔོན་ལ་\'Local Notice\' གློག་སྒོ་ཕྱེས་རོགས།';

  @override
  String get alert_days_settings => 'དྲན་སྐུལ་ཉིན་མོའི་སྒྲིག་སྟངས་';

  @override
  String get advance_alert_days => 'སྔོན་ཚུད་ནས་བརྡ་ཐོ་གཏོང་བའི་ཉིན་གྲངས་';

  @override
  String get advance_alert_days_desc =>
      'ཉིན་ག་ཚོད་གི་སྔོན་དུ་རྣམ་གྲངས་ཀྱི་དུས་ལས་ཡོལ་བའམ་ཡང་ན་ཉམས་གསོའི་དུས་ཚད་ཐིམ་པར་དྲན་སྐུལ་བྱེད་དགོས།';

  @override
  String get calendar_permission_request => 'ལོ་ཐོའི་ཆོག་འཐུས་ཀྱི་རེ་ཞུ།';

  @override
  String get calendar_permission_desc =>
      'རྣམ་གྲངས་དྲན་སྐུལ་དུས་མཉམ་འབྱུང་བྱེད་པར་ལོ་ཐོ་ལ་འཛུལ་དགོས། ཆོག་པ་ཡིན་ནམ།';

  @override
  String get allow => 'ཆོག་པ་';

  @override
  String get calendar_permission_granted =>
      'ལོ་ཐོའི་ཆོག་འཐུས་སྤྲད་ཟིན་པ་དང་། ལོ་ཐོ་མཉམ་འབྱུང་བྱེད་ཚད་ལ་ནུས་པ་ཐོན་ཡོད།';

  @override
  String get calendar_permission_denied =>
      'ལོ་ཐོའི་ཆོག་འཐུས་དང་ལེན་མ་བྱས་པས། ཟླ་ཐོ་མཉམ་འབྱུང་བྱེད་མ་ཐུབ་པས།';

  @override
  String get calendar_permission_permanently_denied =>
      'གཏན་འཇགས་ཀྱི་ཆོག་མཆན་མ་ཐོབ་པ།';

  @override
  String get calendar_permission_permanently_denied_desc =>
      'ལོ་ཐོའི་ཆོག་འཐུས་གཏན་འཇགས་སུ་དང་ལེན་མ་བྱས། མ་ལག་གི་སྒྲིག་སྟངས་ནང་ལག་པས་ཆོག་འཐུས་འདོན་རོགས།';

  @override
  String get go_to_settings => 'སྒྲིག་གཞིར་སོང་';

  @override
  String get calendar_account_failed =>
      'ལོ་ཐོའི་ཆོག་འཐུས་སྤྲད་ཟིན་མོད། འོན་ཀྱང་ལོ་ཐོའི་རྩིས་ཐོ་གསར་འཛུགས་བྱེད་མི་ཐུབ། མ་ལག་གི་ལོ་ཐོའི་སྒྲིག་སྟངས་ལ་ཞིབ་བཤེར་བྱེད་རོགས།';

  @override
  String get calendar_account_created =>
      'ལོ་ཐོའི་ཆོག་འཐུས་སྤྲད་པ་དང་། ས་གནས་ཀྱི་ལོ་ཐོའི་རྩིས་ཐོ་ཞིག་བཙུགས་ཡོད།';

  @override
  String get calendar_account_creating =>
      'ལོ་ཐོའི་རྩིས་ཐོ་ལེགས་འགྲུབ་བྱུང་ཡོད་མོད། འོན་ཀྱང་མ་ལག་ལ་ནུས་པ་ཐོན་པར་དུས་ཚོད་ངེས་ཅན་ཞིག་དགོས་ཀྱི་རེད།';

  @override
  String get test_calendar_event_added =>
      'ཚོད་ལྟའི་ཉིན་ཐོའི་བྱ་འགུལ་ལེགས་འགྲུབ་ངང་ཁ་སྣོན་བྱས།';

  @override
  String get test_calendar_event_failed =>
      'ཚོད་ལྟའི་ལོ་ཐོའི་དོན་རྐྱེན་ཁ་སྣོན་བྱེད་མ་ཐུབ་པས། ལོ་ཐོའི་སྒྲིག་སྟངས་ལ་ཞིབ་བཤེར་གནང་རོགས།';

  @override
  String get calendar_permission_required =>
      'ཚོད་ལྟའི་དོན་རྐྱེན་ཁ་སྣོན་བྱེད་པར་ལོ་ཐོའི་ཆོག་འཐུས་དགོས།';

  @override
  String get test_notification_sent => 'ཞིབ་དཔྱད་ཚད་ལེན་གྱི་བརྡ་ཐོ་བཏང་ཟིན།';

  @override
  String test_notification_failed(String error) {
    return 'ཞིབ་དཔྱད་ཚད་ལེན་གྱི་བརྡ་ཐོ་མ་བཏང་བ། $error';
  }

  @override
  String get notification_permission_required =>
      'ས་གནས་ཀྱི་དྲན་སྐུལ་ནུས་པ་འདོན་པར་བརྡ་སྦྱོར་གྱི་ཆོག་འཐུས་དགོས།';

  @override
  String operation_failed(String error) {
    return 'བཀོལ་སྤྱོད་ཕམ་སོང་། $error';
  }

  @override
  String get notification_channel_name => 'རྣམ་གྲངས་ཀྱི་ཉེན་བརྡའི་བརྡ་ཐོ་';

  @override
  String get notification_channel_description =>
      'རྣམ་གྲངས་ཀྱི་དུས་ལས་ཡོལ་བའམ་ཉམས་གསོའི་དྲན་སྐུལ་';

  @override
  String get item_category_food => 'ཟས་རིགས་';

  @override
  String get item_category_daily_necessities => 'ཉིན་མཁོའི་མཁོ་ཆས།';

  @override
  String get item_category_cosmetics => 'མཛེས་འཆོས་བྱུག་རྫས་';

  @override
  String get item_category_medicine => 'གསོ་རིག་';

  @override
  String get item_category_electronics => 'གློག་རྡུལ་ཐོན་རྫས་';

  @override
  String get item_category_furniture => 'ཁྱིམ་ཆས།';

  @override
  String get item_category_clothing => 'གྱོན་ཆས།';

  @override
  String get item_category_books => 'དཔེ་དེབ་';

  @override
  String get item_category_other => 'གཞན་དག';

  @override
  String get purchase_channel_online_mall => 'དྲ་ཐོག་ཚོང་ཁང་།';

  @override
  String get purchase_channel_physical_store => 'དངོས་ལུགས་མཛོད་ཁང་';

  @override
  String get purchase_channel_supermarket => 'སྒོ་རྩིས་ཚོང་ཁང་';

  @override
  String get purchase_channel_specialty_store => 'ཆེད་སྤྱོད་ཚོང་ཁང་།';

  @override
  String get purchase_channel_secondhand_market => 'ལག་བརྒྱུད་ཚོང་ར་';

  @override
  String get purchase_channel_other => 'གཞན་དག';

  @override
  String get default_category => 'གཞན་དག';

  @override
  String get default_purchase_channel => 'དྲ་ཐོག་ཚོང་ཁང་།';

  @override
  String get item_category => 'རྣམ་གྲངས་ཀྱི་རིགས་དབྱེ།';

  @override
  String get custom_category => 'Custom Category';

  @override
  String get backup_data => 'གཞི་གྲངས་རྗེས་གྲབས་';

  @override
  String get backup_data_description =>
      'གཞི་གྲངས་ཡོད་ཚད་(པར་རིས་ཚུད་པ)ZIPཡིག་ཆའི་ནང་ཐུམ་སྒྲིལ་བྱས་ནས་རྗེས་གྲབས་བྱེད་དགོས།';

  @override
  String get backup_all_data => 'གཞི་གྲངས་ཡོད་ཚད་ཀྱི་རྗེས་གྲབས་';

  @override
  String get backup_success => 'རྗེས་གྲབས་ལེགས་འགྲུབ་བྱུང་བ།';

  @override
  String backup_failed(String error) {
    return 'རྗེས་གྲབས་འཐུས་ཤོར་བ།$error';
  }

  @override
  String get restore_data => 'གཞི་གྲངས་སླར་གསོ་བྱས་པ།';

  @override
  String get restore_data_description =>
      'ZIP རྗེས་གྲབས་ཡིག་ཆའི་ནང་གི་གཞི་གྲངས་ཡོད་ཚད་སླར་གསོ་བྱེད་དགོས།';

  @override
  String get export_data => 'གཞི་གྲངས་ཕྱིར་འདྲེན་བྱས་པ།';

  @override
  String get export_data_description =>
      'CSV, TXT, SQL རྣམ་གཞག་ལྟར་ཕྱིར་འདྲེན་བྱེད་རྒྱུ།';

  @override
  String get import_data => 'གཞི་གྲངས་ནང་འདྲེན་';

  @override
  String get import_data_description =>
      'CSV, TXT, SQL ཡིག་ཆ་ནས་གཞི་གྲངས་ནང་འདྲེན་བྱས་པ།';

  @override
  String get alert_settings_description =>
      'ཟླ་ཐོའི་དྲན་སྐུལ་དང་ཉེར་སྤྱོད་བརྡ་སྦྱོར་སྒྲིག་སྟངས་';

  @override
  String get about => 'སྐོར་ལས།';

  @override
  String get about_description => 'App ཆ་འཕྲིན་དང་ཐོན་རིམ།';

  @override
  String get select_backup_file_first =>
      'སྔོན་ལ་རྗེས་གྲབས་ཡིག་ཆ་ཞིག་འདེམས་རོགས།';

  @override
  String get confirm_restore => 'ཉམས་གསོ་བྱེད་པར་ཁས་ལེན་དགོས།';

  @override
  String get confirm_restore_message =>
      'རྗེས་གྲབས་སླར་གསོ་བྱས་ན་ད་ཡོད་ཀྱི་གཞི་གྲངས་ཡོད་ཚད་བསུབ་ནས་རྗེས་གྲབས་གཞི་གྲངས་ཀྱིས་ཚབ་བྱེད་སྲིད། བྱ་སྤྱོད་དེ་ཕྱིར་འཐེན་བྱེད་མི་ཉན། ཁྱོད་ཀྱིས་དངོས་གནས་མུ་མཐུད་དུ་འགྲོ་འདོད་དམ།';

  @override
  String get confirm_again => 'ཡང་བསྐྱར་ཁས་ལེན་བྱ་དགོས།';

  @override
  String get confirm_restore_warning =>
      'ཁྱོད་ཀྱིས་ད་ཡོད་ཀྱི་གཞི་གྲངས་ཡོད་ཚད་བསུབ་ནས་རྗེས་གྲབས་སླར་གསོ་བྱེད་འདོད་དམ། བྱ་སྤྱོད་འདི་ཕྱིར་འཐེན་བྱེད་མི་ཉན།';

  @override
  String get confirm_restore_button => 'ཉམས་གསོ་བྱེད་པར་ཁས་ལེན་དགོས།';

  @override
  String restore_success(int count) {
    return 'ཉམས་གསོ་ལེགས་འགྲུབ་བྱུང་ཞིང་། ཁྱོན་བསྡོམས་རྣམ་གྲངས་$countཡོད།';
  }

  @override
  String restore_failed(String error) {
    return 'སླར་གསོ་བྱེད་མ་ཐུབ་པས། $error';
  }

  @override
  String get select_backup_file => 'རྗེས་གྲབས་ཡིག་ཆ་འདེམས་སྒྲུག་བྱས་པ།';

  @override
  String get restore_backup => 'རྗེས་གྲབས་སླར་གསོ་';

  @override
  String selected_file(String filename) {
    return 'བདམས་པའི་ཡིག་ཆ། $filename';
  }

  @override
  String get export_success => 'གཞི་གྲངས་ཕྱིར་འདྲེན་ལེགས་འགྲུབ་བྱུང་བ།';

  @override
  String export_failed(String error) {
    return 'ཕྱིར་གཏོང་ཕམ་པ། $error';
  }

  @override
  String get format_csv => 'CSV';

  @override
  String get format_txt => 'TXT';

  @override
  String get format_sql => 'SQL';

  @override
  String get duplicate_data_handling => 'གཞི་གྲངས་བསྐྱར་ཟློས་ཐག་གཅོད་བྱེད་ཐབས།';

  @override
  String get duplicate_data_detected =>
      'གྲངས་གཞི་བསྐྱར་ཟློས་ཞིབ་དཔྱད་ཚད་ལེན་བྱས་པས་ཐག་གཅོད་བྱེད་ཐབས་ཤིག་འདེམས་རོགས།';

  @override
  String get skip => 'གོམ་པ་སྤོ་བ།';

  @override
  String get overwrite => 'འགེབས་སྲུང་';

  @override
  String get skip_all => 'ཚང་མ་བརྒལ་བ་';

  @override
  String get overwrite_all => 'ཁྱབ་རྒྱ་ཆ་ཚང་།';

  @override
  String get select_import_format_first =>
      'སྔོན་ལ་ནང་འདྲེན་རྣམ་གཞག་འདེམས་རོགས།';

  @override
  String get confirm_import => 'ནང་འདྲེན་ཁས་ལེན་བྱས་པ།';

  @override
  String get confirm_import_message =>
      'གཞི་གྲངས་ནང་འདྲེན་བྱས་ན་ད་ཡོད་ཀྱི་གཞི་གྲངས་བསྐྱར་འབྲི་བྱེད་སྲིད། བྱ་སྤྱོད་དེ་ཕྱིར་འཐེན་བྱེད་མི་ཉན། ཁྱོད་ཀྱིས་དངོས་གནས་མུ་མཐུད་དུ་འགྲོ་འདོད་དམ།';

  @override
  String import_success(int count) {
    return 'གཞི་གྲངས་ནང་འདྲེན་ལེགས་འགྲུབ་བྱུང་ནས་ཁྱོན་བསྡོམས་རྣམ་གྲངས་$countནང་འདྲེན་བྱས།';
  }

  @override
  String import_failed(String error) {
    return 'ནང་འདྲེན་བྱས་མ་ཐུབ་པ།$error';
  }

  @override
  String get select_file => 'ཡིག་ཆ་འདེམས་སྒྲུག་བྱས་པ།';

  @override
  String get no_data => 'གཞི་གྲངས་མེད་པ།';

  @override
  String get no_data_description =>
      'མིག་སྔར་གཞི་གྲངས་གང་ཡང་མེད། གཤམ་གྱི་མཐེབ་གནོན་ལ་མནན་ནས་སྒྲ་ཐག་དང་པོ་ཁ་སྣོན་བྱས།';

  @override
  String get load_failed => 'ཕབ་ལེན་བྱས་མ་ཚུགསཔ།';

  @override
  String get load_failed_description =>
      'གཞི་གྲངས་ནང་འཇུག་བྱེད་མ་ཐུབ་པས། ཁྱེད་ཀྱི་དྲ་རྒྱའི་འབྲེལ་མཐུད་ལ་ཞིབ་བཤེར་བྱས་ནས་ཡང་བསྐྱར་ཚོད་ལྟ་ཞིག་བྱེད་རོགས།';

  @override
  String get retry => 'བསྐྱར་སྦྱོང་';

  @override
  String get network_connection_failed =>
      'དྲ་རྒྱའི་འབྲེལ་མཐུད་ལ་ཕམ་ཉེས་བྱུང་བ།';

  @override
  String get network_connection_failed_description =>
      'ཁྱེད་ཀྱི་དྲ་རྒྱའི་འབྲེལ་མཐུད་ལ་ཞིབ་བཤེར་བྱས་ནས་ཡང་བསྐྱར་ཚོད་ལྟ་ཞིག་བྱེད་རོགས།';

  @override
  String get no_results => 'མཇུག་འབྲས་མ་རྙེད་པ།';

  @override
  String get no_results_description =>
      'ཐ་སྙད་གཞན་པ་བཀོལ་ནས་འཚོལ་ཞིབ་བྱེད་པར་ཚོད་ལྟ་ཞིག་བྱོས།';

  @override
  String get clear_search => 'འཚོལ་བཤེར་ཁ་གསལ་བཟོ་དགོས།';

  @override
  String get insufficient_permission => 'ཆོག་འཐུས་མི་འདང་བ།';

  @override
  String get insufficient_permission_description =>
      'ནུས་པ་འདི་བཀོལ་སྤྱོད་བྱེད་པར་འོས་འཚམ་གྱི་ཆོག་འཐུས་དགོས།';

  @override
  String get request_permission => 'ཆོག་མཆན་ཞུ་བ།';

  @override
  String get app_info => 'རེ་ཞུའི་ཆ་འཕྲིན།';

  @override
  String get version => 'པར་གཞི།';

  @override
  String get developer => 'གསར་སྤེལ་བྱེད་མཁན།';

  @override
  String get device_info => 'སྒྲིག་ཆས་ཀྱི་ཆ་འཕྲིན།';

  @override
  String get device_model => 'སྒྲིག་ཆས་ཀྱི་དཔེ་དབྱིབས་';

  @override
  String get brand => 'ཚོང་རྟགས་';

  @override
  String get device_name => 'སྒྲིག་ཆས་ཀྱི་མིང་།';

  @override
  String get product => 'ཐོན་རྫས།';

  @override
  String get hardware => 'མཁྲེགས་ཆས་';

  @override
  String get android_version => 'ཨན་ཌོ་ཡི་པར་གཞི་';

  @override
  String get sdk_version => 'SDK པར་གཞི།';

  @override
  String get system_name => 'མ་ལག་གི་མིང་།';

  @override
  String get operating_system => 'བཀོལ་སྤྱོད་མ་ལག';

  @override
  String get system_version => 'མ་ལག་གི་པར་གཞི།';

  @override
  String get dart_version => 'མདུང་གི་པར་གཞི་';

  @override
  String get device_identifier => 'སྒྲིག་ཆས་གསལ་འབྱེད།';

  @override
  String get computer_name => 'རྩིས་འཁོར་གྱི་མིང་།';

  @override
  String get build_number => 'པར་གཞིའི་ཨང་གྲངས།';

  @override
  String error_getting_device_info(String error) {
    return 'སྒྲིག་ཆས་ཀྱི་ཆ་འཕྲིན་ཐོབ་མ་ཐུབ་པ། $error';
  }

  @override
  String get features => 'རྟེན་འབྱུང་གྲངས་ངོ་སྤྲོད།';

  @override
  String get app_description => 'རིག་ནུས་རྣམ་གྲངས་དོ་དམ་ཉེར་སྤྱོད་';

  @override
  String get app_description_detail =>
      'ཁྱོད་ཀྱིས་དངོས་པོ་དེའི་གོ་ཆོད་པའི་དུས་ཚོད་དང་ཉམས་གསོའི་ཚེས་གྲངས་སོགས་ཆ་འཕྲིན་དོ་དམ་བྱེད་པར་རོགས་རམ་བྱས་པ་མ་ཟད། རིག་ནུས་དྲན་སྐུལ་གྱི་ནུས་པ་འདོན་སྤྲོད་བྱས་ཡོད།';

  @override
  String get consumable => 'ཟད་གྲོན་དངོས་རྫས་';

  @override
  String get durable => 'ཡུན་རིང་གི་དངོས་ཟོག་';

  @override
  String get sort => 'དབྱེ་འབྱེད་';

  @override
  String get name_asc => 'མིང་ཡར་འཕར་བ།';

  @override
  String get name_desc => 'མིང་མར་འབབ་པ།';

  @override
  String get date_asc => 'ཚེས་གྲངས་ཡར་འཕར་བ།';

  @override
  String get date_desc => 'ཚེས་གྲངས་མར་འབབ་པ།';

  @override
  String get price_asc => 'རྩིས་གཞིའི་རིན་གོང་འཕར་བ།';

  @override
  String get price_desc => 'རྩིས་གཞིའི་རིན་གོང་མར་ཆག་པ།';

  @override
  String get quantity_asc => 'གྲངས་ཚད་ཀྱི་རིམ་པ་འཕར་བ།';

  @override
  String get quantity_desc => 'གྲངས་ཚད་མར་ཆག་པ།';

  @override
  String get total_price_asc => 'སྤྱིའི་རིན་གོང་འཕར་བ།';

  @override
  String get total_price_desc => 'སྤྱིའི་རིན་གོང་མར་ཆག་པ།';

  @override
  String get clear_all_filters => 'འཚག་ཆས་ཡོད་ཚད་གཙང་སེལ་བྱེད་དགོས།';

  @override
  String get scan_barcode => 'ཚབ་རྟགས་ལ་བཤེར་བཤེར་བྱས་ནས་མཛོད་ཁང་ནང་འཇུག་དགོས།';

  @override
  String get search_items => 'རྣམ་གྲངས་འཚོལ་ཞིབ...';

  @override
  String get no_items => 'མིག་སྔར་རྣམ་གྲངས་གང་ཡང་མེད།';

  @override
  String get no_items_description =>
      'གཤམ་གྱི་མཐེབ་གནོན་ལ་མནན་ནས་རྣམ་གྲངས་དང་པོ་ཁ་སྣོན་བྱེད་དགོས།';

  @override
  String get expired => 'དུས་ལས་ཡོལ་བ།';

  @override
  String get expiring_soon => 'དུས་ལས་ཡོལ་ལ་ཉེ།';

  @override
  String get warranty_expired => 'ཉམས་གསོའི་དུས་ཚད་ཐིམ་ཟིན།';

  @override
  String get warranty_expiring_soon => 'ཉམས་གསོའི་དུས་ཚད་ཐིམ་ལ་ཉེ།';

  @override
  String days_remaining(int count) {
    return 'ཉིན་$countལྷག་ཡོད།';
  }

  @override
  String expired_days_ago(int count) {
    return 'དུས་ཡོལ་བའི་ཉིན་$count';
  }

  @override
  String get delete_item => 'རྣམ་གྲངས་བསུབ་པ།';

  @override
  String delete_item_confirm(String name) {
    return 'ཁྱོད་ཀྱིས་དངོས་གནས་\"$name\"བསུབ་འདོད་དམ།';
  }

  @override
  String get item_deleted => 'རྣམ་གྲངས་བསུབ་ཟིན།';

  @override
  String get failed_to_delete => 'བསུབ་མ་ཚུགས་པ།';

  @override
  String failed_to_delete_message(String error) {
    return 'རྣམ་གྲངས་བསུབ་མི་ཐུབ་$error';
  }

  @override
  String get date_range_filter => 'ཚེས་གྲངས་ཀྱི་ཁྱབ་ཚད་འཚག་བྱེད་';

  @override
  String get price_range_filter => 'རིན་གོང་གི་ཁྱབ་ཁོངས་འཚག་ཚག་';

  @override
  String get my_items => 'ངའི་དངོས་པོ།';

  @override
  String get click_fab_to_add_item =>
      'གཡས་ཟུར་འོག་མའི་མཐེབ་གནོན་ལ་མནན་ནས་རྣམ་གྲངས་གཅིག་ཁ་སྣོན་བྱེད་དགོས།';

  @override
  String get confirm_delete => 'བསུབ་པ་གཏན་འཁེལ་བྱས་པ།';

  @override
  String get filter_options => 'འཚག་པའི་གདམ་གསེས།';

  @override
  String get filter_by_type_category_location =>
      'རིགས་དབྱིབས་དང་། རིགས་གྲངས། གནས་ཡུལ་བཅས་ལྟར་རྣམ་གྲངས་འཚག་དགོས།';

  @override
  String categories_count(int count) {
    return 'རིགས་$count';
  }

  @override
  String get all_categories => 'རིགས་ཁག་ཐམས་ཅད་';

  @override
  String get no_category_data => 'རིགས་དབྱེ་གྲངས་གཞི་མེད།';

  @override
  String get storage_location => 'གསོག་ཉར་ས་གནས།';

  @override
  String locations_count(int count) {
    return '$countགནས་ཡུལ་';
  }

  @override
  String get all_locations => 'གནས་ཡུལ་ཡོད་ཚད་';

  @override
  String get no_location_data => 'གནས་ཡུལ་གྱི་གཞི་གྲངས་མེད།';

  @override
  String get date_range => 'ཚེས་གྲངས་ཀྱི་ཁྱབ་ཁོངས།';

  @override
  String get select_date_range => 'ཚེས་གྲངས་ཀྱི་ཁྱབ་ཁོངས་འདེམས་སྒྲུག་བྱས་པ།';

  @override
  String get price_range => 'རིན་གོང་གི་ཁྱབ་ཁོངས།';

  @override
  String get unit_price_range => 'རྩིས་གཞིའི་རིན་གོང་གི་ཁྱབ་ཁོངས།';

  @override
  String get min_unit_price => 'རྩིས་གཞི་དམའ་ཤོས་ཀྱི་རིན་གོང་།';

  @override
  String get max_unit_price => 'རྩིས་གཞིའི་རིན་གོང་མཐོ་ཤོས།';

  @override
  String get total_price_range => 'སྤྱིའི་རིན་གོང་གི་ཁྱབ་ཁོངས་';

  @override
  String get min_total_price => 'སྤྱིའི་རིན་གོང་དམའ་ཤོས།';

  @override
  String get max_total_price => 'སྤྱིའི་རིན་གོང་མཐོ་ཤོས།';

  @override
  String get clear_price_filter => 'རིན་གོང་འཚག་ཆས་ཁ་གསལ་བཟོ་དགོས།';

  @override
  String get place_barcode_in_frame =>
      'ཨང་རྟགས་སྒྲོམ་གཞིའི་ནང་དུ་བཞག་ནས་པར་ལེན་བྱས།';

  @override
  String get item_already_exists => 'ཐོན་རྫས་འདི་གནས་ཡོད།';

  @override
  String barcode_with_value(String barcode) {
    return 'Barcode: $barcode';
  }

  @override
  String name_with_value(String name) {
    return 'མིང་། $name';
  }

  @override
  String category_with_value(String category) {
    return 'Category: $category';
  }

  @override
  String current_quantity_with_value(String quantity, String unit) {
    return 'མིག་སྔའི་གྲངས་འབོར། $quantity$unit';
  }

  @override
  String get please_select_operation => 'འགུལ་སྐྱོད་ཅིག་འདེམས་རོགས།';

  @override
  String get outbound => 'མཛོད་ཁང་ནས་ཕྱིར་ཐོན་པ།';

  @override
  String get inbound => 'གསོག་ཉར་གྱི་འཇུག་སྒོ་';

  @override
  String get inbound_quantity => 'ནང་འཛུལ་གྱི་གྲངས་འབོར།';

  @override
  String get outbound_quantity => 'ཕྱིར་ཐོན་པའི་གྲངས་འབོར།';

  @override
  String get quantity => 'གྲངས་འབོར།';

  @override
  String get enter_inbound_quantity =>
      'གསོག་ཉར་བྱས་པའི་གྲངས་འབོར་ནང་འཇུག་རོགས།';

  @override
  String get enter_outbound_quantity =>
      'དབོར་འདྲེན་བྱེད་པའི་གྲངས་འབོར་ནང་དུ་འཇུག་རོགས།';

  @override
  String delete_item_confirm_with_irreversible(String name) {
    return 'ཁྱོད་ཀྱིས་དངོས་གནས་\"$name\"བསུབ་འདོད་དམ། བྱ་སྤྱོད་དེ་ཕྱིར་འཐེན་བྱེད་མི་ཉན།';
  }

  @override
  String get database_reset =>
      'གཞི་གྲངས་མཛོད་བསྐྱར་སྒྲིག་བྱས་ཟིན་པས་རེའུ་མིག་གི་གྲུབ་ཚུལ་བསྐྱར་བཟོ་བྱེད་རྒྱུ་རེད།';

  @override
  String database_reset_error(String error) {
    return 'གཞི་གྲངས་མཛོད་བསྐྱར་སྒྲིག་བྱེད་པའི་འཛོལ་བ། $error';
  }

  @override
  String mock_data_init_failed(String error) {
    return 'ལད་མོ་བྱས་པའི་གཞི་གྲངས་འགོ་འཛུགས་མ་ཐུབ་པས། $error';
  }

  @override
  String get solution_steps => 'ཐག་གཅོད་བྱེད་ཐབས་ནི།';

  @override
  String get solution_step_1 =>
      '1. ཉེར་སྤྱོད་དེ་བསུབ་ནས་ཡང་བསྐྱར་སྒྲིག་སྦྱོར་བྱས།';

  @override
  String get solution_step_2 =>
      '༢. ཡང་ན་ཉེར་སྤྱོད་ཀྱི་གཞི་གྲངས་གཙང་སེལ་བྱེད་དགོས།';

  @override
  String get solution_step_3 =>
      '༣. ཡང་ན་resetDatabaseOnStart དེ་བདེན་པ་ཡིན་པར་གཞི་སྒྲིག་བྱས་རྗེས། དེ་ནས་ཡང་བསྐྱར་འཁོར་སྐྱོད་བྱེད་རྒྱུ།';

  @override
  String notification_service_init_failed(String error) {
    return 'དྲན་སྐུལ་ཞབས་ཞུ་འགོ་འཛུགས་མ་ཐུབ་པས། $error';
  }

  @override
  String check_calendar_account_failed(String error) {
    return 'ལོ་ཐོའི་རྩིས་ཐོ་ལ་ཞིབ་བཤེར་བྱེད་མ་ཐུབ་པས། $error';
  }

  @override
  String create_calendar_failed(String error) {
    return 'ལོ་ཐོ་གསར་བཟོ་བྱེད་མ་ཐུབ་པ།$error';
  }

  @override
  String add_calendar_event_failed(String error) {
    return 'ཟླ་ཐོའི་དོན་རྐྱེན་ཁ་སྣོན་བྱེད་མ་ཐུབ་པ$error';
  }

  @override
  String delete_calendar_event_failed(String error) {
    return 'ལོ་ཐོའི་དོན་རྐྱེན་བསུབ་མ་ཐུབ་པ།$error';
  }

  @override
  String set_permission_message_failed(String error) {
    return 'ཆོག་འཐུས་ཀྱི་བརྡ་འཕྲིན་སྒྲིག་མ་ཐུབ་པ$error';
  }

  @override
  String mock_data_init_success(int count) {
    return 'ལད་མོ་བྱས་པའི་གཞི་གྲངས་$countལེགས་འགྲུབ་ངང་འགོ་འཛུགས་བྱས།';
  }

  @override
  String database_has_data(int count) {
    return 'གཞི་གྲངས་མཛོད་ལ་ཟིན་ཐོ་$countཡོད་དེ། ལད་མོ་བྱས་པའི་གཞི་གྲངས་འགོ་འཛུགས་ཀྱི་གོམ་པ་སྤོ་ཐུབ་ཀྱི་ཡོད།';
  }

  @override
  String get database_structure_mismatch =>
      'གཞི་གྲངས་མཛོད་ཀྱི་གྲུབ་ཚུལ་མི་མཐུན་པའི་རྐྱེན་གྱིས་ཡིན་སྲིད། ཉེར་སྤྱོད་ཀྱི་གཞི་གྲངས་གཙང་སེལ་བྱེད་པའམ་ཡང་ན་བསྐྱར་སྒྲིག་བྱ་རྒྱུའི་གྲོས་འགོ་འདོན་རྒྱུ་ཡིན།';

  @override
  String get old_database_deleted => 'གཞི་གྲངས་མཛོད་ཀྱི་ཡིག་ཆ་རྙིང་བ་བསུབ་ཟིན།';

  @override
  String get backup_data_empty => 'རྗེས་གྲབས་གཞི་གྲངས་སྟོང་བ་འདུག';

  @override
  String get backup_file_not_found => 'རྗེས་གྲབས་ཡིག་ཆ་མེད་པ།';

  @override
  String file_not_utf8(String error) {
    return 'ཡིག་ཆའི་ཨང་སྒྲིག་ནི་ནུས་ལྡན་གྱི་UTF-8 རྣམ་གཞག་མིན། UTF-8 ཨང་སྒྲིག་ལ་བརྟེན་ནས་ཡིག་ཆ་ཉར་ཚགས་བྱེད་པར་ཁག་ཐེག་བྱེད་རོགས། ནོར་འཁྲུལ་གྱི་ཞིབ་ཕྲ། $error';
  }

  @override
  String file_not_found(String filePath) {
    return 'ཡིག་ཚགས་མེད། $filePath';
  }

  @override
  String file_empty(String filePath) {
    return 'ཡིག་ཆ་འདི་སྟོང་པར་གྱུར་$filePath';
  }

  @override
  String get file_content_empty =>
      'ཨང་སྒྲིག་བྱས་རྗེས་ཡིག་ཆའི་ནང་དོན་སྟོང་པར་གྱུར་ཡོད། ཨང་སྒྲིག་མི་མཐུན་པའི་རྐྱེན་གྱིས་ཡིན་སྲིད།';

  @override
  String field_cannot_be_empty(String fieldName) {
    return '$fieldNameསྟོང་པར་འགྱུར་མི་རུང་།';
  }

  @override
  String field_min_length(String fieldName, int minLength) {
    return '$fieldNameརིང་ཚད་ཡིག་འབྲུ་$minLengthལས་ཉུང་མི་རུང་།';
  }

  @override
  String field_max_length(String fieldName, int maxLength) {
    return '$fieldNameརིང་ཚད་ཡིག་འབྲུ་$maxLengthལས་བརྒལ་མི་ཆོག';
  }

  @override
  String field_invalid_email(String fieldName) {
    return 'གོ་ཆོད་པའི་$fieldNameས་གནས་ཤིག་ནང་འཇུག་རོགས།';
  }

  @override
  String field_invalid_number(String fieldName, String numberType) {
    return '$fieldNameངེས་པར་དུ་ངེས་པར་དུ་བྱ་བ་$numberType';
  }

  @override
  String field_min_value(String fieldName, double min) {
    return '$fieldName$minལས་ཉུང་མི་རུང་།';
  }

  @override
  String field_max_value(String fieldName, double max) {
    return '$fieldNameདེ་ལས་ཆེ་བ་$max';
  }

  @override
  String field_positive_integer(String fieldName) {
    return '$fieldNameངེས་པར་དུ་དྲང་གྲངས་ཧྲིལ་གྲངས་ཡིན་དགོས།';
  }

  @override
  String field_greater_than_zero(String fieldName) {
    return '$fieldNameངེས་པར་དུ་0ལས་ཆེ་བ་ཡིན་དགོས།';
  }

  @override
  String field_positive_number(String fieldName) {
    return '$fieldNameངེས་པར་དུ་དྲང་གྲངས་ཡིན་དགོས།';
  }

  @override
  String field_invalid_date(String fieldName) {
    return 'གོ་ཆོད་པའི་$fieldName';
  }

  @override
  String field_date_not_past(String fieldName) {
    return '$fieldNameའདས་ཟིན་པའི་དུས་བཅད་ཡིན་མི་རུང་།';
  }

  @override
  String field_date_not_before(String fieldName, String minDate) {
    return '$fieldNameལས་སྔ་བ་$minDate';
  }

  @override
  String field_date_not_after(String fieldName, String maxDate) {
    return '$fieldNameརྗེས་སུ་ལུས་$maxDate';
  }

  @override
  String field_invalid_value(String fieldName) {
    return 'གོ་ཆོད་པའི་$fieldName';
  }

  @override
  String password_min_length(String fieldName) {
    return '$fieldNameཡི་གེའི་རིང་ཚད་ལ་ཡིག་འབྲུ་8ལས་ཉུང་མི་རུང་།';
  }

  @override
  String password_uppercase_required(String fieldName) {
    return '$fieldNameངེས་པར་དུ་མ་མཐར་ཡང་གསལ་བྱེད་ཆེན་པོ་གཅིག་ཡོད་དགོས།';
  }

  @override
  String password_lowercase_required(String fieldName) {
    return '$fieldNameངེས་པར་དུ་ཉུང་མཐར་ཡང་གསལ་བྱེད་ཆུང་བ་གཅིག་ཡོད་དགོས།';
  }

  @override
  String password_digit_required(String fieldName) {
    return '$fieldNameངེས་པར་དུ་ཉུང་མཐར་ཡང་ཨང་གྲངས་གཅིག་ཡོད་དགོས།';
  }

  @override
  String password_special_char_required(String fieldName) {
    return '$fieldNameངེས་པར་དུ་མ་མཐར་ཡང་དམིགས་བསལ་གྱི་ཡི་གེ་གཅིག་ཡོད་དགོས།';
  }

  @override
  String get passwords_not_match => 'ནང་འཇུག་བྱས་པའི་གསང་གྲངས་གཉིས་མི་མཐུན་པ།';

  @override
  String get item_name_cannot_be_empty =>
      'རྣམ་གྲངས་ཀྱི་མིང་སྟོང་བ་ཡིན་མི་རུང་།';

  @override
  String name_max_length(int maxLength) {
    return 'མིང་དེ་ཡིག་འབྲུ་$maxLengthལས་བརྒལ་མི་ཆོག';
  }

  @override
  String quantity_min(int minQuantity) {
    return 'གྲངས་འབོར་$minQuantity';
  }

  @override
  String quantity_max(int maxQuantity) {
    return 'གྲངས་འབོར་དེ་$maxQuantity';
  }

  @override
  String get unit_price_not_negative =>
      'རྩིས་གཞིའི་རིན་གོང་ལ་སྒྱིད་ལུག་བྱེད་མི་རུང།';

  @override
  String unit_price_max(double maxUnitPrice) {
    return 'རྩིས་གཞིའི་རིན་གོང་དེ་$maxUnitPrice';
  }

  @override
  String get set_production_expiry_for_validity =>
      'ཐོན་སྐྱེད་ཀྱི་དུས་ཚོད་དང་སྤུས་ཚད་འགན་ལེན་དུས་ཡུན་གཏན་ཁེལ་བྱས་ནས་རང་འགུལ་གྱིས་རྩིས་རྒྱག་རོགས།';

  @override
  String get set_purchase_warranty_for_validity =>
      'ཁྱོད་ཀྱིས་ཉོས་པའི་དུས་ཚོད་དང་སྤུས་ཚད་འགན་ལེན་དུས་ཡུན་གཏན་ཁེལ་བྱས་ནས་རང་འགུལ་གྱིས་ཉམས་གསོའི་དུས་ཚད་རྩིས་རྒྱག་རོགས།';

  @override
  String get calendar_account_creation_failed =>
      'ལོ་ཐོའི་རྩིས་ཐོ་གསར་འཛུགས་བྱེད་མ་ཐུབ་པས། མ་ལག་གི་ལོ་ཐོའི་སྒྲིག་སྟངས་ལ་ཞིབ་བཤེར་གནང་རོགས།';

  @override
  String get test_notification => 'ཚད་ལེན་བརྡ་ཐོ་';

  @override
  String get test_notification_description =>
      'འདི་ནི་ཚད་ལེན་ཚོད་ལྟ་བྱེད་པའི་བརྡ་ཐོ་ཞིག་ཡིན་ལ། ས་གནས་དྲན་སྐུལ་གྱི་བྱེད་ལས་ལ་ཞིབ་དཔྱད་བྱེད་པར་སྤྱོད་དགོས།';

  @override
  String get day_unit => 'ནམ་མཁའ་';

  @override
  String days_with_value(int days) {
    return 'ཉིན་$days';
  }

  @override
  String get item_saved => 'རྣམ་གྲངས་ཉར་ཚགས་བྱས་ཟིན་པ།';

  @override
  String get item_updated => 'རྣམ་གྲངས་གསར་སྒྱུར་བྱས་ཟིན་པ།';

  @override
  String get item_added => 'རྣམ་གྲངས་ཁ་སྣོན་བྱས་ཟིན་པ།';

  @override
  String get save_success => 'ལེགས་འགྲུབ་ངང་ཉར་ཚགས་བྱས་པ།';

  @override
  String get update_success => 'གསར་སྒྱུར་ལེགས་འགྲུབ་བྱུང་བ།';

  @override
  String get delete_success => 'བསུབ་པ་ལེགས་འགྲུབ་བྱུང་བ།';

  @override
  String get save_failed => 'ཉར་ཚགས་བྱས་མ་ཚུགས';

  @override
  String get update_failed => 'གསར་སྒྱུར་བྱས་མ་ཚུགས';

  @override
  String get delete_failed => 'བསུབ་མ་ཚུགས་པ།';

  @override
  String get test_calendar_event => 'ཚོད་ལྟའི་ཉིན་ཐོའི་དོན་རྐྱེན།';

  @override
  String get test_calendar_event_description =>
      'འདི་ནི་ལོ་ཐོའི་བྱེད་ནུས་ལ་ཞིབ་དཔྱད་བྱེད་པར་སྤྱོད་པའི་ཚོད་ལྟའི་བྱ་འགུལ་ཞིག་ཡིན།';

  @override
  String get in_app => 'ནང་ལོགས་སུ་';

  @override
  String get enable_alert => 'དུས་ལས་ཡོལ་བའི་དྲན་སྐུལ་ལྕོགས་ཅན་བཟོ་དགོས།';

  @override
  String get alert_method => 'དྲན་སྐུལ་བྱེད་ཐབས།';

  @override
  String get alert_method_in_app => 'App ཁོ་ན';

  @override
  String get alert_method_calendar => 'ལོ་ཐོ་ཁོ་ན་';

  @override
  String get alert_method_both => 'དེ་གཉིས་ཀ';

  @override
  String get alert_days_before => 'སྔོན་ཚུད་ནས་བརྡ་ཐོ་གཏོང་བའི་ཉིན་གྲངས་';

  @override
  String get use_global_setting => 'གོ་ལ་ཧྲིལ་པོའི་སྒྲིག་སྟངས་སྤྱོད་དགོས།';

  @override
  String get barcode_label => 'ཨང་རྟགས་';

  @override
  String get name_label => 'མིང་';

  @override
  String get category_label => 'རིགས་དབྱེ';

  @override
  String get current_quantity => 'མིག་སྔའི་གྲངས་འབོར།';

  @override
  String get select_operation => 'བཀོལ་སྤྱོད་ཅིག་འདེམས་རོགས།';

  @override
  String get unit => 'སྡེ་ཚན།';

  @override
  String get custom_unit => 'Custom Unit';

  @override
  String get enter_unit => 'ལས་ཁུངས་དེའི་ནང་དུ་ཞུགས་རོགས།';

  @override
  String get custom_location => 'Custom Location';

  @override
  String get enter_storage_location => 'གསོག་ཉར་བྱེད་གནས་སུ་འཇུག་རོགས།';

  @override
  String get scan => 'QRཨང་རྟགས་ལ་ཞིབ་ལྟ་བྱས།';

  @override
  String get scan_to_stock =>
      'ཚབ་རྟགས་ལ་བཤེར་བཤེར་བྱས་ནས་མཛོད་ཁང་ནང་འཇུག་དགོས།';

  @override
  String get item_categories => 'རྣམ་གྲངས་ཀྱི་རིགས་དབྱེ།';

  @override
  String get storage_locations => 'གསོག་ཉར་ས་གནས།';

  @override
  String get place_barcode_in_frame_to_scan =>
      'ཨང་རྟགས་སྒྲོམ་གཞིའི་ནང་དུ་བཞག་ནས་པར་ལེན་བྱས།';

  @override
  String get barcode => 'ཨང་རྟགས་';

  @override
  String get enter_barcode_or_scan =>
      'ཁྱོད་ཀྱིས་ཨང་རྟགས་ནང་འཇུག་གམ་ཡང་ན་ཚབ་རྟགས་ལ་ཞིབ་ལྟ་བྱེད་རོགས།';

  @override
  String get basic_information => 'གཞི་རྩའི་བརྡ་འཕྲིན།';

  @override
  String get item_name => 'རྣམ་གྲངས་ཀྱི་མིང་།';

  @override
  String get enter_item_name => 'རྣམ་གྲངས་ཀྱི་མིང་ནང་འཇུག་རོགས།';

  @override
  String get enter_category_name => 'རིགས་མིང་ནང་འཇུག་རོགས།';

  @override
  String item_increased(String itemName, String quantity, String unit) {
    return '$itemName $quantity$unitཁ་སྣོན་བྱས་ཟིན།';
  }

  @override
  String item_decreased(String itemName, String quantity, String unit) {
    return 'ཉུང་དུ་ཕྱིན་$itemName $quantity$unit';
  }

  @override
  String get unsaved_changes => 'ཉར་ཚགས་མ་བྱས་པའི་བསྒྱུར་བཅོས།';

  @override
  String get unsaved_changes_message =>
      'ཁྱོད་ཀྱིས་ཉར་ཚགས་བྱས་མེད་པའི་བཟོ་བཅོས་བྱས་ཡོད་པས་བྱ་སྤྱོད་ཅིག་འདེམས་རོགས།';

  @override
  String get discard => 'འདོར་བ།';

  @override
  String get unit_piece => 'དུམ་བུ་';

  @override
  String get unit_item => 'དུམ་བུ་';

  @override
  String get unit_box => 'སྒམ་ཆུང་';

  @override
  String get unit_package => 'ཁུག་མ་';

  @override
  String get unit_bottle => 'དམ་བེ་';

  @override
  String get unit_carton => 'སྒམ་ཆུང་';

  @override
  String get unit_set => 'སྒྲིག་གཞི།';

  @override
  String get unit_kg => 'སྤྱི་རྒྱ་';

  @override
  String get unit_g => 'g';

  @override
  String get unit_l => 'L';

  @override
  String get unit_ml => 'ml';

  @override
  String get unit_m => 'm';

  @override
  String get unit_cm => 'ལི་སྨི།';

  @override
  String get quantity_label => 'གྲངས་འབོར།';

  @override
  String get unit_price_label => 'རྩིས་གཞིའི་རིན་གོང་།';

  @override
  String get currency_label => 'དངུལ་ལོར་';

  @override
  String get total_price_label => 'སྤྱིའི་རིན་གོང་།';

  @override
  String get storage_location_label => 'གསོག་ཉར་ས་གནས།';

  @override
  String get item_properties => 'རྣམ་གྲངས་ཀྱི་ཁྱད་ཆོས།';

  @override
  String get expiry_date_label => 'གོ་ཆོད་པའི་དུས་ཡུན།';

  @override
  String get warranty_expiry_date_label => 'ཉམས་གསོའི་དུས་ཚད་ཐིམ་པའི་ཚེས་གྲངས།';

  @override
  String get production_date_label => 'ཐོན་སྐྱེད་ཀྱི་ཚེས་གྲངས།';

  @override
  String get purchase_date_label => 'ཉོ་བའི་ཚེས་གྲངས།';

  @override
  String auto_calculated_from(String dateType) {
    return 'རང་འགུལ་གྱིས་$dateTypeདང་སྤུས་ཚད་འགན་ལེན་དུས་ཡུན་ལྟར་རྩིས་རྒྱག་པ།';
  }

  @override
  String get auto_calculated => 'རང་འགུལ་གྱིས་རྩིས་རྒྱག་པ།';

  @override
  String get images_label => 'པར་རིས།';

  @override
  String get notes_label => 'མཆན་འགྲེལ།';

  @override
  String get add_notes_hint => 'དཔྱད་གཏམ་ཁ་སྣོན་བྱས་པ། (གདམ་གསེས་བྱས་པ)';

  @override
  String get year_label => 'ལོ་';

  @override
  String get month_label => 'ཟླ་བ།';

  @override
  String get day_label => 'ནམ་མཁའ་';

  @override
  String selected_count(int count) {
    return '$countརྣམ་གྲངས་བདམས་ཐོན་བྱུང་བ།';
  }

  @override
  String get select_all => 'ཚང་མ་འདེམས་སྒྲུག་བྱས་པ།';

  @override
  String get deselect_all => 'ཀུན་གྱི་གདམ་གསེས་མེད་པར་བཟོ་';

  @override
  String get batch_change_location => 'ཁག་བརྗེས་གསོག་ཉར་བྱེད་ས་';

  @override
  String confirm_delete_selected(int count) {
    return 'ཁྱོད་ཀྱིས་བདམས་པའི་རྣམ་གྲངས་$countབསུབ་འདོད་དམ།';
  }

  @override
  String deleted_count_items(int count) {
    return 'རྣམ་གྲངས་$countབསུབ་ཟིན།';
  }

  @override
  String get no_storage_location_available => 'གསོག་ཉར་བྱེད་ས་མེད་པ།';

  @override
  String get batch_change_location_title => 'ཁག་བརྗེས་གསོག་ཉར་བྱེད་ས་';

  @override
  String moved_count_items_to_location(int count, String location) {
    return '$countདངོས་རྫས་$location';
  }

  @override
  String get operation_type_create => 'ནང་ཞུགས།';

  @override
  String get operation_type_update => 'རྩོམ་སྒྲིག་པ།';

  @override
  String get operation_type_delete => 'བསུབ་པ།';

  @override
  String get operation_type_inbound => 'གསོག་ཉར་གྱི་འཇུག་སྒོ་';

  @override
  String get operation_type_outbound => 'མཛོད་ཁང་ནས་ཕྱིར་ཐོན་པ།';

  @override
  String export_failed_message(String error) {
    return 'ཕྱིར་གཏོང་ཕམ་པ། $error';
  }

  @override
  String get clear_logs => 'ཟིན་ཐོ་གཙང་སེལ་';

  @override
  String get confirm_clear_logs =>
      'ཁྱོད་ཀྱིས་དངོས་གནས་བཀོལ་སྤྱོད་ཀྱི་ཟིན་ཐོ་ཚང་མ་གཙང་བཤེར་བྱེད་དགོས་སམ། བྱ་སྤྱོད་དེ་ཕྱིར་འཐེན་བྱེད་མི་ཉན།';

  @override
  String get logs_cleared => 'ཉིན་ཐོ་གཙང་སེལ་བྱས་ཚར།';

  @override
  String get operation_logs_title => 'བཀོལ་སྤྱོད་ཟིན་ཐོ།';

  @override
  String get export_logs => 'ཕྱིར་འདྲེན་ཟིན་ཐོ།';

  @override
  String get clear_logs_tooltip => 'ཟིན་ཐོ་གཙང་སེལ་';

  @override
  String get no_operation_logs => 'བཀོལ་སྤྱོད་ཀྱི་ཟིན་ཐོ་མེད་པ།';

  @override
  String get log_item_label => 'རྣམ་གྲངས།';

  @override
  String get log_category_label => 'རིགས་ཁག';

  @override
  String get log_type_label => 'རིགས་དབྱིབས་:';

  @override
  String get log_quantity_label => 'གྲངས་འབོར།';

  @override
  String get log_unit_price_label => 'རྩིས་གཞིའི་རིན་གོང་།';

  @override
  String get log_total_price_label => 'སྤྱིའི་རིན་གོང་།';

  @override
  String get log_expiry_date_label => 'གོ་ཆོད་པའི་དུས་ཚོད།';

  @override
  String get log_warranty_date_label => 'ཉམས་གསོའི་ཚེས་གྲངས།';

  @override
  String get log_purchase_date_label => 'ཉོ་བའི་ཚེས་གྲངས།';

  @override
  String get log_production_date_label => 'ཐོན་སྐྱེད་ཀྱི་ཚེས་གྲངས།';

  @override
  String get log_shelf_life_label => 'སྤུས་ཚད་འགན་ལེན་དུས་ཡུན།';

  @override
  String get log_storage_location_label => 'གསོག་ཉར་ས་གནས།';

  @override
  String get log_barcode_label => 'Barcode:';

  @override
  String get log_notes_label => 'མཆན་འགྲེལ།';

  @override
  String get log_alert_label => 'ཉེན་བརྡ།';

  @override
  String get log_alert_days_label => 'ཉེན་བརྡའི་ཉིན་མོ།';

  @override
  String get log_quantity_change_label => 'གྲངས་ཚད་བསྒྱུར་བཅོས།';

  @override
  String get log_field_changes_label => 'ཁྱབ་ཁོངས་བཟོ་བཅོས་རྒྱག་པ།';

  @override
  String get log_not_set => 'བཀོད་སྒྲིག་མ་བྱས་པ།';

  @override
  String get log_empty => 'སྟོང་པ་';

  @override
  String get log_alert_enabled => 'སྒོ་ཕྱེ།';

  @override
  String get log_alert_disabled => 'ཁ་བསྡམས།';

  @override
  String get operation_logs_menu => 'བཀོལ་སྤྱོད་ཟིན་ཐོ།';

  @override
  String get operation_logs_description =>
      'བཀོལ་སྤྱོད་ཟིན་ཐོ་ལ་ལྟ་བ་དང་སླར་གསོ་བྱས།';

  @override
  String operation_failed_message(String error) {
    return 'བཀོལ་སྤྱོད་ཕམ་སོང་། $error';
  }

  @override
  String get no_date => 'ཚེས་གྲངས་མེད་པ།';

  @override
  String get shelf_life_months_suffix => 'ཟླ་(ཚུ)';

  @override
  String get shelf_life_days_suffix => 'ནམ་མཁའ་';

  @override
  String get alert_days_suffix => 'ནམ་མཁའ་';

  @override
  String get unknown => 'མ་ཤེས';

  @override
  String get developer_name => 'སེང་གེ་';

  @override
  String get log_operation_date_label => 'བཀོལ་སྤྱོད་ཀྱི་ཚེས་གྲངས།';

  @override
  String get uncategorized => 'རིགས་མི་འགྲེམས།';

  @override
  String get no_location => 'གནས་ཡུལ་མེད་པ།';

  @override
  String get item_category_cannot_be_empty =>
      'རྣམ་གྲངས་ཀྱི་རིགས་སྟོང་པ་ཡིན་མི་རུང་།';

  @override
  String get storage_location_cannot_be_empty =>
      'གསོག་ཉར་བྱེད་ས་སྟོང་བ་ཡིན་མི་རུང་།';

  @override
  String get created_at_asc => 'ཁ་སྣོན་དུས་ཚོད་ཡར་འཕར་ནས་དབྱེ་བསྒྲིགས།';

  @override
  String get created_at_desc => 'དུས་ཚོད་ཁ་སྣོན་བྱས་ནས་མར་འབབ་པ།';

  @override
  String get location_management => 'མཛོད་ཁང་དོ་དམ་';

  @override
  String get private_warehouses => 'སྒེར་གྱི་མཛོད་ཁང་';

  @override
  String get public_warehouses => 'སྤྱི་པའི་དཔེ་མཛོད་ཁང་';

  @override
  String get is_public_warehouse => 'སྤྱི་པའི་དཔེ་མཛོད་ཁང་';

  @override
  String get public_warehouse_desc =>
      'སྤྱི་པའི་མཛོད་ཁང་ལ་དོ་དམ་པ་མེད། དངོས་ཟོག་ཕྱིར་གཏོང་ནང་འདྲེན་བྱེད་སྐབས་གཉེར་སྐྱོང་བྱེད་མཁན་ལ་ཐོ་འགོད་བྱ་དགོས།';

  @override
  String get manager => 'དོ་དམ་པ།';

  @override
  String get not_set => 'བཀོད་སྒྲིག་མ་བྱས་པ།';

  @override
  String get edit_location => 'རྩོམ་སྒྲིག་དཔེ་མཛོད་ཁང་';

  @override
  String get location_name => 'དཔེ་མཛོད་ཁང་གི་མིང་།';

  @override
  String get manager_name => 'དོ་དམ་པའི་མིང་།';

  @override
  String get enter_manager_name => 'དོ་དམ་པའི་མིང་ནང་འཇུག་རོགས།';

  @override
  String get manager_name_required => 'དོ་དམ་པའི་མིང་སྟོང་བ་ཡིན་མི་རུང་།';

  @override
  String delete_location_confirm(String name) {
    return 'ཁྱོད་ཀྱིས་དངོས་གནས་དཔེ་མཛོད་ཁང་\"$nameབསུབ་འདོད་དམ།';
  }

  @override
  String get delete_location_has_items =>
      'དཔེ་མཛོད་ཁང་ནང་དུ་ད་དུང་རྣམ་གྲངས་ཡོད་པས་བསུབ་མི་ཐུབ།';

  @override
  String get default_manager => 'སྔོན་འགྲོའི་དོ་དམ་པ།';

  @override
  String get default_manager_desc =>
      'སྒེར་གྱི་མཛོད་ཁང་གསར་པ་གསར་འཛུགས་བྱེད་སྐབས་སྔོན་འགྲོའི་དོ་དམ་པ།';

  @override
  String get enter_default_manager => 'སྔོན་འགྲོའི་དོ་དམ་པའི་མིང་ནང་འཇུག་རོགས།';

  @override
  String get operator_name => 'བཀོལ་སྤྱོད་པའི་མིང་།';

  @override
  String get enter_operator_name => 'བཀོལ་སྤྱོད་བྱེད་མཁན་གྱི་མིང་འགོད་རོགས།';

  @override
  String get operator_name_required =>
      'བཀོལ་སྤྱོད་བྱེད་མཁན་གྱི་མིང་སྟོང་བ་ཡིན་མི་རུང་།';

  @override
  String get no_manager => 'དོ་དམ་པ་མེད་པ།';

  @override
  String get log_operator_label => 'བཀོལ་སྤྱོད་བྱེད་མཁན།';

  @override
  String get outbound_quantity_exceeds_current =>
      'དབོར་འདྲེན་བྱས་པའི་གྲངས་འབོར་དེ་ད་ལྟ་སྤྱོད་བཞིན་པའི་མཛོད་ཉར་ལས་བརྒལ་མི་ཆོག';
}
