// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Amharic (`am`).
class AppLocalizationsAm extends AppLocalizations {
  AppLocalizationsAm([String locale = 'am']) : super(locale);

  @override
  String get app_name => 'በትንሽ ቦታ ውስጥ ውድ ሀብት';

  @override
  String get cancel => 'ተወው';

  @override
  String get confirm => 'አረጋግጥ';

  @override
  String get save => 'አስቀምጥ';

  @override
  String get delete => 'ማጥፊያ';

  @override
  String get edit => 'ያርትዑ';

  @override
  String get add => 'አክል';

  @override
  String get search => 'ምፈልገው';

  @override
  String get settings => 'ማሰናጃዎች';

  @override
  String get language_settings => 'የቋንቋ ቅንብሮች';

  @override
  String get language_settings_description => 'የመተግበሪያውን ማሳያ ቋንቋ ያዘጋጁ';

  @override
  String get system_default => 'የስርዓት ነባሪ';

  @override
  String get use_system_language => 'የስርዓት ቋንቋን ተጠቀም';

  @override
  String get language_change_hint =>
      'አፕሊኬሽኑ እንደገና ከተጀመረ በኋላ የቋንቋ ለውጡ ተግባራዊ ይሆናል።';

  @override
  String get back => 'ተመለስ';

  @override
  String get next => 'ቀጣይ ደረጃ';

  @override
  String get done => 'ተጠናቅቋል';

  @override
  String get loading => 'በመጫን ላይ ...';

  @override
  String get error => 'ስህተት';

  @override
  String get success => 'ስኬት';

  @override
  String get warning => 'ማስጠንቀቂያ';

  @override
  String get info => 'መረጃ';

  @override
  String get select_alert_days => 'የማስታወሻ ቀናትን ይምረጡ';

  @override
  String get custom => 'ብጁ';

  @override
  String custom_days(int days) {
    return 'ብጁ ($days ቀናት)';
  }

  @override
  String current_selection(int days) {
    return 'የአሁኑ ምርጫ $days ቀኖች';
  }

  @override
  String alert_days_range(int min, int max) {
    return 'የማስታወሻ ቀናት ክልል $min-$max ቀናት';
  }

  @override
  String get enter_days => 'እባክዎ የማስታወሻ ቀናት ያስገቡ';

  @override
  String get days => 'የቀኖች ብዛት';

  @override
  String enter_valid_days(int min, int max) {
    return 'እባክዎ በ $min እና $max መካከል ቁጥር ያስገቡ';
  }

  @override
  String get alert_settings => 'የማንቂያ ቅንብሮች';

  @override
  String get calendar_settings => 'የቀን መቁጠሪያ ቅንብሮች';

  @override
  String get calendar_sync => 'የቀን መቁጠሪያ ማመሳሰል';

  @override
  String get calendar_sync_desc => 'ሲነቃ የቀን መቁጠሪያ ፈቃዶችን ይጠይቃል';

  @override
  String get add_test_calendar_event => 'የሙከራ ቀን መቁጠሪያ ክስተት ያክሉ';

  @override
  String get enable_calendar_sync_first =>
      'እባክዎ መጀመሪያ የ\'Calendar Sync\' ማብሪያ / ማጥፊያውን ያብሩ';

  @override
  String get app_alert_settings => 'የመተግበሪያ ማሳወቂያ ቅንብሮች';

  @override
  String get local_alerts => 'የአካባቢ አስታዋሽ';

  @override
  String get local_alerts_desc => 'ካነቁ በኋላ የውስጠ-መተግበሪያ ማብቂያ አስታዋሾችን ይቀበሉ';

  @override
  String get send_test_notification => 'የሙከራ ማሳወቂያ ይላኩ';

  @override
  String get enable_local_alerts_first =>
      'እባክዎ መጀመሪያ \'የአካባቢ ማሳወቂያዎች\' መቀየሪያን ያብሩ';

  @override
  String get alert_days_settings => 'የማስታወሻ ቀናት ቅንብር';

  @override
  String get advance_alert_days => 'ለቅድሚያ ማስታወቂያ የቀኖች ብዛት';

  @override
  String get advance_alert_days_desc =>
      'ስለ እቃው ማብቂያ ወይም የዋስትና ማብቂያ ለማስታወስ ስንት ቀናት አስቀድመው ያዘጋጁ';

  @override
  String get calendar_permission_request => 'የቀን መቁጠሪያ ፈቃድ ጥያቄ';

  @override
  String get calendar_permission_desc =>
      'የንጥል አስታዋሾችን ለማመሳሰል የቀን መቁጠሪያው መዳረሻ ያስፈልጋል። ፍቀድ?';

  @override
  String get allow => 'ፍቀድ';

  @override
  String get calendar_permission_granted =>
      'የቀን መቁጠሪያ ፈቃዶች ተሰጥተዋል፣ እና የቀን መቁጠሪያ ማመሳሰል ነቅቷል';

  @override
  String get calendar_permission_denied =>
      'የቀን መቁጠሪያ ፈቃድ ተከልክሏል፣ የቀን መቁጠሪያ ማመሳሰልን ማንቃት አልተቻለም';

  @override
  String get calendar_permission_permanently_denied => 'ፈቃድ በቋሚነት ተከልክሏል';

  @override
  String get calendar_permission_permanently_denied_desc =>
      'የቀን መቁጠሪያ ፈቃድ በቋሚነት ተከልክሏል። እባክዎ በስርዓት ቅንብሮች ውስጥ ፈቃዱን እራስዎ ያንቁ።';

  @override
  String get go_to_settings => 'ወደ ቅንብሮች ይሂዱ';

  @override
  String get calendar_account_failed =>
      'የቀን መቁጠሪያ ፈቃዶች ተሰጥተዋል፣ ነገር ግን የቀን መቁጠሪያ መለያ ሊፈጠር አይችልም። እባክዎ የስርዓት የቀን መቁጠሪያ ቅንብሮችን ያረጋግጡ።';

  @override
  String get calendar_account_created =>
      'የቀን መቁጠሪያ ፈቃዶች ተሰጥተዋል፣ እና የአካባቢ የቀን መቁጠሪያ መለያ ተፈጥሯል';

  @override
  String get calendar_account_creating =>
      'የቀን መቁጠሪያ መለያው በተሳካ ሁኔታ ተፈጥሯል፣ ነገር ግን ስርዓቱ ተግባራዊ ለመሆን የተወሰነ ጊዜ ሊወስድ ይችላል።';

  @override
  String get test_calendar_event_added => 'የሙከራ ቀን መቁጠሪያ ክስተት በተሳካ ሁኔታ ታክሏል';

  @override
  String get test_calendar_event_failed =>
      'የሙከራ የቀን መቁጠሪያ ክስተት ማከል አልተሳካም፣ እባክዎ የቀን መቁጠሪያ ቅንብሮችዎን ያረጋግጡ';

  @override
  String get calendar_permission_required =>
      'የሙከራ ክስተት ለመጨመር የቀን መቁጠሪያ ፈቃድ ያስፈልጋል';

  @override
  String get test_notification_sent => 'የሙከራ ማሳወቂያ ተልኳል';

  @override
  String test_notification_failed(String error) {
    return 'የሙከራ ማሳወቂያ መላክ አልተሳካም $error';
  }

  @override
  String get notification_permission_required =>
      'የአካባቢ አስታዋሾችን ለማንቃት የማሳወቂያ ፈቃዶች ያስፈልጋሉ';

  @override
  String operation_failed(String error) {
    return 'ክዋኔ አልተሳካም $error';
  }

  @override
  String get notification_channel_name => 'የንጥል ማንቂያ ማስታወቂያ';

  @override
  String get notification_channel_description => 'የንጥል ማብቂያ ወይም የዋስትና አስታዋሽ';

  @override
  String get item_category_food => 'ምግብ';

  @override
  String get item_category_daily_necessities => 'ዕለታዊ ፍላጎቶች';

  @override
  String get item_category_cosmetics => 'የመዋቢያ ቁሳቁሶች';

  @override
  String get item_category_medicine => 'መድሃኒት';

  @override
  String get item_category_electronics => 'የኤሌክትሮኒክ ምርቶች';

  @override
  String get item_category_furniture => 'የቤት ዕቃ';

  @override
  String get item_category_clothing => 'ልብስ';

  @override
  String get item_category_books => 'መጽሐፍት';

  @override
  String get item_category_other => 'ሌላ';

  @override
  String get purchase_channel_online_mall => 'የመስመር መደብር';

  @override
  String get purchase_channel_physical_store => 'አካላዊ መደብር';

  @override
  String get purchase_channel_supermarket => 'ሱፐርማርኬት';

  @override
  String get purchase_channel_specialty_store => 'ልዩ መደብር';

  @override
  String get purchase_channel_secondhand_market => 'ሁለተኛ እጅ ገበያ';

  @override
  String get purchase_channel_other => 'ሌላ';

  @override
  String get default_category => 'ሌላ';

  @override
  String get default_purchase_channel => 'የመስመር መደብር';

  @override
  String get item_category => 'የንጥል ምደባ';

  @override
  String get custom_category => 'ብጁ ምድብ';

  @override
  String get backup_data => 'የመጠባበቂያ ውሂብ';

  @override
  String get backup_data_description =>
      'ለመጠባበቂያ ሁሉንም ውሂብ (ምስሎችን ጨምሮ) ወደ ዚፕ ፋይል ያሽጉ';

  @override
  String get backup_all_data => 'ሁሉንም ውሂብ ምትኬ ያስቀምጡ';

  @override
  String get backup_success => 'ምትኬ ተሳክቷል';

  @override
  String backup_failed(String error) {
    return 'ምትኬ አልተሳካም $error';
  }

  @override
  String get restore_data => 'ውሂብ መልሰው ያግኙ';

  @override
  String get restore_data_description => 'ሁሉንም ውሂብ ከዚፕ ምትኬ ፋይል ወደነበረበት ይመልሱ';

  @override
  String get export_data => 'ውሂብ መላኪያ';

  @override
  String get export_data_description => 'እንደ CSV, TXT, SQL ቅርጸት ወደ ውጪ ላክ';

  @override
  String get import_data => 'ዳታ ማምጫ';

  @override
  String get import_data_description => 'ከCSV, TXT, SQL ፋይሎች ውሂብ አስመጣ';

  @override
  String get alert_settings_description =>
      'የቀን መቁጠሪያ አስታዋሾች እና የመተግበሪያ ግፋ ማሳወቂያ ቅንብሮች';

  @override
  String get about => 'ስለ';

  @override
  String get about_description => 'የመተግበሪያ መረጃ እና ስሪት';

  @override
  String get select_backup_file_first => 'እባክዎ መጀመሪያ የመጠባበቂያ ፋይል ይምረጡ';

  @override
  String get confirm_restore => 'ወደነበረበት መመለስን ያረጋግጡ';

  @override
  String get confirm_restore_message =>
      'መጠባበቂያውን ወደነበረበት መመለስ ሁሉንም ነባር መረጃዎች ይሰርዛል እና በመጠባበቂያ ውሂብ ይተካዋል። ይህ እርምጃ ሊቀለበስ አይችልም። መቀጠል እንደምትፈልግ እርግጠኛ ነህ?';

  @override
  String get confirm_again => 'እንደገና አረጋግጥ';

  @override
  String get confirm_restore_warning =>
      'እርግጠኛ ነዎት ሁሉንም ነባር ውሂብ ማጥፋት እና ምትኬ ወደነበረበት መመለስ ይፈልጋሉ? ይህ እርምጃ ሊቀለበስ አይችልም!';

  @override
  String get confirm_restore_button => 'ወደነበረበት መመለስን ያረጋግጡ';

  @override
  String restore_success(int count) {
    return 'ተሃድሶ ስኬታማ ፣ በአጠቃላይ $count እቃዎች';
  }

  @override
  String restore_failed(String error) {
    return 'እነበረበት መልስ አልተሳካም $error';
  }

  @override
  String get select_backup_file => 'የመጠባበቂያ ፋይል ይምረጡ';

  @override
  String get restore_backup => 'ምትኬን ወደነበረበት ይመልሱ';

  @override
  String selected_file(String filename) {
    return 'የተመረጠው ፋይል $filename';
  }

  @override
  String get export_success => 'የውሂብ መላክ ስኬታማ';

  @override
  String export_failed(String error) {
    return 'መላክ አልተሳካም $error';
  }

  @override
  String get format_csv => 'ሲ.ኤስ.ቪ';

  @override
  String get format_txt => 'የ TXT';

  @override
  String get format_sql => 'SQL';

  @override
  String get duplicate_data_handling => 'የተባዛ የውሂብ ሂደት';

  @override
  String get duplicate_data_detected => 'የተባዛ ውሂብ ተገኝቷል፣ እባክዎ የአያያዝ ዘዴን ይምረጡ -';

  @override
  String get skip => 'ዝለል';

  @override
  String get overwrite => 'መሸፈኛ';

  @override
  String get skip_all => 'ሁሉንም ዝለል';

  @override
  String get overwrite_all => 'ሙሉ ሽፋን';

  @override
  String get select_import_format_first => 'እባክዎ መጀመሪያ የማስመጣት ቅርጸቱን ይምረጡ';

  @override
  String get confirm_import => 'ማስመጣትን ያረጋግጡ';

  @override
  String get confirm_import_message =>
      'ውሂብ ማስመጣት ያለውን ውሂብ ይተካዋል። ይህ እርምጃ ሊቀለበስ አይችልም። መቀጠል እንደምትፈልግ እርግጠኛ ነህ?';

  @override
  String import_success(int count) {
    return 'የውሂብ ማስመጣት ስኬታማ ነው፣ በአጠቃላይ $count እቃዎች ወደ ሀገር ውስጥ ገብተዋል';
  }

  @override
  String import_failed(String error) {
    return 'ማስመጣት አልተሳካም $error';
  }

  @override
  String get select_file => 'ፋይል ይምረጡ';

  @override
  String get no_data => 'ምንም ውሂብ የለም';

  @override
  String get no_data_description =>
      'በአሁኑ ጊዜ ምንም ውሂብ የለም. የመጀመሪያውን መዝገብ ለመጨመር ከታች ያለውን ቁልፍ ጠቅ ያድርጉ!';

  @override
  String get load_failed => 'በመጫን ላይ አልተሳካም';

  @override
  String get load_failed_description =>
      'የውሂብ መጫን አልተሳካም፣ እባክዎ የአውታረ መረብ ግንኙነትዎን ያረጋግጡ እና እንደገና ይሞክሩ';

  @override
  String get retry => 'እንደገና ሞክር';

  @override
  String get network_connection_failed => 'የአውታረ መረብ ግንኙነት አልተሳካም';

  @override
  String get network_connection_failed_description =>
      'እባክዎ የአውታረ መረብ ግንኙነትዎን ያረጋግጡ እና እንደገና ይሞክሩ';

  @override
  String get no_results => 'ምንም ውጤቶች አልተገኙም';

  @override
  String get no_results_description => 'በሌሎች ቁልፍ ቃላት ለመፈለግ ይሞክሩ';

  @override
  String get clear_search => 'አጽዳ ፍለጋ';

  @override
  String get insufficient_permission => 'በቂ ያልሆኑ ፈቃዶች';

  @override
  String get insufficient_permission_description =>
      'ይህንን ባህሪ ለመጠቀም ተገቢውን ፈቃዶች ያስፈልግዎታል';

  @override
  String get request_permission => 'ፈቃድ ይጠይቁ';

  @override
  String get app_info => 'የመተግበሪያ መረጃ';

  @override
  String get version => 'ትርጉም';

  @override
  String get developer => 'ገንቢ';

  @override
  String get device_info => '设备信息';

  @override
  String get device_model => 'የመሣሪያ ሞዴል';

  @override
  String get brand => 'የምርት ስም';

  @override
  String get device_name => 'የመሣሪያ ስም';

  @override
  String get product => 'ምርት';

  @override
  String get hardware => 'ሃርድዌር';

  @override
  String get android_version => 'የ Android ስሪት';

  @override
  String get sdk_version => 'የኤስዲኬ ሥሪት';

  @override
  String get system_name => 'የስርዓት ስም';

  @override
  String get system_version => 'የስርዓት ስሪት';

  @override
  String get device_identifier => 'የመሣሪያ መለያ';

  @override
  String get computer_name => 'የኮምፒውተር ስም';

  @override
  String get build_number => 'የስሪት ቁጥር';

  @override
  String error_getting_device_info(String error) {
    return 'የመሣሪያ መረጃ ማግኘት አልተቻለም $error';
  }

  @override
  String get features => 'የተግባር መግቢያ';

  @override
  String get app_description => 'ስማርት ንጥል አስተዳደር መተግበሪያ';

  @override
  String get app_description_detail =>
      'እንደ የንጥል ማብቂያ ቀናት እና የዋስትና ቀናት ያሉ መረጃዎችን እንዲያስተዳድሩ ያግዝዎታል እና የማሰብ ችሎታ ያለው አስታዋሽ ተግባራትን ያቀርባል።';

  @override
  String get consumable => 'የፍጆታ ዕቃዎች';

  @override
  String get durable => 'ዘላቂ ዕቃዎች';

  @override
  String get sort => 'ቅደምተከተል';

  @override
  String get name_asc => 'ስም ወደ ላይ እየወጣ';

  @override
  String get name_desc => 'ስም መውረድ';

  @override
  String get date_asc => 'ቀን ወደ ላይ እየጨመረ';

  @override
  String get date_desc => 'ቀን እየወረደ';

  @override
  String get price_asc => 'የክፍል ዋጋ ወደ ላይ እየጨመረ';

  @override
  String get price_desc => 'የክፍል ዋጋ እየወረደ';

  @override
  String get quantity_asc => 'ወደ ላይ የሚወጣው የቁጥር ቅደም ተከተል';

  @override
  String get quantity_desc => 'ብዛት እየቀነሰ';

  @override
  String get total_price_asc => 'ጠቅላላ ዋጋ እየጨመረ';

  @override
  String get total_price_desc => 'ጠቅላላ ዋጋ እየቀነሰ';

  @override
  String get clear_all_filters => 'ሁሉንም ማጣሪያዎች ያጽዱ';

  @override
  String get scan_barcode => 'ቆጠራ ለማስገባት ኮድ ይቃኙ';

  @override
  String get search_items => 'ንጥሎችን ይፈልጉ ...';

  @override
  String get no_items => 'ለአሁን ምንም እቃዎች የሉም';

  @override
  String get no_items_description => 'የመጀመሪያውን ንጥል ለመጨመር ከታች ያለውን ቁልፍ ጠቅ ያድርጉ';

  @override
  String get expired => 'ጊዜው ያለፈበት';

  @override
  String get expiring_soon => 'ጊዜው ሊያበቃ ነው።';

  @override
  String get warranty_expired => 'ዋስትናው ጊዜው አልፎበታል';

  @override
  String get warranty_expiring_soon => 'ዋስትናው ሊያበቃ ነው።';

  @override
  String days_remaining(int count) {
    return 'የቀሩት $count ቀናት';
  }

  @override
  String expired_days_ago(int count) {
    return 'ያለፈባቸው $count ቀኖች';
  }

  @override
  String get delete_item => 'ንጥል ሰርዝ';

  @override
  String delete_item_confirm(String name) {
    return 'እርግጠኛ ነዎት \"$name\" መሰረዝ ይፈልጋሉ?';
  }

  @override
  String get item_deleted => 'እቃው ተሰርዟል';

  @override
  String get failed_to_delete => 'ስረዛ አልተሳካም';

  @override
  String failed_to_delete_message(String error) {
    return 'እቃውን መሰረዝ አልተቻለም $error';
  }

  @override
  String get date_range_filter => 'የቀን ክልል ማጣሪያ';

  @override
  String get price_range_filter => 'የዋጋ ክልል ማጣሪያ';

  @override
  String get my_items => 'የእኔ ንጥሎች';

  @override
  String get click_fab_to_add_item =>
      'ንጥል ለመጨመር ከታች በቀኝ ጥግ ላይ ያለውን ቁልፍ ጠቅ ያድርጉ';

  @override
  String get confirm_delete => 'መሰረዝን ያረጋግጡ';

  @override
  String get filter_options => 'የማጣሪያ አማራጮች';

  @override
  String get filter_by_type_category_location =>
      'እቃዎችን በዓይነት፣ በምድብ እና በአካባቢ አጣራ';

  @override
  String categories_count(int count) {
    return '$count ምድቦች';
  }

  @override
  String get all_categories => 'ሁሉም ምድቦች';

  @override
  String get no_category_data => 'ምንም ምድብ ውሂብ አይገኝም';

  @override
  String get storage_location => 'የማከማቻ ቦታ';

  @override
  String locations_count(int count) {
    return '$count አካባቢዎች';
  }

  @override
  String get all_locations => 'ሁሉም አካባቢዎች';

  @override
  String get no_location_data => 'ምንም የአካባቢ ውሂብ የለም';

  @override
  String get date_range => 'የቀን መጠን';

  @override
  String get select_date_range => 'የቀን ክልል ይምረጡ';

  @override
  String get price_range => 'የዋጋ ክልል';

  @override
  String get unit_price_range => 'ዩኒት የዋጋ ክልል';

  @override
  String get min_unit_price => 'ዝቅተኛው የክፍል ዋጋ';

  @override
  String get max_unit_price => 'ከፍተኛው ዩኒት ዋጋ';

  @override
  String get total_price_range => 'ጠቅላላ የዋጋ ክልል';

  @override
  String get min_total_price => 'ዝቅተኛው ጠቅላላ ዋጋ';

  @override
  String get max_total_price => 'ከፍተኛው ጠቅላላ ዋጋ';

  @override
  String get clear_price_filter => 'የዋጋ ማጣሪያን አጽዳ';

  @override
  String get place_barcode_in_frame => 'ለመቃኘት ባርኮዱን በፍሬም ውስጥ ያስቀምጡት';

  @override
  String get item_already_exists => 'ምርቱ አስቀድሞ አለ';

  @override
  String barcode_with_value(String barcode) {
    return 'የአሞሌ $barcode';
  }

  @override
  String name_with_value(String name) {
    return 'ስም $name';
  }

  @override
  String category_with_value(String category) {
    return 'ምድብ $category';
  }

  @override
  String current_quantity_with_value(String quantity, String unit) {
    return 'የአሁኑ ብዛት $quantity$unit';
  }

  @override
  String get please_select_operation => 'እባክዎ አንድ እርምጃ ይምረጡ -';

  @override
  String get outbound => 'የወጪ';

  @override
  String get inbound => 'የማከማቻ ግቤት';

  @override
  String get inbound_quantity => 'ወደ ውስጥ ብዛት';

  @override
  String get outbound_quantity => 'የወጪ ብዛት';

  @override
  String get quantity => 'ብዛት';

  @override
  String get enter_inbound_quantity => 'እባክዎ የሚከማችበትን መጠን ያስገቡ';

  @override
  String get enter_outbound_quantity => 'እባክዎ የሚላከውን መጠን ያስገቡ';

  @override
  String item_increased(String name, String quantity, String unit) {
    return '$name $quantity$unit ታክሏል';
  }

  @override
  String delete_item_confirm_with_irreversible(String name) {
    return 'እርግጠኛ ነዎት \"$name\" መሰረዝ ይፈልጋሉ? ይህ እርምጃ ሊቀለበስ አይችልም።';
  }

  @override
  String item_decreased(String name, String quantity, String unit) {
    return 'ቀንሷል $name $quantity$unit';
  }

  @override
  String get database_reset =>
      'የውሂብ ጎታው ዳግም ተጀምሯል፣ እና የጠረጴዛው መዋቅር እንደገና ይፈጠራል።';

  @override
  String database_reset_error(String error) {
    return 'የ ዳታቤዝ በ ዳግም ማስጀመር ላይ ስህተት አለ $error';
  }

  @override
  String mock_data_init_failed(String error) {
    return 'አስመሳይ የውሂብ ጅምር አልተሳካም $error';
  }

  @override
  String get solution_steps => 'መፍትሔ';

  @override
  String get solution_step_1 => '1. መተግበሪያውን ያራግፉ እና እንደገና ይጫኑት';

  @override
  String get solution_step_2 => '2. ወይም የመተግበሪያ ውሂብን ያጽዱ';

  @override
  String get solution_step_3 =>
      '3. ወይም resetDatabaseOnStart ወደ እውነት ያቀናብሩ እና እንደገና ያሂዱ';

  @override
  String notification_service_init_failed(String error) {
    return 'የማስታወሻ አገልግሎት ማስጀመር አልተሳካም $error';
  }

  @override
  String check_calendar_account_failed(String error) {
    return 'የቀን መቁጠሪያ መለያን ማረጋገጥ አልተሳካም - $error';
  }

  @override
  String create_calendar_failed(String error) {
    return 'የቀን መቁጠሪያ መፍጠር አልተሳካም $error';
  }

  @override
  String add_calendar_event_failed(String error) {
    return 'የቀን መቁጠሪያ ክስተት ማከል አልተሳካም $error';
  }

  @override
  String delete_calendar_event_failed(String error) {
    return 'የቀን መቁጠሪያ ክስተት መሰረዝ አልተሳካም $error';
  }

  @override
  String set_permission_message_failed(String error) {
    return 'የፍቃድ መጠየቂያ መልእክት ማቀናበር አልተሳካም $error';
  }

  @override
  String mock_data_init_success(int count) {
    return 'በተሳካ ሁኔታ የተጀመረው $count አስመሳይ ውሂብ';
  }

  @override
  String database_has_data(int count) {
    return 'የውሂብ ጎታው አስቀድሞ $count መዝገቦች አሉት፣ የማስመሰል ውሂብ ጅምርን በመዝለል';
  }

  @override
  String get database_structure_mismatch =>
      'በመረጃ ቋቱ መዋቅር ውስጥ ባለው አለመመጣጠን ምክንያት ሊሆን ይችላል. የመተግበሪያውን ውሂብ ለማጽዳት ወይም እንደገና ለመጫን ይመከራል.';

  @override
  String get old_database_deleted => 'የድሮ የውሂብ ጎታ ፋይሎች ተሰርዘዋል';

  @override
  String get backup_data_empty => 'የመጠባበቂያ ውሂብ ባዶ ነው';

  @override
  String get backup_file_not_found => 'የመጠባበቂያ ፋይል የለም';

  @override
  String file_not_utf8(String error) {
    return 'የ ፋይል ኢንኮዲንግ ትክክለኛ አይደለም UTF-8 አቀራረብ እባክዎ ያረጋግጡ file UTF-8 ኢንኮዲንግ በመጠቀም መቀመጡን ያረጋግጡ። የስህተት ዝርዝሮች $error';
  }

  @override
  String file_not_found(String filePath) {
    return 'ፋይሉ የለም $filePath';
  }

  @override
  String file_empty(String filePath) {
    return 'ፋይሉ ባዶ ነው $filePath';
  }

  @override
  String get file_content_empty =>
      'የፋይሉ ይዘት ዲኮድ ከተደረገ በኋላ ባዶ ነው፣ ምናልባትም በኢንኮዲንግ አለመመጣጠን ምክንያት ሊሆን ይችላል';

  @override
  String field_cannot_be_empty(String fieldName) {
    return '$fieldName ባዶ ሊሆን አይችልም';
  }

  @override
  String field_min_length(String fieldName, int minLength) {
    return '$fieldName ርዝመት ከ $minLength ቁምፊዎች ያነሰ ሊሆን አይችልም';
  }

  @override
  String field_max_length(String fieldName, int maxLength) {
    return '$fieldName ርዝመት ከ $maxLength ቁምፊዎች መብለጥ አይችልም';
  }

  @override
  String field_invalid_email(String fieldName) {
    return 'እባክህን ትክክለኛ $fieldName አድራሻ ያስገቡ';
  }

  @override
  String field_invalid_number(String fieldName, String numberType) {
    return '$fieldName $numberType መሆን አለበት';
  }

  @override
  String field_min_value(String fieldName, double min) {
    return '$fieldName ከ $min በታች ሊሆን አይችልም';
  }

  @override
  String field_max_value(String fieldName, double max) {
    return '$fieldName ከ $max ሊበልጥ አይችልም';
  }

  @override
  String field_positive_integer(String fieldName) {
    return '$fieldName አዎንታዊ ኢንቲጀር መሆን አለበት';
  }

  @override
  String field_greater_than_zero(String fieldName) {
    return '$fieldName ከ 0 በላይ መሆን አለበት';
  }

  @override
  String field_positive_number(String fieldName) {
    return '$fieldName አዎንታዊ ቁጥር መሆን አለበት';
  }

  @override
  String field_invalid_date(String fieldName) {
    return 'እባክህን ትክክለኛ $fieldName አስገባ';
  }

  @override
  String field_date_not_past(String fieldName) {
    return '$fieldName ያለፈ ቀን ሊሆን አይችልም';
  }

  @override
  String field_date_not_before(String fieldName, String minDate) {
    return '$fieldName ከ $minDate በፊት ሊሆን አይችልም';
  }

  @override
  String field_date_not_after(String fieldName, String maxDate) {
    return '$fieldName ከ $maxDate ዘግይቶ ሊሆን አይችልም';
  }

  @override
  String field_invalid_value(String fieldName) {
    return 'እባክህን ትክክለኛ $fieldName አስገባ';
  }

  @override
  String password_min_length(String fieldName) {
    return '$fieldName ከ 8 ቁምፊዎች ያነሰ ርዝመት ሊኖረው አይችልም';
  }

  @override
  String password_uppercase_required(String fieldName) {
    return '$fieldName ቢያንስ አንድ አቢይ ሆሄያት መያዝ አለበት';
  }

  @override
  String password_lowercase_required(String fieldName) {
    return '$fieldName ቢያንስ አንድ ትንሽ ሆሄያት መያዝ አለበት';
  }

  @override
  String password_digit_required(String fieldName) {
    return '$fieldName ቢያንስ አንድ ቁጥር መያዝ አለበት';
  }

  @override
  String password_special_char_required(String fieldName) {
    return '$fieldName ቢያንስ አንድ ልዩ ቁምፊ መያዝ አለበት';
  }

  @override
  String get passwords_not_match => 'ሁለት ጊዜ የገቡት የይለፍ ቃሎች አይዛመዱም';

  @override
  String get item_name_cannot_be_empty => 'የንጥል ስም ባዶ ሊሆን አይችልም';

  @override
  String name_max_length(int maxLength) {
    return 'ስሙ ከ $maxLength ቁምፊዎች መብለጥ አይችልም';
  }

  @override
  String quantity_min(int minQuantity) {
    return 'ብዛት ከ $minQuantity ያነሰ ሊሆን አይችልም';
  }

  @override
  String quantity_max(int maxQuantity) {
    return 'መጠኑ ከ $maxQuantity መብለጥ አይችልም';
  }

  @override
  String get unit_price_not_negative => 'የንጥል ዋጋ አሉታዊ ሊሆን አይችልም';

  @override
  String unit_price_max(double maxUnitPrice) {
    return 'የንጥል ዋጋ ከ $maxUnitPrice መብለጥ አይችልም';
  }

  @override
  String get set_production_expiry_for_validity =>
      'ተቀባይነት ያለው ጊዜ በራስ-ሰር ለማስላት እባክዎ የምርት ቀን እና የመደርደሪያ ሕይወት ያዘጋጁ';

  @override
  String get set_purchase_warranty_for_validity =>
      'የዋስትና ጊዜውን በራስ-ሰር ለማስላት እባክዎ የግዢውን ቀን እና የመደርደሪያ ሕይወት ያዘጋጁ';

  @override
  String get calendar_account_creation_failed =>
      'የቀን መቁጠሪያ መለያ መፍጠር አልተቻለም፣ እባክዎ የስርዓት የቀን መቁጠሪያ ቅንብሮችን ያረጋግጡ';

  @override
  String get test_notification => 'የሙከራ ማስታወቂያ';

  @override
  String get test_notification_description =>
      'ይህ የአካባቢ አስታዋሽ ተግባርን ለማረጋገጥ የሚያገለግል የሙከራ ማሳወቂያ ነው';

  @override
  String get day_unit => 'ሰማይ';

  @override
  String days_with_value(int days) {
    return '$days ቀናት';
  }

  @override
  String get item_saved => 'ንጥል ተቀምጧል';

  @override
  String get item_updated => 'ንጥል ተዘምኗል';

  @override
  String get item_added => 'ንጥል ታክሏል';

  @override
  String get save_success => 'በተሳካ ሁኔታ ተቀምጧል';

  @override
  String get update_success => 'አዘምን ተሳክቷል';

  @override
  String get delete_success => 'በተሳካ ሁኔታ ተሰርዟል';

  @override
  String get save_failed => 'ማስቀመጫ አልተሳካም';

  @override
  String get update_failed => 'ዝማኔ አልተሳካም';

  @override
  String get delete_failed => 'ስረዛ አልተሳካም';
}
