// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Assamese (`as`).
class AppLocalizationsAs extends AppLocalizations {
  AppLocalizationsAs([String locale = 'as']) : super(locale);

  @override
  String get app_name => 'সঁচা বস্তু সংৰক্ষণ কৰিবৰ ঠাই';

  @override
  String get cancel => 'বাতিল কৰক';

  @override
  String get confirm => 'নিশ্চিত';

  @override
  String get save => 'সংৰক্ষণ কৰক';

  @override
  String get delete => 'মচি পেলোৱা';

  @override
  String get edit => 'সম্পাদনা কৰক';

  @override
  String get add => 'যোগ কৰক';

  @override
  String get edit_item => 'বস্তু সম্পাদনা কৰক';

  @override
  String get add_item => 'বস্তু যোগ কৰক';

  @override
  String get search => 'সন্ধান কৰক';

  @override
  String get settings => 'সেটিংছ';

  @override
  String get language_settings => 'ভাষা ছেটিং';

  @override
  String get language_settings_description =>
      'এপ্লিকেশ্যনৰ প্ৰদৰ্শন ভাষা সন্তুলিত কৰা';

  @override
  String get system_default => 'প্ৰণালী ডিফল্ট';

  @override
  String get use_system_language => 'প্ৰণালী ভাষা ব্যৱহাৰ কৰা';

  @override
  String get language_change_hint =>
      'ভাষা পৰিৱৰ্তন এপ্লিকেশ্যন পুনৰ আৰম্ভ কৰাৰ পিছতে কাৰ্যকৰী হ\'ব';

  @override
  String get back => 'পিছলৈ উভতি যা';

  @override
  String get next => 'পৰবৰ্তী পৰ্যায়';

  @override
  String get done => 'সंपূৰ্ণ';

  @override
  String get loading => 'লোড হৈ আছে...';

  @override
  String get error => 'ভুল';

  @override
  String get success => 'সফলতা';

  @override
  String get warning => 'সতৰ্কবাণী';

  @override
  String get info => 'সুচনা';

  @override
  String get select_alert_days => 'স্মৰণৰ দিনসমূহ বাছনি কৰক';

  @override
  String get custom => 'নিজৰ মতে নিৰ্ধাৰণ কৰা';

  @override
  String custom_days(int days) {
    return 'স্ব-নির্ধাৰিত ($days দিন)';
  }

  @override
  String current_selection(int days) {
    return 'বৰ্তমান বাচনি: $days দিন';
  }

  @override
  String alert_days_range(int min, int max) {
    return 'সাৱধানবাণীৰ দিনৰ সীমা: $min-$max দিন';
  }

  @override
  String get enter_days => 'অনুগ্ৰহণৰ দিনবোৰ প্ৰৱিষ্ট কৰক';

  @override
  String get days => 'দিনৰ সংখ্যা';

  @override
  String enter_valid_days(int min, int max) {
    return 'অনুগ্ৰহ কৰি $min-$max ৰ মাজৰ সংখ্যাটো লিখক';
  }

  @override
  String get alert_settings => 'সতৰ্ক সংকেত ব্যৱস্থা';

  @override
  String get calendar_settings => 'পঞ্জিকা ছেটিংস';

  @override
  String get calendar_sync => 'পঞ্জিকা সমন্বয়';

  @override
  String get calendar_sync_desc =>
      'চালু কৰাৰ পাছত কৰিব কেলেণ্ডাৰৰ অনুমতি বিনয়';

  @override
  String get add_test_calendar_event => 'পৰীক্ষা কেলেণ্ডাৰ ঘটনাৰ যোগ কৰক';

  @override
  String get enable_calendar_sync_first =>
      'অনুগ্ৰহ কৰি প্ৰথমে \"কেলেণ্ডাৰ সমন্বয়\" সুইচ খোলক';

  @override
  String get app_alert_settings => 'এপ্লিকেছন সতর্কতা ছেটিংছ';

  @override
  String get local_alerts => 'স্থানীয় স্মৰণ';

  @override
  String get local_alerts_desc =>
      'সক্রিয় কৰাৰ পাছত এপ্লিকেশ্যন ভিতৰত মেয়াদ উকলাৰ সতৰ্কবাণী গ্ৰহণ কৰক';

  @override
  String get send_test_notification => 'পৰীক্ষা সঁচলিত বাৰ্তা প্ৰেৰণ কৰক';

  @override
  String get enable_local_alerts_first =>
      'অনুগ্ৰহ কৰি প্ৰথমে \"স্থানীয় স্মৰণ\" চুইচ খোলক';

  @override
  String get alert_days_settings => 'স্মৰণৰ দিনসমূহৰ ছেটিং';

  @override
  String get advance_alert_days => 'পূৰ্বে স্মৰণ কৰোৱাৰ দিনসমূহ';

  @override
  String get advance_alert_days_desc =>
      'কিমান দিন আগেয়ে বস্তুৰ মেয়াদ শেষ হ\'ব বা নিশ্চয়তাৰ সমাপ্তি হোৱা বাবে স্মৰণীয় কৰিব তেন্তে নিৰ্ধাৰণ কৰক';

  @override
  String get calendar_permission_request => 'পঞ্জিকা অনুমতি অনুৰোধ';

  @override
  String get calendar_permission_desc =>
      'আইটেম সন্ত্ৰাসসমূহ একত্ৰীকৰণ কৰিবলৈ কেলেণ্ডাৰ অনুমতি প্ৰয়োজন। অনুমতি দিবনে?';

  @override
  String get allow => 'অনুমতি দিয়া';

  @override
  String get calendar_permission_granted =>
      'পঞ্জিকা অনুমতি দিয়া হৈছে, পঞ্জিকা সমন্বয় আৰম্ভ হৈছে';

  @override
  String get calendar_permission_denied =>
      'পঞ্জিকা অনুমতি অস্বীকৃত, পঞ্জিকা সমন্বয় আৰম্ভ কৰিব নোৱাৰি';

  @override
  String get calendar_permission_permanently_denied =>
      'অনুমতি স্থায়ীভাৱে বিৰত কৰা হৈছে';

  @override
  String get calendar_permission_permanently_denied_desc =>
      'কালেণ্ডাৰৰ অনুমতি স্থায়ীভাৱে নাকচ কৰা হৈছে, অনুগ্ৰহ কৰি প্ৰণালী ব্যৱস্থাত হাতৰে অনুমতি খোলক।';

  @override
  String get go_to_settings => 'ছেটিংছলৈ যাওক';

  @override
  String get calendar_account_failed =>
      'কেলেণ্ডাৰ অনুমতি দিয়া হৈছে, কিন্তু কেলেণ্ডাৰ একাউণ্ট সৃষ্টি কৰিব নোৱাৰি। অনুগ্ৰহ কৰি প্ৰণালী কেলেণ্ডাৰ ছেটিংচ পৰীক্ষা কৰক';

  @override
  String get calendar_account_created =>
      'পঞ্জিকা অনুমতি প্ৰদান কৰা হৈছে, স্থানীয় পঞ্জিকা একাউণ্ট সৃষ্টি কৰা হৈছে';

  @override
  String get calendar_account_creating =>
      'পঞ্জিকা একাউণ্ট সফলভাৱে সৃষ্টি হৈছে, কিন্তু প্ৰণালীটোৱে কাৰ্যকৰী হ\'বলৈ কিছু সময় লাগিব পাৰে';

  @override
  String get test_calendar_event_added => 'পৰীক্ষা কেলেণ্ডাৰ ঘটনাৰ সংযোজন সফল';

  @override
  String get test_calendar_event_failed =>
      'পৰীক্ষা কেলেণ্ডাৰ অনুষ্ঠান যোগ কৰিবলৈ ব্যৰ্থ, দয়া কৰি কেলেণ্ডাৰ ছেটিং চাওক';

  @override
  String get calendar_permission_required =>
      'পৰীক্ষা অনুষ্ঠান যোগ কৰিবলৈ কেলেণ্ডাৰ অনুমতিৰ প্ৰয়োজন';

  @override
  String get test_notification_sent => 'পৰীক্ষা বিজ্ঞাপন প্ৰেৰণ কৰা হৈছে';

  @override
  String test_notification_failed(String error) {
    return 'পৰীক্ষা অৱগতি প্ৰেৰণ ব্যৰ্থ: $error';
  }

  @override
  String get notification_permission_required =>
      'স্থানীয় স্মৰণ কৰিবৰ বাবে অৱগতিপ্ৰাপ্তিৰ অনুমতি প্ৰয়োজন';

  @override
  String operation_failed(String error) {
    return 'কৰ্ম সম্পাদন বিফল: $error';
  }

  @override
  String get notification_channel_name => 'বস্তু সতৰ্কবাণী সূচনা';

  @override
  String get notification_channel_description =>
      'পণ্যৰ মেয়াদ শেষ হোৱাৰ বা গাৰাণ্টীৰ শেষ হোৱাৰ সতৰ্কবাণী';

  @override
  String get item_category_food => 'খাদ্য';

  @override
  String get item_category_daily_necessities => 'দৈনন্দিন ব্যৱহাৰৰ সামগ্ৰী';

  @override
  String get item_category_cosmetics => 'সৌন্দৰ্যসামগ্ৰী';

  @override
  String get item_category_medicine => 'ষাঁই';

  @override
  String get item_category_electronics => 'বৈদ্যুতিন সামগ্ৰী';

  @override
  String get item_category_furniture => 'সাজসজ্জা';

  @override
  String get item_category_clothing => 'পোছাক';

  @override
  String get item_category_books => 'বই';

  @override
  String get item_category_other => 'অন্যান্য';

  @override
  String get purchase_channel_online_mall => 'অনলাইন ষ্ট’ৰ';

  @override
  String get purchase_channel_physical_store => 'স্থাপন দোকান';

  @override
  String get purchase_channel_supermarket => 'চুপাৰমাৰ্কেট';

  @override
  String get purchase_channel_specialty_store => 'স্পেচিয়েলিটি ষ্ট\'ৰসমূহ';

  @override
  String get purchase_channel_secondhand_market => 'দ্বিতীয়-হস্ত বজাৰ';

  @override
  String get purchase_channel_other => 'অন্যান্য';

  @override
  String get default_category => 'অন্যান্য';

  @override
  String get default_purchase_channel => 'অনলাইন ষ্ট’ৰ';

  @override
  String get item_category => 'বস্তুৰ শ্ৰেণীবিভাজন';

  @override
  String get custom_category => 'নিজৰ নিৰ্ধাৰিত শ্ৰেণীবিভাজন';

  @override
  String get backup_data => 'ডাটা বেকআপ';

  @override
  String get backup_data_description =>
      'সকলো ডাটা (ছবিসহ) ZIP ফাইল হিচাপে পেক কৰি বেকআপ কৰা';

  @override
  String get backup_all_data => 'সমগ্ৰ তথ্যৰ পাছত সংৰক্ষণ কৰক';

  @override
  String get backup_success => 'বেকআপ সফল';

  @override
  String backup_failed(String error) {
    return 'বেকআপ বিফল: $error';
  }

  @override
  String get restore_data => 'ডাটা পুণৰুদ্ধাৰ কৰক';

  @override
  String get restore_data_description =>
      'ZIP বেছৰা নথি পৰা সকলো ডাটা পুনৰুদ্ধাৰ কৰক';

  @override
  String get export_data => 'ডাটা এক্সপৰ্ট কৰক';

  @override
  String get export_data_description => 'CSV, TXT, SQL ফৰ্মেটত এক্সপৰ্ট কৰা';

  @override
  String get import_data => 'ডাটা আমদানি কৰা';

  @override
  String get import_data_description =>
      'CSV, TXT, SQL ফাইলৰ পৰা ডাটা আমদানি কৰা';

  @override
  String get alert_settings_description =>
      'পঞ্জিকা স্মৰণ আৰু এপ্ পুশ স্মৰণ সে‌টিংচ';

  @override
  String get about => 'সন্দৰ্ভত';

  @override
  String get about_description => 'আবেদন তথ্য আৰু সংস্কৰণ';

  @override
  String get select_backup_file_first =>
      'দয়া কৰি প্ৰথমে বেকআপ ফাইলটো বাছনি কৰক';

  @override
  String get confirm_restore => 'পুনৰুদ্ধাৰ নিশ্চিত কৰক';

  @override
  String get confirm_restore_message =>
      'বেকআপ পুনৰুদ্ধাৰ কৰিলে সকলো বৰ্তমান ডাটা মচি পেলাব আৰু বেকআপ ডাটাৰে সলনি কৰিব, এই কাৰ্য অপৰিবর্তনীয়। আপুনি আগবঢ়াব খুজিছে নে?';

  @override
  String get confirm_again => 'পুনৰ নিশ্চিত কৰা';

  @override
  String get confirm_restore_warning =>
      'আপুনি নিশ্চিতনে যে সকলো বৰ্তমান ডাটা ৰাজহুৱা কৰি সংৰক্ষণ পুনৰুদ্ধাৰ কৰিব? এই কাৰ্য্যটো পুনৰুদ্ধাৰ কৰিব নোৱাৰি!';

  @override
  String get confirm_restore_button => 'পুনৰুদ্ধাৰ নিশ্চিত কৰক';

  @override
  String restore_success(int count) {
    return 'পুনৰুদ্ধাৰ সফল, মুঠ $count টা সামগ্ৰী';
  }

  @override
  String restore_failed(String error) {
    return 'পুনৰুদ্ধাৰ বিফল: $error';
  }

  @override
  String get select_backup_file => 'বেকআপ ফাইল বাছনি কৰক';

  @override
  String get restore_backup => 'বেকআপ পুনৰুদ্ধাৰ কৰক';

  @override
  String selected_file(String filename) {
    return 'নিৰ্বাচিত নথি: $filename';
  }

  @override
  String get export_success => 'ডেটা সফলতাৰে ৰপ্তানি কৰা হৈছে';

  @override
  String export_failed(String error) {
    return 'নির্যাস সফল নহ\'ল: $error';
  }

  @override
  String get format_csv => 'CSV';

  @override
  String get format_txt => 'TXT';

  @override
  String get format_sql => 'SQL';

  @override
  String get duplicate_data_handling => 'পুনৰাবৃত্তি ডাটা প্ৰসেসিং';

  @override
  String get duplicate_data_detected =>
      'পুনৰাবৃত্ত তথ্য পোৱা গ\'ল, অনুগ্ৰহ কৰি প্ৰক্ৰিয়া ব্যৱস্থা বাছনি কৰক:';

  @override
  String get skip => 'উৰ্তাই যাব';

  @override
  String get overwrite => 'আৱৰণ';

  @override
  String get skip_all => 'সকলো এৰি দিয়া';

  @override
  String get overwrite_all => 'সৰ্বত্ৰ আৱৰণ';

  @override
  String get select_import_format_first =>
      'দয়া কৰি প্ৰথমে আমদানি ফৰ্মেট বাছনি কৰক';

  @override
  String get confirm_import => 'আমদানি নিশ্চিত কৰক';

  @override
  String get confirm_import_message =>
      'ডাটা ইম্পোৰ্ট কৰাটো বিদ্যমান ডাটাক আৱৰণ কৰিব, এই কাৰ্য অপ্রত্যাহাৰযোগ্য। আপুনি আগবাঢ়ি যাব বিচাৰে নেকি?';

  @override
  String import_success(int count) {
    return 'ডেটা আমদানি সফল, মুঠ $countটা বস্তু আমদানি হৈছে';
  }

  @override
  String import_failed(String error) {
    return 'আমদানি বিফল: $error';
  }

  @override
  String get select_file => 'ফাইল নিৰ্বাচন কৰক';

  @override
  String get no_data => 'তথ্য নাই';

  @override
  String get no_data_description =>
      'বৰ্তমান কোনো তথ্য নাই, তলত থকা বুটামটোত ক্লিক কৰি প্ৰথমটো ৰেকৰ্ড সংযোজন কৰক!';

  @override
  String get load_failed => 'লোড কৰিবলৈ বিফল';

  @override
  String get load_failed_description =>
      'ডাটা লোড কৰিব পৰা হোৱা নাই, অনুগ্ৰহ কৰি নেটৱৰ্ক সংযোগ পৰীক্ষা কৰি পুনৰ চেষ্টা কৰক';

  @override
  String get retry => 'পুনৰ চেষ্টা কৰক';

  @override
  String get network_connection_failed => 'নেটৱৰ্ক সংযোগ বিফল';

  @override
  String get network_connection_failed_description =>
      'অনুগ্ৰহ কৰি নেটৱৰ্ক সংযোগ পৰীক্ষা কৰি পুনৰ চেষ্টা কৰক';

  @override
  String get no_results => 'ফলাফল নোপোৱা গল';

  @override
  String get no_results_description =>
      'অন্য কীৱৰ্ড ব্যৱহাৰ কৰি চাবলৈ চেষ্টা কৰক';

  @override
  String get clear_search => 'সন্ধান মচি পেলোৱা';

  @override
  String get insufficient_permission => 'অনুমতি অৱাঞ্চিত';

  @override
  String get insufficient_permission_description =>
      'এই ফাংশন ব্যৱহাৰ কৰিবলৈ প্ৰয়োজনীয় অনুমতি আৱশ্যক';

  @override
  String get request_permission => 'অনুমতি অনুৰোধ কৰা';

  @override
  String get app_info => 'এপ্লিকেশ্যন তথ্য';

  @override
  String get version => 'সংস্কৰণ';

  @override
  String get developer => 'উন্নয়নকাৰী';

  @override
  String get device_info => 'সঁজুলি তথ্য';

  @override
  String get device_model => 'উপকৰণ মডেল';

  @override
  String get brand => 'ব্ৰেণ্ড';

  @override
  String get device_name => 'সঁজুলিৰ নাম';

  @override
  String get product => 'উৎপাদ';

  @override
  String get hardware => 'হাৰ্ডৱেৰ';

  @override
  String get android_version => 'এنډ্ৰইড সংস্কৰণ';

  @override
  String get sdk_version => 'SDK সংস্কৰণ';

  @override
  String get system_name => 'প্ৰণালীৰ নাম';

  @override
  String get operating_system => 'অপাৰেটিং চিষ্টেম';

  @override
  String get system_version => 'প্ৰণালী সংস্কৰণ';

  @override
  String get dart_version => 'Dart সংস্কৰণ';

  @override
  String get device_identifier => 'সঁজুলিৰ পৰিচয়';

  @override
  String get computer_name => 'কম্পিউটাৰৰ নাম';

  @override
  String get build_number => 'সংস্কৰণ নম্বৰ';

  @override
  String error_getting_device_info(String error) {
    return 'যন্ত্ৰ তথ্য লাভ কৰিব নোৱাৰি: $error';
  }

  @override
  String get features => 'কাৰ্য্য পৰিচয়';

  @override
  String get app_description => 'বুদ্ধিমান সামগ্ৰী ব্যৱস্থাপনা আবেদন';

  @override
  String get app_description_detail =>
      'আপোনাৰ সামগ্ৰীৰ মেয়াদ শেষ হ\'বলৈ থকা তাৰিখ, ৱাৰেন্টীৰ তাৰিখ আদি তথ্য ব্যৱস্থাপনা কৰিবলৈ সহায় কৰে আৰু বুদ্ধিমান সতৰ্কবাণীৰ সুবিধা প্ৰদান কৰে।';

  @override
  String get consumable => 'ব্যয়্য সামগ্ৰী';

  @override
  String get durable => 'টেকসই সামগ্ৰী';

  @override
  String get sort => 'কৰ্মসূচী';

  @override
  String get name_asc => 'নামৰ অৰ্ডাৰ অনুসৰি';

  @override
  String get name_desc => 'নাম অৱনম্বৰ';

  @override
  String get date_asc => 'তাৰিখৰ অৰ্দ্ধসাৰিত';

  @override
  String get date_desc => 'তাৰিখ অৱনম্বৰ অনুক্ৰম';

  @override
  String get price_asc => 'একক মূল্য ঊর্ধ্বক্রম';

  @override
  String get price_desc => 'একক মূল্য অৱৰোহক্রমে';

  @override
  String get quantity_asc => 'পৰিমাণ অনুসৰি ঊর্ধ্বমুখী';

  @override
  String get quantity_desc => 'পৰিমাণ অনুসৰি অৱনমিত';

  @override
  String get total_price_asc => 'মুঠ মূল্য বৃদ্ধিৰ অনুসৰা';

  @override
  String get total_price_desc => 'মুঠ মূল্য অৱনমিত ক্রমানুসাৰে';

  @override
  String get clear_all_filters => 'সকলো ফিল্টাৰ আঁতৰাও';

  @override
  String get scan_barcode => 'স্কেন কৰি গোডাউনত প্ৰৱেশ কৰক';

  @override
  String get search_items => 'বস্তু সন্ধান কৰক...';

  @override
  String get no_items => 'সামগ্ৰীৰ অভাৱ';

  @override
  String get no_items_description =>
      'তলৰ বুটামটোত ক্লিক কৰি প্ৰথমটো বস্তু যোগ কৰক';

  @override
  String get expired => 'সময়সীমা পাৰ হৈ গ\'ল';

  @override
  String get expiring_soon => 'সোনকালতেই মেয়াদ শেষ হব';

  @override
  String get warranty_expired => 'ৱাৰেণ্টীৰ মেয়াদ শেষ হৈছে';

  @override
  String get warranty_expiring_soon => 'ৱাৰেণ্টীৰ মেয়াদ অন্তিম হৈ আহিছে';

  @override
  String days_remaining(int count) {
    return 'অৱশিষ্ট $count দিন';
  }

  @override
  String expired_days_ago(int count) {
    return 'প্ৰৱেশাধিকার_$count দিন অতিক্ৰম হৈছে';
  }

  @override
  String get delete_item => 'বস্তু মচি পেলোৱা';

  @override
  String delete_item_confirm(String name) {
    return 'আপুনি nিশ্চিত যে \"$name\" মচি পেলাব বিচাৰে নেকি?';
  }

  @override
  String get item_deleted => 'বস্তুটো মচি দিয়া হৈছে';

  @override
  String get failed_to_delete => 'মচি পেল নাই';

  @override
  String failed_to_delete_message(String error) {
    return 'বস্তুটো মচি পেলাব নোৱাৰি: $error';
  }

  @override
  String get date_range_filter => 'তাৰিখ সীমা ছাঁটনি';

  @override
  String get price_range_filter => 'মূল্য সীমা বাছনি';

  @override
  String get my_items => 'মোৰ সামগ্ৰী';

  @override
  String get click_fab_to_add_item => 'ঠেৰাৰ ডাঙৰ বুটামত টিপি সামগ্ৰী যোগ কৰক';

  @override
  String get confirm_delete => 'মচি পেলোৱাটো নিশ্চিত কৰক';

  @override
  String get filter_options => 'বাছনি বিকল্পসমূহ';

  @override
  String get filter_by_type_category_location =>
      'আইটেমসমূহক ধৰণ, শ্ৰেণী আৰু স্থান অনুসৰি বাছনি কৰক';

  @override
  String categories_count(int count) {
    return '$count খন শ্ৰেণী';
  }

  @override
  String get all_categories => 'সকল শ্ৰেণী';

  @override
  String get no_category_data => 'অস্থায়ীভাৱে শ্ৰেণীবদ্ধ তথ্য নাই';

  @override
  String get storage_location => 'সংগ্ৰহস্থল';

  @override
  String locations_count(int count) {
    return '$count খন স্থান';
  }

  @override
  String get all_locations => 'সকল স্থান';

  @override
  String get no_location_data => 'অস্থায়ীভাৱে স্থান ডাটা উপলব্ধ নহয়';

  @override
  String get date_range => 'তাৰিখ সীমা';

  @override
  String get select_date_range => 'তাৰিখৰ সীমা নিৰ্বাচন কৰক';

  @override
  String get price_range => 'মূল্য সীমা';

  @override
  String get unit_price_range => 'একক মূল্যৰ পৰিসৰ';

  @override
  String get min_unit_price => 'সৰ্বনিম্ন একক মূল্য';

  @override
  String get max_unit_price => 'সৰ্বাধিক একক মূল্য';

  @override
  String get total_price_range => 'মুঠ মূল্য পৰিসৰ';

  @override
  String get min_total_price => 'সৰ্বনিম্ন মুঠ মূল্য';

  @override
  String get max_total_price => 'সৰ্বাধিক মুঠ মূল্য';

  @override
  String get clear_price_filter => 'মূল্য পৰিস্ফুটন মচি পেলাওক';

  @override
  String get place_barcode_in_frame => 'বারকোডটো বক্সৰ ভিতৰত ৰাখি স্কেন কৰক';

  @override
  String get item_already_exists => 'বস্তু ইতিমধ্যে আছে';

  @override
  String barcode_with_value(String barcode) {
    return 'বাৰক\'ডঃ $barcode';
  }

  @override
  String name_with_value(String name) {
    return 'নাম: $name';
  }

  @override
  String category_with_value(String category) {
    return 'শ্ৰেণী: $category';
  }

  @override
  String current_quantity_with_value(String quantity, String unit) {
    return 'বৰ্তমান পৰিমাণ: $quantity$unit';
  }

  @override
  String get please_select_operation => 'অনুগ্ৰহ কৰি কাৰ্য নিৰ্বাচন কৰক:';

  @override
  String get outbound => 'বাহিৰ কৰাৰ বাবে';

  @override
  String get inbound => 'গুদামত সোমোৱা';

  @override
  String get inbound_quantity => 'গুদামত সঠাটো পৰিমাণ';

  @override
  String get outbound_quantity => 'বাহিৰ কৰা পৰিমাণ';

  @override
  String get quantity => 'পৰিমাণ';

  @override
  String get enter_inbound_quantity =>
      'অনুগ্ৰহ কৰি ষ্টকত যোগ দিয়া পৰিমাণটো প্ৰৱিষ্ট কৰক';

  @override
  String get enter_outbound_quantity => 'দয়া কৰি ওঠাটো পৰিমাণ লিখক';

  @override
  String delete_item_confirm_with_irreversible(String name) {
    return 'আপুনি কি “$name” মচিবই বিচাৰে? এই কাৰ্য অপ্রত্যাহাৰযোগ্য।';
  }

  @override
  String get database_reset =>
      'ডাটাবেছ পুনঃসেট কৰা হৈছে, টেবুলৰ গঠন পুনৰ সৃষ্টি কৰা হ\'ব';

  @override
  String database_reset_error(String error) {
    return 'ডাটাবেইচ পুনঃস্থাপন কৰাৰ সময়ত ত্ৰুটি হৈছে: $error';
  }

  @override
  String mock_data_init_failed(String error) {
    return 'নকল তথ্য আৰম্ভণি বিফল: $error';
  }

  @override
  String get solution_steps => 'সমাধান:';

  @override
  String get solution_step_1 => '১. এপ্লিকেচন আনইনষ্টল কৰি পুনৰ স্থাপন কৰক';

  @override
  String get solution_step_2 => '2. বা এপ্লিকেশ্যনৰ ডাটা মচি পেলাও';

  @override
  String get solution_step_3 =>
      '3. অথবা resetDatabaseOnStart true ৰূপে স্থাপন কৰি পুনৰ চলাওক';

  @override
  String notification_service_init_failed(String error) {
    return 'স্মৰণ সূৱাৱনী সেৱা আৰম্ভ কৰাটো ব্যৰ্থ হৈছে: $error';
  }

  @override
  String check_calendar_account_failed(String error) {
    return 'কেলেণ্ডাৰ একাউণ্ট পৰীক্ষাৰ ব্যৰ্থতা: $error';
  }

  @override
  String create_calendar_failed(String error) {
    return 'পঞ্জিকা সৃষ্টি কৰিব পৰা নগ\'ল: $error';
  }

  @override
  String add_calendar_event_failed(String error) {
    return 'কেলেণ্ডাৰ ঘটনা যোগ কৰাত ব্যাৰ্থ: $error';
  }

  @override
  String delete_calendar_event_failed(String error) {
    return 'পঞ্জিকা অনুষ্ঠান মচাত ব্যৰ্থ: $error';
  }

  @override
  String set_permission_message_failed(String error) {
    return 'অনুমতি সূচনা বাৰ্তা নিৰ্ধাৰণত ব্যৰ্থ: $error';
  }

  @override
  String mock_data_init_success(int count) {
    return 'সফলভাৱেই প্ৰাৰম্ভ কৰা হৈছে $count টা অনুকৰণ তথ্য';
  }

  @override
  String database_has_data(int count) {
    return 'ডেটাবেছত ইতিমধ্যে $count টা ডাটা আছে, ছিমুলেশ্যন ডাটা আৰম্ভণি এৰাই দিয়া হ\'ল';
  }

  @override
  String get database_structure_mismatch =>
      'সম্ভৱত ডেটাবেছৰ গঠন মিল নহয়, এপ্লিকেচনৰ তথ্য মচি পেলোৱা বা পুনৰ স্থাপন কৰাৰ পৰামৰ্শ দিয়া হৈছে';

  @override
  String get old_database_deleted => 'পুৰণি ডাটাবেছ ফাইল মচি দিয়া হৈছে';

  @override
  String get backup_data_empty => 'বেকআপ ডাটা খালী';

  @override
  String get backup_file_not_found => 'বেকআপ ফাইলটো উপস্থিত নাছিল';

  @override
  String file_not_utf8(String error) {
    return 'ফাইল সংকেতকরণ বৈধ UTF-8 য়ে নে। অনুগ্ৰহ কৰি নিশ্চিত কৰক যে ফাইলটো UTF-8 সংকেতকৰণ ব্যৱহাৰ কৰি সংৰক্ষণ কৰা হৈছে। ভুলৰ বিৱৰণ: $error';
  }

  @override
  String file_not_found(String filePath) {
    return 'ফাইলটো অস্তিত্ব নাথাকে: $filePath';
  }

  @override
  String file_empty(String filePath) {
    return 'ফাইল খালী: $filePath';
  }

  @override
  String get file_content_empty =>
      'ফাইলৰ সামগ্ৰী ডিকড কৰাৰ পাছত খালী হৈছে, সম্ভৱত সংকেতকৰণ মিলিত নহয়';

  @override
  String field_cannot_be_empty(String fieldName) {
    return '$fieldName খালি নহব নোৱাৰি';
  }

  @override
  String field_min_length(String fieldName, int minLength) {
    return '$fieldNameৰ দৈৰ্ঘ্য $minLengthটাকৈ অক্ষৰৰ তলত নহ’ব পাৰে';
  }

  @override
  String field_max_length(String fieldName, int maxLength) {
    return '$fieldNameৰ দৈৰ্ঘ্য $maxLength টা চৰিত্ৰৰ পৰা অধিক নোহোৱা উচিত';
  }

  @override
  String field_invalid_email(String fieldName) {
    return 'অনুগ্ৰহ কৰি বৈধ $fieldName ঠিকনা প্ৰৱিষ্ট কৰক';
  }

  @override
  String field_invalid_number(String fieldName, String numberType) {
    return '$fieldName আবশ্যক $numberType হ\'ব';
  }

  @override
  String field_min_value(String fieldName, double min) {
    return '$fieldName $minতকৈ কম নহব নোৱাৰে';
  }

  @override
  String field_max_value(String fieldName, double max) {
    return '$fieldName $maxতকৈ বেছি নহব পাৰে';
  }

  @override
  String field_positive_integer(String fieldName) {
    return '$fieldName অবশ্যই ধনাত্মক পূৰ্ণ সংখ্যা হ\'ব লাগিব';
  }

  @override
  String field_greater_than_zero(String fieldName) {
    return '$fieldName অবশ্যই 0 ৰ ওপৰত হ\'ব লাগিব';
  }

  @override
  String field_positive_number(String fieldName) {
    return '$fieldName অবশ্যই ধনাত্মক সংখ্যা হ\'ব লগা';
  }

  @override
  String field_invalid_date(String fieldName) {
    return 'অনুগ্ৰহ কৰি বৈধ $fieldName প্ৰৱিষ্ট কৰক';
  }

  @override
  String field_date_not_past(String fieldName) {
    return '$fieldName অতীত তাৰিখ হ\'ব নোৱাৰে';
  }

  @override
  String field_date_not_before(String fieldName, String minDate) {
    return '$fieldName $minDate ৰ আগতে নহব নোৱাৰে';
  }

  @override
  String field_date_not_after(String fieldName, String maxDate) {
    return '$fieldName $maxDateতকৈ বেছি বেলেগ হোৱা নাযায়';
  }

  @override
  String field_invalid_value(String fieldName) {
    return 'অনুগ্ৰহ কৰি বৈধ $fieldName প্ৰৱিষ্ট কৰক';
  }

  @override
  String password_min_length(String fieldName) {
    return '$fieldNameৰ দৈৰ্ঘ্য 8টা অক্ষৰৰ পৰা কম নহব নোৱাৰে';
  }

  @override
  String password_uppercase_required(String fieldName) {
    return '$fieldNameত অন্ততঃ এটা ডাঙৰ আখৰ থাকিব লাগিব';
  }

  @override
  String password_lowercase_required(String fieldName) {
    return '$fieldNameত অন্ততঃ এটা সৰু আখৰ থাকিব লাগে';
  }

  @override
  String password_digit_required(String fieldName) {
    return '$fieldNameত অন্তত এটা সংখ্যা থকা লাগে';
  }

  @override
  String password_special_char_required(String fieldName) {
    return '$fieldNameত যিকোনো এটা বিশেষ চৰিত্র অন্ততঃ থাকিব লাগে';
  }

  @override
  String get passwords_not_match =>
      'দুবার প্ৰৱিষ্ট কৰা পাছৱাৰ্ডটো একেধৰণৰ নহয়';

  @override
  String get item_name_cannot_be_empty => 'বস্তুৰ নাম খালী হৈ থাকিব নোৱাৰে';

  @override
  String name_max_length(int maxLength) {
    return 'নামটো $maxLength টাৰ্মৰ পৰা বেছি নহ’ব পাৰে';
  }

  @override
  String quantity_min(int minQuantity) {
    return 'পরিমাণ $minQuantityতকৈ কম হ\'ব নোৱাৰিব';
  }

  @override
  String quantity_max(int maxQuantity) {
    return 'পরিমাণ $maxQuantityৰ বেশী নহব নোৱাৰি';
  }

  @override
  String get unit_price_not_negative => 'একক মূল্য ঋণাত্মক হ\'ব নোৱাৰে';

  @override
  String unit_price_max(double maxUnitPrice) {
    return 'একৰ মূল্য $maxUnitPrice অতিক্ৰম কৰিব নোৱাৰে';
  }

  @override
  String get set_production_expiry_for_validity =>
      'অনুগ্ৰহ কৰি উৎপাদক তাৰিখ আৰু শেলফ লাইফ ছেট কৰক যাতে স্বয়ংক্ৰীভাবে বৈধ সময় গণনা কৰিব পাৰে';

  @override
  String get set_purchase_warranty_for_validity =>
      'অনুগ্ৰহ কৰি যন্ত্ৰ কেনাৰ তাৰিখ আৰু মেয়াদ স্থাপন কৰক যাতে স্বয়ংক্ৰিয়ভাৱে ৱাৰেণ্টি মেয়াদ গণনা কৰিব পৰা যায়';

  @override
  String get calendar_account_creation_failed =>
      'কেলেণ্ডাৰ একাউণ্ট সৃষ্টি কৰিব নোৱাৰি, অনুগ্ৰহ কৰি ব্যৱস্থা কেলেণ্ডাৰৰ ছেটিং পৰীক্ষা কৰক';

  @override
  String get test_notification => 'টেষ্ট নিৰ্দেশনা';

  @override
  String get test_notification_description =>
      'এইটো এটা পৰীক্ষা সূচনা, স্থানীয় সোৰৱনীয়তা কাৰ্যক্ষমতা যাচাই কৰিবলৈ';

  @override
  String get day_unit => 'আকাশ';

  @override
  String days_with_value(int days) {
    return '$days দিন';
  }

  @override
  String get item_saved => 'বস্তু সংৰক্ষিত কৰা হৈছে';

  @override
  String get item_updated => 'বস্তুটো আপডেৰ কৰা হৈছে';

  @override
  String get item_added => 'বস্তুটো যোগ কৰা হৈছে';

  @override
  String get save_success => 'সফলভাৱে সংৰক্ষণ কৰা হৈছে';

  @override
  String get update_success => 'আপডেট সফল';

  @override
  String get delete_success => 'মচি পেল';

  @override
  String get save_failed => 'সংৰক্ষণ বিফল';

  @override
  String get update_failed => 'আপডে\'ট বিফল';

  @override
  String get delete_failed => 'মচি পেল নাই';

  @override
  String get test_calendar_event => 'কেলেণ্ডাৰ পৰীক্ষা ঘটনা';

  @override
  String get test_calendar_event_description =>
      'এইটো এটা পৰীক্ষা অনুষ্ঠান, কেলেণ্ডাৰ কাৰ্যক্ষমতা যাচাই কৰিবলৈ ব্যৱহাৰ কৰা হয়';

  @override
  String get in_app => 'এপ্লিকেশ্যনত';

  @override
  String get enable_alert => 'সময়সীমাৰ স্মৰণযোগ্য সক্ৰিয় কৰক';

  @override
  String get alert_method => 'সুঁচনাৰ পদ্ধতি';

  @override
  String get alert_method_in_app => 'কেৱল এপ্লিকেছনত';

  @override
  String get alert_method_calendar => 'কেৱল কেলেণ্ডাৰ';

  @override
  String get alert_method_both => 'দুয়োটা';

  @override
  String get alert_days_before => 'পূৰ্বে স্মৰণ কৰোৱাৰ দিনসমূহ';

  @override
  String get use_global_setting => 'সৰ্বজনীন ছেটিং ব্যৱহাৰ কৰা';

  @override
  String get barcode_label => 'বাৰকোড';

  @override
  String get name_label => 'নাম';

  @override
  String get category_label => 'শ্ৰেণীবিভাজন';

  @override
  String get current_quantity => 'বৰ্তমান সংখ্যা';

  @override
  String get select_operation => 'অনুগ্ৰহ কৰি অপাৰেচন বাছ কৰক';

  @override
  String get unit => 'একক';

  @override
  String get custom_unit => 'নিজৰ নিৰ্ধাৰিত একক';

  @override
  String get enter_unit => 'অনুগ্ৰহ কৰি এককটো প্ৰৱিষ্ট কৰক';

  @override
  String get custom_location => 'নিজৰ নিৰ্ধাৰিত স্থান';

  @override
  String get enter_storage_location => 'দয়া কৰি সঞ্চয় স্থান প্ৰৱিষ্ট কৰক';

  @override
  String get scan => 'স্কেন কৰা';

  @override
  String get scan_to_stock => 'স্কেন কৰি গোডাউনত প্ৰৱেশ কৰক';

  @override
  String get item_categories => 'বস্তুৰ শ্ৰেণীবিভাজন';

  @override
  String get storage_locations => 'সংগ্ৰহস্থল';

  @override
  String get place_barcode_in_frame_to_scan =>
      'বাৰক\'ডটো চাকি ভিতৰত ৰাখি স্কেন কৰক';

  @override
  String get barcode => 'বাৰক\'ড';

  @override
  String get enter_barcode_or_scan =>
      'অনুগ্ৰহ কৰি বাৰকোড প্ৰৱিষ্ট কৰক অথবা স্কেন কৰক';

  @override
  String get basic_information => 'মৌলিক তথ্য';

  @override
  String get item_name => 'বস্তুৰ নাম';

  @override
  String get enter_item_name => 'দয়া কৰি বস্তুৰ নাম প্ৰৱিষ্ট কৰক';

  @override
  String get enter_category_name => 'অনুগ্ৰহ কৰি শ্ৰেণীৰ নাম কৰক';

  @override
  String item_increased(String itemName, String quantity, String unit) {
    return 'পূৰব্ধ হৈছে $itemName $quantity$unit';
  }

  @override
  String item_decreased(String itemName, String quantity, String unit) {
    return 'হ্ৰাস কৰিছে $itemName $quantity$unit';
  }

  @override
  String get unsaved_changes => 'অসংৰক্ষিত পৰিবৰ্তনসমূহ';

  @override
  String get unsaved_changes_message =>
      'আপোনাৰ সংৰক্ষণ হোৱা নথকা পৰিবর্তন আছে, অনুগ্ৰহ কৰি কাৰ্য্য নিৰ্বাচন কৰক:';

  @override
  String get discard => 'ত্যাগ কৰা';

  @override
  String get unit_piece => 'এটা';

  @override
  String get unit_item => 'টুকুৰা';

  @override
  String get unit_box => 'বাকচ';

  @override
  String get unit_package => 'বেগ';

  @override
  String get unit_bottle => 'বটল';

  @override
  String get unit_carton => 'বক্স';

  @override
  String get unit_set => 'সুট';

  @override
  String get unit_kg => 'কৰ';

  @override
  String get unit_g => 'g';

  @override
  String get unit_l => 'এল';

  @override
  String get unit_ml => 'মিলি';

  @override
  String get unit_m => 'ম';

  @override
  String get unit_cm => 'ছেম';

  @override
  String get quantity_label => 'পৰিমাণ';

  @override
  String get unit_price_label => 'একক মূল্য';

  @override
  String get currency_label => 'মুদ্ৰা';

  @override
  String get total_price_label => 'মুঠ মূল্যঃ';

  @override
  String get storage_location_label => 'সংগ্ৰহস্থল';

  @override
  String get item_properties => 'বস্তুৰ গুণ';

  @override
  String get expiry_date_label => 'কাৰ্যকাল';

  @override
  String get warranty_expiry_date_label => 'ৱাৰেণ্টীৰ সমাপ্তিৰ তাৰিখ';

  @override
  String get production_date_label => 'উৎপাদন তাৰিখ';

  @override
  String get purchase_date_label => 'ক্ৰয় কৰাৰ তাৰিখ';

  @override
  String auto_calculated_from(String dateType) {
    return '根据$dateType আৰু শেলফ লাইফ স্বয়ংক্ৰিয়ভাৱে গণনা কৰক';
  }

  @override
  String get auto_calculated => 'স্বয়ংক্ৰিয় হিচাপ';

  @override
  String get images_label => 'ছবি';

  @override
  String get notes_label => 'মন্তব্য';

  @override
  String get add_notes_hint => 'মন্তব্য তথ্য যোগ কৰক (বৈকল্পিক)';

  @override
  String get year_label => 'বছৰ';

  @override
  String get month_label => 'মাহ';

  @override
  String get day_label => 'আকাশ';

  @override
  String selected_count(int count) {
    return 'পৰা নিৰ্বাচিত হৈছে $countটা আইটেম';
  }

  @override
  String get select_all => 'সকল নিৰ্বাচন কৰক';

  @override
  String get deselect_all => 'সকলো নিৰ্বাচন ৰদ কৰক';

  @override
  String get batch_change_location => 'ধাৰাটো স্থান বহলভাৱে সলনি কৰা';

  @override
  String confirm_delete_selected(int count) {
    return 'নিশ্চিতনে নিৰ্বাচিত $count টা বস্তু মচি পেলাব নেকি?';
  }

  @override
  String deleted_count_items(int count) {
    return '$count টা বস্তু মচি দিয়া হৈছে';
  }

  @override
  String get no_storage_location_available =>
      'অস্থায়ী সংৰক্ষণ স্থান বাছনি কৰিবলৈ উপলব্ধ নাছিল';

  @override
  String get batch_change_location_title => 'ধাৰাটো স্থান একেলগে সলনি কৰা';

  @override
  String moved_count_items_to_location(int count, String location) {
    return '$count খন সামগ্ৰী $locationলৈ স্থানান্তৰ কৰা হৈছে';
  }

  @override
  String get operation_type_create => 'প্ৰৱিষ্ট কৰা';

  @override
  String get operation_type_update => 'সম্পাদনা কৰক';

  @override
  String get operation_type_delete => 'মচি পেলোৱা';

  @override
  String get operation_type_inbound => 'গুদামত সোমোৱা';

  @override
  String get operation_type_outbound => 'বাহিৰ কৰাৰ বাবে';

  @override
  String export_failed_message(String error) {
    return 'নির্যাস সফল নহ\'ল: $error';
  }

  @override
  String get clear_logs => 'লগ মচি পেলোৱা';

  @override
  String get confirm_clear_logs =>
      'আপুনি nিশ্চিত যে সকলো সেৱাৰ লগসমূহ মচি পেলাব? এই কাৰ্যপদ্ধতি উভতি নোৱাৰে।';

  @override
  String get logs_cleared => 'লগ মচি দিয়া হৈছে';

  @override
  String get operation_logs_title => 'কাৰ্য্য লগ';

  @override
  String get export_logs => 'লগ এক্সপৰ্ট কৰক';

  @override
  String get clear_logs_tooltip => 'লগ মচি পেলোৱা';

  @override
  String get no_operation_logs => 'অপাৰেশ্যন লগ নাই';

  @override
  String get log_item_label => 'বস্তু:';

  @override
  String get log_category_label => 'শ্রেণীবিভাগঃ';

  @override
  String get log_type_label => 'প্ৰকাৰ:';

  @override
  String get log_quantity_label => 'পৰিমাণ:';

  @override
  String get log_unit_price_label => 'একক মূল্য:';

  @override
  String get log_total_price_label => 'মুঠ মূল্যঃ';

  @override
  String get log_expiry_date_label => 'মেয়াদ উত্তীর্ণের তাৰিখঃ';

  @override
  String get log_warranty_date_label => 'বৰঙনি তাৰিখ:';

  @override
  String get log_purchase_date_label => 'ক্ৰয় তাৰিখঃ';

  @override
  String get log_production_date_label => 'উৎপাদন তাৰিখ:';

  @override
  String get log_shelf_life_label => 'মেয়াদ';

  @override
  String get log_storage_location_label => 'সংগ্ৰহ স্থানঃ';

  @override
  String get log_barcode_label => 'বাৰকোডঃ';

  @override
  String get log_notes_label => 'টোকা:';

  @override
  String get log_alert_label => 'সতৰ্ক সংকেত:';

  @override
  String get log_alert_days_label => 'সতৰ্কীকৰণ দিনসমূহঃ';

  @override
  String get log_quantity_change_label => 'পৰিমাণৰ পৰিৱৰ্তন:';

  @override
  String get log_field_changes_label => 'ক্ষেত্ৰ সংশোধন কৰক:';

  @override
  String get log_not_set => 'সজোৱা হোৱা নাই';

  @override
  String get log_empty => 'ಖালি';

  @override
  String get log_alert_enabled => 'খোলক';

  @override
  String get log_alert_disabled => 'বন্ধ কৰক';

  @override
  String get operation_logs_menu => 'কাৰ্য্য লগ';

  @override
  String get operation_logs_description =>
      'অপাৰেশ্যন ৰেকৰ্ড চাব আৰু পুনৰুদ্ধাৰ কৰক';

  @override
  String operation_failed_message(String error) {
    return 'কৰ্ম ব্যৰ্থ: $error';
  }

  @override
  String get no_date => 'তাৰিখ নোহোৱা';

  @override
  String get shelf_life_months_suffix => 'মাহ';

  @override
  String get shelf_life_days_suffix => 'আকাশ';

  @override
  String get alert_days_suffix => 'আকাশ';

  @override
  String get unknown => 'অজান';

  @override
  String get developer_name => 'লীও';

  @override
  String get log_operation_date_label => 'কাৰ্য্যৰ তাৰিখ:';

  @override
  String get uncategorized => 'শ্রেণীবিন্যাস কৰা হোৱা নাই';

  @override
  String get no_location => 'স্থানবিহীন';

  @override
  String get item_category_cannot_be_empty =>
      'বস্তুৰ শ্ৰেণীবিভাজন খালী হোৱা নাযাব';

  @override
  String get storage_location_cannot_be_empty => 'সংগ্ৰহ স্থান খালী নহ’ব পাৰে';

  @override
  String get created_at_asc => 'যোগ কৰাৰ সময়ৰ বৃদ্ধিমূলক';

  @override
  String get created_at_desc => 'সময় অনুসৰি অৱনমিত';
}
