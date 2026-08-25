// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bengali Bangla (`bn`).
class AppLocalizationsBn extends AppLocalizations {
  AppLocalizationsBn([String locale = 'bn']) : super(locale);

  @override
  String get app_name => 'সম্পদ সংরক্ষণের স্থান';

  @override
  String get cancel => 'বাতিল করুন';

  @override
  String get confirm => 'নিশ্চিত';

  @override
  String get save => 'সংরক্ষণ';

  @override
  String get delete => 'মুছে ফেলা';

  @override
  String get edit => 'সম্পাদনা';

  @override
  String get add => 'যোগ করুন';

  @override
  String get edit_item => 'আইটেম সম্পাদনা করুন';

  @override
  String get add_item => 'আইটেম যোগ করুন';

  @override
  String get search => 'সন্ধান';

  @override
  String get settings => 'সেটিংস';

  @override
  String get language_settings => 'ভাষার সেটিংস';

  @override
  String get language_settings_description =>
      'অ্যাপের প্রদর্শনের ভাষা সেট করুন';

  @override
  String get system_default => 'সিস্টেম ডিফল্ট';

  @override
  String get use_system_language => 'সিস্টেম ভাষা ব্যবহার করুন';

  @override
  String get language_change_hint =>
      'ভাষার পরিবর্তন অ্যাপটি পুনরায় চালু করার পরে প্রযোজ্য হবে';

  @override
  String get back => 'ফিরে যান';

  @override
  String get next => 'পরবর্তী ধাপ';

  @override
  String get done => 'সম্পন্ন';

  @override
  String get loading => 'লোড হচ্ছে...';

  @override
  String get error => 'ভুল';

  @override
  String get success => 'সফলতা';

  @override
  String get warning => 'সতর্কতা';

  @override
  String get info => 'তথ্য';

  @override
  String get select_alert_days => 'স্মরণ করানোর দিনগুলি নির্বাচন করুন';

  @override
  String get custom => 'নিজস্ব নিয়ন্ত্রণ';

  @override
  String custom_days(int days) {
    return 'কাস্টমাইজ করুন ($days দিন)';
  }

  @override
  String current_selection(int days) {
    return 'বর্তমান নির্বাচন: $days দিন';
  }

  @override
  String alert_days_range(int min, int max) {
    return 'স্মরণ করানোর দিনের সীমা: $min-$max দিন';
  }

  @override
  String get enter_days => 'দয়া করে অনুস্মারক দিনের সংখ্যা লিখুন';

  @override
  String get days => 'দিনের সংখ্যা';

  @override
  String enter_valid_days(int min, int max) {
    return 'দয়া করে $min থেকে $max এর মধ্যে একটি সংখ্যা লিখুন';
  }

  @override
  String get alert_settings => 'সতর্কবার্তা সেটিং';

  @override
  String get calendar_settings => 'ক্যালেন্ডার সেটিংস';

  @override
  String get calendar_sync => 'ক্যালেন্ডার সিঙ্ক';

  @override
  String get calendar_sync_desc => 'চালু করলে ক্যালেন্ডার অনুমতি চাওয়া হবে';

  @override
  String get add_test_calendar_event => 'টেস্ট ক্যালেন্ডার ইভেন্ট যোগ করুন';

  @override
  String get enable_calendar_sync_first =>
      'অনুগ্রহ করে প্রথমে \'ক্যালেন্ডার সিঙ্ক\' সুইচটি চালু করুন';

  @override
  String get app_alert_settings => 'অ্যাপ বিজ্ঞপ্তি সেটিংস';

  @override
  String get local_alerts => 'স্থানীয় স্মরণ';

  @override
  String get local_alerts_desc =>
      'সক্রিয় করলে অ্যাপের ভিতরের মেয়াদ উত্তীর্ণ অনুস্মারক গ্রহণ করুন';

  @override
  String get send_test_notification => 'পরীক্ষার বিজ্ঞপ্তি পাঠান';

  @override
  String get enable_local_alerts_first =>
      'অনুগ্রহ করে প্রথমে \'স্থানীয় অনুস্মারক\' সুইচটি চালু করুন';

  @override
  String get alert_days_settings => 'স্মরণ করানোর দিন সেটিং';

  @override
  String get advance_alert_days => 'আগাম মনে করানোর দিনের সংখ্যা';

  @override
  String get advance_alert_days_desc =>
      'কত দিন আগে আইটেমের মেয়াদ শেষ বা ওয়ারেন্টি শেষ হওয়ার বিষয়ে স্মরণ করানোর জন্য সেট করুন';

  @override
  String get calendar_permission_request => 'ক্যালেন্ডার অনুমতি অনুরোধ';

  @override
  String get calendar_permission_desc =>
      'আইটেমের অনুস্মারক সমন্বয়ের জন্য ক্যালেন্ডার অনুমতি প্রয়োজন। অনুমতি দিতে চান?';

  @override
  String get allow => 'অনুমতি দেওয়া';

  @override
  String get calendar_permission_granted =>
      'ক্যালেন্ডার অনুমতি দেওয়া হয়েছে, ক্যালেন্ডার সিঙ্ক চালু করা হয়েছে';

  @override
  String get calendar_permission_denied =>
      'ক্যালেন্ডার অনুমতি অস্বীকৃত, ক্যালেন্ডার সিঙ্ক চালু করা যাবে না';

  @override
  String get calendar_permission_permanently_denied =>
      'অনুমতি স্থায়적으로 প্রত্যাখ্যাত হয়েছে';

  @override
  String get calendar_permission_permanently_denied_desc =>
      'ক্যালেন্ডার অনুমতি স্থায়ভাবে বাতিল করা হয়েছে, অনুগ্রহ করে সিস্টেম সেটিংসে ম্যানুয়ালি অনুমতি চালু করুন।';

  @override
  String get go_to_settings => 'সেটিংসে যান';

  @override
  String get calendar_account_failed =>
      'ক্যালেন্ডার অনুমতি দেওয়া হয়েছে, তবে ক্যালেন্ডার অ্যাকাউন্ট তৈরি করা যায়নি। দয়া করে সিস্টেম ক্যালেন্ডার সেটিংস পরীক্ষা করুন';

  @override
  String get calendar_account_created =>
      'ক্যালেন্ডার অনুমতি দেওয়া হয়েছে, স্থানীয় ক্যালেন্ডার অ্যাকাউন্ট তৈরি করা হয়েছে';

  @override
  String get calendar_account_creating =>
      'ক্যালেন্ডার অ্যাকাউন্ট সফলভাবে তৈরি হয়েছে, তবে সিস্টেমের কার্যকর হতে কিছু সময় লাগতে পারে';

  @override
  String get test_calendar_event_added =>
      'ক্যালেন্ডার ইভেন্ট সফলভাবে যোগ হয়েছে';

  @override
  String get test_calendar_event_failed =>
      'পরীক্ষার ক্যালেন্ডার ইভেন্ট যোগ করতে ব্যর্থ, দয়া করে ক্যালেন্ডার সেটিংস পরীক্ষা করুন';

  @override
  String get calendar_permission_required =>
      'টেস্ট ইভেন্ট যোগ করার জন্য ক্যালেন্ডার অনুমতি প্রয়োজন';

  @override
  String get test_notification_sent => 'পরীক্ষার বিজ্ঞপ্তি পাঠানো হয়েছে';

  @override
  String test_notification_failed(String error) {
    return 'পরীক্ষার নোটিফিকেশন প্রেরণে ব্যর্থ: $error';
  }

  @override
  String get notification_permission_required =>
      'স্হানীয় স্মরণ করানোর জন্য অনুমতি আবশ্যক';

  @override
  String operation_failed(String error) {
    return 'অপারেশন ব্যর্থ: $error';
  }

  @override
  String get notification_channel_name => 'পদার্থ সতর্কতা বিজ্ঞপ্তি';

  @override
  String get notification_channel_description =>
      'পণ্য মেয়াদ শেষ বা গ্যারান্টি শেষের স্মরণ';

  @override
  String get item_category_food => 'খাদ্য';

  @override
  String get item_category_daily_necessities => 'দৈনন্দিন ব্যবহার্য সামগ্রী';

  @override
  String get item_category_cosmetics => 'সৌন্দর্য প্রসাধনী';

  @override
  String get item_category_medicine => 'ঔষধ';

  @override
  String get item_category_electronics => 'ইলেকট্রনিক পণ্য';

  @override
  String get item_category_furniture => 'ফার্নিচার';

  @override
  String get item_category_clothing => 'পোশাক';

  @override
  String get item_category_books => 'বই';

  @override
  String get item_category_other => 'অন্যান্য';

  @override
  String get purchase_channel_online_mall => 'অনলাইন স্টোর';

  @override
  String get purchase_channel_physical_store => 'ফিজিকাল স্টোর';

  @override
  String get purchase_channel_supermarket => 'সুপারমার্কেট';

  @override
  String get purchase_channel_specialty_store => 'একক দোকান';

  @override
  String get purchase_channel_secondhand_market => 'দ্বিতীয় হাতের বাজার';

  @override
  String get purchase_channel_other => 'অন্যান্য';

  @override
  String get default_category => 'অন্যান্য';

  @override
  String get default_purchase_channel => 'অনলাইন স্টোর';

  @override
  String get item_category => 'পদার্থ শ্রেণীবিভাগ';

  @override
  String get custom_category => 'নিজস্ব শ্রেণীবিন্যাস';

  @override
  String get backup_data => 'ডেটা ব্যাকআপ';

  @override
  String get backup_data_description =>
      'সব তথ্য (ছবিসহ) ZIP ফাইলে প্যাক করে ব্যাকআপ করুন';

  @override
  String get backup_all_data => 'সমস্ত ডেটা ব্যাকআপ করুন';

  @override
  String get backup_success => 'ব্যাকআপ সফল';

  @override
  String backup_failed(String error) {
    return 'ব্যাকআপ ব্যর্থ: $error';
  }

  @override
  String get restore_data => 'ডেটা পুনরুদ্ধার করা';

  @override
  String get restore_data_description =>
      'ZIP ব্যাকআপ ফাইল থেকে সমস্ত ডেটা পুনরুদ্ধার করুন';

  @override
  String get export_data => 'ডেটা রপ্তানি করুন';

  @override
  String get export_data_description =>
      'সিএসভি, টিএক্সটি, এসকিউএল ফরম্যাটে রপ্তানি করুন';

  @override
  String get import_data => 'ডেটা আমদানি করুন';

  @override
  String get import_data_description =>
      'CSV, TXT, SQL ফাইল থেকে ডেটা ইম্পোর্ট করুন';

  @override
  String get alert_settings_description =>
      'ক্যালেন্ডার স্মরণিকা এবং অ্যাপ পুশ বিজ্ঞপ্তি সেটিং';

  @override
  String get about => 'সম্পর্কে';

  @override
  String get about_description => 'অ্যাপ্লিকেশন তথ্য এবং সংস্করণ';

  @override
  String get select_backup_file_first =>
      'দয়া করে প্রথমে ব্যাকআপ ফাইল নির্বাচন করুন';

  @override
  String get confirm_restore => 'পুনরুদ্ধারের নিশ্চিতকরণ';

  @override
  String get confirm_restore_message =>
      'ব্যাকআপ পুনঃস্থাপন করলে সমস্ত বিদ্যমান ডেটা মুছে যাবে এবং ব্যাকআপ ডেটা দ্বারা প্রতিস্থাপিত হবে, এই ক্রিয়াটি প্রত্যাহারযোগ্য নয়। আপনি কি চালিয়ে যেতে চান?';

  @override
  String get confirm_again => 'পুনরায় নিশ্চিত করা';

  @override
  String get confirm_restore_warning =>
      'আপনি কি সত্যিই সব বিদ্যমান ডেটা মুছে ফেলে ব্যাকআপ পুনরুদ্ধার করতে চান? এই কাজটি পুনরুদ্ধারযোগ্য নয়!';

  @override
  String get confirm_restore_button => 'পুনরুদ্ধার নিশ্চিত করুন';

  @override
  String restore_success(int count) {
    return 'পুনঃস্থাপন সফল হয়েছে, মোট $countটি আইটেম';
  }

  @override
  String restore_failed(String error) {
    return 'পুনরুদ্ধার ব্যর্থ হয়েছে: $error';
  }

  @override
  String get select_backup_file => 'ব্যাকআপ ফাইল নির্বাচন করুন';

  @override
  String get restore_backup => 'ব্যাকআপ পুনরুদ্ধার করা';

  @override
  String selected_file(String filename) {
    return 'নির্বাচিত ফাইল: $filename';
  }

  @override
  String get export_success => 'ডেটা সফলভাবে এক্সপোর্ট হয়েছে';

  @override
  String export_failed(String error) {
    return 'রপ্তানি ব্যর্থ: $error';
  }

  @override
  String get format_csv => 'সিএসভি';

  @override
  String get format_txt => 'TXT';

  @override
  String get format_sql => 'এসকিউএল';

  @override
  String get duplicate_data_handling => 'পুনরাবৃত্তি ডেটা প্রক্রিয়াকরণ';

  @override
  String get duplicate_data_detected =>
      'সদৃশ ডেটা সনাক্ত করা হয়েছে, অনুগ্রহ করে প্রক্রিয়াকরণের পদ্ধতি নির্বাচন করুন:';

  @override
  String get skip => 'এড়িয়ে যাওয়া';

  @override
  String get overwrite => 'আবৃত্ত';

  @override
  String get skip_all => 'সবগুলো এড়িয়ে যাও';

  @override
  String get overwrite_all => 'সম্পূর্ণ আচ্ছাদন';

  @override
  String get select_import_format_first =>
      'দয়া করে প্রথমে আমদানি ফরম্যাট নির্বাচন করুন';

  @override
  String get confirm_import => 'আমদানি নিশ্চিত করুন';

  @override
  String get confirm_import_message =>
      'ডেটা আমদানি করলে বিদ্যমান ডেটা ওভাররাইট হবে, এই কাজটি পূর্বাবস্থায় ফিরানো যাবে না। আপনি কি চালিয়ে যেতে চান?';

  @override
  String import_success(int count) {
    return 'ডেটা আমদানি সফল হয়েছে, মোট $countটি আইটেম আমদানি হয়েছে';
  }

  @override
  String import_failed(String error) {
    return 'আমদানি ব্যর্থ: $error';
  }

  @override
  String get select_file => 'ফাইল নির্বাচন করুন';

  @override
  String get no_data => 'তথ্য নেই';

  @override
  String get no_data_description =>
      'বর্তমানে কোনো ডেটা নেই, নীচের বোতামে ক্লিক করে প্রথম রেকর্ডটি যোগ করুন!';

  @override
  String get load_failed => 'লোড করতে ব্যর্থ হয়েছে';

  @override
  String get load_failed_description =>
      'ডেটা লোড করতে ব্যর্থ হয়েছে, অনুগ্রহ করে নেটওয়ার্ক সংযোগ পরীক্ষা করুন এবং আবার চেষ্টা করুন';

  @override
  String get retry => 'পুনরায় চেষ্টা করুন';

  @override
  String get network_connection_failed => 'নেটওয়ার্ক সংযোগ ব্যর্থ হয়েছে';

  @override
  String get network_connection_failed_description =>
      'অনুগ্রহ করে নেটওয়ার্ক সংযোগ পরীক্ষা করার পর পুনরায় চেষ্টা করুন';

  @override
  String get no_results => 'ফলাফল পাওয়া যায়নি';

  @override
  String get no_results_description =>
      'অন্য কীওয়ার্ড ব্যবহার করে খোঁজার চেষ্টা করুন';

  @override
  String get clear_search => 'সার্চ মুছে দিন';

  @override
  String get insufficient_permission => 'অনুমতির অভাব';

  @override
  String get insufficient_permission_description =>
      'এই ফাংশনটি ব্যবহার করার জন্য প্রয়োজনীয় অনুমতি প্রয়োজন';

  @override
  String get request_permission => 'অনুমতির অনুরোধ';

  @override
  String get app_info => 'অ্যাপ্লিকেশন তথ্য';

  @override
  String get version => 'সংস্করণ';

  @override
  String get developer => 'ডেভেলপার';

  @override
  String get device_info => 'উপকরণের তথ্য';

  @override
  String get device_model => 'যন্ত্রের মডেল';

  @override
  String get brand => 'ব্র্যান্ড';

  @override
  String get device_name => 'উপকরণের নাম';

  @override
  String get product => 'পণ্য';

  @override
  String get hardware => 'হার্ডওয়্যার';

  @override
  String get android_version => 'অ্যান্ড্রয়েড সংস্করণ';

  @override
  String get sdk_version => 'এসডিকে সংস্করণ';

  @override
  String get system_name => 'সিস্টেমের নাম';

  @override
  String get operating_system => 'অপারেটিং সিস্টেম';

  @override
  String get system_version => 'সিস্টেম সংস্করণ';

  @override
  String get dart_version => 'Dart সংস্করণ';

  @override
  String get device_identifier => 'যন্ত্রের পরিচিতি';

  @override
  String get computer_name => 'কম্পিউটার নাম';

  @override
  String get build_number => 'ভার্সন নম্বর';

  @override
  String error_getting_device_info(String error) {
    return 'যন্ত্রের তথ্য নেওয়া যাচ্ছে না: $error';
  }

  @override
  String get features => 'ফাংশন পরিচিতি';

  @override
  String get app_description => 'স্মার্ট আইটেম ব্যবস্থাপনা অ্যাপ্লিকেশন';

  @override
  String get app_description_detail =>
      'আপনাকে আপনার জিনিসপত্রের মেয়াদ উত্তীর্ণের তারিখ, ওয়ারেন্টি তারিখ ইত্যাদি তথ্য পরিচালনা করতে সাহায্য করে এবং স্মার্ট সতর্কতা ফিচার প্রদান করে।';

  @override
  String get consumable => 'ব্যবহারযোগ্য সামগ্রী';

  @override
  String get durable => 'টেকসই পণ্য';

  @override
  String get sort => 'ক্রমবিন্যাস';

  @override
  String get name_asc => 'নামের ক্রম অনুযায়ী';

  @override
  String get name_desc => 'নামের ক্রম অনুযায়ী অবরোহ';

  @override
  String get date_asc => 'তারিখ ক্রম অনুযায়ী';

  @override
  String get date_desc => 'তারিখ ক্রমধারায় উল্টো';

  @override
  String get price_asc => 'মূল্য বৃদ্ধির ক্রমে';

  @override
  String get price_desc => 'মূল্য হ্রাসের ক্রম';

  @override
  String get quantity_asc => 'পরিমাণ ক্রম অনুযায়ী';

  @override
  String get quantity_desc => 'পরিমাণের ক্রম অনুযায়ী অবতরণ';

  @override
  String get total_price_asc => 'মোট মূল্যের ঊর্ধ্বক্রমে';

  @override
  String get total_price_desc => 'মোট মূল্যের হ্রাসক্রম';

  @override
  String get clear_all_filters => 'সব ফিল্টার মুছে ফেলুন';

  @override
  String get scan_barcode => 'স্ক্যান করে গোডাউনে প্রবেশ';

  @override
  String get search_items => 'পদার্থ অনুসন্ধান করুন...';

  @override
  String get no_items => 'কোনও আইটেম নেই';

  @override
  String get no_items_description =>
      'নিচের বোতামে ক্লিক করে প্রথম আইটেমটি যোগ করুন';

  @override
  String get expired => 'মেয়াদোত্তীর্ণ';

  @override
  String get expiring_soon => 'শীঘ্রই মেয়াদোত্তীর্ণ';

  @override
  String get warranty_expired => 'ওয়ারেন্টি শেষ হয়ে গেছে';

  @override
  String get warranty_expiring_soon => 'ওয়ারেন্টি শীঘ্রই শেষ হয়ে যাবে';

  @override
  String days_remaining(int count) {
    return 'বাকি $count দিন';
  }

  @override
  String expired_days_ago(int count) {
    return '$count দিন আগে মেয়াদ শেষ হয়েছে';
  }

  @override
  String get delete_item => 'পদার্থ মুছে ফেলা';

  @override
  String delete_item_confirm(String name) {
    return 'আপনি কি নিশ্চিত যে আপনি \"$name\" মুছে ফেলতে চান?';
  }

  @override
  String get item_deleted => 'পদার্থটি মুছে ফেলা হয়েছে';

  @override
  String get failed_to_delete => 'মুছে ফেলা ব্যর্থ হয়েছে';

  @override
  String failed_to_delete_message(String error) {
    return 'আইটেম মুছে ফেলা যাবে না: $error';
  }

  @override
  String get date_range_filter => 'তারিখ সীমা ফিল্টার';

  @override
  String get price_range_filter => 'মূল্য পরিসীমা ফিল্টার';

  @override
  String get my_items => 'আমার জিনিসপত্র';

  @override
  String get click_fab_to_add_item =>
      'ডান দিকে নিচের কোণে বোতাম টিপে আইটেম যোগ করুন';

  @override
  String get confirm_delete => 'মুছে ফেলা নিশ্চিত করুন';

  @override
  String get filter_options => 'ফিল্টার বিকল্প';

  @override
  String get filter_by_type_category_location =>
      'আইটেমগুলি ধরন, শ্রেণীবিভাগ এবং অবস্থান অনুযায়ী ফিল্টার করুন';

  @override
  String categories_count(int count) {
    return '$count টি বিভাগ';
  }

  @override
  String get all_categories => 'সমস্ত বিভাগ';

  @override
  String get no_category_data => 'অস্থায়ীভাবে কোন শ্রেণীবিন্যাস তথ্য নেই';

  @override
  String get storage_location => 'সংরক্ষণস্থল';

  @override
  String locations_count(int count) {
    return '$count টি স্থান';
  }

  @override
  String get all_locations => 'সমস্ত স্থান';

  @override
  String get no_location_data => 'অস্থায়ীভাবে কোন স্থান ডেটা নেই';

  @override
  String get date_range => 'তারিখ পরিসর';

  @override
  String get select_date_range => 'তারিখের পরিসীমা নির্বাচন করুন';

  @override
  String get price_range => 'মূল্য পরিসর';

  @override
  String get unit_price_range => 'একক মূল্যের সীমা';

  @override
  String get min_unit_price => 'সর্বনিম্ন একক মূল্য';

  @override
  String get max_unit_price => 'সর্বোচ্চ একক মূল্য';

  @override
  String get total_price_range => 'মোট মূল্য পরিসীমা';

  @override
  String get min_total_price => 'সর্বনিম্ন মোট মূল্য';

  @override
  String get max_total_price => 'সর্বোচ্চ মোট মূল্য';

  @override
  String get clear_price_filter => 'দামের ফিল্টার মুছে দিন';

  @override
  String get place_barcode_in_frame =>
      'বারকোডটি বক্সের মধ্যে রেখে স্ক্যান করুন';

  @override
  String get item_already_exists => 'পণ্যটি ইতিমধ্যেই বিদ্যমান';

  @override
  String barcode_with_value(String barcode) {
    return 'বারকোড: $barcode';
  }

  @override
  String name_with_value(String name) {
    return 'নাম: $name';
  }

  @override
  String category_with_value(String category) {
    return 'শ্রেণিবিন্যাসঃ $category';
  }

  @override
  String current_quantity_with_value(String quantity, String unit) {
    return 'বর্তমান পরিমাণ: $quantity$unit';
  }

  @override
  String get please_select_operation =>
      'অনুগ্রহ করে একটি অপারেশন নির্বাচন করুন:';

  @override
  String get outbound => 'বাহির করা';

  @override
  String get inbound => 'গুদামে প্রবেশ';

  @override
  String get inbound_quantity => 'গুদামে প্রবেশের পরিমাণ';

  @override
  String get outbound_quantity => 'বিক্রয়ের জন্য পরিমাণ';

  @override
  String get quantity => 'পরিমাণ';

  @override
  String get enter_inbound_quantity => 'দয়া করে স্টকের পরিমাণ লিখুন';

  @override
  String get enter_outbound_quantity => 'দয়া করে শিপমেন্টের পরিমাণ লিখুন';

  @override
  String delete_item_confirm_with_irreversible(String name) {
    return 'আপনি কি \'$name\' মুছে দিতে চান? এই ক্রিয়াটি পূর্বাবস্থায় ফিরানো যাবে না।';
  }

  @override
  String get database_reset =>
      'ডাটাবেসটি পুনঃসেট করা হয়েছে, টেবিলের কাঠামো পুনরায় তৈরি করা হবে';

  @override
  String database_reset_error(String error) {
    return 'ডাটাবেস পুনরায় সেট করার সময় ত্রুটি: $error';
  }

  @override
  String mock_data_init_failed(String error) {
    return 'মডেল তথ্য প্রাথমিককরণ ব্যর্থ: $error';
  }

  @override
  String get solution_steps => 'সমাধানের উপায়:';

  @override
  String get solution_step_1 => '১. অ্যাপটি আনইনস্টল করে পুনরায় ইনস্টল করুন';

  @override
  String get solution_step_2 => '2. অথবা মুছে ফেলুন অ্যাপের ডেটা';

  @override
  String get solution_step_3 =>
      '3. অথবা resetDatabaseOnStart কে true সেট করে পুনরায় চালান';

  @override
  String notification_service_init_failed(String error) {
    return 'স্মরণ পরিষেবা প্রারম্ভিকরণ ব্যর্থ হয়েছে: $error';
  }

  @override
  String check_calendar_account_failed(String error) {
    return 'ক্যালেন্ডার একাউন্ট পরীক্ষা ব্যর্থ হয়েছে: $error';
  }

  @override
  String create_calendar_failed(String error) {
    return 'ক্যালেন্ডার তৈরি করতে ব্যর্থ: $error';
  }

  @override
  String add_calendar_event_failed(String error) {
    return 'ক্যালেন্ডার ইভেন্ট যোগ করতে ব্যর্থ: $error';
  }

  @override
  String delete_calendar_event_failed(String error) {
    return 'ক্যালেন্ডার ইভেন্ট মুছে ফেলা ব্যর্থ হয়েছে: $error';
  }

  @override
  String set_permission_message_failed(String error) {
    return 'অনুমতির বার্তা সেট করা ব্যর্থ: $error';
  }

  @override
  String mock_data_init_success(int count) {
    return 'সফলভাবে $count টি সিমুলেশন ডেটা আরম্ভ করা হয়েছে';
  }

  @override
  String database_has_data(int count) {
    return 'ডাটাবেসে ইতিমধ্যেই $count টি ডাটা আছে, সিমুলেশন ডাটা ইনিশিয়ালাইজেশন স্কিপ করুন';
  }

  @override
  String get database_structure_mismatch =>
      'সম্ভবত ডেটাবেসের কাঠামো মেলেনি, অ্যাপ্লিকেশনের ডেটা মুছে ফেলা বা পুনরায় ইন্সটল করার পরামর্শ দেওয়া হচ্ছে';

  @override
  String get old_database_deleted => 'পুরনো ডাটাবেস ফাইল মুছে ফেলা হয়েছে';

  @override
  String get backup_data_empty => 'ব্যাকআপ ডেটা খালি';

  @override
  String get backup_file_not_found => 'ব্যাকআপ ফাইল নেই';

  @override
  String file_not_utf8(String error) {
    return 'ফাইলের এনকোডিং বৈধ UTF-8 ফরম্যাট নয়। দয়া করে নিশ্চিত করুন যে ফাইলটি UTF-8 এনকোডিং দিয়ে সংরক্ষিত হয়েছে। ত্রুটির বিশদ: $error';
  }

  @override
  String file_not_found(String filePath) {
    return 'ফাইলটি নেই: $filePath';
  }

  @override
  String file_empty(String filePath) {
    return 'ফাইল খালি: $filePath';
  }

  @override
  String get file_content_empty =>
      'ফাইলের সামগ্রী ডিকোড করার পরে খালি, সম্ভবত এনকোডিং মিলছে না';

  @override
  String field_cannot_be_empty(String fieldName) {
    return '$fieldName খালি থাকতে পারবে না';
  }

  @override
  String field_min_length(String fieldName, int minLength) {
    return '$fieldNameএর দৈর্ঘ্য কমপক্ষে $minLength অক্ষর হতে হবে';
  }

  @override
  String field_max_length(String fieldName, int maxLength) {
    return '$fieldNameএর দৈর্ঘ্য $maxLength অক্ষরের বেশি হতে পারে না';
  }

  @override
  String field_invalid_email(String fieldName) {
    return 'দয়া করে বৈধ $fieldName ঠিকানা লিখুন';
  }

  @override
  String field_invalid_number(String fieldName, String numberType) {
    return '$fieldName অবশ্যই $numberType হতে হবে';
  }

  @override
  String field_min_value(String fieldName, double min) {
    return '$fieldName $min এর চেয়ে কম হতে পারবে না';
  }

  @override
  String field_max_value(String fieldName, double max) {
    return '$fieldName $max এর চেয়ে বড় হতে পারবে না';
  }

  @override
  String field_positive_integer(String fieldName) {
    return '$fieldName অবশ্যই ধনাত্মক পূর্ণসংখ্যা হতে হবে';
  }

  @override
  String field_greater_than_zero(String fieldName) {
    return '$fieldName অবশ্যই 0 এর চেয়ে বড় হতে হবে';
  }

  @override
  String field_positive_number(String fieldName) {
    return '$fieldName অবশ্যই ধনাত্মক সংখ্যা হতে হবে';
  }

  @override
  String field_invalid_date(String fieldName) {
    return 'অনুগ্রহ করে বৈধ $fieldName লিখুন';
  }

  @override
  String field_date_not_past(String fieldName) {
    return '$fieldName অতীতের তারিখ হতে পারবে না';
  }

  @override
  String field_date_not_before(String fieldName, String minDate) {
    return '$fieldName $minDate এর আগে হতে পারবে না';
  }

  @override
  String field_date_not_after(String fieldName, String maxDate) {
    return '$fieldName $maxDate এর চেয়ে দেরিতে হতে পারবে না';
  }

  @override
  String field_invalid_value(String fieldName) {
    return 'অনুগ্রহ করে বৈধ $fieldName লিখুন';
  }

  @override
  String password_min_length(String fieldName) {
    return '$fieldName এর দৈর্ঘ্য 8টি অক্ষরের কম হতে পারবে না';
  }

  @override
  String password_uppercase_required(String fieldName) {
    return '$fieldName অবশ্যই অন্তত একটি বড় হাতের অক্ষর থাকতে হবে';
  }

  @override
  String password_lowercase_required(String fieldName) {
    return '$fieldName অবশ্যই অন্তত একটি ছোট হাতের অক্ষর থাকতে হবে';
  }

  @override
  String password_digit_required(String fieldName) {
    return '$fieldName অবশ্যই অন্তত একটি সংখ্যা থাকতে হবে';
  }

  @override
  String password_special_char_required(String fieldName) {
    return '$fieldName অবশ্যই অন্তত একটি বিশেষ অক্ষর থাকা আবশ্যক';
  }

  @override
  String get passwords_not_match => 'দুটি বার প্রবেশ করা পাসওয়ার্ড一致 নয়';

  @override
  String get item_name_cannot_be_empty => 'পণ্যের নাম খালি হতে পারবে না';

  @override
  String name_max_length(int maxLength) {
    return 'নামের लंबाई $maxLengthটি অক্ষরের বেশি হতে পারবে না';
  }

  @override
  String quantity_min(int minQuantity) {
    return 'পরিমাণ $minQuantity এর চেয়ে কম হতে পারবে না';
  }

  @override
  String quantity_max(int maxQuantity) {
    return 'পরিমাণ $maxQuantity এর বেশি হতে পারবে না';
  }

  @override
  String get unit_price_not_negative => 'একক মূল্য ঋণাত্মক হতে পারবে না';

  @override
  String unit_price_max(double maxUnitPrice) {
    return 'একক মূল্য $maxUnitPrice অতিক্রম করতে পারবে না';
  }

  @override
  String get set_production_expiry_for_validity =>
      'অনুগ্রহ করে উৎপাদন তারিখ এবং মেয়াদের শেষ দিন সেট করুন যাতে স্বয়ংক্রিয়ভাবে বৈধতা গণনা করা যায়';

  @override
  String get set_purchase_warranty_for_validity =>
      'দয়া করে কেনার তারিখ এবং মেয়াদ শেষ হওয়ার তারিখ সেট করুন যাতে স্বয়ংক্রিয়ভাবে ওয়ারেন্টি সময়কাল গণনা করা যায়';

  @override
  String get calendar_account_creation_failed =>
      'ক্যালেন্ডার অ্যাকাউন্ট তৈরি করা যায়নি, দয়া করে সিস্টেম ক্যালেন্ডার সেটিংস পরীক্ষা করুন';

  @override
  String get test_notification => 'পরীক্ষার বিজ্ঞপ্তি';

  @override
  String get test_notification_description =>
      'এটি একটি পরীক্ষার বিজ্ঞপ্তি, স্থানীয় অনুস্মারক কার্যকারিতা যাচাই করার জন্য';

  @override
  String get day_unit => 'আকাশ';

  @override
  String days_with_value(int days) {
    return '$daysদিন';
  }

  @override
  String get item_saved => 'পদার্থটি সংরক্ষণ করা হয়েছে';

  @override
  String get item_updated => 'পদার্থটি আপডেট করা হয়েছে';

  @override
  String get item_added => 'পদার্থ যোগ করা হয়েছে';

  @override
  String get save_success => 'সফলভাবে সংরক্ষণ করা হয়েছে';

  @override
  String get update_success => 'আপডেট সফল';

  @override
  String get delete_success => 'মুছে ফেলা সফল হয়েছে';

  @override
  String get save_failed => 'সংরক্ষণ ব্যর্থ হয়েছে';

  @override
  String get update_failed => 'আপডেট ব্যর্থ হয়েছে';

  @override
  String get delete_failed => 'মুছে ফেলা ব্যর্থ হয়েছে';

  @override
  String get test_calendar_event => 'ক্যালেন্ডার ইভেন্ট পরীক্ষা';

  @override
  String get test_calendar_event_description =>
      'এটি একটি পরীক্ষার ইভেন্ট, যেটি ক্যালেন্ডার ফাংশন পরীক্ষা করার জন্য ব্যবহৃত হয়';

  @override
  String get in_app => 'অ্যাপের মধ্যে';

  @override
  String get enable_alert => 'মেয়াদশেষের অনুস্মারক চালু করুন';

  @override
  String get alert_method => 'স্মরণ করানোর উপায়';

  @override
  String get alert_method_in_app => 'শুধুমাত্র অ্যাপে';

  @override
  String get alert_method_calendar => 'শুধুমাত্র ক্যালেন্ডার';

  @override
  String get alert_method_both => 'উভয়';

  @override
  String get alert_days_before => 'আগাম মনে করানোর দিনের সংখ্যা';

  @override
  String get use_global_setting => 'গ্লোবাল সেটিংস ব্যবহার করুন';

  @override
  String get barcode_label => 'বারকোড';

  @override
  String get name_label => 'নাম';

  @override
  String get category_label => 'বিভাগীকরণ';

  @override
  String get current_quantity => 'বর্তমান পরিমাণ';

  @override
  String get select_operation => 'অনুগ্রহ করে অপারেশন নির্বাচন করুন';

  @override
  String get unit => 'একক';

  @override
  String get custom_unit => 'নিজস্ব একক';

  @override
  String get enter_unit => 'দয়া করে একক প্রবেশ করান';

  @override
  String get custom_location => 'নিজস্ব স্থান';

  @override
  String get enter_storage_location => 'দয়া করে সঞ্চয় স্থান প্রবেশ করান';

  @override
  String get scan => 'স্ক্যান করা';

  @override
  String get scan_to_stock => 'স্ক্যান করে গোডাউনে প্রবেশ';

  @override
  String get item_categories => 'পদার্থ শ্রেণীবিভাগ';

  @override
  String get storage_locations => 'সংরক্ষণস্থল';

  @override
  String get place_barcode_in_frame_to_scan =>
      'বারকোডটি বক্সের মধ্যে রেখে স্ক্যান করুন';

  @override
  String get barcode => 'বারকোড';

  @override
  String get enter_barcode_or_scan => 'দয়া করে বারকোড লিখুন বা স্ক্যান করুন';

  @override
  String get basic_information => 'মূল তথ্য';

  @override
  String get item_name => 'পণ্যের নাম';

  @override
  String get enter_item_name => 'দয়া করে আইটেমের নাম লিখুন';

  @override
  String get enter_category_name => 'অনুগ্রহ করে শ্রেণীর নাম লিখুন';

  @override
  String item_increased(String itemName, String quantity, String unit) {
    return 'ইতিমধ্যে $itemName $quantity$unit যুক্ত করা হয়েছে';
  }

  @override
  String item_decreased(String itemName, String quantity, String unit) {
    return 'কমিয়ে আনা হয়েছে $itemName $quantity$unit';
  }

  @override
  String get unsaved_changes => 'সংরক্ষিত নয় এমন পরিবর্তনসমূহ';

  @override
  String get unsaved_changes_message =>
      'আপনার অপ্রদত্ত পরিবর্তন আছে, অনুগ্রহ করে একটি ক্রিয়াকলাপ নির্বাচন করুন:';

  @override
  String get discard => 'ত্যাগ করা';

  @override
  String get unit_piece => 'টি';

  @override
  String get unit_item => 'টি';

  @override
  String get unit_box => 'বাক্স';

  @override
  String get unit_package => 'প্যাকেজ';

  @override
  String get unit_bottle => 'বটল';

  @override
  String get unit_carton => 'বাক্স';

  @override
  String get unit_set => 'সেট';

  @override
  String get unit_kg => 'কেজি';

  @override
  String get unit_g => 'জি';

  @override
  String get unit_l => 'এল';

  @override
  String get unit_ml => 'মিলি';

  @override
  String get unit_m => 'ম';

  @override
  String get unit_cm => 'সেমি';

  @override
  String get quantity_label => 'পরিমাণ';

  @override
  String get unit_price_label => 'একক মূল্য';

  @override
  String get currency_label => 'মুদ্রা';

  @override
  String get total_price_label => 'মোট দাম:';

  @override
  String get storage_location_label => 'সংরক্ষণস্থল';

  @override
  String get item_properties => 'পণ্যের বৈশিষ্ট্য';

  @override
  String get expiry_date_label => 'মেয়াদ';

  @override
  String get warranty_expiry_date_label => 'ওয়ারেন্টি শেষের তারিখ';

  @override
  String get production_date_label => 'উৎপাদনের তারিখ';

  @override
  String get purchase_date_label => 'ক্রয়ের তারিখ';

  @override
  String auto_calculated_from(String dateType) {
    return '根据$dateType和保质期自动计算';
  }

  @override
  String get auto_calculated => 'স্বয়ংক্রিয় হিসাব';

  @override
  String get images_label => 'ছবি';

  @override
  String get notes_label => 'মন্তব্য';

  @override
  String get add_notes_hint => 'মন্তব্যের তথ্য যোগ করুন (ঐচ্ছিক)';

  @override
  String get year_label => 'বছর';

  @override
  String get month_label => 'মাস';

  @override
  String get day_label => 'আকাশ';

  @override
  String selected_count(int count) {
    return 'সম্পূর্ণভাবে নির্বাচিত $countটি আইটেম';
  }

  @override
  String get select_all => 'সকল নির্বাচন করুন';

  @override
  String get deselect_all => 'সমস্ত নির্বাচন বাতিল করুন';

  @override
  String get batch_change_location => 'ব্যাচে সংরক্ষণের স্থান পরিবর্তন করা';

  @override
  String confirm_delete_selected(int count) {
    return 'নিশ্চিত আপনি নির্বাচিত $count টি আইটেম মুছে দিতে চান?';
  }

  @override
  String deleted_count_items(int count) {
    return '$count টি আইটেম মুছে ফেলা হয়েছে';
  }

  @override
  String get no_storage_location_available =>
      'বর্তমানে কোন সংরক্ষণ স্থানের বিকল্প নেই';

  @override
  String get batch_change_location_title =>
      'ব্যাচে সংরক্ষণের স্থান পরিবর্তন করা';

  @override
  String moved_count_items_to_location(int count, String location) {
    return '$countটি আইটেম $location এ স্থানান্তর করা হয়েছে';
  }

  @override
  String get operation_type_create => 'প্রবেশ করানো';

  @override
  String get operation_type_update => 'সম্পাদনা';

  @override
  String get operation_type_delete => 'মুছে ফেলা';

  @override
  String get operation_type_inbound => 'গুদামে প্রবেশ';

  @override
  String get operation_type_outbound => 'বাহির করা';

  @override
  String export_failed_message(String error) {
    return 'রপ্তানি ব্যর্থ: $error';
  }

  @override
  String get clear_logs => 'লগ মুছুন';

  @override
  String get confirm_clear_logs =>
      'আপনি কি নিশ্চিত যে সকল অপারেশন লগ মুছে ফেলবেন? এই ক্রিয়াটি পুনরুদ্ধারযোগ্য নয়।';

  @override
  String get logs_cleared => 'লগ মুছে ফেলা হয়েছে';

  @override
  String get operation_logs_title => 'অপারেশন লগ';

  @override
  String get export_logs => 'লগ এক্সপোর্ট করুন';

  @override
  String get clear_logs_tooltip => 'লগ মুছুন';

  @override
  String get no_operation_logs => 'অস্থায়ীভাবে কোন অপারেশন লগ নেই';

  @override
  String get log_item_label => 'বস্তু:';

  @override
  String get log_category_label => 'শ্রেণীবিন্যাস:';

  @override
  String get log_type_label => 'প্রকার:';

  @override
  String get log_quantity_label => 'পরিমাণ:';

  @override
  String get log_unit_price_label => 'একক মূল্য:';

  @override
  String get log_total_price_label => 'মোট দাম:';

  @override
  String get log_expiry_date_label => 'মেয়াদ শেষ হওয়ার তারিখ:';

  @override
  String get log_warranty_date_label => 'ওয়ারেন্টি তারিখ:';

  @override
  String get log_purchase_date_label => 'ক্রয়ের তারিখ:';

  @override
  String get log_production_date_label => 'উৎপাদন তারিখ:';

  @override
  String get log_shelf_life_label => 'মেয়াদ শেষ হওয়ার তারিখ:';

  @override
  String get log_storage_location_label => 'সংরক্ষণের স্থান:';

  @override
  String get log_barcode_label => 'বারকোড:';

  @override
  String get log_notes_label => 'টীকা:';

  @override
  String get log_alert_label => 'সতর্কবার্তা:';

  @override
  String get log_alert_days_label => 'সতর্কতার দিন সংখ্যা:';

  @override
  String get log_quantity_change_label => 'পরিমাণের পরিবর্তন:';

  @override
  String get log_field_changes_label => 'ক্ষেত্রটি সম্পাদনা করুন:';

  @override
  String get log_not_set => 'সেট করা হয়নি';

  @override
  String get log_empty => 'খালি';

  @override
  String get log_alert_enabled => 'চালু করুন';

  @override
  String get log_alert_disabled => 'বন্ধ করুন';

  @override
  String get operation_logs_menu => 'অপারেশন লগ';

  @override
  String get operation_logs_description =>
      'অপারেশন রেকর্ড দেখুন এবং পুনঃস্থাপন করুন';

  @override
  String operation_failed_message(String error) {
    return 'অপারেশন ব্যর্থ: $error';
  }

  @override
  String get no_date => 'তারিখ নেই';

  @override
  String get shelf_life_months_suffix => 'মাস';

  @override
  String get shelf_life_days_suffix => 'আকাশ';

  @override
  String get alert_days_suffix => 'আকাশ';

  @override
  String get unknown => 'অজানা';

  @override
  String get developer_name => 'লিও';

  @override
  String get log_operation_date_label => 'পরিচালনার তারিখ:';

  @override
  String get uncategorized => 'শ্রেণীবিন্যাসহীন';

  @override
  String get no_location => 'কোনও স্থান নেই';

  @override
  String get item_category_cannot_be_empty =>
      'পদার্থের শ্রেণীবিভাগ খালি থাকতে পারবে না';

  @override
  String get storage_location_cannot_be_empty =>
      'স্টোরেজ স্থান খালি হতে পারবে না';

  @override
  String get created_at_asc => 'যোগ করার সময় অনুযায়ী উর্ধ্বক্রম';

  @override
  String get created_at_desc => 'যোগের সময় অনুযায়ী অবরোহমান';

  @override
  String get location_management => 'গুদাম ব্যবস্থাপনা';

  @override
  String get private_warehouses => 'বেসরকারি লাইব্রেরি';

  @override
  String get public_warehouses => 'সার্বজনীন গ্রন্থাগার';

  @override
  String get is_public_warehouse => 'সার্বজনীন গ্রন্থাগার';

  @override
  String get public_warehouse_desc =>
      'সাধারণ লাইব্রেরিতে কোনো প্রশাসক নেই, স্টক আউট বা স্টক ইন করার সময় অপারেটরের নাম লিখতে হবে';

  @override
  String get manager => 'প্রশাসক';

  @override
  String get not_set => 'সেট করা হয়নি';

  @override
  String get edit_location => 'সম্পাদনার বই';

  @override
  String get location_name => 'লাইব্রেরির নাম';

  @override
  String get manager_name => 'প্রশাসকের নাম';

  @override
  String get enter_manager_name => 'অনুগ্রহ করে প্রশাসকের নাম লিখুন';

  @override
  String get manager_name_required => 'প্রশাসকের নাম খালি রাখা যাবে না';

  @override
  String delete_location_confirm(String name) {
    return 'আপনি কি আসলেই লাইব্রেরি „$name“ মুছে ফেলতে চান?';
  }

  @override
  String get delete_location_has_items =>
      'গ্রন্থাগারে এখনও আইটেম আছে, মুছে ফেলা যাবে না';

  @override
  String get default_manager => 'ডিফল্ট অ্যাডমিনিস্ট্রেটর';

  @override
  String get default_manager_desc =>
      'নতুন ব্যক্তিগত রিপোজিটরি তৈরি করার সময় ডিফল্ট প্রশাসক';

  @override
  String get enter_default_manager => 'দয়া করে ডিফল্ট অ্যাডমিনের নাম লিখুন';

  @override
  String get operator_name => 'পরিচালনাকারীর নাম';

  @override
  String get enter_operator_name => 'দয়া করে অপারেটরের নাম লিখুন';

  @override
  String get operator_name_required => 'অপারেটরের নাম খালি রাখা যাবে না';

  @override
  String get no_manager => 'কোনও প্রশাসক নেই';

  @override
  String get log_operator_label => 'পরিচালনাকারী:';

  @override
  String get outbound_quantity_exceeds_current =>
      'বিক্রয়যোগ্য পরিমাণ বর্তমানে স্টকের চেয়ে বেশি হতে পারবে না';
}
