// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tamil (`ta`).
class AppLocalizationsTa extends AppLocalizations {
  AppLocalizationsTa([String locale = 'ta']) : super(locale);

  @override
  String get app_name => 'பொருட்களைச் சேமிக்கும் குறுக்கு இடம்';

  @override
  String get cancel => 'ரத்து செய்';

  @override
  String get confirm => 'நிச்சயமாக';

  @override
  String get save => 'சேமி';

  @override
  String get delete => 'நீக்கு';

  @override
  String get edit => 'தொகுக்க';

  @override
  String get add => 'சேர்';

  @override
  String get edit_item => 'பொருளை தொகு';

  @override
  String get add_item => 'பொருளைச் சேர்க்கவும்';

  @override
  String get search => 'தேடு';

  @override
  String get settings => 'அமைப்புகள்';

  @override
  String get language_settings => 'மொழி அமைப்புகள்';

  @override
  String get language_settings_description =>
      'ஆப்ளிகேஷன் காட்சித் தட்டலை மொழி அமைக்கவும்';

  @override
  String get system_default => 'கணினி இயல்புநிலை';

  @override
  String get use_system_language => 'சிஸ்டம் மொழியை பயன்படுத்தவும்';

  @override
  String get language_change_hint =>
      'மொழி மாற்றம் செயலியில் மீண்டும் துவங்கியபின் செயல்படும்';

  @override
  String get back => 'பின்வாங்கு';

  @override
  String get next => 'அடுத்த படி';

  @override
  String get done => 'முடிந்தது';

  @override
  String get loading => 'பதிவேற்று வருகிறது...';

  @override
  String get error => 'தவறு';

  @override
  String get success => 'வெற்றி';

  @override
  String get warning => 'எச்சரிக்கை';

  @override
  String get info => 'தகவல்';

  @override
  String get select_alert_days => 'அறிவிப்பு நாட்களை தேர்வு செய்';

  @override
  String get custom => 'தனிப்பயனாக்கு';

  @override
  String custom_days(int days) {
    return 'தனிப்பயன் ($days நாட்கள்)';
  }

  @override
  String current_selection(int days) {
    return 'நடப்பு தேர்வு: $days நாட்கள்';
  }

  @override
  String alert_days_range(int min, int max) {
    return 'அறிவிப்பு நாட்களின் வரம்பு: $min-$max நாட்கள்';
  }

  @override
  String get enter_days => 'தினங்களை நினைவூட்டுமாறு உள்ளிடவும்';

  @override
  String get days => 'நாட்கள்';

  @override
  String enter_valid_days(int min, int max) {
    return 'தயவுசெய்து $min - $max இடையிலான எண்ணை உள்ளிடவும்';
  }

  @override
  String get alert_settings => 'முன்னெச்சரிக்கை அமைப்புகள்';

  @override
  String get calendar_settings => 'காலண்டர் அமைப்புகள்';

  @override
  String get calendar_sync => 'காலண்டர் ஒத்திசைவு';

  @override
  String get calendar_sync_desc =>
      'செயல்படுத்திய பிறகு காலண்டர் அனுமதியை கோரும்';

  @override
  String get add_test_calendar_event => 'சோதனை காலண்டர் நிகழ்வை சேர்க்கவும்';

  @override
  String get enable_calendar_sync_first =>
      'முதலில் \'காலண்டர் ஒத்திசைவு\' சுவிட்சை இயக்கவும்';

  @override
  String get app_alert_settings => 'ஆப் அறிவிப்பு அமைப்புகள்';

  @override
  String get local_alerts => 'உள்ளூராட்சி நினைவூட்டல்';

  @override
  String get local_alerts_desc =>
      'செயலியில் காலாவதியான கருத்துகளை பெற திறக்கவும்';

  @override
  String get send_test_notification => ' சோதனை அறிவிப்பு அனுப்பு ';

  @override
  String get enable_local_alerts_first =>
      'முதலில் \'உள்ளூர் கருத்துகுறிப்பு\' சுவிட்சை இயக்கவும்';

  @override
  String get alert_days_settings => 'அறிவிப்பு நாட்கள் அமைத்தல்';

  @override
  String get advance_alert_days => 'முன்னதாக நினைவூட்டும் நாட்கள்';

  @override
  String get advance_alert_days_desc =>
      'உருப்படியின் காலாவதியாகும் தேதி அல்லது உத்தரவாத மதிப்ப 날 க்கும் முன் எத்தனை நாட்களுக்கு முன் நினைவூட்டவேண்டும் என்பதைக் கட்டமைக்கவும்';

  @override
  String get calendar_permission_request => 'பணிச் சட்டிகையின் அனுமதி கோரிக்கை';

  @override
  String get calendar_permission_desc =>
      'உருப்படி நினைவூட்டல்களை ஒத்திசைக்க காலண்டர் அனுமதி தேவைப்படுகிறது. அனுமதிக்கவிடுகிறீர்களா?';

  @override
  String get allow => 'அனுமதிக்கவும்';

  @override
  String get calendar_permission_granted =>
      'கேலண்டர் அனுமதி வழங்கப்பட்டுள்ளது, கேலண்டர் ஒத்திசைவு துவங்கப்பட்டது';

  @override
  String get calendar_permission_denied =>
      'கேலண்டர் அனுமதி ரத்து செய்யப்பட்டது, கேலண்டர் ஒத்திசைவு தொடங்க முடியாது';

  @override
  String get calendar_permission_permanently_denied =>
      'அனுமதி நிரந்தரமாக நிராகரிக்கப்பட்டது';

  @override
  String get calendar_permission_permanently_denied_desc =>
      'காலண்டர் அனுமதி நிரந்தரமாக மறுக்கப்பட்டுள்ளது, தயவுசெய்து அமைப்புகளில் கைமுறையாக அனுமதியை செயல்படுத்தவும்.';

  @override
  String get go_to_settings => 'செட்டிங்கிற்கு செல்ல';

  @override
  String get calendar_account_failed =>
      'க்யாலெண்டர் அனுமதி வழங்கப்பட்டது, ஆனால் க்யாலெண்டர் கணக்கை உருவாக்க முடியவில்லை. சிஸ்டம் க்யாலெண்டர் அமைப்புகளை சரிபார்க்கவும்';

  @override
  String get calendar_account_created =>
      'காலண்டர் அனுமதி வழங்கப்பட்டு, உள்ளூர் காலண்டர் கணக்கு உருவாக்கப்பட்டுள்ளது';

  @override
  String get calendar_account_creating =>
      'கலண்டர் கணக்கு வெற்றிகரமாக உருவாக்கப்பட்டது, ஆனால் திட்டம் செயல்பட சில நேரம் தேவைப்படும்';

  @override
  String get test_calendar_event_added =>
      'கேலண்டர் நிகழ்வு 성공மாக சேர்க்கப்பட்டது';

  @override
  String get test_calendar_event_failed =>
      'சோதனை நாட்கலை நிகழ்வை சேர்க்க வினா ஏற்பட்டது, நாட்கலை அமைப்புகளைச் சரிபார்க்கவும்';

  @override
  String get calendar_permission_required =>
      'சோதனை நிகழ்வுகளை சேர்க்க காலண்டர் அனுமதி வேண்டும்';

  @override
  String get test_notification_sent => 'சோதனை அறிவிப்பு அனுப்பப்பட்டது';

  @override
  String test_notification_failed(String error) {
    return 'சோதனை அறிவிப்பை அனுப்ப முடியவில்லை: $error';
  }

  @override
  String get notification_permission_required =>
      'உள்ளூர் நினைவூட்டலை இயக்க அறிவித்தலின் அனுமதி தேவைப்படுகிறது';

  @override
  String operation_failed(String error) {
    return 'செயல்பாடு தோல்வி: $error';
  }

  @override
  String get notification_channel_name => 'பொருள் எச்சரிக்கை அறிவிப்பு';

  @override
  String get notification_channel_description =>
      'பொருட்கள் காலாவதியானது அல்லது காப்பீடு காலாவதியானது குறித்த நினைவூட்டல்';

  @override
  String get item_category_food => 'சமையல் பொருட்கள்';

  @override
  String get item_category_daily_necessities =>
      'தினசரி பயன்பாடுகளின் பொருட்கள்';

  @override
  String get item_category_cosmetics => 'அழகு பொருட்கள்';

  @override
  String get item_category_medicine => 'மருந்து';

  @override
  String get item_category_electronics => 'மின்சாதனங்கள்';

  @override
  String get item_category_furniture => 'குடிசை உபகரணங்கள்';

  @override
  String get item_category_clothing => 'ஆடை';

  @override
  String get item_category_books => 'புத்தகம்';

  @override
  String get item_category_other => 'வேறு';

  @override
  String get purchase_channel_online_mall => 'ஆன்லைன் கடை';

  @override
  String get purchase_channel_physical_store => 'மெய்மான கடை';

  @override
  String get purchase_channel_supermarket => 'சூப்பர் மார்க்கெட்';

  @override
  String get purchase_channel_specialty_store => 'சிறப்பு கடை';

  @override
  String get purchase_channel_secondhand_market => 'இரண்டாம் கை சந்தை';

  @override
  String get purchase_channel_other => 'வேறு';

  @override
  String get default_category => 'வேறு';

  @override
  String get default_purchase_channel => 'ஆன்லைன் கடை';

  @override
  String get item_category => 'பொருட்கள் வகைப்படுத்தல்';

  @override
  String get custom_category => 'தனிப்பயன் வகைப்படுத்தல்';

  @override
  String get backup_data => 'தரவுகளை காப்புப்பிரதி எடுக்கவும்';

  @override
  String get backup_data_description =>
      'அனைத்து தரவுகளையும் (படங்களை உட்பட) ZIP கோப்பாக தொகுத்து காப்புப்பிரதி எடுக்கவும்';

  @override
  String get backup_all_data => 'அனைத்து தரவுகளையும் காப்புப்பிரதி எடுக்கவும்';

  @override
  String get backup_success => 'பதிவு வெற்றிகரமாக முடிந்தது';

  @override
  String backup_failed(String error) {
    return 'நகலை உருவாக்கல் தோல்வி: $error';
  }

  @override
  String get restore_data => 'தரவுகளை மீட்டமைக்க';

  @override
  String get restore_data_description =>
      'ZIP காப்புப்பிரதி கோப்பில் இருந்து அனைத்து தரவையும் மீட்டெடு';

  @override
  String get export_data => 'தரவுகளை ஏற்றுமதி செய்யவும்';

  @override
  String get export_data_description =>
      'CSV, TXT, SQL கோப்புகளாக ஏற்றுமதி செய்யவும்';

  @override
  String get import_data => 'தரவுகளை இறக்குமதி செய்யவும்';

  @override
  String get import_data_description =>
      'CSV, TXT, SQL கோப்புகளிலிருந்து தரவுகளை இறக்குமதி செய்க';

  @override
  String get alert_settings_description =>
      'அட்டவணை நினைவூட்டல் மற்றும் செயலி தள்ளுபடி நினைவூட்டல் அமைப்புகள்';

  @override
  String get about => 'குறித்து';

  @override
  String get about_description => 'ஆப்ளிகேஷன் தகவல் மற்றும் பதிப்பு';

  @override
  String get select_backup_file_first =>
      'முதலில் காப்புப்பிரதி கோப்பை தேர்வு செய்யவும்';

  @override
  String get confirm_restore => 'மறுசீரமைப்பை உறுதிப்படுத்தவும்';

  @override
  String get confirm_restore_message =>
      'பேக்அப் மீட்டமைப்பு அனைத்து உள்ளடக்க தரவுகளையும் காலி செய்து பேக்அப் தரவுகளால் மாற்றும், இந்த நடவடிக்கை திரும்பப்பெற முடியாது. நீங்கள் தொடர விரும்புகிறீர்களா?';

  @override
  String get confirm_again => 'மறுபடியும் உறுதிப்படுத்தவும்';

  @override
  String get confirm_restore_warning =>
      'நீங்கள் அனைத்து தற்போதைய தரவையும் காலியாக செய்து மீண்டும் காப்புப்பிரதி மீட்டெடுக்க விரும்புகிறீர்களா? இந்த செயல்முறை மீட்டெடுக்கமுடியாது!';

  @override
  String get confirm_restore_button => 'மறுசீரமைப்பதை உறுதிசெய்';

  @override
  String restore_success(int count) {
    return 'மீட்டமைப்பு வெற்றிகரமாக, மொத்தம் $count பொருட்கள்';
  }

  @override
  String restore_failed(String error) {
    return 'மீட்டமைப்பு தோல்வி: $error';
  }

  @override
  String get select_backup_file => 'பின்வரிசை கோப்பை தேர்வு செய்யவும்';

  @override
  String get restore_backup => 'பேக்அப் மீட்டமைக்கு';

  @override
  String selected_file(String filename) {
    return 'தேர்ந்த கோப்பு: $filename';
  }

  @override
  String get export_success => 'தரவு ஏற்றுமதி வெற்றிகரமாக நடந்தது';

  @override
  String export_failed(String error) {
    return 'நெறியீடு தோல்வி: $error';
  }

  @override
  String get format_csv => 'CSV';

  @override
  String get format_txt => 'TXT';

  @override
  String get format_sql => 'SQL';

  @override
  String get duplicate_data_handling => 'மறுபடியும் தரவு செயலாக்கம்';

  @override
  String get duplicate_data_detected =>
      'மீள்பிரதி தரவுகள் கண்டுபிடிக்கப்பட்டன, தயவுசெய்து செயலாக்க முறையை தேர்வு செய்யவும்:';

  @override
  String get skip => 'தாண்டி செல்ல';

  @override
  String get overwrite => 'குடைந்தல்';

  @override
  String get skip_all => 'அனைத்தையும் தாண்டி விடுக';

  @override
  String get overwrite_all => 'முழுமையாக மூடப்படுகிறது';

  @override
  String get select_import_format_first =>
      'முதலில் இறக்குமதி வடிவத்தைத் தேர்ந்தெடுக்கவும்';

  @override
  String get confirm_import => 'இறக்குமதி செய்ய உறுதிப்படுத்தவும்';

  @override
  String get confirm_import_message =>
      'தரவை இறக்குமதி செய்தால் தற்போதைய தரவு மத்தியில் நீக்கப்பட்டு மாற்றப்படும், இந்த செயல்முறை திரும்பப்பெற முடியாது. தொடர விரும்புகிறீர்களா?';

  @override
  String import_success(int count) {
    return 'தரவு இறக்குமதி வெற்றிகரமாக உள்ளது, மொத்தம் $count பொருட்கள் இறக்குமதி செய்யப்பட்டது';
  }

  @override
  String import_failed(String error) {
    return 'நுழைப்பு தோல்வி: $error';
  }

  @override
  String get select_file => 'கோப்பை தேர்ந்தெடு';

  @override
  String get no_data => 'தற்போது தரவு இல்லை';

  @override
  String get no_data_description =>
      'தற்போது தரவு இல்லை, கீழுள்ள பொத்தானை அழுத்தி முதல் பதிவை சேர்க்கவும்!';

  @override
  String get load_failed => 'பதிவேற்றம் தோல்வியடைந்தது';

  @override
  String get load_failed_description =>
      'தரவை ஏற்றுவதில் தோல்வி ஏற்பட்டது, தயவுசெய்து நெட்வொர்க் இணைப்பை சரிபார்த்து மீண்டும் முயற்சிக்கவும்';

  @override
  String get retry => 'மறுசேர்ப்பு';

  @override
  String get network_connection_failed => 'இணைய இணைப்பு தோல்வி';

  @override
  String get network_connection_failed_description =>
      'இணைய இணைப்பைச் சரிபார்த்து பின்னர் மீண்டும் முயற்சிக்கவும்';

  @override
  String get no_results => 'முடிவுகள் கிடைக்கவில்லை';

  @override
  String get no_results_description =>
      'வேறு முக்கிய சொற்களை பயன்படுத்தி தேட முயற்சி செய்யுங்கள்';

  @override
  String get clear_search => 'தேடலை அழிக்கவும்';

  @override
  String get insufficient_permission => 'அனுமதி போதாது';

  @override
  String get insufficient_permission_description =>
      'இந்த செயல்பாட்டைப் பயன்படுத்துவதற்கு தொடர்புடைய அனுமதிகள் தேவைப்படுகிறது';

  @override
  String get request_permission => 'அனுமதி கோருங்கள்';

  @override
  String get app_info => 'ஆப் தகவல்';

  @override
  String get version => 'பதிப்பு';

  @override
  String get developer => 'முன்முனைவர்';

  @override
  String get device_info => 'சாதன தகவல்';

  @override
  String get device_model => 'சாதன மாதிரி';

  @override
  String get brand => 'பிராண்டு';

  @override
  String get device_name => 'சாதனத்தின் பெயர்';

  @override
  String get product => 'தயாரிப்பு';

  @override
  String get hardware => 'ஹார்ட்வேர்';

  @override
  String get android_version => 'ஆண்ட்ராய்டு பதிப்பு';

  @override
  String get sdk_version => 'SDK பதிப்பு';

  @override
  String get system_name => 'கணினி அமைப்பின் பெயர்';

  @override
  String get operating_system => 'ஆபரேட்டிங் சிஸ்டம்';

  @override
  String get system_version => 'சிஸ்டம் பதிப்பு';

  @override
  String get dart_version => 'Dart பதிப்பு';

  @override
  String get device_identifier => 'சாதன அடையாளம்';

  @override
  String get computer_name => 'கணினி பெயர்';

  @override
  String get build_number => 'பதிப்பு எண்';

  @override
  String error_getting_device_info(String error) {
    return 'சாதன தகவலைப் பெற முடியவில்லை: $error';
  }

  @override
  String get features => 'செயல்பாட்டு அறிமுகம்';

  @override
  String get app_description => 'அறிவியல் பொருட்கள் மேலாண்மை செயலி';

  @override
  String get app_description_detail =>
      'உங்கள் பொருட்களின் காலாவதியான தேதி, உத்தரவாத காலம் போன்ற தகவல்களை நிர்வகிப்பதில் உதவி செய்யும் மற்றும் புத்திசாலி நினைவூட்டல் செயல்பாட்டை வழங்கும்.';

  @override
  String get consumable => 'செலவுக்குரிய பொருட்கள்';

  @override
  String get durable => 'மிக நீடித்த பொருள்';

  @override
  String get sort => 'வரிசைப்படுத்துதல்';

  @override
  String get name_asc => 'பெயர் ஏறுவரிசை';

  @override
  String get name_desc => 'பெயர் இறங்கும் வரிசை';

  @override
  String get date_asc => 'தேதியின் ஏறுவரிசை';

  @override
  String get date_desc => 'தேதியின் இறங்கும் வரிசை';

  @override
  String get price_asc => 'ஒன்றுக்கட்டின் விலை ஏற順';

  @override
  String get price_desc => 'ஒன்றுக்கான விலை குறைய顺';

  @override
  String get quantity_asc => 'அளவின் உயர்வாக வரிசை';

  @override
  String get quantity_desc => 'அளவின் இறங்கும் வரிசை';

  @override
  String get total_price_asc => 'மொத்த விலை குறைவிருந்து அதிகம் வரிசை';

  @override
  String get total_price_desc => 'மொத்த விலை குறையும் வரிசை';

  @override
  String get clear_all_filters => 'அனைத்து வடிகட்டல்களையும் துடைக்கவும்';

  @override
  String get scan_barcode => 'ஸ்கேன் செய்து கையிருப்பில் சேர்க்கவும்';

  @override
  String get search_items => 'பொருட்களை தேடு...';

  @override
  String get no_items => 'இப்போது எந்த பொருட்களும் இல்லை';

  @override
  String get no_items_description =>
      'கீழே உள்ள பொத்தானை சொடுக்கி முதல் பொருளை சேர்க்கவும்';

  @override
  String get expired => 'காலாவதி';

  @override
  String get expiring_soon => 'முடிவுக்கு வருகிறது';

  @override
  String get warranty_expired => 'வாரண்டி காலாவதியாகிவிட்டது';

  @override
  String get warranty_expiring_soon => 'உறுதிமொழி விரைவில் காலாவதியாகும்';

  @override
  String days_remaining(int count) {
    return 'மீதமுள்ள $count நாட்கள்';
  }

  @override
  String expired_days_ago(int count) {
    return '$count நாட்கள் காலாவதியாகியுள்ளது';
  }

  @override
  String get delete_item => 'பொருளை நீக்கவும்';

  @override
  String delete_item_confirm(String name) {
    return 'நீங்கள் \"$name\"-ஐ நீக்க விர 날ுங் கூகிறீர்களா?';
  }

  @override
  String get item_deleted => 'பொருள் நீக்கப்பட்டது';

  @override
  String get failed_to_delete => 'மறിച്ചெடுக்கும் நடவடிக்கை தோல்வியுற்றது';

  @override
  String failed_to_delete_message(String error) {
    return 'பொருளை நீக்க முடியவில்லை: $error';
  }

  @override
  String get date_range_filter => 'தேதி வரம்பு வடிகட்டி';

  @override
  String get price_range_filter => 'விலை வரம்பு வடிகட்டி';

  @override
  String get my_items => 'எனது பொருட்கள்';

  @override
  String get click_fab_to_add_item =>
      'வலது கீழ் மூலையில் உள்ள பொத்தானை சொடுக்கி பொருட்களை சேர்க்கவும்';

  @override
  String get confirm_delete => 'நீக்குவதை உறுதிப்படுத்தவும்';

  @override
  String get filter_options => 'வடிப்பொருள் தேர்வு';

  @override
  String get filter_by_type_category_location =>
      'வகை, வகைப்படுத்தல் மற்றும் இடம் மூலம் பொருட்களை வடிகட்டவும்';

  @override
  String categories_count(int count) {
    return '$count வகைகள்';
  }

  @override
  String get all_categories => 'அனைத்து வகைகள்';

  @override
  String get no_category_data => 'தற்போது வகைபடுத்தப்பட்ட தரவுகள் இல்லை';

  @override
  String get storage_location => 'சேமிப்பு இடம்';

  @override
  String locations_count(int count) {
    return '$count இடங்கள்';
  }

  @override
  String get all_locations => 'அனைத்து இடங்களும்';

  @override
  String get no_location_data => 'இப்போது இட தகவல் இல்லை';

  @override
  String get date_range => 'தேதி பரப்பு';

  @override
  String get select_date_range => 'தேதியைக் குறிக்க диапазன் தேர்வு செய்க';

  @override
  String get price_range => 'மதிப்பெண் வரம்பு';

  @override
  String get unit_price_range => 'தனிப்பட்ட விலை பரப்பளவு';

  @override
  String get min_unit_price => 'குறைந்தபட்ச ஒற்றை விலை';

  @override
  String get max_unit_price => 'அதிகபட்ச ஒற்றை விலை';

  @override
  String get total_price_range => 'மொத்த விலை வரம்பு';

  @override
  String get min_total_price => 'குறைந்தபட்ச மொத்த விலை';

  @override
  String get max_total_price => 'அதிகபட்ச மொத்த விலை';

  @override
  String get clear_price_filter => 'விலை வடிகட்டலை அழிக்கவும்';

  @override
  String get place_barcode_in_frame => 'பார்கோட்டை பெட்டியில் வைத்துப் பார்';

  @override
  String get item_already_exists => 'பொருள் ஏற்கனவே உள்ளது';

  @override
  String barcode_with_value(String barcode) {
    return 'பார்கோடு: $barcode';
  }

  @override
  String name_with_value(String name) {
    return 'பெயர்: $name';
  }

  @override
  String category_with_value(String category) {
    return '分类：$category';
  }

  @override
  String current_quantity_with_value(String quantity, String unit) {
    return 'தற்போதைய რაოდენை：$quantity$unit';
  }

  @override
  String get please_select_operation => 'செயல்பாட்டை தேர்ந்தெடுக்கவும்:';

  @override
  String get outbound => 'பொருட்களை வெளியேற்றுதல்';

  @override
  String get inbound => 'சந்தையில் சேர்க்கப்பட்டது';

  @override
  String get inbound_quantity => 'சேமிப்பு அளவு';

  @override
  String get outbound_quantity => 'வெளியேற்றக் குறியீட்டு அளவு';

  @override
  String get quantity => 'அளவு';

  @override
  String get enter_inbound_quantity =>
      'சந்தைக்கு சேர்க்கும் எண்ணிக்கையை உள்ளிடவும்';

  @override
  String get enter_outbound_quantity =>
      'தயவு செய்து வெளியீட்டு எண்ணிக்கையை உள்ளிடவும்';

  @override
  String delete_item_confirm_with_irreversible(String name) {
    return 'நீங்கள் \"$name\" ஐ நீக்க விரும்புகிறீர்களா? இந்த செயல்பாடு திரும்ப செல்ல முடியாது.';
  }

  @override
  String get database_reset =>
      'தரவுத்தளம் மீட்டமைக்கப்பட்டது, அட்டவணை அமைப்பை மீண்டும் உருவாக்கும்';

  @override
  String database_reset_error(String error) {
    return 'தரவுத்தளத்தை மீட்டமைக்கும் போது பிழை: $error';
  }

  @override
  String mock_data_init_failed(String error) {
    return 'மாதிரி தரவு துவக்கப்படுவதில் தோல்வி: $error';
  }

  @override
  String get solution_steps => 'தீர்வு:';

  @override
  String get solution_step_1 => '1. செயலியை அகற்றி மீண்டும் நிறுவவும்';

  @override
  String get solution_step_2 => '2. அல்லது பயன்பாட்டின் தரவுகளை அழிக்கவும்';

  @override
  String get solution_step_3 =>
      '3. அல்லது resetDatabaseOnStart ஐ true ஆக அமைத்து மீண்டும் இயக்கவும்';

  @override
  String notification_service_init_failed(String error) {
    return 'அறிவிப்பு சேவை துவக்க தோல்வி: $error';
  }

  @override
  String check_calendar_account_failed(String error) {
    return 'கலண்டர் கணக்கை சரிபார்க்க 실패: $error';
  }

  @override
  String create_calendar_failed(String error) {
    return 'கேலண்டரை உருவாக்க முடியவில்லை: $error';
  }

  @override
  String add_calendar_event_failed(String error) {
    return 'கலண்டர் நிகழ்வை சேர்க்க வினா: $error';
  }

  @override
  String delete_calendar_event_failed(String error) {
    return 'காலண்டர் நிகழ்வை நீக்க வினா தோல்வியடைந்தது: $error';
  }

  @override
  String set_permission_message_failed(String error) {
    return 'அனுமதி கருத்துப்பெறல் செய்தியை அமைக்க முயற்சித்ததில் தோல்வியடைந்தது: $error';
  }

  @override
  String mock_data_init_success(int count) {
    return '$count சிமுலேஷன் தரவுகள் வெற்றிகரமாக தொடங்கப்பட்டது';
  }

  @override
  String database_has_data(int count) {
    return 'தரவுத்தளத்தில் ஏற்கனவே $count பதிவுகள் உள்ளன, மாதிரியான தரவு ஆரம்பிப்பை தவிர்க்கவும்';
  }

  @override
  String get database_structure_mismatch =>
      'சாத்தியமாக தரவுத்தள அமைப்பு பொருந்தவில்லை, செயலியில் உள்ள தரவுகளை நீக்க அல்லது மீண்டும் நிறுவ பரிந்துரைக்கப்படுகிறது';

  @override
  String get old_database_deleted => 'பழைய தரவுத்தள கோப்புகள் நீக்கப்பட்டுள்ளன';

  @override
  String get backup_data_empty => 'பின்வரிசை தரவுகள் காலியாக உள்ளன';

  @override
  String get backup_file_not_found => 'பின்வரிசை கோப்பு இல்லை';

  @override
  String file_not_utf8(String error) {
    return 'கோப்பு குறியீடு செல்லுபடியான UTF-8 வடிவம் değildir. கோப்பு UTF-8 குறியீட்டில் சேமிக்கப்பட்டுள்ளது என்பதை உறுதிசெய்யவும். தப்பான விவரம்: $error';
  }

  @override
  String file_not_found(String filePath) {
    return 'கோப்பு 存在 இல்லை: $filePath';
  }

  @override
  String file_empty(String filePath) {
    return 'கோப்பு காலியாக உள்ளது: $filePath';
  }

  @override
  String get file_content_empty =>
      'கோப்பு உள்ளடக்கம் டிகோட் செய்த பிறகு காலியாக உள்ளது, இது குறியீடு பொருந்தவில்லை என்பதைக் காட்டுகிறது';

  @override
  String field_cannot_be_empty(String fieldName) {
    return '$fieldName காலியாக இருக்க முடியாது';
  }

  @override
  String field_min_length(String fieldName, int minLength) {
    return '$fieldName நீளம் $minLength எழுத்துகளுக்குக் குறைவாக இருக்கக்கூடாது';
  }

  @override
  String field_max_length(String fieldName, int maxLength) {
    return '$fieldName நீளம் $maxLength எழுத்துகளைக் கடந்திருக்க முடியாது';
  }

  @override
  String field_invalid_email(String fieldName) {
    return 'தயவுசெய்து செல்லுபடியாகும் $fieldName முகவரியை உள்ளிடவும்';
  }

  @override
  String field_invalid_number(String fieldName, String numberType) {
    return '$fieldName $numberType ஆக இருக்க வேண்டும்';
  }

  @override
  String field_min_value(String fieldName, double min) {
    return '$fieldName $min-ஐ விட குறைவாக இருக்கக்கூடாது';
  }

  @override
  String field_max_value(String fieldName, double max) {
    return '$fieldName $max-ஐ விட பெரியதாக இருக்கக்கூடாது';
  }

  @override
  String field_positive_integer(String fieldName) {
    return '$fieldName நேர்மறை முழு எண் ஆக இருக்க வேண்டும்';
  }

  @override
  String field_greater_than_zero(String fieldName) {
    return '$fieldName 0 க்கும் அதிகமாக இருக்க வேண்டும்';
  }

  @override
  String field_positive_number(String fieldName) {
    return '$fieldName நேர்மறையான எண் ஆக வேண்டும்';
  }

  @override
  String field_invalid_date(String fieldName) {
    return 'சரியான $fieldName ஐ உள்ளிடுக';
  }

  @override
  String field_date_not_past(String fieldName) {
    return '$fieldName கடந்த தேதியாக இருக்க முடியாது';
  }

  @override
  String field_date_not_before(String fieldName, String minDate) {
    return '$fieldName $minDate-க்கு முந்தியதாக இருக்க முடியாது';
  }

  @override
  String field_date_not_after(String fieldName, String maxDate) {
    return '$fieldName $maxDate-க்கு மேல் தாமதமாக இருக்கக்கூடாது';
  }

  @override
  String field_invalid_value(String fieldName) {
    return 'சரியான $fieldName ஐ உள்ளிடுக';
  }

  @override
  String password_min_length(String fieldName) {
    return '$fieldName நீளம் 8 எழுத்துக்களுக்கு குறைவாக இருக்க கூடாது';
  }

  @override
  String password_uppercase_required(String fieldName) {
    return '$fieldName குறைந்தது ஒரு பெரிய எழுத்தினை கொண்டிருக்க வேண்டும்';
  }

  @override
  String password_lowercase_required(String fieldName) {
    return '$fieldName குறைந்தபட்சம் ஒரு சிறிய எழுத்தை கொண்டிருக்க வேண்டும்';
  }

  @override
  String password_digit_required(String fieldName) {
    return '$fieldName குறைந்தது ஒரு இலக்கத்தை கொண்டிருக்க வேண்டும்';
  }

  @override
  String password_special_char_required(String fieldName) {
    return '$fieldName குறைந்தது ஒரு சிறப்பு எழுத்தை உடையதாக இருக்க வேண்டும்';
  }

  @override
  String get passwords_not_match =>
      'இரண்டு முறை உள்ளீடு செய்யப்பட்ட கடவுச்சொல்一致 இல்லை';

  @override
  String get item_name_cannot_be_empty => 'பொருளின் பெயரை காலியாக விட முடியாது';

  @override
  String name_max_length(int maxLength) {
    return 'பெயர் $maxLength குறியீடுகளை மீறக்கூடாது';
  }

  @override
  String quantity_min(int minQuantity) {
    return 'அளவு $minQuantity விட குறைவாக இருக்க கூடாது';
  }

  @override
  String quantity_max(int maxQuantity) {
    return 'எண்ணிக்கை $maxQuantity ஐ விட அதிகமாக இருக்க முடியாது';
  }

  @override
  String get unit_price_not_negative =>
      'யூனிட் விலை எதிர்மறையாக இருக்க முடியாது';

  @override
  String unit_price_max(double maxUnitPrice) {
    return 'ஒற்றை விலை $maxUnitPrice க்கைக் கூடாதது';
  }

  @override
  String get set_production_expiry_for_validity =>
      'தயவுசெய்து தயாரிப்பு தேதி மற்றும் கடைசித் தேதி காலத்தை அமைத்து செல்லுபடியான காலத்தை தானாக கணக்கிடவும்';

  @override
  String get set_purchase_warranty_for_validity =>
      'கட்டணத் தேதி மற்றும் காப்புறுதி காலத்தை தானாகக் கணக்கிட காம்பிள் செய்யவும்';

  @override
  String get calendar_account_creation_failed =>
      'கேலண்டர் கணக்கை உருவாக்க முடியவில்லை, சிஸ்டம் காலண்டர் அமைப்புகளைச் சரிபார்க்கவும்';

  @override
  String get test_notification => 'சோதனை அறிவிப்பு';

  @override
  String get test_notification_description =>
      'இது ஒரு சோதனை அறிவிப்பு, உள்ளூர் நினைவூட்டல் செயல்பாட்டை சரிபார்க்கும் நோக்கில் உள்ளது';

  @override
  String get day_unit => 'வானம்';

  @override
  String days_with_value(int days) {
    return '$days நாட்கள்';
  }

  @override
  String get item_saved => 'பொருள் சேமிக்கப்பட்டது';

  @override
  String get item_updated => 'பொருள் புதுப்பிக்கப்பட்டது';

  @override
  String get item_added => 'பொருள் சேர்க்கப்பட்டது';

  @override
  String get save_success => 'சேமிப்பு வெற்றிகரமாக முடிந்தது';

  @override
  String get update_success => 'புதுப்பிப்பு வெற்றிகரமாக முடிந்தது';

  @override
  String get delete_success => 'முயற்சி வெற்றிகரமானது';

  @override
  String get save_failed => 'சேமிப்பதில் தோல்வி';

  @override
  String get update_failed => 'புதுப்பிப்பு தோல்வியடைந்தது';

  @override
  String get delete_failed => 'மறിച്ചெடுக்கும் நடவடிக்கை தோல்வியுற்றது';

  @override
  String get test_calendar_event => 'கணக்கு நாட்காட்டி நிகழ்வு';

  @override
  String get test_calendar_event_description =>
      'இத یک சோதனை நிகழ்வு, காலண்டர் செயல்பாட்டை சோதிக்க பயன்படுத்தப்படுகிறது';

  @override
  String get in_app => 'ஆப் உள்ளே';

  @override
  String get enable_alert => 'காலாவதி நினைவூட்டலை செயல்படுத்தவும்';

  @override
  String get alert_method => 'மறைவிப்பது முறைகள்';

  @override
  String get alert_method_in_app => 'மாற்றம் மட்டும் பயன்பாட்டில்';

  @override
  String get alert_method_calendar => 'மாற்றம் தினசரி';

  @override
  String get alert_method_both => 'இரண்டும்';

  @override
  String get alert_days_before => 'முன்னதாக நினைவூட்டும் நாட்கள்';

  @override
  String get use_global_setting => 'உலகளாவிய அமைப்புகளைப் பயன்படுத்துக';

  @override
  String get barcode_label => 'பார்ம்கோட்';

  @override
  String get name_label => 'பெயர்';

  @override
  String get category_label => 'வகைப்படுத்துதல்';

  @override
  String get current_quantity => 'தற்போதைய எண்ணிக்கை';

  @override
  String get select_operation => 'செயல்பாட்டை தேர்வுசெய்க';

  @override
  String get unit => 'அலகு';

  @override
  String get custom_unit => 'தனிப்பயன் அலகு';

  @override
  String get enter_unit => 'தயவுசெய்து அலகை உள்ளிடவும்';

  @override
  String get custom_location => 'தனிப்பயன் இடம்';

  @override
  String get enter_storage_location => 'சேமிப்பு இடத்தை உள்ளிடவும்';

  @override
  String get scan => 'கோட் ஸ்கேன் செய்யவும்';

  @override
  String get scan_to_stock => 'ஸ்கேன் செய்து கையிருப்பில் சேர்க்கவும்';

  @override
  String get item_categories => 'பொருட்கள் வகைப்படுத்தல்';

  @override
  String get storage_locations => 'சேமிப்பு இடம்';

  @override
  String get place_barcode_in_frame_to_scan =>
      'பார்கோட்டை ஸ்கேன் செய்ய பெட்டிக்குள் வைத்து வையுங்கள்';

  @override
  String get barcode => 'பார்கோடு';

  @override
  String get enter_barcode_or_scan =>
      'தயவு செய்து பார் கோடு அல்லது ஸ்கேன் கோடு உள்ளிடவும்';

  @override
  String get basic_information => 'அடிப்படை தகவல்';

  @override
  String get item_name => 'பொருளின் பெயர்';

  @override
  String get enter_item_name => 'பொருளின் பெயரை உள்ளிடவும்';

  @override
  String get enter_category_name => 'தரவகை பெயரை உள்ளிடவும்';

  @override
  String item_increased(String itemName, String quantity, String unit) {
    return '$itemName $quantity$unit சேர்க்கப்பட்டுள்ளது';
  }

  @override
  String item_decreased(String itemName, String quantity, String unit) {
    return '$itemName $quantity $unit குறைக்கப்பட்டது';
  }
}
