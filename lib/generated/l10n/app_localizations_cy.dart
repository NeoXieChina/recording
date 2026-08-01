// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Welsh (`cy`).
class AppLocalizationsCy extends AppLocalizations {
  AppLocalizationsCy([String locale = 'cy']) : super(locale);

  @override
  String get app_name => 'Cynnyrch Cadw';

  @override
  String get cancel => 'Diddymu';

  @override
  String get confirm => 'Cadarnhau';

  @override
  String get save => 'Cadw';

  @override
  String get delete => 'Dileu';

  @override
  String get edit => 'Golygu';

  @override
  String get add => 'Ychwanegu';

  @override
  String get search => 'Chwilio';

  @override
  String get settings => 'Gosodiadau';

  @override
  String get language_settings => 'Gosodiadau iaith';

  @override
  String get language_settings_description => 'Gosod iaith arddangos yr app';

  @override
  String get system_default => 'Diofyn y system';

  @override
  String get use_system_language => 'Defnyddio iaith y system';

  @override
  String get language_change_hint =>
      'Bydd newid iaith yn dod i rym ar ôl ailgychwyn yr ap';

  @override
  String get back => 'Dychwelyd';

  @override
  String get next => 'Cam nesaf';

  @override
  String get done => 'Gorffen';

  @override
  String get loading => 'Yn llwytho...';

  @override
  String get error => 'Gwall';

  @override
  String get success => 'Llwyddiant';

  @override
  String get warning => 'Rhybudd';

  @override
  String get info => 'Gwybodaeth';

  @override
  String get select_alert_days => 'Dewis nifer y dyddiau rhybuddio';

  @override
  String get custom => 'Addasu';

  @override
  String custom_days(int days) {
    return 'Addasu ($days diwrnod)';
  }

  @override
  String current_selection(int days) {
    return 'Dewis cyfredol: $days diwrnod';
  }

  @override
  String alert_days_range(int min, int max) {
    return 'Amrediad dyddiau atgoffa: $min-$max dydd';
  }

  @override
  String get enter_days => 'Rhowch nifer y dyddiau rhybudd';

  @override
  String get days => 'Dyddiau';

  @override
  String enter_valid_days(int min, int max) {
    return 'Rhowch rif rhwng $min a $max';
  }

  @override
  String get alert_settings => 'Gosodiadau Rhybudd';

  @override
  String get calendar_settings => 'Gosodiadau Calendr';

  @override
  String get calendar_sync => 'Cydamseru Calendr';

  @override
  String get calendar_sync_desc =>
      'Ar agor bydd yn gofyn am ganiatâd y calendr';

  @override
  String get add_test_calendar_event => 'Ychwanegu digwyddiad prawf calendr';

  @override
  String get enable_calendar_sync_first =>
      'Dewiswch y switsh \'Cydamseru Calendrau\' yn gyntaf';

  @override
  String get app_alert_settings => 'Gosodiadau Hysbysiadau Ap';

  @override
  String get local_alerts => 'Hysbysiadau Lleol';

  @override
  String get local_alerts_desc =>
      'Ar ôl ei droi ymlaen, derbyniwch hysbysiadau dyddiad dod i ben yn yr ap';

  @override
  String get send_test_notification => 'Anfon hysbysiad prawf';

  @override
  String get enable_local_alerts_first =>
      'Agorwch y switsh \"Hysbysiad Lleol\" yn gyntaf';

  @override
  String get alert_days_settings => 'Gosodiadau nifer y dyddiau hysbysu';

  @override
  String get advance_alert_days => 'Nifer y dyddiau i rybuddio ymlaen llaw';

  @override
  String get advance_alert_days_desc =>
      'Gosod nifer y dyddiau ymlaen llaw i atgoffa am ddod i ben neu ddod i ben gwarant eitem';

  @override
  String get calendar_permission_request => 'Cais mynediad calendr';

  @override
  String get calendar_permission_desc =>
      'Mae angen mynediad at y calendr i gynllunio atgoffaethau eitemau. A fyddwch chi\'n caniatáu?';

  @override
  String get allow => 'Caniatáu';

  @override
  String get calendar_permission_granted =>
      'Mae mynediad i\'r calendr wedi\'i roi, mae cydamseru\'r calendr wedi\'i alluogi';

  @override
  String get calendar_permission_denied =>
      'Wedi gwrthod caniatâd y calendr, ni ellir galluogi cydamseru calendr';

  @override
  String get calendar_permission_permanently_denied =>
      'Caniatâd wedi ei wrthod yn barhaol';

  @override
  String get calendar_permission_permanently_denied_desc =>
      'Wedi gwrthod caniatâd calendr yn barhaol, ewch i osodiadau\'r system i alluogi\'r caniatâd yn llaw.';

  @override
  String get go_to_settings => 'Ewch i osodiadau';

  @override
  String get calendar_account_failed =>
      'Mae’r caniatâd calendr wedi’i roi, ond ni ellir creu cyfrif calendr. Sicrhewch osodiadau calendr y system';

  @override
  String get calendar_account_created =>
      'Mae’r caniatâd calendr wedi’i roi, a chrëwyd cyfrif calendr lleol';

  @override
  String get calendar_account_creating =>
      'Creu cyfrif calendr yn llwyddiannus, ond efallai y bydd y system angen rhywfaint o amser i weithredu';

  @override
  String get test_calendar_event_added =>
      'Yn llwyddiannus ychwanegu digwyddiad calendr prawf';

  @override
  String get test_calendar_event_failed =>
      'Wedi methu ychwanegu digwyddiad calendr prawf, gwiriwch y gosodiadau calendr';

  @override
  String get calendar_permission_required =>
      'Mae angen caniatâd calendr i ychwanegu digwyddiad prawf';

  @override
  String get test_notification_sent => 'Mae hysbysiad prawf wedi\'i anfon';

  @override
  String test_notification_failed(String error) {
    return 'Methu anfon hysbysiad prawf: $error';
  }

  @override
  String get notification_permission_required =>
      'Mae angen caniatâd hysbysu i alluogi rhybuddion lleol';

  @override
  String operation_failed(String error) {
    return 'Gweithrediad wedi methu: $error';
  }

  @override
  String get notification_channel_name => 'Hysbysiad Rhybudd Eitem';

  @override
  String get notification_channel_description =>
      'Rhybudd am eitem wedi dod i ben neu wedi gorffen ei warant';

  @override
  String get item_category_food => 'Bwyd';

  @override
  String get item_category_daily_necessities => 'Nwyddau Dyddiol';

  @override
  String get item_category_cosmetics => 'Cynhyrchion Harddwch';

  @override
  String get item_category_medicine => 'Meddyginiaethau';

  @override
  String get item_category_electronics => 'Cynhyrchion Electronig';

  @override
  String get item_category_furniture => 'Dodrefn';

  @override
  String get item_category_clothing => 'Dillad';

  @override
  String get item_category_books => 'Llyfrau';

  @override
  String get item_category_other => 'Eraill';

  @override
  String get purchase_channel_online_mall => 'Siop ar-lein';

  @override
  String get purchase_channel_physical_store => 'Siop gorfforol';

  @override
  String get purchase_channel_supermarket => 'Archfarchnad';

  @override
  String get purchase_channel_specialty_store => 'Siop arbenigol';

  @override
  String get purchase_channel_secondhand_market => 'Marchnad eilaidd';

  @override
  String get purchase_channel_other => 'Arall';

  @override
  String get default_category => 'Arall';

  @override
  String get default_purchase_channel => 'Siop Ar-lein';

  @override
  String get item_category => 'Dosbarthiad Eitemau';

  @override
  String get custom_category => 'Dosbarthiad Custom';

  @override
  String get backup_data => 'Cadw Data';

  @override
  String get backup_data_description =>
      'Pecynnu\'r holl ddata (gan gynnwys delweddau) fel ffeil ZIP wrth gefn';

  @override
  String get backup_all_data => 'Gwneud copi wrth gefn o\'r holl ddata';

  @override
  String get backup_success => 'Copi wrth gefn wedi\'i lwyddo';

  @override
  String backup_failed(String error) {
    return 'Methiant wrth gefn: $error';
  }

  @override
  String get restore_data => 'Adfer Data';

  @override
  String get restore_data_description => 'Adfer yr holl ddata o ffeil gefn ZIP';

  @override
  String get export_data => 'Allforio Data';

  @override
  String get export_data_description => 'Allforio fel CSV, TXT, SQL';

  @override
  String get import_data => 'Mewnforio Data';

  @override
  String get import_data_description =>
      'Mewngludo data o ffeiliau CSV, TXT, SQL';

  @override
  String get alert_settings_description =>
      'Gosodiadau atgoffa calendr a hysbysiadau App';

  @override
  String get about => 'Ynghylch';

  @override
  String get about_description => 'Gwybodaeth am y cais a fersiwn';

  @override
  String get select_backup_file_first =>
      'Dewiswch y ffeil copi wrth gefn yn gyntaf';

  @override
  String get confirm_restore => 'Cadarnhewch adfer';

  @override
  String get confirm_restore_message =>
      'Bydd adfer wrth gefn yn gwagio\'r holl ddata presennol ac yn ei ddisodli gyda data wrth gefn, ac ni ellir gwrthdroi\'r weithred hon. Ydych chi wir eisiau parhau?';

  @override
  String get confirm_again => 'Cadarnhau eto';

  @override
  String get confirm_restore_warning =>
      'Ydych chi\'n siŵr eich bod am ddileu\'r holl ddata presennol a rhoi\'r copi wrth gefn yn ôl? Ni ellir adfer y gweithred hon!';

  @override
  String get confirm_restore_button => 'Cadarnhau Adfer';

  @override
  String restore_success(int count) {
    return 'Adferwyd yn llwyddiannus, cyfanswm o $count eitemau';
  }

  @override
  String restore_failed(String error) {
    return 'Methu adfer: $error';
  }

  @override
  String get select_backup_file => 'Dewis ffeil wrth gefn';

  @override
  String get restore_backup => 'Adfer wrth gefn';

  @override
  String selected_file(String filename) {
    return 'Ffeil wedi\'i dewis: $filename';
  }

  @override
  String get export_success => 'Allbwn data wedi llwyddo';

  @override
  String export_failed(String error) {
    return 'Methwyd â allforio: $error';
  }

  @override
  String get format_csv => 'CSV';

  @override
  String get format_txt => 'TXT';

  @override
  String get format_sql => 'SQL';

  @override
  String get duplicate_data_handling => 'Prosesu Data Dyblyg';

  @override
  String get duplicate_data_detected =>
      'Canfuwyd data dyblyg, dewiswch sut i\'w brosesu:';

  @override
  String get skip => 'Drosi drosodd';

  @override
  String get overwrite => 'Gor-lunio';

  @override
  String get skip_all => 'Drosolchi i gyd';

  @override
  String get overwrite_all => 'Cwmpasu i gyd';

  @override
  String get select_import_format_first =>
      'Dewiswch y fformat mewnforio yn gyntaf';

  @override
  String get confirm_import => 'Cadarnhau mewnforio';

  @override
  String get confirm_import_message =>
      'Bydd mewnforio data yn lledi\'r data presennol, ni ellir dadwneud y weithred hon. Ydych chi\'n siŵr eich bod eisiau parhau?';

  @override
  String import_success(int count) {
    return 'Mewnforiwyd y data yn llwyddiannus, gyda chyfanswm o $count eitemau wedi\'u mewnforio';
  }

  @override
  String import_failed(String error) {
    return 'Methiant mewnforio: $error';
  }

  @override
  String get select_file => 'Dewis ffeil';

  @override
  String get no_data => 'Dim data ar gael';

  @override
  String get no_data_description =>
      'Does dim data ar hyn o bryd, cliciwch y botwm isod i ychwanegu\'r cofnod cyntaf!';

  @override
  String get load_failed => 'Methu llwytho';

  @override
  String get load_failed_description =>
      'Methwyd â llwytho data, gwiriwch eich cysylltiad rhwydwaith ac ailadroddiwch';

  @override
  String get retry => 'Ailadroddiwch';

  @override
  String get network_connection_failed => 'Methiant cysylltiad rhwydwaith';

  @override
  String get network_connection_failed_description =>
      'Gwiriwch eich cysylltiad rhwydwaith ac ailadroddiwch';

  @override
  String get no_results => 'Dim canlyniadau wedi\'u dod o hyd';

  @override
  String get no_results_description =>
      'Ceisiwch chwilio gyda allweddeiriau eraill';

  @override
  String get clear_search => 'Clirio\'r chwiliad';

  @override
  String get insufficient_permission => 'Dim digon o ganiatâd';

  @override
  String get insufficient_permission_description =>
      'Mae angen y cymwysiadau perthnasol i ddefnyddio\'r nodwedd hon';

  @override
  String get request_permission => 'Gofyn am ganiatâd';

  @override
  String get app_info => 'Gwybodaeth am y cais';

  @override
  String get version => 'Fersiwn';

  @override
  String get developer => 'Datblygwr';

  @override
  String get device_info => 'Gwybodaeth ddyfais';

  @override
  String get device_model => 'Model dyfais';

  @override
  String get brand => 'Brand';

  @override
  String get device_name => 'Enw dyfais';

  @override
  String get product => 'Cynnyrch';

  @override
  String get hardware => 'Caledwedd';

  @override
  String get android_version => 'Fersiwn Android';

  @override
  String get sdk_version => 'Fersiwn SDK';

  @override
  String get system_name => 'Enw System';

  @override
  String get system_version => 'Fersiwn System';

  @override
  String get device_identifier => 'Nodyn Dyfais';

  @override
  String get computer_name => 'Enw cyfrifiadur';

  @override
  String get build_number => 'Rhif fersiwn';

  @override
  String error_getting_device_info(String error) {
    return 'Methu cael gwybodaeth am y ddyfais: $error';
  }

  @override
  String get features => 'Cyflwyniad Nodwedd';

  @override
  String get app_description => 'Cais Rheoli Eitemau Deallus';

  @override
  String get app_description_detail =>
      'Helpu i chi reoli dyddiadau dod i ben eitemau, dyddiadau gwarant ac ati, ac yn cynnig swyddogaeth atgoffa ddeallus.';

  @override
  String get consumable => 'Eitemau defnydd';

  @override
  String get durable => 'Eitemau para';

  @override
  String get sort => 'Trefn';

  @override
  String get name_asc => 'Enw yn esgynol';

  @override
  String get name_desc => 'Enw yn ddisgynol';

  @override
  String get date_asc => 'Dyddiad yn esgynol';

  @override
  String get date_desc => 'Dyddiad yn ddisgynol';

  @override
  String get price_asc => 'Uned Pris yn esgynol';

  @override
  String get price_desc => 'Disgyrchiant pris uned yn ddisgynnol';

  @override
  String get quantity_asc => 'Nifer yn ddisgynnol';

  @override
  String get quantity_desc => 'Nifer yn esgynnol';

  @override
  String get total_price_asc => 'Cyfanswm y pris yn esgynnol';

  @override
  String get total_price_desc => 'Cyfanswm y pris yn ddisgynnol';

  @override
  String get clear_all_filters => 'Clirio\'r holl hidlwyr';

  @override
  String get scan_barcode => 'Sganiwch i fewnforio i\'r warws';

  @override
  String get search_items => 'Chwilio am eitemau...';

  @override
  String get no_items => 'Dim eitemau ar hyn o bryd';

  @override
  String get no_items_description =>
      'Cliciwch y botwm isod i ychwanegu\'r eitem gyntaf';

  @override
  String get expired => 'Wedi dod i ben';

  @override
  String get expiring_soon => 'Yn dod i ben';

  @override
  String get warranty_expired => 'Wedi dod i ben gwarant';

  @override
  String get warranty_expiring_soon => 'Bydd y warant yn dod i ben yn fuan';

  @override
  String days_remaining(int count) {
    return '$count diwrnodau yn weddill';
  }

  @override
  String expired_days_ago(int count) {
    return 'Wedi dod i ben $count diwrnod';
  }

  @override
  String get delete_item => 'Dileu eitem';

  @override
  String delete_item_confirm(String name) {
    return 'Ydych chi eisiau dileu \"$name\"?';
  }

  @override
  String get item_deleted => 'Mae\'r eitem wedi\'i dileu';

  @override
  String get failed_to_delete => 'Methodd dileu';

  @override
  String failed_to_delete_message(String error) {
    return 'Methu dileu eitem: $error';
  }

  @override
  String get date_range_filter => 'Hidlo am fetrau dyddiad';

  @override
  String get price_range_filter => 'Hidlo am fetrau pris';

  @override
  String get my_items => 'Fy nwyddau';

  @override
  String get click_fab_to_add_item =>
      'Cliciwch y botwm isaf ar y dde i ychwanegu nwyddau';

  @override
  String get confirm_delete => 'Cadarnhau dileu';

  @override
  String get filter_options => 'Hidlo opsiynau';

  @override
  String get filter_by_type_category_location =>
      'Sievee eitemau yn ôl math, categori a lleoliad';

  @override
  String categories_count(int count) {
    return '$count o gategorïau';
  }

  @override
  String get all_categories => 'Pob categori';

  @override
  String get no_category_data => 'Dim data dosbarthiad';

  @override
  String get storage_location => 'Lleoliad storio';

  @override
  String locations_count(int count) {
    return '$count o leoliadau';
  }

  @override
  String get all_locations => 'Pob lleoliad';

  @override
  String get no_location_data => 'Dim data lleoliad ar hyn o bryd';

  @override
  String get date_range => 'Ystod dyddiad';

  @override
  String get select_date_range => 'Dewiswch ystod dyddiad';

  @override
  String get price_range => 'Ystod pris';

  @override
  String get unit_price_range => 'Ystod pris uned';

  @override
  String get min_unit_price => 'Pris uned isaf';

  @override
  String get max_unit_price => 'Pris uned uchaf';

  @override
  String get total_price_range => 'Ystod pris cyffredinol';

  @override
  String get min_total_price => 'Cyfanswm isafswm';

  @override
  String get max_total_price => 'Cyfanswm uchaf';

  @override
  String get clear_price_filter => 'Clirio hidlydd prisiau';

  @override
  String get place_barcode_in_frame =>
      'Rhowch y cod bar i mewn i\'r blwch i sganio';

  @override
  String get item_already_exists => 'Mae\'r nwydd eisoes yn bodoli';

  @override
  String barcode_with_value(String barcode) {
    return 'Cod Bar: $barcode';
  }

  @override
  String name_with_value(String name) {
    return 'Enw: $name';
  }

  @override
  String category_with_value(String category) {
    return 'Categori: $category';
  }

  @override
  String current_quantity_with_value(String quantity, String unit) {
    return 'Nifer cyfredol: $quantity$unit';
  }

  @override
  String get please_select_operation => 'Dewiswch weithred:';

  @override
  String get outbound => 'Allgofnodi';

  @override
  String get inbound => 'Mewngofnodi';

  @override
  String get inbound_quantity => 'Nifer Mewngofnodi';

  @override
  String get outbound_quantity => 'Nifer Allgofnodi';

  @override
  String get quantity => 'Nifer';

  @override
  String get enter_inbound_quantity => 'Rhowch y nifer i\'w fewngofnodi';

  @override
  String get enter_outbound_quantity => 'Rhowch y nifer i\'w allforio';

  @override
  String item_increased(String name, String quantity, String unit) {
    return 'Mae $name $quantity $unit wedi\'i ychwanegu';
  }

  @override
  String delete_item_confirm_with_irreversible(String name) {
    return 'Ydych chi wir am ddileu „$name“? Ni ellir rhoi\'r cam hwn yn ôl.';
  }

  @override
  String item_decreased(String name, String quantity, String unit) {
    return 'Wedi lleihau $name $quantity$unit';
  }

  @override
  String get database_reset =>
      'Mae\'r cronfa ddata wedi\'i hailosod, bydd strwythur y tabl yn cael ei greu eto';

  @override
  String database_reset_error(String error) {
    return 'Gwall wrth ailosod y gronfa ddata: $error';
  }

  @override
  String mock_data_init_failed(String error) {
    return 'Methiant i gychwyn data efelychiad: $error';
  }

  @override
  String get solution_steps => 'Ateb:';

  @override
  String get solution_step_1 => '1. Dadddatrys y cais a\'i ailosod';

  @override
  String get solution_step_2 => '2. Neu glirio data\'r cais';

  @override
  String get solution_step_3 =>
      '3. Neu ososod resetDatabaseOnStart i true ac yna ail-run';

  @override
  String notification_service_init_failed(String error) {
    return 'Methwyd â chwblhau’r gwasanaeth atgoffa: $error';
  }

  @override
  String check_calendar_account_failed(String error) {
    return 'Gwirio methiant cyfrif calendr: $error';
  }

  @override
  String create_calendar_failed(String error) {
    return 'Methwyd creu calendr: $error';
  }

  @override
  String add_calendar_event_failed(String error) {
    return 'Methu ychwanegu digwyddiad i\'r calendr: $error';
  }

  @override
  String delete_calendar_event_failed(String error) {
    return 'Gwall wrth ddileu digwyddiad calendr: $error';
  }

  @override
  String set_permission_message_failed(String error) {
    return 'Gwall wrth osod neges awgrym hawliau: $error';
  }

  @override
  String mock_data_init_success(int count) {
    return 'Wedi llwyddo i gychwynnoli $count o ddata efelychiadol';
  }

  @override
  String database_has_data(int count) {
    return 'Mae gan y gronfa ddata eisoes $count o ddata, hepgor cychwyn data efelychiedig';
  }

  @override
  String get database_structure_mismatch =>
      'Efallai nad yw strwythur y cronfa ddata yn cyd-fynd, argymhellir dileu data\'r app neu ailosod';

  @override
  String get old_database_deleted => 'Wedi dileu ffeiliau cronfa ddata hen';

  @override
  String get backup_data_empty => 'Mae\'r data wrth gefn yn wag';

  @override
  String get backup_file_not_found => 'Nid yw\'r ffeil wrth gefn yn bodoli';

  @override
  String file_not_utf8(String error) {
    return 'Nid yw codio\'r ffeil yn fformat dilys UTF-8. Sicrhewch fod y ffeil wedi\'i gadw gyda chodiad UTF-8. Manylion y gwall: $error';
  }

  @override
  String file_not_found(String filePath) {
    return 'Ffeil ddim yn bodoli: $filePath';
  }

  @override
  String file_empty(String filePath) {
    return 'Mae\'r ffeil yn wag: $filePath';
  }

  @override
  String get file_content_empty =>
      'Mae cynnwys y ffeil yn wag ar ôl dadgodio, efallai nad yw\'r codio\'n cyfateb';

  @override
  String field_cannot_be_empty(String fieldName) {
    return '$fieldName ni all fod yn wag';
  }

  @override
  String field_min_length(String fieldName, int minLength) {
    return 'Ni all hyd $fieldName fod yn llai na $minLength nod';
  }

  @override
  String field_max_length(String fieldName, int maxLength) {
    return 'Ni all hyd $fieldName fod yn fwy na $maxLength nod';
  }

  @override
  String field_invalid_email(String fieldName) {
    return 'Rhowch gyfeiriad $fieldName dilys';
  }

  @override
  String field_invalid_number(String fieldName, String numberType) {
    return '$fieldName rhaid iddo fod yn $numberType';
  }

  @override
  String field_min_value(String fieldName, double min) {
    return '$fieldName ni all fod yn llai na $min';
  }

  @override
  String field_max_value(String fieldName, double max) {
    return '$fieldName ni all fod yn fwy na $max';
  }

  @override
  String field_positive_integer(String fieldName) {
    return '$fieldName yn rhaid i fod yn rhowch rhif positif';
  }

  @override
  String field_greater_than_zero(String fieldName) {
    return '$fieldName yn rhaid i fod yn fwy na 0';
  }

  @override
  String field_positive_number(String fieldName) {
    return '$fieldName yn rhaid i fod yn raddfeydd positif';
  }

  @override
  String field_invalid_date(String fieldName) {
    return 'Rhowch $fieldName dilys';
  }

  @override
  String field_date_not_past(String fieldName) {
    return '$fieldName ni all fod yn ddyddiad yn y gorffennol';
  }

  @override
  String field_date_not_before(String fieldName, String minDate) {
    return '$fieldName ni all fod yn gynharach na $minDate';
  }

  @override
  String field_date_not_after(String fieldName, String maxDate) {
    return '$fieldName ni all fod yn hwy na $maxDate';
  }

  @override
  String field_invalid_value(String fieldName) {
    return 'Rhowch $fieldName dilys';
  }

  @override
  String password_min_length(String fieldName) {
    return '$fieldName nid yw\'n gallu bod yn llai na 8 cymeriad';
  }

  @override
  String password_uppercase_required(String fieldName) {
    return '$fieldName rhaid i gynnwys o leiaf un llythyren fawr';
  }

  @override
  String password_lowercase_required(String fieldName) {
    return '$fieldName rhaid i gynnwys o leiaf un llythyren fach';
  }

  @override
  String password_digit_required(String fieldName) {
    return '$fieldName rhaid cynnwys o leiaf un rhif';
  }

  @override
  String password_special_char_required(String fieldName) {
    return '$fieldName rhaid i gynnwys o leiaf un cymeriad arbennig';
  }

  @override
  String get passwords_not_match =>
      'Mae\'r cyfrinair a nodwyd ddwywaith yn wahanol';

  @override
  String get item_name_cannot_be_empty => 'Ni all enw\'r eitem fod yn wag';

  @override
  String name_max_length(int maxLength) {
    return 'Ni all yr enw fod yn fwy nag $maxLength nod';
  }

  @override
  String quantity_min(int minQuantity) {
    return 'Ni all y maint fod yn llai na $minQuantity';
  }

  @override
  String quantity_max(int maxQuantity) {
    return 'Ni all y nifer fod yn fwy na $maxQuantity';
  }

  @override
  String get unit_price_not_negative => 'Ni all y pris unedol fod yn negatif';

  @override
  String unit_price_max(double maxUnitPrice) {
    return 'Ni all pris uned fynd dros $maxUnitPrice';
  }

  @override
  String get set_production_expiry_for_validity =>
      'Gosodwch y dyddiad cynhyrchu a\'r cyfnod cadw i gyfrifo cyfnod dilys yn awtomatig';

  @override
  String get set_purchase_warranty_for_validity =>
      'Dewiswch ddyddiad prynu a dyddiad gorffen cynhwysedd i gyfrifo cyfnod gwarant yn awtomatig';

  @override
  String get calendar_account_creation_failed =>
      'Methu creu cyfrif calendr, gwiriwch leoliadau calendr y system';

  @override
  String get test_notification => 'Hysbysiad Profion';

  @override
  String get test_notification_description =>
      'Mae hwn yn hysbysiad prawf, wedi\'i ddefnyddio i wirio swyddogaeth atgoffa lleol';

  @override
  String get day_unit => 'Dydd';

  @override
  String days_with_value(int days) {
    return '$days diwrnod';
  }

  @override
  String get item_saved => 'Mae\'r eitem wedi\'i gadw';

  @override
  String get item_updated => 'Mae\'r eitem wedi\'i ddiweddaru';

  @override
  String get item_added => 'Mae\'r eitem wedi\'i hychwanegu';

  @override
  String get save_success => 'Cadw wedi llwyddo';

  @override
  String get update_success => 'Diweddaru wedi llwyddo';

  @override
  String get delete_success => 'Dileu wedi llwyddo';

  @override
  String get save_failed => 'Methu cadw';

  @override
  String get update_failed => 'Methu diweddaru';

  @override
  String get delete_failed => 'Methu dileu';
}
