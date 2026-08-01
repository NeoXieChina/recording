// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Uighur Uyghur (`ug`).
class AppLocalizationsUg extends AppLocalizations {
  AppLocalizationsUg([String locale = 'ug']) : super(locale);

  @override
  String get app_name => 'سامان ساقلاش جايى';

  @override
  String get cancel => 'تەرتىپتىن چىقىرىش';

  @override
  String get confirm => 'تەستىقلاش';

  @override
  String get save => 'ساقلاش';

  @override
  String get delete => 'ئۆچۈرۈش';

  @override
  String get edit => 'تەھرىرلەش';

  @override
  String get add => 'قوشۇش';

  @override
  String get search => 'ئىزدەش';

  @override
  String get settings => 'تەڭشەك';

  @override
  String get language_settings => 'تىل تەڭشەش';

  @override
  String get language_settings_description => 'ئەپ كۆرۈنۈش تىلىنى بېكىتىش';

  @override
  String get system_default => 'سىستېما ئەسلى تەڭشىكى';

  @override
  String get use_system_language => 'سىستېما تىلىنى ئىشلىتىش';

  @override
  String get language_change_hint =>
      'تىل ئۆزگىرىشى ئاپپېلىكىسىيەنى قايتا قوزغاتقىنىڭىزدىن كېيىن قوللىنىلىدۇ';

  @override
  String get back => 'قايتىش';

  @override
  String get next => 'كېيىنكى قەدەم';

  @override
  String get done => 'تۈگەش';

  @override
  String get loading => 'يۈكلىنىۋاتىدۇ...';

  @override
  String get error => 'خاتالىق';

  @override
  String get success => 'مۇۋەپپەقىيەت';

  @override
  String get warning => 'ئاگاھلاندۇرۇش';

  @override
  String get info => 'ئۇچۇر';

  @override
  String get select_alert_days => 'ئەسكەرتىش كۈنلىرىنى تاللاڭ';

  @override
  String get custom => 'مەخسۇس تەڭشەك';

  @override
  String custom_days(int days) {
    return 'ئالدىن بەلگىلەنگەن ($days كۈن)';
  }

  @override
  String current_selection(int days) {
    return 'نۆۋەتتىكى تاللاش: $days كۈن';
  }

  @override
  String alert_days_range(int min, int max) {
    return 'ئەسكەرتىش كۈنلىرى دائىرىسى：$min-$maxكۈن';
  }

  @override
  String get enter_days => 'ئەسكەرتىش كۈن سانىنى كىرگۈزۈڭ';

  @override
  String get days => 'كۈن سانى';

  @override
  String enter_valid_days(int min, int max) {
    return '请$min-$max ئارىلىقىدىكى ساننى كىرگۈزۈڭ';
  }

  @override
  String get alert_settings => 'ئەۋەتىش تەڭشىكى';

  @override
  String get calendar_settings => 'تەۋرەت تەڭشەش';

  @override
  String get calendar_sync => 'تەۋرەت كالېندارىنى ئوخشاشلاشتۇرۇش';

  @override
  String get calendar_sync_desc =>
      'ئۇچۇر ئېچىلغاندىن كېيىن كالىندار ھوقۇقىنى تەلەپ قىلىدۇ';

  @override
  String get add_test_calendar_event => 'سىناق كالېندار ۋەقەسىنى قوشۇش';

  @override
  String get enable_calendar_sync_first =>
      'ئىلتىماس ئالدى بىلەن «كالىندارنى مۇۋاپىقلاشتۇرۇش» ئايرىقىنى ئاچىڭ';

  @override
  String get app_alert_settings => 'ئەپ ئەسكەرتىش تەڭشەش';

  @override
  String get local_alerts => 'يەرلىك ئەسكەرتىش';

  @override
  String get local_alerts_desc =>
      'ئۆچۈرۈلگەندىن كېيىن ئىچىدىكى ئۇيغۇرلىنىش ئەسكەرتىشلەرنى قوبۇل قىلىش';

  @override
  String get send_test_notification => 'سىناق ئۇقتۇرۇشىنى ئەۋەتىش';

  @override
  String get enable_local_alerts_first =>
      'ئىلتىماس ئالدى بىلەن «يەرلىك ئەسكەرتىش» نى قوزغاتۇڭ';

  @override
  String get alert_days_settings => 'ئەسكەرتىش كۈن سانىنى بەلگىلەش';

  @override
  String get advance_alert_days => 'ئالدىن سۆزلەپ ئەسكەرتىش كۈنلىرى';

  @override
  String get advance_alert_days_desc =>
      'مەھسۇلاتنىڭ ۋاقتى ئۆتۈش ياكى كاپالىتىنىڭ ئاخىرلاشقانلىقىنى قاچان دەسكە ئالدۇرۇشنى بەلگىلەش';

  @override
  String get calendar_permission_request => 'تەقۋىم ھوقۇقىنى سوراش';

  @override
  String get calendar_permission_desc =>
      'بۇ تۈركۈمدىكى ئەسلىمە ئەسكەرتىشلىرىنى بىر مەزگىلگە كەلتىرىش ئۈچۈن تەقۋىم ئىجازىتىگە ئېرىشىش كېرەك. رۇخسەت بېرىلمۇ؟';

  @override
  String get allow => 'رۇخسەت قىلىش';

  @override
  String get calendar_permission_granted =>
      'كالېندار ھوقۇقى بېرىلدى، كالېندار ئوخشاشلىشىش يېقىلدى';

  @override
  String get calendar_permission_denied =>
      'كالېندار ھوقۇقى رەت قىلىندى، كالېندار ئوخشاشتىرىشنى قوزغىتىپ بولمايدۇ';

  @override
  String get calendar_permission_permanently_denied =>
      'ھوقۇقلار دائىملىقىچە رەت قىلىندى';

  @override
  String get calendar_permission_permanently_denied_desc =>
      'تەھرىرلىك ھوقۇقى دائىملىق رەت قىلىندى، سىستېما تەڭشەكلەردىن ھوقۇقنى قول بىلەن ئاچۇڭ.';

  @override
  String get go_to_settings => 'تەڭشەشкә بېرىڭ';

  @override
  String get calendar_account_failed =>
      'تەۋرىشلىك ھوقوق بېرىلدى، بىراق تەۋرىشلىك ھېسابات قۇرالمايدۇ. سىستېما تەۋرىشلىك تەڭشەكلەرنى تەكشۈرۈپ بېقىڭ';

  @override
  String get calendar_account_created =>
      'كېلىنەر ھوقۇقى بەرىلدى، يەرلىك كېلىنەر حسابى قۇرۇلدى';

  @override
  String get calendar_account_creating =>
      'تاغرام خاتىرىسى مۇۋەپپەقىيەتلىك قۇرۇلدى، ئەمما سىستېما جەريانغا كىرىشىشقا بىر ئاز ۋاقىت ئېلىشى مۇمكىن';

  @override
  String get test_calendar_event_added =>
      'تەھرىرلەش كۈن تىزىملىكى ۋەقەسى مۇۋەپپەقىيەتلىك قوشۇلدى';

  @override
  String get test_calendar_event_failed =>
      'سىنىقى كۈن تارتقىسى پائالىيىتىنى قوشۇش مەغلۇپ بولدى، كۈن تارتقىسى تەڭشەكلەرنى تەكشۈرۈپ بېقىڭ';

  @override
  String get calendar_permission_required =>
      'سىناق پائالىيەتنى قوشۇش ئۈچۈن كۇن تەقۋىم ھوقۇقى كېرەك';

  @override
  String get test_notification_sent => 'سىناق ئۇقتۇرۇشى ئەۋەتىلدى';

  @override
  String test_notification_failed(String error) {
    return 'سىناش ئېلانىنى يوللاش مەغلۇپ بولدى: $error';
  }

  @override
  String get notification_permission_required =>
      'يەرلىك ئەسكەرتىشنى قوزغاتماق ئۈچۈن ئۇقتۇرۇش ھوقۇقى كېرەك';

  @override
  String operation_failed(String error) {
    return '操作失败: $error';
  }

  @override
  String get notification_channel_name => 'مەھسۇلات ئاگاھلاندۇرۇش دوكلاتى';

  @override
  String get notification_channel_description =>
      'مال-مۈلۈكنىڭ مۇددەت ئۆتۈش ياكى كاپالەت مۇددىتى تېگىشلىك ئاگاھلاندۇرۇشى';

  @override
  String get item_category_food => 'يەمەك-ئىچمەك';

  @override
  String get item_category_daily_necessities =>
      'كۈنلۈك ئىشلىتىلىدىغان نەرسىلەر';

  @override
  String get item_category_cosmetics => 'چىراغ-چەكەن ئەسۋابلار';

  @override
  String get item_category_medicine => 'دەرمان';

  @override
  String get item_category_electronics => 'ئېلېكترونلۇق مەھسۇلاتلار';

  @override
  String get item_category_furniture => 'ياسالما ئەشيا';

  @override
  String get item_category_clothing => 'كىيىم-كەچەك';

  @override
  String get item_category_books => 'كىتاب';

  @override
  String get item_category_other => 'باشقا';

  @override
  String get purchase_channel_online_mall => 'تور بۈيۈك دۇكان';

  @override
  String get purchase_channel_physical_store => 'رېئال دۇكان';

  @override
  String get purchase_channel_supermarket => 'دۆكان';

  @override
  String get purchase_channel_specialty_store => 'بايراملىق دۇكان';

  @override
  String get purchase_channel_secondhand_market => 'ئىككىنچى قول بازىرى';

  @override
  String get purchase_channel_other => 'باشقا';

  @override
  String get default_category => 'باشقا';

  @override
  String get default_purchase_channel => 'تور بۈيۈك دۇكان';

  @override
  String get item_category => 'بايقۇلگەن نەرسىلەرنى تۈرىگە بۆلۈش';

  @override
  String get custom_category => 'بايراملىق تۈرلەندۈرۈش';

  @override
  String get backup_data => 'سانلىق مەلۇماتنى زاپاس قىلىش';

  @override
  String get backup_data_description =>
      'بارلىق سانلىق مەلۇماتلارنى (رەسىملەرنى ئۆز ئىچىگە ئالغان) ZIP ھۆججىتىگە ئوراپ زاپاس قىلىڭ';

  @override
  String get backup_all_data => 'ھەممە سانلىق مەلۇماتنى زاپاس قىلىڭ';

  @override
  String get backup_success => 'باكلاپ قويۇش مۇۋاپىقىيەتلىك بولدى';

  @override
  String backup_failed(String error) {
    return 'ئەسلىگە قايتۇرۇش مەغلۇماتى مەغلۇپ بولدى: $error';
  }

  @override
  String get restore_data => 'سانلىق مەلۇماتنى ئەسلىگە كەلتۈرۈش';

  @override
  String get restore_data_description =>
      'ZIP زاپاس ھۆججىتىدىن بارلىق سانلىق مەلۇماتنى قىستۇرۇپ چىقىرىش';

  @override
  String get export_data => 'سانلىق مەلۇماتنى چىقىرىش';

  @override
  String get export_data_description => 'CSV، TXT، SQL شەكلىگە چىقىرىش';

  @override
  String get import_data => 'سانلىق مەلۇماتنى ئىمپورت قىلىش';

  @override
  String get import_data_description =>
      'CSV、TXT、SQL ھۇججەتلىرىدىن سانلىق مەلۇماتنى كەلتۈرۈش';

  @override
  String get alert_settings_description =>
      'تۆتۈن جەدۋىلى ئەسكەرتىشى ۋە قوللانما ئەسكەرتىشى تەڭشەش';

  @override
  String get about => 'ھەققىدە';

  @override
  String get about_description => 'ئەپ ئۇچۇرى ۋە نەشرى';

  @override
  String get select_backup_file_first => 'ئەڭ ئاۋۋال زاپاس ھۇججەتنى تاللاڭ';

  @override
  String get confirm_restore => 'قايتا ئەسلىگە كەلتۈرۈشكە جەزملەشتۈرۈش';

  @override
  String get confirm_restore_message =>
      'ئۈلگە نۇسخىنى قايتا دەسلەپكى ھالەتكە كەلتۈرۈش بارلىق مېۋجۇت سانلىق-مەلۇماتنى ئۆچۈرىدۇ ۋە ئۇنى ئۈلگە نۇسخىلىق سانلىق-مەلۇمات بىلەن ئالماشتۇرىدۇ، بۇ ئامەلنى ئەكس ئەتتۈرۈپ بولمايدۇ. داۋام قىلماقچىمۇ؟';

  @override
  String get confirm_again => 'قايتا جەزملەش';

  @override
  String get confirm_restore_warning =>
      'سىز ھەقىقەتەن بارلىق مەۋجۈت سانلىق مەلۇماتنى تازىلاپ، ساقلانغان نۇسخىنى ئەسلىگە كەلتۈرمەكچىمۇ؟ بۇ ھەرىكەتنى قايتۇرۇپ بولمايدۇ!';

  @override
  String get confirm_restore_button => 'قايتا tikleşنى جەزملەش';

  @override
  String restore_success(int count) {
    return 'قايتا تۈزىتىش مۇۋەپپىقىيەتلىك بولدى، جەمئىي $count پارچە بۇيۇم';
  }

  @override
  String restore_failed(String error) {
    return 'قايتا tikلەش مەغلۇپ بولدۇ：$error';
  }

  @override
  String get select_backup_file => 'زاپاس ھۆججەتنى تاللاڭ';

  @override
  String get restore_backup => 'باكاپنى قايتا ئەسلىگە كەلتۈرۈش';

  @override
  String selected_file(String filename) {
    return 'تاللانغان ھۆججەت: $filename';
  }

  @override
  String get export_success => 'سانلىق مەلۇمات چىقىرىش مۇۋەپپەقىيەتلىك بولدى';

  @override
  String export_failed(String error) {
    return 'چىقىرىش مەغلۇب بولدۇ：$error';
  }

  @override
  String get format_csv => 'CSV';

  @override
  String get format_txt => 'TXT';

  @override
  String get format_sql => 'SQL';

  @override
  String get duplicate_data_handling => 'قايتىلانغان سانلىق مەلۇماتنى ئىشلەش';

  @override
  String get duplicate_data_detected =>
      'قايتىلانغان سانلىق مەلۇمات بايقىلىدى، ئىشلەش ئۇسۇلىنى تاللاڭ:';

  @override
  String get skip => 'ئۆتكۈزۈپ قوي';

  @override
  String get overwrite => 'ياسلاش';

  @override
  String get skip_all => 'ھەممىنى ئۆتكۈزۈش';

  @override
  String get overwrite_all => 'پۈتكۈل قاپلىما';

  @override
  String get select_import_format_first =>
      'ئەڭ ئاۋۋال ئىمپورت قىلىش ئورنىنى تاللاڭ';

  @override
  String get confirm_import => '导入نى جەزىملەشتۈرۈش';

  @override
  String get confirm_import_message =>
      'سانلىق مەلۇماتنى ئېكىرىشتە بار بولغان سانلىق مەلۇمات ئۈستۈنلىنىدۇ، بۇ ھەرىكەتنى قايتۇرغىلى بولمايدۇ. داۋاملاشتۇرمەكچىمۇسىز؟';

  @override
  String import_success(int count) {
    return 'سانلىق مەلۇمات مۇۋەپپەقىيەتلىك ئاپىرۋېتىلدى، جەمئىي $count دانە بويۇم ئاپىرۋېتىلدى';
  }

  @override
  String import_failed(String error) {
    return 'چۈشۈرۈش مەغلۇب بولدى：$error';
  }

  @override
  String get select_file => 'ھۆججەت تاللاش';

  @override
  String get no_data => 'مەلۇمات يوق';

  @override
  String get no_data_description =>
      'ھازىرچە سانلىق مەلۇمات يوق، تۆۋەندىكى كۇنۇپكىنى چېكىپ بىرىنچى خاتىرنى قوشۇڭ!';

  @override
  String get load_failed => 'يۈكلەش مەغلۇپ بولدى';

  @override
  String get load_failed_description =>
      'سانلىق مەلۇمات يۈكلەش مەغلۇپ بولدى، تور مۇناسىۋىتىڭىزنى تەكشۈرۈپ قايتا سىناڭ';

  @override
  String get retry => 'قايتا سىناڭ';

  @override
  String get network_connection_failed => 'تور باغلىنىشى مەغلۇپ بولدى';

  @override
  String get network_connection_failed_description =>
      'تور ئالاقىسىنى تەكشۈرۈپ ئاندىن قايتا سىناڭ';

  @override
  String get no_results => 'نتىجە تېپىلمىدى';

  @override
  String get no_results_description =>
      'باشقا ئاچقۇچلۇق سۆزلەرنى ئىشلىتىپ ئىزدەپ بېقىڭ';

  @override
  String get clear_search => 'ئىزدەشنى تازىلاش';

  @override
  String get insufficient_permission => 'ھوقۇق يېتىشمەسلىك';

  @override
  String get insufficient_permission_description =>
      'ئۇ بۇ خۇسۇسىيەتنى ئىشلىتىش ئۈچۈن مۇناسىۋەتلىك ھوقۇقلار كېرەك';

  @override
  String get request_permission => 'رۇخسەت سوراش';

  @override
  String get app_info => 'ئەپ ئۇچۇرى';

  @override
  String get version => 'نەشر';

  @override
  String get developer => 'تەرەققىياتچى';

  @override
  String get device_info => 'ئاپپارات ئۇچۇرى';

  @override
  String get device_model => 'ئاپپارات مودېلى';

  @override
  String get brand => 'ماركا';

  @override
  String get device_name => 'ئاپپارات نامى';

  @override
  String get product => 'مەھسۇلات';

  @override
  String get hardware => 'ئاۋازلىق قۇرۇلما';

  @override
  String get android_version => 'Android نەشرى';

  @override
  String get sdk_version => 'SDK نەشرى';

  @override
  String get system_name => 'سىستېما نامى';

  @override
  String get system_version => 'سىستېما نەشرى';

  @override
  String get device_identifier => ' ئۈسكۈنىنى تەڭشەش';

  @override
  String get computer_name => 'كومپيۇتېر نامى';

  @override
  String get build_number => 'نۇسخا نومۇرى';

  @override
  String error_getting_device_info(String error) {
    return ' ئۈسكۈنە ئۇچۇرىنى ئالالمىدى: $error';
  }

  @override
  String get features => 'ئىقتىدار تونۇشتۇرۇش';

  @override
  String get app_description => 'ئەقىللىق زاتلار باشقۇرۇش قوللىنىش پروگراممىسى';

  @override
  String get app_description_detail =>
      'سىزگە بۇيۇملىرىڭىزنىڭ ئۆتكەن ۋاقتى، كاپالەت ۋاقتى قاتارلىق ئۇچۇرلارنى باشقۇرۇشقا ياردەم بېرىدۇ ۋە ئەقىللىق ئەسكەرتىش ئىقتىدارىنى تەمىنلەيدۇ.';

  @override
  String get consumable => 'ئىستېمال ماللىرى';

  @override
  String get durable => 'مەيدانىغا چىداملىق مال';

  @override
  String get sort => 'تىزىش';

  @override
  String get name_asc => 'ئات نامى بويىچە ئارتۇرىش تەرتىپى';

  @override
  String get name_desc => 'نام بويىچە تەڭشىتىلگەن كېمەرتىلىش';

  @override
  String get date_asc => 'تاريخ بويىچە ئارتۇرىش';

  @override
  String get date_desc => 'تاريخنى چۈشۈش تەرتىپى بويىچە';

  @override
  String get price_asc => 'بىرلىك باھاسى ئاشۇرىش تەرتىپى';

  @override
  String get price_desc => 'بىرلىك باھاسى تەۋەنلىشى بويىچە تەرتىپلەش';

  @override
  String get quantity_asc => 'سان بويىچە ئۆسۈش تەرتىپى';

  @override
  String get quantity_desc => 'سان بويىچە تەڭسىزلەش';

  @override
  String get total_price_asc => 'ھەممە باھاسى ئاشۇرىش تەرتىپى';

  @override
  String get total_price_desc => 'ئومۇمىي باھانى چۈشكەن تىزىملىك';

  @override
  String get clear_all_filters => 'بارلىق سۈزگۈچلەردىن تازىلاڭ';

  @override
  String get scan_barcode => 'باھالىق كودنى سىكانىرلاپ كىرىش';

  @override
  String get search_items => 'ھەرىكەتنى ئىزدەش...';

  @override
  String get no_items => 'ھازىرچە مەھسۇلات يوق';

  @override
  String get no_items_description =>
      'تۆۋەندىكى كۇنۇپكىنى چېكىپ تۇنجى بۇيۇمنى قوشۇڭ';

  @override
  String get expired => 'مەزگىلى ئۆتكەن';

  @override
  String get expiring_soon => 'تەخمىنەن مۇددىتى ئۆتكەن';

  @override
  String get warranty_expired => 'كاپالىتى ۋاقتى ئۆتۈپ كەتتى';

  @override
  String get warranty_expiring_soon => 'كاپالەت مۇددىتى يېتىلىپ قالماقچى';

  @override
  String days_remaining(int count) {
    return 'قالغان $count كۈن';
  }

  @override
  String expired_days_ago(int count) {
    return 'ۋاقىتى ئۆتۈپ كېتىپتۇ$countكۈن';
  }

  @override
  String get delete_item => 'بايلىقنى ئۆچۈرۈش';

  @override
  String delete_item_confirm(String name) {
    return '«$name» نى ئۆچۈرۈشنى چىن دىلىڭىزدىن خالايسىز؟';
  }

  @override
  String get item_deleted => 'ھەرىكەت ئۆچۈرۈلدى';

  @override
  String get failed_to_delete => 'ئۆچۈرۈش مەغلۇپ بولدى';

  @override
  String failed_to_delete_message(String error) {
    return 'ماتېرىيالنى ئوقۇتۇمۇق: $error';
  }

  @override
  String get date_range_filter => 'چېسلا دائىرىسىنى سۈزۈش';

  @override
  String get price_range_filter => 'باھا دائىرىسىنى سۈزۈش';

  @override
  String get my_items => 'مەنىڭ ئەشيايم';

  @override
  String get click_fab_to_add_item =>
      'ئوڭ تۆۋەن بۇشقۇچنى چېكىپ، بۇيرۇقلارنى قوشۇڭ';

  @override
  String get confirm_delete => 'ئۆچۈرۈشنى جەزملەش';

  @override
  String get filter_options => 'تاللاش تاللاشلىرى';

  @override
  String get filter_by_type_category_location =>
      'تۈر، تاغىلىق ۋە ئورۇن بويىچە ئەşyالارنى سۈزۈش';

  @override
  String categories_count(int count) {
    return '$count تۈر';
  }

  @override
  String get all_categories => 'ھەممىسى تۈرى';

  @override
  String get no_category_data => 'ھازىرچە تۈرلەردىكى سانلىق مەلۇمات يوق';

  @override
  String get storage_location => 'ساقلاش ئورنى';

  @override
  String locations_count(int count) {
    return '$count ئورۇن';
  }

  @override
  String get all_locations => 'ھەممە جاي';

  @override
  String get no_location_data => 'ھازىرچە ئورۇن ئۇچۇرى يوق';

  @override
  String get date_range => 'چۈشۈرۈش دائىرىسى';

  @override
  String get select_date_range => 'كۈنلەردىكى دائىرىنى تاللاڭ';

  @override
  String get price_range => 'باھالار دائىرىسى';

  @override
  String get unit_price_range => 'باھاسى دائىرىسى';

  @override
  String get min_unit_price => 'ئەڭ تۆۋەن بىرلىك باھا';

  @override
  String get max_unit_price => 'ئەڭ يۇقىرى بىرلىك باھا';

  @override
  String get total_price_range => 'جەمئىي باھا دائىرىسى';

  @override
  String get min_total_price => 'ئەڭ تۆۋەن جەمئىي باھا';

  @override
  String get max_total_price => 'ئەڭ چوڭ جەمئىي باھا';

  @override
  String get clear_price_filter => 'باھانى تەكشۈرۈشنى تازىلاش';

  @override
  String get place_barcode_in_frame => 'بارات كودنى ئىچىگە سېلىپ سۈرۈشتۈرۇڭ';

  @override
  String get item_already_exists => 'مال ئاللىقاچان مەۋجۇت';

  @override
  String barcode_with_value(String barcode) {
    return 'باركود：$barcode';
  }

  @override
  String name_with_value(String name) {
    return '名称：$name';
  }

  @override
  String category_with_value(String category) {
    return 'تۈر：$category';
  }

  @override
  String current_quantity_with_value(String quantity, String unit) {
    return 'ھازىرقى سان: $quantity$unit';
  }

  @override
  String get please_select_operation => 'ئىشلىتىشنى تاللاڭ:';

  @override
  String get outbound => 'مال ساتуға чиқириш';

  @override
  String get inbound => 'مالنى ساقلاشقا كىرىتىش';

  @override
  String get inbound_quantity => 'باھالىق سىنىپقا كىرگۈزۈش سانى';

  @override
  String get outbound_quantity => 'باھارلىق سانى';

  @override
  String get quantity => 'مىقدار';

  @override
  String get enter_inbound_quantity => 'كىرگەن ساننى كىرگۈزۈڭ';

  @override
  String get enter_outbound_quantity => 'چۇقۇر ساندىنى كىرگۈزۈڭ';

  @override
  String item_increased(String name, String quantity, String unit) {
    return 'ئارتۇرۇلدى $name $quantity$unit';
  }

  @override
  String delete_item_confirm_with_irreversible(String name) {
    return '«$name»نى چۈشۈرۈشكە مەيىل قىلدىڭىزمۇ؟ بۇ مەشغۇلاتنى ئورۇنلىغاندىن كېيىن قايتۇرۇش بولمايدۇ.';
  }

  @override
  String item_decreased(String name, String quantity, String unit) {
    return 'ئازايتىلدى $name $quantity$unit';
  }

  @override
  String get database_reset =>
      'سانلىق مەلۇمات ئىچىلىشى قايتا تەڭشەندى، جەدۋەل قۇرۇلمىسى قايتا يارىتىلىدۇ';

  @override
  String database_reset_error(String error) {
    return 'سانلىق مەلۇمات بازىسىنى قايتا تەڭشەشتە خاتالىق: $error';
  }

  @override
  String mock_data_init_failed(String error) {
    return 'سېلىشتۇرما سانلىق مەلۇمات باشلىنىش مەغلۇپ بولدى: $error';
  }

  @override
  String get solution_steps => 'چەرىلەش چارىسى:';

  @override
  String get solution_step_1 => '1. 程式نى چىقىرىپ قايتا قاچىلاڭ';

  @override
  String get solution_step_2 => '2. ياكى ئەپ سانلىق مەلۇماتنى تازىلاش';

  @override
  String get solution_step_3 =>
      '3. ياكى resetDatabaseOnStart نى true غا تەڭشەپ قايتا ئىشقا قوزغاتىڭ';

  @override
  String notification_service_init_failed(String error) {
    return 'ئەسكەرتىش مۇلازىمىتى باشلىنىشتىكى مەغلۇپ بولدى: $error';
  }

  @override
  String check_calendar_account_failed(String error) {
    return 'تاغىلىق ھېساباتىنى تېكشۈرۈش مەغلۇپ بولدى: $error';
  }

  @override
  String create_calendar_failed(String error) {
    return 'كالېندار قۇرۇش مەغلۇب بولدى: $error';
  }

  @override
  String add_calendar_event_failed(String error) {
    return 'تاغىلىق تەرەپتە كۈندەلىك ۋەقە قوشۇش مەغلۇپ بولدى: $error';
  }

  @override
  String delete_calendar_event_failed(String error) {
    return 'تاغىلىق تەرەپتىن كۈن تۈزۈلمە ۋەقەسىنى ئۆچۈرۈش مەغلۇپ بولدى: $error';
  }

  @override
  String set_permission_message_failed(String error) {
    return 'ھوقۇق بەلگىلەش تېكىستى ئۇقتۇرۇشى مەغلۇپ بولدى: $error';
  }

  @override
  String mock_data_init_success(int count) {
    return 'مۇۋاپىققىيەتلىك ھالدا $count نۇمۇر سىنىما ئۇچۇرلىرىنى ئىلگىرى سۈرۈلدى';
  }

  @override
  String database_has_data(int count) {
    return 'سانلىق مەلۇماتlar بېلىگىسىدە $count مەلۇمات بار، ئەڭگەر مەلۇمات باشلانغۇچلاندۇرۇشتا ئۆتۈپ ئىلگىرىلە';
  }

  @override
  String get database_structure_mismatch =>
      'مەنبە سانلىق مەلۇماتقا ماس كەلمەسلىك بولۇشى مۇمكىن، قوللىنىشچى سانلىق مەلۇماتىنى تازىلاش ياكى قايتا قاچىلىشنى تەۋسىيە قىلىمىز';

  @override
  String get old_database_deleted =>
      'كۆنكى سانلىق مەلۇمات بېكىتىش ھۆججىتى ئۆچۈرلدى';

  @override
  String get backup_data_empty => 'زاپاس ئۇچۇرى بوش';

  @override
  String get backup_file_not_found => 'زاپاس ھۆججەت موجود ئەمەس';

  @override
  String file_not_utf8(String error) {
    return 'ھۆججەت كودلىمىسى دەلى UTF-8 فارماتىدا ئەمەس. ھۆججەتنىڭ UTF-8 كودلىمىسىدا ساقلانغانلىقىغا كاپالەتلىك قىلىڭ. خاتالىق تەپسىلاتلىرى: $error';
  }

  @override
  String file_not_found(String filePath) {
    return 'ھۆججەت مەۋجۇت ئەمەس: $filePath';
  }

  @override
  String file_empty(String filePath) {
    return 'ھۆججەت بوش: $filePath';
  }

  @override
  String get file_content_empty =>
      'ھۆججەت مەزمۇنى كودىدىن ئېرىشىلگەندىن كېيىن بوش، مۇمكىن كودلاش ماس كەلمەسلىك';

  @override
  String field_cannot_be_empty(String fieldName) {
    return '$fieldName بوش بولالمايدۇ';
  }

  @override
  String field_min_length(String fieldName, int minLength) {
    return '$fieldName ئۇزۇنلۇقى $minLength خەتتىن ئاز بولالمايدۇ';
  }

  @override
  String field_max_length(String fieldName, int maxLength) {
    return '$fieldName ئۇزۇنلۇقى $maxLength خاراكتېرنى ئاشالمىسىز';
  }

  @override
  String field_invalid_email(String fieldName) {
    return 'ئەڭ مۆۋاپىق $fieldName ئادرېسنى كىرگۈزۈڭ';
  }

  @override
  String field_invalid_number(String fieldName, String numberType) {
    return '$fieldName $numberType بولۇشى كېرەك';
  }

  @override
  String field_min_value(String fieldName, double min) {
    return '$fieldName $min دىن كىچىك بولالمايدۇ';
  }

  @override
  String field_max_value(String fieldName, double max) {
    return '$fieldName $max دىن چوڭ بولالمайды';
  }

  @override
  String field_positive_integer(String fieldName) {
    return '$fieldName مۇستەھكەم توق سان بولۇشى كېرەك';
  }

  @override
  String field_greater_than_zero(String fieldName) {
    return '$fieldName 0 دىن چوڭ بولۇشى كېرەك';
  }

  @override
  String field_positive_number(String fieldName) {
    return '$fieldName مۇسبەت سان بولۇشى كېرەك';
  }

  @override
  String field_invalid_date(String fieldName) {
    return 'قۇلىقىدىكى$fieldNameنى كىرگۈزۈڭ';
  }

  @override
  String field_date_not_past(String fieldName) {
    return '$fieldName ئۆتكەن كۈندىن بولالمايدۇ';
  }

  @override
  String field_date_not_before(String fieldName, String minDate) {
    return '$fieldName $minDate دىن بۇرۇن بولالمايدۇ';
  }

  @override
  String field_date_not_after(String fieldName, String maxDate) {
    return '$fieldName $maxDate دىن كېچى بولماسلىقى كېرەك';
  }

  @override
  String field_invalid_value(String fieldName) {
    return 'ئىجازەتلىك $fieldName نى كىرگۈزۈڭ';
  }

  @override
  String password_min_length(String fieldName) {
    return '$fieldName ئۇزۇنلۇقى 8 خەتتىن تېمەسلىكى كېرەك';
  }

  @override
  String password_uppercase_required(String fieldName) {
    return '$fieldName ئەڭ ئازلىقى بىلەن بىر چوڭ ھەرپنى ئۆز ئىچىگە ئالغان بولۇشى كېرەك';
  }

  @override
  String password_lowercase_required(String fieldName) {
    return '$fieldName ئەڭ ئازلىقى بىلەن بىر كىچىك ھەرپنى ئۆز ئىچىگە ئالغان بولۇشى كېرەك';
  }

  @override
  String password_digit_required(String fieldName) {
    return '$fieldName ئەتەڭ دەڭگىدىن بىرى ساننى ئۆز ئىچىگە ئالغان بولۇشى كېرەك';
  }

  @override
  String password_special_char_required(String fieldName) {
    return '$fieldName ئەڭ ئاز بىر خاس خەتنى ئۆز ئىچىگە ئالۇشى مۇھىم';
  }

  @override
  String get passwords_not_match => 'ئىككى قېتىم كىرگۈزگەن پارول ماس كەلمىدى';

  @override
  String get item_name_cannot_be_empty => 'ھەرىكەت نامى بوش قالالمىيدۇ';

  @override
  String name_max_length(int maxLength) {
    return 'ئات نامى $maxLength خەتتىدىن ئارتۇق بولماسلىقى كېرەك';
  }

  @override
  String quantity_min(int minQuantity) {
    return 'مىقدارى $minQuantity دەندە كىچىك بولالمайды';
  }

  @override
  String quantity_max(int maxQuantity) {
    return 'سانى $maxQuantity دىن ئاشماسلىقى كېرەك';
  }

  @override
  String get unit_price_not_negative => 'بىرلىك باھاسى منپى بولالمайды';

  @override
  String unit_price_max(double maxUnitPrice) {
    return 'بىرلىكىنىڭ باھاسى $maxUnitPrice دىن ئېشىپ كەتمەسلىكى كېرەك';
  }

  @override
  String get set_production_expiry_for_validity =>
      'ئەسلى ئىشلەپچىقىرىش كۈنى ۋە ساقلاش مۇددىتىنى تەڭشەپ، ھەقىقىي مۇددىتىنى ئاپتوماتىك ھېسابلاڭ';

  @override
  String get set_purchase_warranty_for_validity =>
      'توراپ بېسىش ۋاقتى ۋە ساقلاش مۇددىتىنى بەلگىلەپ، كاپالەت مۇددىتىنى ئاپتوماتىك ھېسابلاڭ';

  @override
  String get calendar_account_creation_failed =>
      'تاقۋىم ھېساباتنى قۇرۇپ بولمىدى، سىستېما تاقۋىم تەڭشەكلىرىنى تەكشۈرۈپ بېقىڭ';

  @override
  String get test_notification => 'سىناش ئۇقتۇرىشى';

  @override
  String get test_notification_description =>
      'بۇ بىر سىناقتىكى ئۇقتۇرۇش بولۇپ، يەرلىك ئەسكەرتمە ئىقتىدارىنى تەكشۈرۈش ئۈچۈن ئىشلىتىلىدۇ';

  @override
  String get day_unit => 'تەبىئەت';

  @override
  String days_with_value(int days) {
    return '$days كۈن';
  }

  @override
  String get item_saved => 'مال ساقلانغان';

  @override
  String get item_updated => 'مال يېڭىلاندى';

  @override
  String get item_added => 'مال قوشۇلدى';

  @override
  String get save_success => 'مۇۋەپپەقىيەتلىك ساقلاندى';

  @override
  String get update_success => 'يېڭىلانغاندا مۇۋاپىقىيەتلىك بولدى';

  @override
  String get delete_success => 'ئۆچۈرۈش مۇۋەپپىقىيەتلىك بولدى';

  @override
  String get save_failed => 'ساقلاش مەغلۇپ بولدى';

  @override
  String get update_failed => 'يېڭىلانمىدى';

  @override
  String get delete_failed => 'ئۆچۈرۈش مەغلۇپ بولدى';
}
