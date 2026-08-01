// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Khmer Central Khmer (`km`).
class AppLocalizationsKm extends AppLocalizations {
  AppLocalizationsKm([String locale = 'km']) : super(locale);

  @override
  String get app_name => 'ផ្ទះស្អាតសម្រាប់ផ្ទុករបស់';

  @override
  String get cancel => 'បោះបង់';

  @override
  String get confirm => 'កំណត់';

  @override
  String get save => 'រក្សាទុក';

  @override
  String get delete => 'លុប';

  @override
  String get edit => 'កែសម្រួល';

  @override
  String get add => 'បន្ថែម';

  @override
  String get edit_item => 'កែសម្រួលអត្ថបទ';

  @override
  String get add_item => 'បន្ថែមទំនិញ';

  @override
  String get search => 'ស្វែងរក';

  @override
  String get settings => 'ការកំណត់';

  @override
  String get language_settings => 'ការកំណត់ភាសា';

  @override
  String get language_settings_description => 'កំណត់ភាសាបង្ហាញកម្មវិធី';

  @override
  String get system_default => 'លំនាំដើមប្រព័ន្ធ';

  @override
  String get use_system_language => 'ប្រើភាសារបស់ប្រព័ន្ធ';

  @override
  String get language_change_hint =>
      'ការផ្លាស់ប្តូរភាសានឹងមានប្រសិទ្ធភាពបន្ទាប់ពីកម្មវិធីបានបើកឡើងវិញ';

  @override
  String get back => 'ត្រឡប់វិញ';

  @override
  String get next => 'ជំហ៊ងបន្ទាប់';

  @override
  String get done => 'បញ្ចប់';

  @override
  String get loading => 'កំពុងផ្ទុក...';

  @override
  String get error => 'កំហុស';

  @override
  String get success => 'ជោគជ័យ';

  @override
  String get warning => 'ការព្រមាន';

  @override
  String get info => 'ព័ត៌មាន';

  @override
  String get select_alert_days => 'ជ្រើសរើសចំនួនថ្ងៃរំលឹក';

  @override
  String get custom => 'ផ្ទាល់ខ្លួនកំណត់';

  @override
  String custom_days(int days) {
    return 'កំណត់ដោយខ្លួនឯង ($days ថ 날)';
  }

  @override
  String current_selection(int days) {
    return 'ជ្រើសរើសបច្ចុប្បន្ន៖ $days ថ្ងៃ';
  }

  @override
  String alert_days_range(int min, int max) {
    return 'ជួរថ្ងៃរំលឹក៖ $min-$max ថ្ងៃ';
  }

  @override
  String get enter_days => 'សូមបញ្ចូលចំនួនថ្ងៃរំលឹក';

  @override
  String get days => 'ចំនួនថ្ងៃ';

  @override
  String enter_valid_days(int min, int max) {
    return 'សូមបញ្ចូលលេខរវាង $min និង $max';
  }

  @override
  String get alert_settings => 'ការកំណត់ការព្រមាន';

  @override
  String get calendar_settings => 'ការកំណត់ប្រតិទិន';

  @override
  String get calendar_sync => 'ការមានសម័យប្រតិទិន';

  @override
  String get calendar_sync_desc => 'បើករួចនឹងស្នើសុំសិទ្ធិប្រើប្រតិទិន';

  @override
  String get add_test_calendar_event => 'បញ្ចូលព្រឹត្តិការណ៍ប្រតិទិនសាកល្បង';

  @override
  String get enable_calendar_sync_first => 'សូមបើកប៊ូតុង \'សមមួលប្រតិទិន\' មុន';

  @override
  String get app_alert_settings => 'ការកំណត់ការជូនដំណឹងកម្មវិធី';

  @override
  String get local_alerts => 'ការរំឮខ្លួនផ្ទាល់';

  @override
  String get local_alerts_desc =>
      'បើកបន្ទាប់ពីទទួលការរំលឹកផុតកំណត់នៅក្នុងកម្មវិធី';

  @override
  String get send_test_notification => 'ផ្ញើសារ​ផ្ទៀងផ្ទាត់';

  @override
  String get enable_local_alerts_first =>
      'សូមបើកប៊ូតុង \'ការជំរាបជានៅមូលដ្ឋាន\' មុន';

  @override
  String get alert_days_settings => 'ការកំណត់ចំនួនថ្ងៃរំលឹក';

  @override
  String get advance_alert_days => 'ចំនួនថ្ងៃដើម្បីជូនការជូនដំណឹងមុន';

  @override
  String get advance_alert_days_desc =>
      'កំណត់លទ្ធផលជាផ្ទាល់មុនពីរោងខែប៉ុន្មានថ្ងៃដើម្បីរំលឹកទិន្នន័យផុតកំណត់ឬផុតកាលបរិច្ឆេទការធានា';

  @override
  String get calendar_permission_request => 'សំណើសុំសិទ្ធិប្រើប្រតិទិន';

  @override
  String get calendar_permission_desc =>
      'ត្រូវការឲ្យមានការចូលដំណើរការបញ្ជីកាលណ្ដៅដើម្បីសមូសការជូនដំណឹងអំពីវត្ថុ។ តើអាចអនុញ្ញាតបានទេ?';

  @override
  String get allow => 'អនុញ្ញាត';

  @override
  String get calendar_permission_granted =>
      'ការអនុញ្ញាតិប្រតិទិនត្រូវបានផ្ដល់ហើយ ការសមរម្យប្រតិទិនត្រូវបានបើក';

  @override
  String get calendar_permission_denied =>
      'ការអនុញ្ញាតិប្រតិទិនត្រូវបានបដិសេធ​មិនអាចបើកការសម្របសម្រួលប្រតិទិន';

  @override
  String get calendar_permission_permanently_denied =>
      'សិទ្ធិត្រូវបានបដិសេធជាអចិន្រ្តៃ';

  @override
  String get calendar_permission_permanently_denied_desc =>
      'សិទ្ធិប្រតិទិនត្រូវបានបដិសេធជាប្រចាំ សូមបើកសិទ្ធិដោយដៃនៅក្នុងការកំណត់ប្រព័ន្ធ។';

  @override
  String get go_to_settings => 'ទៅកំណត់';

  @override
  String get calendar_account_failed =>
      'សិទ្ធិប្រើប្រាស់ប្រតិទិនត្រូវបានផ្ដល់ហើយ ប៉ុន្តែមិនអាចបង្កើតគណនីប្រតិទិនបាន។ សូមពិនិត្យការកំណត់ប្រតិទិនក្នុងប្រព័ន្ធ។';

  @override
  String get calendar_account_created =>
      'សិទ្ធិប្រតិទិនត្រូវបានផ្ដល់ហើយ បានបង្កើតគណនីប្រតិទិនក្នុងស្រុករួចរាល់';

  @override
  String get calendar_account_creating =>
      'ការបង្កើតគណនីប្រតិទិនបានជោគជ័យ ប៉ុន្តែប្រព័ន្ធអាចត្រូវការ​ពេលខ្លះដើម្បីប្រតិបត្តិ';

  @override
  String get test_calendar_event_added =>
      'សាកល្បងការបន្ថែមព្រឹត្តិការណ៍ប្រតិទិនបានជោគជ័យ';

  @override
  String get test_calendar_event_failed =>
      'បញ្ចូលព្រឹត្តិការណ៍ប្រតិទិនសំរាប់ការធ្វើតេស្តបរាជ័យ សូមពិនិត្យការកំណត់ប្រតិទិន';

  @override
  String get calendar_permission_required =>
      'ត្រូវការចូលដំណើរការប្រតិទិនដើម្បីបន្ថែមព្រឹត្តិការណ៍សាកល្បង';

  @override
  String get test_notification_sent => 'ការជូនដំណឹងសាកល្បងបានផ្ញើរហើយ';

  @override
  String test_notification_failed(String error) {
    return 'ការផ្ញើការជូនដំណឹងសំរាប់សាកល្បងបរាជ័យ៖ $error';
  }

  @override
  String get notification_permission_required =>
      'ត្រូវការជូនដំណឹងអាជ្ញាប័ណ្ណដើម្បីបើកការណាត់ជួនខ្លួននៅក្នុងស្រុក';

  @override
  String operation_failed(String error) {
    return 'ប្រតិបត្តិការបរាជ័យ: $error';
  }

  @override
  String get notification_channel_name => 'ការជូនដំណឹងការព្រមានអំពីវត្ថុ';

  @override
  String get notification_channel_description =>
      'ការរំលឹកពីរបស់ផុតកំណត់ ឬផុតការធានា';

  @override
  String get item_category_food => 'អាហារ';

  @override
  String get item_category_daily_necessities => 'ទំនិញប្រើប្រាស់ប្រចាំថ្ងៃ';

  @override
  String get item_category_cosmetics => 'គ្រឿងសម្អាង';

  @override
  String get item_category_medicine => 'ថ្នាំ';

  @override
  String get item_category_electronics => 'ផលិតផលអេឡិចត្រូនិច';

  @override
  String get item_category_furniture => 'គ្រឿងសង្ហារឹម';

  @override
  String get item_category_clothing => 'សម្លៀកបំពាក់';

  @override
  String get item_category_books => 'សៀវភៅ';

  @override
  String get item_category_other => 'ផ្សេងទៀត';

  @override
  String get purchase_channel_online_mall => 'ហាងអនឡាញ';

  @override
  String get purchase_channel_physical_store => 'ហាង​ព្រះរាជា';

  @override
  String get purchase_channel_supermarket => 'ស្មោងពាណិជ្ជកម្ម';

  @override
  String get purchase_channel_specialty_store => 'ហាងលក់ឯកតា';

  @override
  String get purchase_channel_secondhand_market => 'ផ្សារទំនិញប្រើរួច';

  @override
  String get purchase_channel_other => 'ផ្សេងទៀត';

  @override
  String get default_category => 'ផ្សេងទៀត';

  @override
  String get default_purchase_channel => 'ហាងអនឡាញ';

  @override
  String get item_category => 'ចំណាត់ថ្នាក់វត្ថុ';

  @override
  String get custom_category => 'ចំណាត់ថ្នាក់ផ្ទាល់ខ្លួន';

  @override
  String get backup_data => 'ការបម្រុងទិន្នន័យ';

  @override
  String get backup_data_description =>
      'បញ្ចូលទិន្នន័យទាំងអស់ (រួមទាំងរូបភាព) ទៅក្នុងឯកសារ ZIP សម្រាប់ការបម្រុងទុក';

  @override
  String get backup_all_data => 'បម្រុងទិន្នន័យទាំងអស់';

  @override
  String get backup_success => 'ការបម្រុងទុកបានជោគជ័យ';

  @override
  String backup_failed(String error) {
    return 'ការបម្រុងទុកបរាជ័យ៖ $error';
  }

  @override
  String get restore_data => 'ស្តារទិន្នន័យ';

  @override
  String get restore_data_description =>
      'ស្តារទិន្នន័យទាំងអស់ពីឯកសារបម្រុងទុក ZIP';

  @override
  String get export_data => 'នាំចេញទិន្នន័យ';

  @override
  String get export_data_description => 'នាំចេញជា​ទ្រង់ទ្រាយ CSV、TXT、SQL';

  @override
  String get import_data => 'នាំចូលទិន្នន័យ';

  @override
  String get import_data_description => 'នាំចូលទិន្នន័យពីឯកសារ CSV、TXT、SQL';

  @override
  String get alert_settings_description =>
      'ការកំណត់ការរំឭកប្រកាសប្រចាំថ្ងៃ និងការរំឭកតាមកម្មវិធី';

  @override
  String get about => 'អំពី';

  @override
  String get about_description => 'ព័ត៌មានអំពីកម្មវិធី និងកំណែ';

  @override
  String get select_backup_file_first => 'សូមជ្រើសរើសឯកសារបម្រុងទុកមុន';

  @override
  String get confirm_restore => 'បញ្ជាក់ការស្ដារឡើងវិញ';

  @override
  String get confirm_restore_message =>
      'ការស្តារថតបម្រុងនឹងលុបទិន្នន័យទាំងអស់ដែលមានស្រាប់ និងជំនួសដោយទិន្នន័យថតបម្រុង សកម្មភាពនេះមិនអាចត្រលប់វិញបាន។ តើអ្នកចង់បន្តមែនទេ?';

  @override
  String get confirm_again => 'បញ្ជាក់ម្ដងទៀត';

  @override
  String get confirm_restore_warning =>
      'តើអ្នកប្រាកដថាចង់សម្អាតទិន្នន័យទាំងអស់ដែលមាន និងស្តារឡើងវិញការបម្រុងទុកមែនទេ? ការប្រតិបត្តិនេះមិនអាចស្ដារឡើយ!';

  @override
  String get confirm_restore_button => 'បញ្ជាក់ការស្ដារឡើងវិញ';

  @override
  String restore_success(int count) {
    return 'ការស្តារជោគជ័យ, មាន $count ទំនិញ';
  }

  @override
  String restore_failed(String error) {
    return 'ការស្តារឡើងវិញបរាជ័យ៖$error';
  }

  @override
  String get select_backup_file => 'ជ្រើសរើសឯកសារបម្រុះ';

  @override
  String get restore_backup => 'ស្តារឡើងវិញការបម្រុងទុក';

  @override
  String selected_file(String filename) {
    return 'បានជ្រើសរើសឯកសារ៖ $filename';
  }

  @override
  String get export_success => 'ការនាំទិន្នន័យចេញបានជោគជ័យ';

  @override
  String export_failed(String error) {
    return 'នាំចេញបរាជ័យ៖ $error';
  }

  @override
  String get format_csv => 'CSV';

  @override
  String get format_txt => 'TXT';

  @override
  String get format_sql => 'SQL';

  @override
  String get duplicate_data_handling => 'ការបង្វិលដំណើរការទិន្នន័យ';

  @override
  String get duplicate_data_detected =>
      'បានរកឃើញទិន្នន័យស្ទួន សូមជ្រើសរើសវិធីសាស្រ្តដោះស្រាយ៖';

  @override
  String get skip => 'រំលង';

  @override
  String get overwrite => 'គ្រប';

  @override
  String get skip_all => 'រាល់អ្វីទាំងអស់កំណត់លោត';

  @override
  String get overwrite_all => 'គ្របដណ្តប់ទាំងមូល';

  @override
  String get select_import_format_first => 'សូមជ្រើសរើសទ្រង់ទ្រាយនាំចូលជាមុន';

  @override
  String get confirm_import => 'បញ្ជាក់ការនាំចូល';

  @override
  String get confirm_import_message =>
      'ការនាំចូលទិន្នន័យនឹងលុបទិន្នន័យដែលមានស្រាប់ ចុះប្រតិបត្តិការនេះមិនអាចត្រលប់វិញបាន។ តើអ្នកចង់បន្តទេ?';

  @override
  String import_success(int count) {
    return 'ការនាំចូលទិន្នន័យបានជោគជ័យ，总共有បាននាំចូល$countឯកតាសម្ភារៈ';
  }

  @override
  String import_failed(String error) {
    return 'នាំចូលបរាជ័យ៖ $error';
  }

  @override
  String get select_file => 'ជ្រើសរើស​ឯកសារ';

  @override
  String get no_data => 'មិនមានទិន្នន័យ';

  @override
  String get no_data_description =>
      'បច្ចុប្បន្នមិនមានទិន្នន័យទេ ចុចប៊ូតុងខាងក្រោមដើម្បីបន្ថែមកំណត់ត្រាលេខមួយជាលើកដំបូង!';

  @override
  String get load_failed => 'ការផ្ទុកបរាជ័យ';

  @override
  String get load_failed_description =>
      'ការផ្ទុកទិន្នន័យបរាជ័យ សូមពិនិត្យការតភ្ជាប់បណ្តាញហើយសាកល្បងម្ដងទៀត';

  @override
  String get retry => 'សូម​ព្យាយាម​ម្តង​ទៀត';

  @override
  String get network_connection_failed => 'ការតភ្ជាប់បណ្តាញបរាជ័យ';

  @override
  String get network_connection_failed_description =>
      'សូមពិនិត្យការតភ្ជាប់បណ្ដាញរួចព្យាយាមម្ដងទៀត';

  @override
  String get no_results => 'មិនបានរកឃើញលទ្ធផល';

  @override
  String get no_results_description =>
      'សាកល្បងប្រើពាក្យគន្លឹះផ្សេងទៀតសម្រាប់ស្វែងរក';

  @override
  String get clear_search => 'លុបការស្វែងរក';

  @override
  String get insufficient_permission => 'សិទ្ធិមិនគ្រប់គ្រាន់';

  @override
  String get insufficient_permission_description =>
      'ត្រូវការអាជ្ញាប័ណ្ណដែលសមស្របដើម្បីប្រើមុខងារនេះ';

  @override
  String get request_permission => 'សូមអនុញ្ញាត';

  @override
  String get app_info => 'ព័ត៌មាន​អំពី​កម្មវិធី';

  @override
  String get version => 'កំណែ';

  @override
  String get developer => 'អ្នកអភិវឌ្ឍន៍';

  @override
  String get device_info => 'ព័ត៌មានឧបករណ៍';

  @override
  String get device_model => 'ម៉ូដែលឧបករណ៍';

  @override
  String get brand => 'ម៉ាក';

  @override
  String get device_name => 'ឈ្មោះឧបករណ៍';

  @override
  String get product => 'ផលិតផល';

  @override
  String get hardware => 'Hardware';

  @override
  String get android_version => 'កំណែ Android';

  @override
  String get sdk_version => 'កំណែ SDK';

  @override
  String get system_name => 'ឈ្មោះប្រព័ន្ធ';

  @override
  String get operating_system => 'ប្រព័ន្ធប្រតិបត្តិការ';

  @override
  String get system_version => 'កំណែប្រព័ន្ធ';

  @override
  String get dart_version => 'កំណែ Dart';

  @override
  String get device_identifier => 'សម្គាល់ឧបករណ៍';

  @override
  String get computer_name => 'ឈ្មោះកុំព្យូទ័រ';

  @override
  String get build_number => 'លេខកំណែ';

  @override
  String error_getting_device_info(String error) {
    return 'មិនអាចទទួលបានព័ត៌មានឧបករណ៍: $error';
  }

  @override
  String get features => 'ការណែនាំអំពីមុខងារ';

  @override
  String get app_description => 'កម្មវិធីគ្រប់គ្រងវត្ថុឆ្លាត';

  @override
  String get app_description_detail =>
      'ជួយអ្នកគ្រប់គ្រងព័ត៌មានអំពីកាលបរិច្ឆេទផុតកំណត់ កាលបរិច្ឆេទការធានា និងព័ត៌មានផ្សេងៗ ហើយផ្តល់មុខងារជាអារម្មណ៍ឆ្លាតវៃ។';

  @override
  String get consumable => 'ផលិតផលដែលប្រើបញ្ចេញ';

  @override
  String get durable => 'ទំនិញដែលអាចប្រើបានយូរ';

  @override
  String get sort => 'តម្រៀប';

  @override
  String get name_asc => 'ឈ្មោះតាមលំដាប់អក្សរ';

  @override
  String get name_desc => 'ចុះតាមឈ្មោះ';

  @override
  String get date_asc => 'តាមលំដាប់ថ្ងៃខែឆ្នាំ';

  @override
  String get date_desc => 'ចុះតាមខ្ទង់កាលបរិច្ឆេទ';

  @override
  String get price_asc => 'តម្លៃឯកតាឡើងជាប់លំដាប់';

  @override
  String get price_desc => 'តម្លៃឯកតាដោយចុះក្រោម';

  @override
  String get quantity_asc => 'ចំនួនឡើងខ្ទង់';

  @override
  String get quantity_desc => 'ចុះតាមចំនួន';

  @override
  String get total_price_asc => 'តម្លៃសរុបឡើងតាមលំដាប់';

  @override
  String get total_price_desc => 'តម្លៃសរុបចុះតាមលំដាប់ថ្នាល';

  @override
  String get clear_all_filters => 'សម្អាតការតម្រៀបទាំងអស់';

  @override
  String get scan_barcode => 'ស្កេនខូដដើម្បីចូលឃ្លាំង';

  @override
  String get search_items => 'ស្វែងរកវត្ថុ...';

  @override
  String get no_items => 'មិនមានទំនិញ';

  @override
  String get no_items_description => 'ចុចប៊ូតុងខាងក្រោមដើម្បីបន្ថែមធាតុនៅ​មុន';

  @override
  String get expired => 'ឥឡូវនេះផុតកំណត់';

  @override
  String get expiring_soon => 'នឹងផុតកំណត់';

  @override
  String get warranty_expired => 'ការធានា​ផុតកំណត់ហើយ';

  @override
  String get warranty_expiring_soon => 'ការធានាចុងផុតឈានដល់';

  @override
  String days_remaining(int count) {
    return 'នៅសល់ $count ថ្ងៃ';
  }

  @override
  String expired_days_ago(int count) {
    return 'ផុតកំណត់រយៈពេល$countថ្ងៃ';
  }

  @override
  String get delete_item => 'លុបទំនិញ';

  @override
  String delete_item_confirm(String name) {
    return 'តើអ្នកប្រាកដថាចង់លុប \"$name\" ទេ?';
  }

  @override
  String get item_deleted => 'វត្ថុនេះត្រូវបានលុប';

  @override
  String get failed_to_delete => 'ការលុបបរាជ័យ';

  @override
  String failed_to_delete_message(String error) {
    return 'មិនអាចលុបវត្ថុបាន: $error';
  }

  @override
  String get date_range_filter => 'ការគ្រប់ចំណាំជាប្រក្រតិ';

  @override
  String get price_range_filter => 'ចម្រាញ់ជួរតម្លៃ';

  @override
  String get my_items => 'ឥវ៉ាន់របស់ខ្ញុំ';

  @override
  String get click_fab_to_add_item =>
      'ចុចប៊ូតុងខាងលើស្តាំខាងក្រោមដើម្បីបន្ថែមវត្ថុ';

  @override
  String get confirm_delete => 'បញ្ជាក់ការលុប';

  @override
  String get filter_options => 'ជម្រើសចម្រាញ់';

  @override
  String get filter_by_type_category_location =>
      'ជ្រើសរើសទំនិញតាមប្រភេទ ចំណាត់ថ្នាក់ និងទីតាំង';

  @override
  String categories_count(int count) {
    return '$count ប្រភេទ';
  }

  @override
  String get all_categories => 'ចំណាត់ថ្នាក់ទាំងអស់';

  @override
  String get no_category_data => 'មិនមានទិន្នន័យចាត់ចែង';

  @override
  String get storage_location => 'កន្លែងផ្ទុក';

  @override
  String locations_count(int count) {
    return '$count តំបន់';
  }

  @override
  String get all_locations => 'គ្រប់ទីតាំង';

  @override
  String get no_location_data => 'មិនមានទិន្នន័យទីកន្លែង';

  @override
  String get date_range => 'ជួរគុនទិន្នន័យ';

  @override
  String get select_date_range => 'ជ្រើសរើសចន្លោះកាលបរិច្ឆេទ';

  @override
  String get price_range => 'ជួរតម្លៃ';

  @override
  String get unit_price_range => 'ចន្លោះតម្លៃតែមួយ';

  @override
  String get min_unit_price => 'តម្លៃអប្បបរមា';

  @override
  String get max_unit_price => 'តម្លៃអតិបរមា';

  @override
  String get total_price_range => 'ចន្លោះតម្លៃសរុប';

  @override
  String get min_total_price => 'តម្លៃសរុបអប្បបរមា';

  @override
  String get max_total_price => 'តម្លៃសរុបអតិបរមា';

  @override
  String get clear_price_filter => 'សម្អាតការតម្រងតម្លៃ';

  @override
  String get place_barcode_in_frame => 'ដាក់កូដបារ​នៅក្នុងប្រអប់សម្រាប់ស្កេន';

  @override
  String get item_already_exists => 'ផលិតផលមានរួចហើយ';

  @override
  String barcode_with_value(String barcode) {
    return 'កូដបារ: $barcode';
  }

  @override
  String name_with_value(String name) {
    return 'ឈ្មោះ៖ $name';
  }

  @override
  String category_with_value(String category) {
    return 'ចំណាត់ថ្នាក់៖ $category';
  }

  @override
  String current_quantity_with_value(String quantity, String unit) {
    return 'ចំនួនបច្ចុប្បន្ន៖ $quantity$unit';
  }

  @override
  String get please_select_operation => 'សូមជ្រើសការប្រតិបត្ដិ';

  @override
  String get outbound => 'ចេញពីឃ្លាំង';

  @override
  String get inbound => 'ចូលគណនីស្តុក';

  @override
  String get inbound_quantity => 'ចំនួនដែលបានចូលឃ្លាំង';

  @override
  String get outbound_quantity => 'ចំនួនចេញពីឃ្លាំង';

  @override
  String get quantity => 'ចំនួន';

  @override
  String get enter_inbound_quantity => 'សូមបញ្ចូលចំនួនចូលឃ្លាំង';

  @override
  String get enter_outbound_quantity => 'សូមបញ្ចូលចំនួនចេញឃ្លាំង';

  @override
  String delete_item_confirm_with_irreversible(String name) {
    return 'តើអ្នកចង់លុប «$name» ដោយប្រាកដទេ? ការប្រតិបត្តិនេះមិនអាចដកថយបាន។';
  }

  @override
  String get database_reset =>
      'មូលដ្ឋានទិន្នន័យត្រូវបានកំណត់ឡើងវិញ នឹងបង្កើតរចនាសម្ព័ន្ធតារាងឡើងវិញ';

  @override
  String database_reset_error(String error) {
    return 'មានកំហុសពេលកំណត់ឃ្លាំងទិន្នន័យឡើងវិញ: $error';
  }

  @override
  String mock_data_init_failed(String error) {
    return 'ការចាប់ផ្តើមទិន្នន័យតម្លឹងខំរៀបចំបានបរាជ័យ: $error';
  }

  @override
  String get solution_steps => 'ដំណោះស្រាយ៖';

  @override
  String get solution_step_1 => '1. ដំឡើងកម្មវិធីឡើងវិញ';

  @override
  String get solution_step_2 => '២. ឬលុបទិន្នន័យកម្មវិធី';

  @override
  String get solution_step_3 =>
      '3. ឬកំណត់ resetDatabaseOnStart ជា true រួចបើកឡើងវិញ';

  @override
  String notification_service_init_failed(String error) {
    return 'ការរំឮកសេវាកម្មចាប់ផ្ដើមបរាជ័យ៖ $error';
  }

  @override
  String check_calendar_account_failed(String error) {
    return 'ការត្រួតពិនិត្យគណនីប្រតិទិនបរាជ័យ៖ $error';
  }

  @override
  String create_calendar_failed(String error) {
    return 'បង្កើតប្រតិទិនមិនបាន: $error';
  }

  @override
  String add_calendar_event_failed(String error) {
    return 'បរាជ័យក្នុងការបន្ថែមព្រឹត្តិការណ៍ប្រតិទិន៖ $error';
  }

  @override
  String delete_calendar_event_failed(String error) {
    return 'ការលុបព្រឹត្តិការណ៍ប្រតិទិនបរាជ័យ: $error';
  }

  @override
  String set_permission_message_failed(String error) {
    return 'ការកំណត់សារ​ព្រមាន​សិទ្ធិ​បាន​បរាជ័យ៖ $error';
  }

  @override
  String mock_data_init_success(int count) {
    return 'បានបង្កើតទិន្នន័យចាក់ស្ទែង $count ដោយជោគជ័យ';
  }

  @override
  String database_has_data(int count) {
    return 'មូលដ្ឋានទិន្នន័យមាន​ទិន្នន័យ $count ហើយ​ឆ្លងកាត់ការចាក់បញ្ជូលទិន្នន័យតាមការសាកល្បង';
  }

  @override
  String get database_structure_mismatch =>
      'អាចជា​រចនាសម្ព័ន្ធទិន្នន័យ​មិនត្រូវបាន​ផ្គូផ្គង សូមណែនាំឱ្យសម្អាតទិន្នន័យកម្មវិធី ឬដំឡើងឡើងវិញ';

  @override
  String get old_database_deleted => 'បានលុបឯកសារទិន្នន័យចាស់រួចហើយ';

  @override
  String get backup_data_empty => 'ទិន្នន័យបម្រុងទុកទទេ';

  @override
  String get backup_file_not_found => 'ឯកសារបម្រុងមិនមាន';

  @override
  String file_not_utf8(String error) {
    return 'កូដអក្សរឯកសារមិនមែនជាទ្រង់ទ្រាយ UTF-8 ដែលមានប្រសិទ្ធភាពទេ។ សូមប្រាកដថាឯកសារត្រូវបានរក្សាទុកដោយប្រើកូដ UTF-8។ ព័ត៌មានចៃដន្យបញ្ហា: $error';
  }

  @override
  String file_not_found(String filePath) {
    return 'ឯកសារមិនមាន: $filePath';
  }

  @override
  String file_empty(String filePath) {
    return 'ឯកសារទទេ: $filePath';
  }

  @override
  String get file_content_empty =>
      'បន្ទុកឯកសារបន្ទាប់ពីការបម្លែងកូដម្ខាងទទេ ដោយសារ​កូដអង្គតែមិនត្រូវ';

  @override
  String field_cannot_be_empty(String fieldName) {
    return '$fieldName មិនអាចទទេបាន';
  }

  @override
  String field_min_length(String fieldName, int minLength) {
    return '$fieldName ប្រវែងមិនអាចតិចជាង $minLength តួអក្សរ';
  }

  @override
  String field_max_length(String fieldName, int maxLength) {
    return '$fieldName ប្រវែងមិនអាចលើស $maxLength តួអក្សរ';
  }

  @override
  String field_invalid_email(String fieldName) {
    return 'សូមបញ្ចូលអាសយដ្ឋាន$fieldNameដែលមានសុពលភាព';
  }

  @override
  String field_invalid_number(String fieldName, String numberType) {
    return '$fieldName ត្រូវតែជា $numberType';
  }

  @override
  String field_min_value(String fieldName, double min) {
    return '$fieldName មិនអាចតិចជាង $min';
  }

  @override
  String field_max_value(String fieldName, double max) {
    return '$fieldName មិនអាចធំជាង $max';
  }

  @override
  String field_positive_integer(String fieldName) {
    return '$fieldName ត្រូវតែជាចំនួនគត់វិជ្ជមាន';
  }

  @override
  String field_greater_than_zero(String fieldName) {
    return '$fieldName ត្រូវតែធំពី 0';
  }

  @override
  String field_positive_number(String fieldName) {
    return '$fieldName ត្រូវតែជាចំនួនវិជ្ជមាន';
  }

  @override
  String field_invalid_date(String fieldName) {
    return 'សូមបញ្ចូល $fieldName ត្រឹមត្រូវ';
  }

  @override
  String field_date_not_past(String fieldName) {
    return '$fieldName មិនអាចជាវិច្ឆិកាកន្លងមកបាន';
  }

  @override
  String field_date_not_before(String fieldName, String minDate) {
    return '$fieldName មិនអាចមុន $minDate';
  }

  @override
  String field_date_not_after(String fieldName, String maxDate) {
    return '$fieldName មិនអាចយឺតជាង $maxDate';
  }

  @override
  String field_invalid_value(String fieldName) {
    return 'សូមបញ្ចូល $fieldName ដោយត្រឹមត្រូវ';
  }

  @override
  String password_min_length(String fieldName) {
    return '$fieldName ប្រវែងមិនអាចតិចជាង 8 តួអក្សរបាន';
  }

  @override
  String password_uppercase_required(String fieldName) {
    return '$fieldName ត្រូវតែមានអក្ខរសព្ទម្ខាងយ៉ាងហោចណាស់មួយអក្សរធំ';
  }

  @override
  String password_lowercase_required(String fieldName) {
    return '$fieldName ត្រូវតែមានអក្ខរាវត្ថុ​មួយតិចបង្រួម​ឯកសារ';
  }

  @override
  String password_digit_required(String fieldName) {
    return '$fieldName ត្រូវមានលេខមួយយ៉ាងតិច';
  }

  @override
  String password_special_char_required(String fieldName) {
    return '$fieldName ត្រូវតែមានតួអក្ខរៈពិសេស至少មួយ';
  }

  @override
  String get passwords_not_match =>
      'ពាក្យសម្ងាត់ដែលបានបញ្ចូលពីរ ಬಾರಿមិនផ្ទៀងផ្ទាត់គ្នា';

  @override
  String get item_name_cannot_be_empty => 'ឈ្មោះទំនិញមិនអាចទទេបាន';

  @override
  String name_max_length(int maxLength) {
    return 'ឈ្មោះមិនអាចលើស$maxLength​តួអក្សរ';
  }

  @override
  String quantity_min(int minQuantity) {
    return 'ចំនួនមិនអាចតិចជាង$minQuantity';
  }

  @override
  String quantity_max(int maxQuantity) {
    return 'ចំនួនមិនអាចលើស $maxQuantity';
  }

  @override
  String get unit_price_not_negative =>
      'តម្លៃ​ឯកតា​មិនអាច​ជា​តម្លៃអវិជ្ជមានបាន';

  @override
  String unit_price_max(double maxUnitPrice) {
    return 'តម្លៃឯកតាមិនអាចលើស $maxUnitPrice';
  }

  @override
  String get set_production_expiry_for_validity =>
      'សូមកំណត់ថ្ងៃផលិត និងអាយុកាលខ្សែសម្គាល់ ដើម្បីគណនាអាយុកាលមានប្រសិទ្ធិភាពដោយស្វ័យប្រវត្តិ';

  @override
  String get set_purchase_warranty_for_validity =>
      'សូមកំណត់ថ្ងៃទិញ និងរយៈពេលសម្គាល់គុណភាពដើម្បីគណនាថ្ងៃផុតកំណត់ធានាជាស្វ័យប្រវត្តិ';

  @override
  String get calendar_account_creation_failed =>
      'មិនអាចបង្កើតគណនីប្រតិទិនបាន សូមពិនិត្យការកំណត់ប្រតិទិនប្រព័ន្ធ';

  @override
  String get test_notification => 'ការជូនដំណឹងសាកល្បង';

  @override
  String get test_notification_description =>
      'នេះជាប្រកាសសាកល្បង ដែលប្រើសម្រាប់ផ្ទៀងផ្ទាត់មុខងារជូនដំណឹងក្នុងស្រុក';

  @override
  String get day_unit => 'មេឃ';

  @override
  String days_with_value(int days) {
    return '$days ថ្ងៃ';
  }

  @override
  String get item_saved => 'វត្ថុនេះត្រូវបានរក្សាទុករួចហើយ';

  @override
  String get item_updated => 'វត្ថុនេះត្រូវបានធ្វើបច្ចុប្បន្នភាព';

  @override
  String get item_added => 'វត្ថុនេះត្រូវបានបន្ថែម';

  @override
  String get save_success => 'រក្សាទុកបានជោគជ័យ';

  @override
  String get update_success => 'ធ្វើបច្ចុប្បន្នភាពបានជោគជ័យ';

  @override
  String get delete_success => 'លុបបានជោគជ័យ';

  @override
  String get save_failed => 'រក្សាទុកបរាជ័យ';

  @override
  String get update_failed => 'ធ្វើបច្ចុប្បន្នភាពបរាជ័យ';

  @override
  String get delete_failed => 'ការលុបបរាជ័យ';

  @override
  String get test_calendar_event => 'ព្រឹត្តិការណ៍ប្រតិទិនសាកល្បង';

  @override
  String get test_calendar_event_description =>
      'នេះគឺជាព្រឹត្តិការណ៍សាកល្បង មួយ ដែលប្រើសម្រាប់ផ្ទៀងផ្ទាត់មុខងារទិន្នន័យប្រតិទិន';

  @override
  String get in_app => 'នៅក្នុងកម្មវិធី';

  @override
  String get enable_alert => 'បើកការរំលឹកការផុតកំណត់';

  @override
  String get alert_method => 'វិធីរំឮខ';

  @override
  String get alert_method_in_app => 'តែអាចប្រើបានក្នុងកម្មវិធី';

  @override
  String get alert_method_calendar => 'តែប្រតិទិន';

  @override
  String get alert_method_both => 'ទាំងពីរ';

  @override
  String get alert_days_before => 'ចំនួនថ្ងៃដើម្បីជូនការជូនដំណឹងមុន';

  @override
  String get use_global_setting => 'ប្រើការកំណត់សកល';

  @override
  String get barcode_label => 'កូដបារ';

  @override
  String get name_label => 'ឈ្មោះ';

  @override
  String get category_label => 'ចំណាត់ថ្នាក់';

  @override
  String get current_quantity => 'ចំនួន​បច្ចុប្បន្ន';

  @override
  String get select_operation => 'សូមជ្រើសរើសប្រតិបត្តិការ';

  @override
  String get unit => 'អង្គភាព';

  @override
  String get custom_unit => 'ឯកតាផ្ទាល់ខ្លួន';

  @override
  String get enter_unit => 'សូមបញ្ចូលខ្នាត';

  @override
  String get custom_location => 'កន្លែងដែលត្រូវប្ដូរតាមចិត្ត';

  @override
  String get enter_storage_location => 'សូមបញ្ចូលទីតាំងផ្ទុក';

  @override
  String get scan => 'ស្កេនកូដ';

  @override
  String get scan_to_stock => 'ស្កេនខូដដើម្បីចូលឃ្លាំង';

  @override
  String get item_categories => 'ចំណាត់ថ្នាក់វត្ថុ';

  @override
  String get storage_locations => 'កន្លែងផ្ទុក';

  @override
  String get place_barcode_in_frame_to_scan => 'ដាក់កូដបារ់ទៅក្នុងប្រអប់ស្កេន';

  @override
  String get barcode => 'កូដបារ';

  @override
  String get enter_barcode_or_scan => 'សូមបញ្ចូលកូដបារ៉ូឬស្កេន';

  @override
  String get basic_information => 'ព័ត៌មានមូលដ្ឋាន';

  @override
  String get item_name => 'ឈ្មោះទំនិញ';

  @override
  String get enter_item_name => 'សូមបញ្ចូលឈ្មោះទំនិញ';

  @override
  String get enter_category_name => 'សូមបញ្ចូលឈ្មោះចំណាត់ថ្នាក់';

  @override
  String item_increased(String itemName, String quantity, String unit) {
    return 'បានបន្ថែម $itemName $quantity$unit';
  }

  @override
  String item_decreased(String itemName, String quantity, String unit) {
    return 'បានកាត់បន្ថយ $itemName $quantity$unit';
  }
}
