// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Haitian Haitian Creole (`ht`).
class AppLocalizationsHt extends AppLocalizations {
  AppLocalizationsHt([String locale = 'ht']) : super(locale);

  @override
  String get app_name => 'Ti espas pou estoke bagay';

  @override
  String get cancel => 'Anile';

  @override
  String get confirm => 'Konfime';

  @override
  String get save => 'Sove';

  @override
  String get delete => 'Efase';

  @override
  String get edit => 'Edit';

  @override
  String get add => 'Ajoute';

  @override
  String get edit_item => 'Edite atik';

  @override
  String get add_item => 'Ajoute atik';

  @override
  String get search => 'Rechèch';

  @override
  String get settings => 'Anviwònman';

  @override
  String get language_settings => 'Anviwònman lang';

  @override
  String get language_settings_description =>
      'Mete lang pou montre aplikasyon an';

  @override
  String get system_default => 'Pa defo sistèm nan';

  @override
  String get use_system_language => 'Sèvi ak lang sistèm nan';

  @override
  String get language_change_hint =>
      'Chanjman lang lan ap pran efè apre aplikasyon an rekòmanse';

  @override
  String get back => 'Retounen';

  @override
  String get next => 'Pwochen etap';

  @override
  String get done => 'Fini';

  @override
  String get loading => 'Ap chaje...';

  @override
  String get error => 'Erè';

  @override
  String get success => 'Siksè';

  @override
  String get warning => 'Avètisman';

  @override
  String get info => 'Enfòmasyon';

  @override
  String get select_alert_days => 'Chwazi kantite jou pou rapèl';

  @override
  String get custom => 'Pèsonalize';

  @override
  String custom_days(int days) {
    return 'Custom ($days jou)';
  }

  @override
  String current_selection(int days) {
    return 'Chwa aktyèl: $days jou';
  }

  @override
  String alert_days_range(int min, int max) {
    return 'Ranje jou rapèl: $min-$max jou';
  }

  @override
  String get enter_days => 'Tanpri antre kantite jou pou rapèl la';

  @override
  String get days => 'jou';

  @override
  String enter_valid_days(int min, int max) {
    return 'Tanpri antre yon nimewo ant $min ak $max';
  }

  @override
  String get alert_settings => 'Anviwònman avètisman';

  @override
  String get calendar_settings => 'Anviwònman kalandriye';

  @override
  String get calendar_sync => 'Senkrone kalandriye';

  @override
  String get calendar_sync_desc =>
      'Apre ou louvri, li pral mande pèmisyon kalandriye';

  @override
  String get add_test_calendar_event => 'Ajoute yon evènman kalandriye tès';

  @override
  String get enable_calendar_sync_first =>
      'Tanpri limen bouton \'senkronizasyon kalandriye\' la an premye';

  @override
  String get app_alert_settings => 'Anviwònman alèt App';

  @override
  String get local_alerts => 'Rapèl lokal';

  @override
  String get local_alerts_desc =>
      'Louvri pou resevwa rapèl ekspirasyon nan aplikasyon an';

  @override
  String get send_test_notification => 'Voye avi tès';

  @override
  String get enable_local_alerts_first =>
      'Tanpri limen bouton \'Rapèl lokal\' la anvan';

  @override
  String get alert_days_settings => 'Mete kantite jou pou rapèl';

  @override
  String get advance_alert_days => 'Kantite jou pou raple davans';

  @override
  String get advance_alert_days_desc =>
      'Mete konbyen jou anvan pou raple dat ekspirasyon oswa fen garanti yon atik';

  @override
  String get calendar_permission_request => 'Demann pou otorizasyon kalandriye';

  @override
  String get calendar_permission_desc =>
      'Nou bezwen aksè nan kalandriye a pou senkronize rapèl atik yo. Èske ou pèmèt li?';

  @override
  String get allow => 'Pèmèt';

  @override
  String get calendar_permission_granted =>
      'Dwa kalandriye yo te bay, senkronizasyon kalandriye a te aktive';

  @override
  String get calendar_permission_denied =>
      'Otorite kalandriye a refize, li pa posib pou aktive senkronizasyon kalandriye a';

  @override
  String get calendar_permission_permanently_denied =>
      'Otorizasyon pèmanan refize';

  @override
  String get calendar_permission_permanently_denied_desc =>
      'Otorite kalandriye a refize pèmanan, tanpri aktive otorite a manyèlman nan anviwònman sistèm nan.';

  @override
  String get go_to_settings => 'Ale nan anviwònman';

  @override
  String get calendar_account_failed =>
      'Otorizasyon kalandriye a te bay, men li enposib kreye yon kont kalandriye. Tanpri tcheke anviwònman kalandriye sistèm nan';

  @override
  String get calendar_account_created =>
      'Dwa aksè nan kalandriye a deja bay, kont kalandriye lokal la te kreye';

  @override
  String get calendar_account_creating =>
      'Kont kalandriye a kreye avèk siksè, men sistèm nan ka bezwen kèk tan pou li vin efikas';

  @override
  String get test_calendar_event_added =>
      'Tès evènman kalandriye a te ajoute avèk siksè';

  @override
  String get test_calendar_event_failed =>
      'Echwe pou ajoute evènman kalandriye tès la, tanpri tcheke anviwònman kalandriye a';

  @override
  String get calendar_permission_required =>
      'Ou bezwen pèmisyon kalandriye pou ajoute yon evènman tès';

  @override
  String get test_notification_sent => 'Nòt tès la te voye';

  @override
  String test_notification_failed(String error) {
    return 'Echwe voye notifikasyon tès: $error';
  }

  @override
  String get notification_permission_required =>
      'Bezwen pèmisyon pou notifikasyon pou aktive rapèl lokal yo';

  @override
  String operation_failed(String error) {
    return 'Echèk operasyon: $error';
  }

  @override
  String get notification_channel_name => 'Alèt Avètisman Atik';

  @override
  String get notification_channel_description =>
      'Rappel pou atik ekspire oswa depase peryòd garanti';

  @override
  String get item_category_food => 'Manje';

  @override
  String get item_category_daily_necessities => 'Atik chak jou';

  @override
  String get item_category_cosmetics => 'Pwodwi kosmetik';

  @override
  String get item_category_medicine => 'Medikaman';

  @override
  String get item_category_electronics => 'Pwodwi elektwonik';

  @override
  String get item_category_furniture => 'Mèb';

  @override
  String get item_category_clothing => 'Rad';

  @override
  String get item_category_books => 'Liv';

  @override
  String get item_category_other => 'Lòt';

  @override
  String get purchase_channel_online_mall => 'Magazen sou entènèt';

  @override
  String get purchase_channel_physical_store => 'Magazen fizik';

  @override
  String get purchase_channel_supermarket => 'sipermaket';

  @override
  String get purchase_channel_specialty_store => 'Magazen espesyalize';

  @override
  String get purchase_channel_secondhand_market => 'Mache dezyèm men';

  @override
  String get purchase_channel_other => 'Lòt';

  @override
  String get default_category => 'Lòt';

  @override
  String get default_purchase_channel => 'Magazen sou entènèt';

  @override
  String get item_category => 'Klasifikasyon atik';

  @override
  String get custom_category => 'Klasifikasyon pèsonalize';

  @override
  String get backup_data => 'Fè bak done';

  @override
  String get backup_data_description =>
      'Pake tout done yo (enkli imaj yo) nan yon fichye ZIP pou fè sovgad';

  @override
  String get backup_all_data => 'Fè bak tout done yo';

  @override
  String get backup_success => 'Sove sekirite avèk siksè';

  @override
  String backup_failed(String error) {
    return 'Backup echwe: $error';
  }

  @override
  String get restore_data => 'Rekuperasyon done';

  @override
  String get restore_data_description =>
      'Restauré tout done soti nan dosye backup ZIP';

  @override
  String get export_data => 'Ekspòte done';

  @override
  String get export_data_description => 'Eksporte kòm fòma CSV, TXT, SQL';

  @override
  String get import_data => 'Enpòte done';

  @override
  String get import_data_description =>
      'Enpòte done soti nan dosye CSV, TXT, SQL';

  @override
  String get alert_settings_description =>
      'Ranmase alèt kalandriye ak notifikasyon aplikasyon';

  @override
  String get about => 'Sou';

  @override
  String get about_description => 'Enfòmasyon sou aplikasyon ak vèsyon';

  @override
  String get select_backup_file_first => 'Tanpri chwazi dosye sovgad la anvan';

  @override
  String get confirm_restore => 'Konfime rekòmanse';

  @override
  String get confirm_restore_message =>
      'Rekouvri sovgad la pral efase tout done ki egziste yo epi ranplase yo ak done sovgad la, aksyon sa a pa kapab anile. Èske ou sèten ou vle kontinye?';

  @override
  String get confirm_again => 'Konfime ankò';

  @override
  String get confirm_restore_warning =>
      'Èske ou sèten ou vle efase tout done ki egziste kounye a epi restore backup la? Aksyon sa a pa ka refè!';

  @override
  String get confirm_restore_button => 'Konfime rekòmanse';

  @override
  String restore_success(int count) {
    return 'Rekiperasyon reyisi, total $count atik';
  }

  @override
  String restore_failed(String error) {
    return 'Rekiperasyon echwe：$error';
  }

  @override
  String get select_backup_file => 'Chwazi fichye sovgad';

  @override
  String get restore_backup => 'Retabli sovgad';

  @override
  String selected_file(String filename) {
    return 'Dosye chwazi a: $filename';
  }

  @override
  String get export_success => 'Ekspòtasyon done reyisi';

  @override
  String export_failed(String error) {
    return 'Echèk nan ekspòtasyon: $error';
  }

  @override
  String get format_csv => 'CSV';

  @override
  String get format_txt => 'TXT';

  @override
  String get format_sql => 'SQL';

  @override
  String get duplicate_data_handling => 'Pwosesis done repete';

  @override
  String get duplicate_data_detected =>
      'Yo detekte done ki repete, tanpri chwazi fason pou trete yo:';

  @override
  String get skip => 'Sote';

  @override
  String get overwrite => 'kouvri';

  @override
  String get skip_all => 'Sote tout';

  @override
  String get overwrite_all => 'Kouvri tout';

  @override
  String get select_import_format_first =>
      'Tanpri chwazi fòma enpòte a an premye';

  @override
  String get confirm_import => 'Konfime enpòte';

  @override
  String get confirm_import_message =>
      'Enpòte done yo pral ranplase done ki egziste yo, aksyon sa a pa ka anile. Èske ou sèten ou vle kontinye?';

  @override
  String import_success(int count) {
    return 'Done enpòte done avèk siksè, total $count atik yo te enpòte';
  }

  @override
  String import_failed(String error) {
    return 'Echèk nan enpòtasyon: $error';
  }

  @override
  String get select_file => 'Chwazi dosye';

  @override
  String get no_data => 'Pa gen done';

  @override
  String get no_data_description =>
      'Pa gen done kounye a, klike sou bouton anba a pou ajoute premye dosye a!';

  @override
  String get load_failed => 'Chajman echwe';

  @override
  String get load_failed_description =>
      'Chajman done a echwe, tanpri tcheke koneksyon rezo a epi eseye ankò';

  @override
  String get retry => 'Reeseye';

  @override
  String get network_connection_failed => 'Koneksyon rezo a echwe';

  @override
  String get network_connection_failed_description =>
      'Tanpri tcheke koneksyon entènèt la epi eseye ankò';

  @override
  String get no_results => 'Pa jwenn okenn rezilta';

  @override
  String get no_results_description =>
      'Eseye itilize lòt mo kle pou fè rechèch';

  @override
  String get clear_search => 'Efase rechèch';

  @override
  String get insufficient_permission => 'Pa gen ase dwa';

  @override
  String get insufficient_permission_description =>
      'Ou bezwen otorizasyon ki apwopriye pou itilize fonksyon sa a';

  @override
  String get request_permission => 'Mande pèmisyon';

  @override
  String get app_info => 'Enfòmasyon sou aplikasyon';

  @override
  String get version => 'Vèsyon';

  @override
  String get developer => 'Devlopè';

  @override
  String get device_info => 'Enfòmasyon sou aparèy';

  @override
  String get device_model => 'Modèl ekipman';

  @override
  String get brand => 'mak';

  @override
  String get device_name => 'Non aparèy';

  @override
  String get product => 'pwodwi';

  @override
  String get hardware => 'Pyès ki nan konpitè';

  @override
  String get android_version => 'Vèsyon Android';

  @override
  String get sdk_version => 'Vèsyon SDK';

  @override
  String get system_name => 'Non sistèm';

  @override
  String get operating_system => 'Sistèm operasyon';

  @override
  String get system_version => 'Vèsyon sistèm';

  @override
  String get dart_version => 'Vèsyon Dart';

  @override
  String get device_identifier => 'Idantifikasyon ekipman';

  @override
  String get computer_name => 'Non òdinatè';

  @override
  String get build_number => 'Nimewo vèsyon';

  @override
  String error_getting_device_info(String error) {
    return 'Pa kapab jwenn enfòmasyon sou aparèy la: $error';
  }

  @override
  String get features => 'Entwodiksyon fonksyon';

  @override
  String get app_description => 'Aplikasyon pou jere objè entèlijan';

  @override
  String get app_description_detail =>
      'Ede w jere dat ekspirasyon, dat garanti ak lòt enfòmasyon sou atik ou yo, epi bay fonksyon rapèl entèlijan.';

  @override
  String get consumable => 'Pwodwi konsomab';

  @override
  String get durable => 'byen dirab';

  @override
  String get sort => 'Òd';

  @override
  String get name_asc => 'Non nan lòd alfabetik';

  @override
  String get name_desc => 'Desann nan non';

  @override
  String get date_asc => 'Dat nan lòd k ap ogmante';

  @override
  String get date_desc => 'Dat desann';

  @override
  String get price_asc => 'Pri inite nan lòd k ap ogmante';

  @override
  String get price_desc => 'Pri inite desandan';

  @override
  String get quantity_asc => 'Kantite nan lòd k ap grandi';

  @override
  String get quantity_desc => 'Desann selon kantite';

  @override
  String get total_price_asc => 'Pri total nan lòd k ap monte';

  @override
  String get total_price_desc => 'Pri total desann';

  @override
  String get clear_all_filters => 'Efase tout filtraj';

  @override
  String get scan_barcode => 'Eskane kòd pou antre nan depo';

  @override
  String get search_items => 'Chèche atik...';

  @override
  String get no_items => 'Pa gen okenn atik';

  @override
  String get no_items_description =>
      'Klike sou bouton anba a pou ajoute premye atik la';

  @override
  String get expired => 'Ekspire';

  @override
  String get expiring_soon => 'Ap ekspire byento';

  @override
  String get warranty_expired => 'Garanti a ekspire';

  @override
  String get warranty_expiring_soon => 'Garanti a ap ekspire byento';

  @override
  String days_remaining(int count) {
    return 'Rès $count jou';
  }

  @override
  String expired_days_ago(int count) {
    return 'Ekipase depi $count jou';
  }

  @override
  String get delete_item => 'Efase atik';

  @override
  String delete_item_confirm(String name) {
    return 'Èske ou sèten ou vle efase \"$name\"?';
  }

  @override
  String get item_deleted => 'Atik la te efase';

  @override
  String get failed_to_delete => 'Pa kapab efase';

  @override
  String failed_to_delete_message(String error) {
    return 'Pa kapab efase atik: $error';
  }

  @override
  String get date_range_filter => 'Filtraj pa ranje dat';

  @override
  String get price_range_filter => 'Filtraj selon ranje pri';

  @override
  String get my_items => 'Bagay mwen yo';

  @override
  String get click_fab_to_add_item =>
      'Klike sou bouton an nan kwen anba dwat la pou ajoute atik';

  @override
  String get confirm_delete => 'Konfime efase';

  @override
  String get filter_options => 'Opsyon filtre';

  @override
  String get filter_by_type_category_location =>
      'Filtre atik pa tip, kategori ak kote';

  @override
  String categories_count(int count) {
    return '$count kategori';
  }

  @override
  String get all_categories => 'Tout kategori';

  @override
  String get no_category_data => 'Pa gen done kategori pou kounye a';

  @override
  String get storage_location => 'Kote depo';

  @override
  String locations_count(int count) {
    return '$count kote';
  }

  @override
  String get all_locations => 'Tout kote';

  @override
  String get no_location_data => 'Pa gen done sou kote pou kounye a';

  @override
  String get date_range => 'Ranje Dat';

  @override
  String get select_date_range => 'Chwazi ranje dat';

  @override
  String get price_range => 'Ranje pri';

  @override
  String get unit_price_range => 'Ranje pri pou chak inite';

  @override
  String get min_unit_price => 'Pri minimòm pou chak inite';

  @override
  String get max_unit_price => 'Pri maksimòm pou chak inite';

  @override
  String get total_price_range => 'Ranje pri total';

  @override
  String get min_total_price => 'Pri total ki pi ba';

  @override
  String get max_total_price => 'Pri maksimòm total';

  @override
  String get clear_price_filter => 'Efase filtè pri';

  @override
  String get place_barcode_in_frame => 'Mete kòd bar nan bwat la pou eskane';

  @override
  String get item_already_exists => 'Pwodwi deja egziste';

  @override
  String barcode_with_value(String barcode) {
    return 'Kòd bar: $barcode';
  }

  @override
  String name_with_value(String name) {
    return 'Non: $name';
  }

  @override
  String category_with_value(String category) {
    return 'Kategori: $category';
  }

  @override
  String current_quantity_with_value(String quantity, String unit) {
    return 'Kantite aktyèl: $quantity$unit';
  }

  @override
  String get please_select_operation => 'Tanpri chwazi operasyon an:';

  @override
  String get outbound => 'Soti nan depo';

  @override
  String get inbound => 'Antre nan depo';

  @override
  String get inbound_quantity => 'Kantite nan depo';

  @override
  String get outbound_quantity => 'Kantite sòti nan depo';

  @override
  String get quantity => 'kantite';

  @override
  String get enter_inbound_quantity => 'Tanpri antre kantite pou depo';

  @override
  String get enter_outbound_quantity =>
      'Tanpri antre kantite pou sòti nan depo a';

  @override
  String delete_item_confirm_with_irreversible(String name) {
    return 'Èske ou sèten ou vle efase \'$name\'? Aksyon sa a pa ka defèt.';
  }

  @override
  String get database_reset =>
      'Baz done a te reinitialise, yap rekreye estrikti tab la';

  @override
  String database_reset_error(String error) {
    return 'Erè lè w ap rézete baz done a: $error';
  }

  @override
  String mock_data_init_failed(String error) {
    return 'Echèk nan inisyalizasyon done simulation: $error';
  }

  @override
  String get solution_steps => 'Solisyon:';

  @override
  String get solution_step_1 => '1. Dezinstale aplikasyon an epi re-enstale li';

  @override
  String get solution_step_2 => '2. Oswa efase done aplikasyon an';

  @override
  String get solution_step_3 =>
      '3. Oswa mete resetDatabaseOnStart kòm true epi rekòmanse kouri';

  @override
  String notification_service_init_failed(String error) {
    return 'Echèk nan inisyalizasyon sèvis rapèl: $error';
  }

  @override
  String check_calendar_account_failed(String error) {
    return 'Echèk nan tcheke kont kalandriye: $error';
  }

  @override
  String create_calendar_failed(String error) {
    return 'Echwe kreye kalandriye: $error';
  }

  @override
  String add_calendar_event_failed(String error) {
    return 'Echwe pou ajoute evènman nan kalandriye: $error';
  }

  @override
  String delete_calendar_event_failed(String error) {
    return 'Echwe pou efase evènman nan kalandriye: $error';
  }

  @override
  String set_permission_message_failed(String error) {
    return 'Echwe nan etabli mesaj avètisman pèmisyon: $error';
  }

  @override
  String mock_data_init_success(int count) {
    return 'Inisyalizasyon $count done simulasyon fèt avèk siksè';
  }

  @override
  String database_has_data(int count) {
    return 'Baz done a deja gen $count ranje done, sote inisyalizasyon done simulasyon an';
  }

  @override
  String get database_structure_mismatch =>
      'Li posib ke estrikti baz done a pa matche, li rekòmande pou efase done aplikasyon an oswa re-enstale li';

  @override
  String get old_database_deleted => 'Fin efase ansyen fichye bazdone a';

  @override
  String get backup_data_empty => 'Done sovgad la vid';

  @override
  String get backup_file_not_found => 'Fichye backup la pa egziste';

  @override
  String file_not_utf8(String error) {
    return 'Kòd dosye a pa nan yon fòma UTF-8 ki valid. Tanpri asire w ke dosye a sove avèk kodaj UTF-8. Detay erè: $error';
  }

  @override
  String file_not_found(String filePath) {
    return 'Fichye a pa egziste: $filePath';
  }

  @override
  String file_empty(String filePath) {
    return 'Fichye a vid: $filePath';
  }

  @override
  String get file_content_empty =>
      'Kontni dokiman an vid apre dekodaj, li ka paske kodaj la pa matche';

  @override
  String field_cannot_be_empty(String fieldName) {
    return '$fieldName pa ka vid';
  }

  @override
  String field_min_length(String fieldName, int minLength) {
    return 'Longè $fieldName pa ka mwens pase $minLength karaktè';
  }

  @override
  String field_max_length(String fieldName, int maxLength) {
    return '$fieldName pa ka gen plis pase $maxLength karaktè';
  }

  @override
  String field_invalid_email(String fieldName) {
    return 'Tanpri antre yon adrès $fieldName valab';
  }

  @override
  String field_invalid_number(String fieldName, String numberType) {
    return '$fieldName dwe $numberType';
  }

  @override
  String field_min_value(String fieldName, double min) {
    return '$fieldName pa ka pi piti pase $min';
  }

  @override
  String field_max_value(String fieldName, double max) {
    return '$fieldName pa ka pi gwo pase $max';
  }

  @override
  String field_positive_integer(String fieldName) {
    return '$fieldName dwe yon nonb antye pozitif';
  }

  @override
  String field_greater_than_zero(String fieldName) {
    return '$fieldName dwe pi gran pase 0';
  }

  @override
  String field_positive_number(String fieldName) {
    return '$fieldName dwe yon nonb pozitif';
  }

  @override
  String field_invalid_date(String fieldName) {
    return 'Tanpri antre yon $fieldName valab';
  }

  @override
  String field_date_not_past(String fieldName) {
    return '$fieldName pa ka yon dat ki deja pase';
  }

  @override
  String field_date_not_before(String fieldName, String minDate) {
    return '$fieldName pa ka pi bonè pase $minDate';
  }

  @override
  String field_date_not_after(String fieldName, String maxDate) {
    return '$fieldName pa ka pi ta pase $maxDate';
  }

  @override
  String field_invalid_value(String fieldName) {
    return 'Tanpri antre yon $fieldName valab';
  }

  @override
  String password_min_length(String fieldName) {
    return '$fieldName pa ka gen mwens pase 8 karaktè';
  }

  @override
  String password_uppercase_required(String fieldName) {
    return '$fieldName dwe gen omwen yon lèt majiskil';
  }

  @override
  String password_lowercase_required(String fieldName) {
    return '$fieldName dwe gen omwen yon lèt ti kras';
  }

  @override
  String password_digit_required(String fieldName) {
    return '$fieldName dwe gen omwen yon chif';
  }

  @override
  String password_special_char_required(String fieldName) {
    return '$fieldName dwe gen omwen yon karaktè espesyal';
  }

  @override
  String get passwords_not_match => 'Modpas yo antre de fwa pa koresponn';

  @override
  String get item_name_cannot_be_empty => 'Non atik la pa ka vid';

  @override
  String name_max_length(int maxLength) {
    return 'Non an pa ka depase $maxLength karaktè';
  }

  @override
  String quantity_min(int minQuantity) {
    return 'Kantite a pa ka mwens pase $minQuantity';
  }

  @override
  String quantity_max(int maxQuantity) {
    return 'Kantite a pa ka depase $maxQuantity';
  }

  @override
  String get unit_price_not_negative => 'Pri inite a pa ka negatif';

  @override
  String unit_price_max(double maxUnitPrice) {
    return 'Pri inite a pa ka depase $maxUnitPrice';
  }

  @override
  String get set_production_expiry_for_validity =>
      'Tanpri mete dat pwodiksyon ak dat ekspirasyon pou kalkile dat valab otomatikman';

  @override
  String get set_purchase_warranty_for_validity =>
      'Tanpri mete dat achte ak dat ekspirasyon pou kalkile peryòd garanti otomatikman';

  @override
  String get calendar_account_creation_failed =>
      'Pa kapab kreye kont kalandriye a, tanpri tcheke anviwònman kalandriye sistèm lan';

  @override
  String get test_notification => 'Nòt tès';

  @override
  String get test_notification_description =>
      'Sa a se yon notifikasyon tès, li itilize pou verifye fonksyon alèt lokal la';

  @override
  String get day_unit => 'syèl';

  @override
  String days_with_value(int days) {
    return '$days jou';
  }

  @override
  String get item_saved => 'Atik la sove';

  @override
  String get item_updated => 'Atik la mete ajou';

  @override
  String get item_added => 'Atik la te ajoute';

  @override
  String get save_success => 'Sove avèk siksè';

  @override
  String get update_success => 'Mizajou reyisi';

  @override
  String get delete_success => 'Efase avèk siksè';

  @override
  String get save_failed => 'Pa kapab sove';

  @override
  String get update_failed => 'Mizajou echwe';

  @override
  String get delete_failed => 'Pa kapab efase';

  @override
  String get test_calendar_event => 'Teste evènman kalandriye';

  @override
  String get test_calendar_event_description =>
      'Sa a se yon evènman tès, li itilize pou verifye fonksyon kalandriye a';

  @override
  String get in_app => 'Nan aplikasyon an';

  @override
  String get enable_alert => 'Pèmèt rapèl ekspirasyon';

  @override
  String get alert_method => 'Mòd rapèl';

  @override
  String get alert_method_in_app => 'Sèlman nan aplikasyon an';

  @override
  String get alert_method_calendar => 'Kalandriye sèlman';

  @override
  String get alert_method_both => 'Tou de';

  @override
  String get alert_days_before => 'Kantite jou pou raple davans';

  @override
  String get use_global_setting => 'Sèvi ak anviwònman mondyal';

  @override
  String get barcode_label => 'Kòd ba';

  @override
  String get name_label => 'Non';

  @override
  String get category_label => 'Klasifikasyon';

  @override
  String get current_quantity => 'Kantite aktyèl';

  @override
  String get select_operation => 'Tanpri chwazi operasyon an';

  @override
  String get unit => 'inyon';

  @override
  String get custom_unit => 'Inite pèsonalize';

  @override
  String get enter_unit => 'Tanpri antre inite a';

  @override
  String get custom_location => 'Kote pèsonalize';

  @override
  String get enter_storage_location => 'Tanpri antre kote depo a';

  @override
  String get scan => 'Eskane kòd la';

  @override
  String get scan_to_stock => 'Eskane kòd pou antre nan depo';

  @override
  String get item_categories => 'Klasifikasyon atik';

  @override
  String get storage_locations => 'Kote depo';

  @override
  String get place_barcode_in_frame_to_scan =>
      'Mete kòd bar nan bwat la pou eskane';

  @override
  String get barcode => 'Kòd ba';

  @override
  String get enter_barcode_or_scan => 'Tanpri antre kòd bar oswa eskane kòd la';

  @override
  String get basic_information => 'Enfòmasyon debaz';

  @override
  String get item_name => 'Non atik';

  @override
  String get enter_item_name => 'Tanpri antre non atik la';

  @override
  String get enter_category_name => 'Tanpri antre non kategori a';

  @override
  String item_increased(String itemName, String quantity, String unit) {
    return 'Te ajoute $itemName $quantity$unit';
  }

  @override
  String item_decreased(String itemName, String quantity, String unit) {
    return 'Te redwi $itemName $quantity$unit';
  }

  @override
  String get unsaved_changes => 'Chanjman ki pa sove';

  @override
  String get unsaved_changes_message =>
      'Ou gen chanjman ki pa sove, tanpri chwazi yon aksyon:';

  @override
  String get discard => 'Bay vag';

  @override
  String get unit_piece => 'yon';

  @override
  String get unit_item => 'moso';

  @override
  String get unit_box => 'bwat';

  @override
  String get unit_package => 'sak';

  @override
  String get unit_bottle => 'bòtl';

  @override
  String get unit_carton => 'bwat';

  @override
  String get unit_set => 'sèt';

  @override
  String get unit_kg => 'kg';

  @override
  String get unit_g => 'g';

  @override
  String get unit_l => 'L';

  @override
  String get unit_ml => 'ml';

  @override
  String get unit_m => 'm';

  @override
  String get unit_cm => 'cm';

  @override
  String get quantity_label => 'kantite';

  @override
  String get unit_price_label => 'Pri inite';

  @override
  String get currency_label => 'Lajan';

  @override
  String get total_price_label => 'Pri total:';

  @override
  String get storage_location_label => 'Kote depo';

  @override
  String get item_properties => 'Pwopriyete atik';

  @override
  String get expiry_date_label => 'Dat ekspirasyon';

  @override
  String get warranty_expiry_date_label => 'Dat ekspirasyon garanti';

  @override
  String get production_date_label => 'Dat pwodiksyon';

  @override
  String get purchase_date_label => 'Dat acha';

  @override
  String auto_calculated_from(String dateType) {
    return 'Kalkile otomatikman selon $dateType ak dat ekspirasyon';
  }

  @override
  String get auto_calculated => 'Kalkil otomatik';

  @override
  String get images_label => 'Imaj';

  @override
  String get notes_label => 'Remak';

  @override
  String get add_notes_hint => 'Ajoute enfòmasyon kòmantè (opsyonèl)';

  @override
  String get year_label => 'ane';

  @override
  String get month_label => 'lalin';

  @override
  String get day_label => 'syèl';

  @override
  String selected_count(int count) {
    return 'Ou te chwazi $count atik';
  }

  @override
  String get select_all => 'Chwazi tout';

  @override
  String get deselect_all => 'Anile seleksyon tout';

  @override
  String get batch_change_location => 'Chanje kote depo an pakèt';

  @override
  String confirm_delete_selected(int count) {
    return 'Èske ou sèten ou vle efase $count atik yo chwazi a?';
  }

  @override
  String deleted_count_items(int count) {
    return '_${count}_ atik efase';
  }

  @override
  String get no_storage_location_available =>
      'Pa gen okenn kote depo ki disponib kounye a';

  @override
  String get batch_change_location_title => 'Chanje kote depo an an gwo';

  @override
  String moved_count_items_to_location(int count, String location) {
    return '$count atik te deplase nan $location';
  }

  @override
  String get operation_type_create => 'Antre done';

  @override
  String get operation_type_update => 'Edit';

  @override
  String get operation_type_delete => 'Efase';

  @override
  String get operation_type_inbound => 'Antre nan depo';

  @override
  String get operation_type_outbound => 'Soti nan depo';

  @override
  String export_failed_message(String error) {
    return 'Echèk ekspòtasyon: $error';
  }

  @override
  String get clear_logs => 'Efase jounal la';

  @override
  String get confirm_clear_logs =>
      'Èske ou sèten ou vle efase tout dosye operasyon yo? Aksyon sa a pa ka refè.';

  @override
  String get logs_cleared => 'Jounal la te efase';

  @override
  String get operation_logs_title => 'Jounal operasyon';

  @override
  String get export_logs => 'Ekspòte jounal';

  @override
  String get clear_logs_tooltip => 'Efase jounal la';

  @override
  String get no_operation_logs => 'Pa gen okenn jounal operasyon pou kounye a';

  @override
  String get log_item_label => 'Atik:';

  @override
  String get log_category_label => 'Kategori :';

  @override
  String get log_type_label => 'Kalite:';

  @override
  String get log_quantity_label => 'Kantite:';

  @override
  String get log_unit_price_label => 'Pri inite:';

  @override
  String get log_total_price_label => 'Pri total:';

  @override
  String get log_expiry_date_label => 'Dat ekspirasyon :';

  @override
  String get log_warranty_date_label => 'Dat garanti:';

  @override
  String get log_purchase_date_label => 'Dat acha:';

  @override
  String get log_production_date_label => 'Dat pwodiksyon:';

  @override
  String get log_shelf_life_label => 'Dat ekspirasyon:';

  @override
  String get log_storage_location_label => 'Kote pou estoke:';

  @override
  String get log_barcode_label => 'Kòd bar';

  @override
  String get log_notes_label => 'Nòt:';

  @override
  String get log_alert_label => 'Alèt:';

  @override
  String get log_alert_days_label => 'Kantite jou avètisman:';

  @override
  String get log_quantity_change_label => 'Chanjman nan kantite:';

  @override
  String get log_field_changes_label => 'Modify chan: ';

  @override
  String get log_not_set => 'Pa mete';

  @override
  String get log_empty => 'vid';

  @override
  String get log_alert_enabled => 'Louvri';

  @override
  String get log_alert_disabled => 'Fèmen';

  @override
  String get operation_logs_menu => 'Jounal operasyon';

  @override
  String get operation_logs_description => 'Gade ak retabli dosye operasyon yo';

  @override
  String operation_failed_message(String error) {
    return 'Echèk operasyon: $error';
  }

  @override
  String get no_date => 'Pa gen dat';

  @override
  String get shelf_life_months_suffix => 'mwa';

  @override
  String get shelf_life_days_suffix => 'syèl';

  @override
  String get alert_days_suffix => 'syèl';

  @override
  String get unknown => 'Enkonu';

  @override
  String get developer_name => 'Leo';

  @override
  String get log_operation_date_label => 'Dat operasyon:';

  @override
  String get uncategorized => 'Pa klase';

  @override
  String get no_location => 'Pa gen kote';

  @override
  String get item_category_cannot_be_empty => 'Klasifikasyon atik la pa ka vid';

  @override
  String get storage_location_cannot_be_empty => 'Kote depo a pa ka vid';

  @override
  String get created_at_asc => 'Ajoute tan nan lòd k ap ogmante';

  @override
  String get created_at_desc => 'Ajoute dat desandan';

  @override
  String get location_management => 'Jesyon depo';

  @override
  String get private_warehouses => 'Depo prive';

  @override
  String get public_warehouses => 'Bibliyotèk Piblik';

  @override
  String get is_public_warehouse => 'Bibliyotèk Piblik';

  @override
  String get public_warehouse_desc =>
      'Bibliyotèk piblik pa gen administratè, pou sòti oswa antre nan bibliyotèk la bezwen ranpli non moun ki fè operasyon an';

  @override
  String get manager => 'Administratè';

  @override
  String get not_set => 'Pa mete';

  @override
  String get edit_location => 'Edite bibliyotèk';

  @override
  String get location_name => 'Non bibliyotèk';

  @override
  String get manager_name => 'Non administratè';

  @override
  String get enter_manager_name => 'Tanpri antre non administratè a';

  @override
  String get manager_name_required => 'Non administratè a pa ka vid';

  @override
  String delete_location_confirm(String name) {
    return 'Èske ou sèten ou vle efase depo «$name» la?';
  }

  @override
  String get delete_location_has_items =>
      'Gen toujou atik nan depo a, pa ka efase li';

  @override
  String get default_manager => 'Administratè default';

  @override
  String get default_manager_desc =>
      'Administratè pa default lè w kreye yon depo prive';

  @override
  String get enter_default_manager => 'Tanpri antre non administratè defo a';

  @override
  String get operator_name => 'Non operatè a';

  @override
  String get enter_operator_name => 'Tanpri antre non moun kap opere a';

  @override
  String get operator_name_required => 'Non moun k ap opere a pa ka vid';

  @override
  String get no_manager => 'Pa gen administratè';

  @override
  String get log_operator_label => 'Operatè:';

  @override
  String get outbound_quantity_exceeds_current =>
      'Kantite pou sòti nan depo a pa ka depase kantite nan stok aktyèl la';
}
