// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hmong Daw (`mww`).
class AppLocalizationsMww extends AppLocalizations {
  AppLocalizationsMww([String locale = 'mww']) : super(locale);

  @override
  String get app_name => 'Khoom muaj nqis hauv ib qho chaw me me';

  @override
  String get cancel => 'Tshem tawm';

  @override
  String get confirm => 'Xyuas kom meej';

  @override
  String get save => 'Txuag';

  @override
  String get delete => 'Rho tawm';

  @override
  String get edit => 'Kho kom raug';

  @override
  String get add => 'Ntxiv';

  @override
  String get edit_item => 'Kho Yam Khoom';

  @override
  String get add_item => 'Ntxiv yam khoom';

  @override
  String get search => 'Nrhiav';

  @override
  String get settings => 'Chaw teeb tsa';

  @override
  String get language_settings => 'Chaw teeb tsa lus';

  @override
  String get language_settings_description => 'Teem hom lus qhia app';

  @override
  String get system_default => 'System Default';

  @override
  String get use_system_language => 'Siv lus system';

  @override
  String get language_change_hint =>
      'Kev hloov lus yuav muaj txiaj ntsig tom qab daim ntawv thov rov pib dua.';

  @override
  String get back => 'Rov qab los';

  @override
  String get next => 'Kauj ruam tom ntej';

  @override
  String get done => 'Ua tiav';

  @override
  String get loading => 'Tab tom thauj khoom...';

  @override
  String get error => 'Yuav ua yuam kev';

  @override
  String get success => 'Kev vam meej';

  @override
  String get warning => 'Ceeb toom';

  @override
  String get info => 'Cov ntaub ntawv';

  @override
  String get select_alert_days => 'Xaiv hnub ceeb toom';

  @override
  String get custom => 'Kev cai';

  @override
  String custom_days(int days) {
    return 'Kev cai ($days hnub)';
  }

  @override
  String current_selection(int days) {
    return 'Kev xaiv tam sim no: $days hnub';
  }

  @override
  String alert_days_range(int min, int max) {
    return 'Hnub ceeb toom: $min-$max hnub';
  }

  @override
  String get enter_days => 'Thov sau hnub ceeb toom';

  @override
  String get days => 'Tus naj npawb hnub';

  @override
  String enter_valid_days(int min, int max) {
    return 'Thov sau ib tus lej ntawm $min thiab $max';
  }

  @override
  String get alert_settings => 'Chaw Ceeb Toom';

  @override
  String get calendar_settings => 'Chaw Teeb Tsa Calendar';

  @override
  String get calendar_sync => 'Calendar Sync';

  @override
  String get calendar_sync_desc => 'Yuav thov kev tso cai calendar thaum qhib';

  @override
  String get add_test_calendar_event =>
      'Ntxiv kev tshwm sim hauv daim ntawv qhia hnub sim';

  @override
  String get enable_calendar_sync_first =>
      'Thov qhib \'Calendar Sync\' hloov ua ntej';

  @override
  String get app_alert_settings => 'App Ceeb Toom Teeb Meem';

  @override
  String get local_alerts => 'Ceeb toom hauv zos';

  @override
  String get local_alerts_desc =>
      'Tau txais kev ceeb toom txog hnub tas sij hawm hauv app tom qab qhib';

  @override
  String get send_test_notification => 'Xa ntawv ceeb toom kuaj';

  @override
  String get enable_local_alerts_first =>
      'Thov qhib \'Local Notifications\' switch ua ntej';

  @override
  String get alert_days_settings => 'Kev teeb tsa hnub ceeb toom';

  @override
  String get advance_alert_days => 'Hnub rau kev ceeb toom ua ntej';

  @override
  String get advance_alert_days_desc =>
      'Teem pes tsawg hnub ua ntej kom nco txog hnub tas sij hawm lossis warranty';

  @override
  String get calendar_permission_request =>
      'Kev thov tso cai rau daim ntawv qhia hnub';

  @override
  String get calendar_permission_desc =>
      'Yuav tsum tau nkag mus rau daim calendar thiaj li sync tau cov lus ceeb toom txog yam khoom. Pub?';

  @override
  String get allow => 'Cia';

  @override
  String get calendar_permission_granted =>
      'Kev tso cai calendar tau muab lawm, thiab kev sync calendar tau qhib';

  @override
  String get calendar_permission_denied =>
      'Kev tso cai calendar raug tsis lees paub, tsis tuaj yeem qhib kev sync calendar';

  @override
  String get calendar_permission_permanently_denied =>
      'Kev tso cai raug tsis lees txais mus tas mus li';

  @override
  String get calendar_permission_permanently_denied_desc =>
      'Kev tso cai rau daim ntawv qhia hnub tim tau raug tsis lees paub tas mus li. Thov manually qhib qhov kev tso cai hauv system settings.';

  @override
  String get go_to_settings => 'Mus rau chaw teeb tsa';

  @override
  String get calendar_account_failed =>
      'Kev tso cai calendar twb tau muab lawm, tab sis tsis tuaj yeem tsim ib tus account calendar. Thov xyuas cov chaw teeb tsa ntawm lub system calendar.';

  @override
  String get calendar_account_created =>
      'Kev tso cai calendar tau muab lawm, thiab ib tus account calendar hauv zos tau tsim';

  @override
  String get calendar_account_creating =>
      'Tus account calendar tau tsim tiav lawm, tab sis lub system yuav siv sijhawm me ntsis thiaj li ua haujlwm.';

  @override
  String get test_calendar_event_added =>
      'Kev sim calendar event tau ntxiv tiav lawm';

  @override
  String get test_calendar_event_failed =>
      'Tsis tau ntxiv qhov xwm txheej hnub tim kuaj, thov xyuas cov chaw teem sijhawm';

  @override
  String get calendar_permission_required =>
      'Yuav tsum muaj kev tso cai calendar thiaj li ntxiv tau ib qho kev sim';

  @override
  String get test_notification_sent => 'Kev ceeb toom kuaj tau xa lawm';

  @override
  String test_notification_failed(String error) {
    return 'Tsis tau xa ntawv ceeb toom kuaj: $error';
  }

  @override
  String get notification_permission_required =>
      'Yuav tsum muaj kev tso cai ceeb toom kom qhib tau kev ceeb toom hauv zos';

  @override
  String operation_failed(String error) {
    return 'Kev ua haujlwm tsis tau: $error';
  }

  @override
  String get notification_channel_name => 'Ceeb toom txog yam khoom';

  @override
  String get notification_channel_description =>
      'Kev ceeb toom txog khoom tas sij hawm lossis warranty';

  @override
  String get item_category_food => 'Zaub mov';

  @override
  String get item_category_daily_necessities => 'Cov khoom siv txhua hnub';

  @override
  String get item_category_cosmetics => 'Khoom zoo nkauj';

  @override
  String get item_category_medicine => 'Kev kho mob';

  @override
  String get item_category_electronics => 'Cov khoom hluav taws xob';

  @override
  String get item_category_furniture => 'Cov rooj tog';

  @override
  String get item_category_clothing => 'Khaub ncaws';

  @override
  String get item_category_books => 'Phau Ntawv';

  @override
  String get item_category_other => 'Lwm yam';

  @override
  String get purchase_channel_online_mall => 'Khw muag khoom hauv online';

  @override
  String get purchase_channel_physical_store => 'Khw muag khoom tiag tiag';

  @override
  String get purchase_channel_supermarket => 'khw muag khoom loj';

  @override
  String get purchase_channel_specialty_store => 'Khw tshwj xeeb';

  @override
  String get purchase_channel_secondhand_market => 'Kev lag luam siv dua';

  @override
  String get purchase_channel_other => 'Lwm yam';

  @override
  String get default_category => 'Lwm yam';

  @override
  String get default_purchase_channel => 'Khw muag khoom hauv online';

  @override
  String get item_category => 'Kev faib khoom';

  @override
  String get custom_category => 'Qeb tshwj xeeb';

  @override
  String get backup_data => 'Thaub qab cov ntaub ntawv';

  @override
  String get backup_data_description =>
      'Ntim tag nrho cov ntaub ntawv (xws li duab) rau hauv ib daim ZIP ntaub ntawv rau thaub qab';

  @override
  String get backup_all_data => 'Thaub qab tag nrho cov ntaub ntawv';

  @override
  String get backup_success => 'Thaub qab ua tiav';

  @override
  String backup_failed(String error) {
    return 'Thaub qab tsis tau: $error';
  }

  @override
  String get restore_data => 'Rov qab tau cov ntaub ntawv';

  @override
  String get restore_data_description =>
      'Rov qab tag nrho cov ntaub ntawv los ntawm ZIP backup file';

  @override
  String get export_data => 'Xa tawm cov ntaub ntawv';

  @override
  String get export_data_description => 'Xa tawm ua CSV, TXT, SQL hom ntawv';

  @override
  String get import_data => 'Import Cov Ntaub Ntawv';

  @override
  String get import_data_description =>
      'Ntshuam cov ntaub ntawv los ntawm CSV, TXT, SQL cov ntaub ntawv';

  @override
  String get alert_settings_description =>
      'Kev ceeb toom hauv daim calendar thiab kev teeb tsa app push notification';

  @override
  String get about => 'Hais Txog';

  @override
  String get about_description => 'App Cov Ntaub Ntawv thiab Version';

  @override
  String get select_backup_file_first =>
      'Thov xaiv ib daim backup file ua ntej';

  @override
  String get confirm_restore => 'Xyuas kom rov qab tau';

  @override
  String get confirm_restore_message =>
      'Rov qab thaub qab yuav tshem tag nrho cov ntaub ntawv uas twb muaj lawm thiab hloov nrog cov ntaub ntawv thaub qab. Qhov kev ua no tsis tuaj yeem hloov tau. Koj puas paub tseeb tias koj xav txuas ntxiv?';

  @override
  String get confirm_again => 'Xyuas dua';

  @override
  String get confirm_restore_warning =>
      'Koj puas paub tseeb tias koj xav tshem tag nrho cov ntaub ntawv uas twb muaj lawm thiab rov qab tau backup? Qhov kev ua no tsis tuaj yeem hloov tau!';

  @override
  String get confirm_restore_button => 'Xyuas kom rov qab tau';

  @override
  String restore_success(int count) {
    return 'Kev kho dua tshiab ua tiav, tag nrho muaj $count yam khoom';
  }

  @override
  String restore_failed(String error) {
    return 'Kev rov qab tsis tau: $error';
  }

  @override
  String get select_backup_file => 'Xaiv cov ntaub ntawv thaub qab';

  @override
  String get restore_backup => 'Rov qab thaub qab';

  @override
  String selected_file(String filename) {
    return 'Cov ntaub ntawv xaiv: $filename';
  }

  @override
  String get export_success => 'Kev xa tawm ntaub ntawv ua tiav';

  @override
  String export_failed(String error) {
    return 'Export tsis tau: $error';
  }

  @override
  String get format_csv => 'CSV';

  @override
  String get format_txt => 'TXT';

  @override
  String get format_sql => 'SQL';

  @override
  String get duplicate_data_handling => 'Kev ua ntaub ntawv rov ua dua';

  @override
  String get duplicate_data_detected =>
      'Yog pom cov ntaub ntawv rov ua dua, thov xaiv txoj kev tswj:';

  @override
  String get skip => 'Hla';

  @override
  String get overwrite => 'npog';

  @override
  String get skip_all => 'Hla tag nrho';

  @override
  String get overwrite_all => 'Kev npog tag nrho';

  @override
  String get select_import_format_first => 'Thov xaiv hom import ua ntej';

  @override
  String get confirm_import => 'Xyuas kom nkag tau';

  @override
  String get confirm_import_message =>
      'Import cov ntaub ntawv yuav overwrite cov ntaub ntawv uas twb muaj lawm. Qhov kev ua no tsis tuaj yeem hloov tau. Koj puas paub tseeb tias koj xav txuas ntxiv?';

  @override
  String import_success(int count) {
    return 'Kev xa ntaub ntawv ua tiav, tag nrho $count yam khoom tau xa tuaj';
  }

  @override
  String import_failed(String error) {
    return 'Import tsis tau: $error';
  }

  @override
  String get select_file => 'Xaiv Cov Ntaub Ntawv';

  @override
  String get no_data => 'Tsis muaj ntaub ntawv';

  @override
  String get no_data_description =>
      'Tam sim no tsis muaj ntaub ntawv. Nyem lub pob hauv qab no kom ntxiv zaj nkauj thawj!';

  @override
  String get load_failed => 'Thauj khoom tsis tau';

  @override
  String get load_failed_description =>
      'Kev thauj ntaub ntawv tsis tau, thov xyuas koj qhov kev txuas network thiab sim dua';

  @override
  String get retry => 'rov sim dua';

  @override
  String get network_connection_failed => 'Kev txuas network tsis ua tiav';

  @override
  String get network_connection_failed_description =>
      'Thov xyuas koj qhov kev txuas network thiab sim dua';

  @override
  String get no_results => 'Tsis pom txiaj ntsig';

  @override
  String get no_results_description =>
      'Sim tshawb nrhiav nrog lwm lo lus tseem ceeb';

  @override
  String get clear_search => 'Ntxuav Kev Tshawb Nrhiav';

  @override
  String get insufficient_permission => 'Kev tso cai tsis txaus';

  @override
  String get insufficient_permission_description =>
      'Koj yuav tsum muaj kev tso cai tsim nyog thiaj siv tau qhov feature no';

  @override
  String get request_permission => 'Thov kev tso cai';

  @override
  String get app_info => 'Cov ntaub ntawv thov';

  @override
  String get version => 'Version';

  @override
  String get developer => 'Tus tsim kho';

  @override
  String get device_info => 'Cov Ntaub Ntawv Txog Cov Khoom Siv';

  @override
  String get device_model => 'Qauv Khoom Siv';

  @override
  String get brand => 'Hom';

  @override
  String get device_name => 'Lub Npe Khoom Siv';

  @override
  String get product => 'Khoom';

  @override
  String get hardware => 'Kho vajtse';

  @override
  String get android_version => 'Android version';

  @override
  String get sdk_version => 'SDK Version';

  @override
  String get system_name => 'Lub Npe Txheej Txheem';

  @override
  String get operating_system => 'Operating System';

  @override
  String get system_version => 'System Version';

  @override
  String get dart_version => 'Dart version';

  @override
  String get device_identifier => 'Kev txheeb xyuas cuab yeej';

  @override
  String get computer_name => 'Lub Npe Computer';

  @override
  String get build_number => 'Version number';

  @override
  String error_getting_device_info(String error) {
    return 'Tsis tau txais cov ntaub ntawv ntaus ntawv: $error';
  }

  @override
  String get features => 'Kev Taw Qhia Txog Kev Ua Haujlwm';

  @override
  String get app_description => 'Daim ntawv thov tswj khoom ntse';

  @override
  String get app_description_detail =>
      'Pab koj tswj cov ntaub ntawv xws li hnub tas sij hawm thiab hnub lav ntawm cov khoom, thiab muab cov haujlwm ceeb toom ntse.';

  @override
  String get consumable => 'Cov khoom siv tas';

  @override
  String get durable => 'Cov khoom ruaj khov';

  @override
  String get sort => 'Sort';

  @override
  String get name_asc => 'Lub npe nce mus';

  @override
  String get name_desc => 'Lub npe nqis los ntawm qis';

  @override
  String get date_asc => 'Hnub tim nce mus';

  @override
  String get date_desc => 'Hnub tim txo qis';

  @override
  String get price_asc => 'Tus nqi ib qho nce ntxiv';

  @override
  String get price_desc => 'Tus nqi ib chav poob qis';

  @override
  String get quantity_asc => 'Kev txiav txim siab nce ntawm qhov ntau';

  @override
  String get quantity_desc => 'Tus naj npawb nqis qis';

  @override
  String get total_price_asc => 'Tus Nqi Tag Nrho Nce';

  @override
  String get total_price_desc => 'Tus nqi tag nrho poob qis';

  @override
  String get clear_all_filters => 'Rho tawm tag nrho cov lim';

  @override
  String get scan_barcode =>
      'Scan code kom nkag mus rau hauv cov khoom hauv khw';

  @override
  String get search_items => 'Nrhiav cov khoom...';

  @override
  String get no_items => 'Tam sim no tsis muaj khoom';

  @override
  String get no_items_description =>
      'Nyem lub pob hauv qab no kom ntxiv thawj yam khoom';

  @override
  String get expired => 'Tas sij hawm lawm';

  @override
  String get expiring_soon => 'Yuav xaus sai sai no';

  @override
  String get warranty_expired => 'Kev lav phib xaub twb tas lawm';

  @override
  String get warranty_expiring_soon => 'Kev lav phib xaub yuav xaus sai sai no';

  @override
  String days_remaining(int count) {
    return 'Hnub $count tshuav';
  }

  @override
  String expired_days_ago(int count) {
    return 'Xaus $count hnub';
  }

  @override
  String get delete_item => 'Rho tawm yam khoom';

  @override
  String delete_item_confirm(String name) {
    return 'Koj puas paub tseeb tias koj xav tshem \"$name\"?';
  }

  @override
  String get item_deleted => 'Yam khoom tau raug tshem tawm';

  @override
  String get failed_to_delete => 'Kev tshem tawm tsis ua tiav';

  @override
  String failed_to_delete_message(String error) {
    return 'Tsis tuaj yeem rho tawm yam khoom: $error';
  }

  @override
  String get date_range_filter => 'Lim hnub tim';

  @override
  String get price_range_filter => 'Nqe lim';

  @override
  String get my_items => 'Kuv cov khoom';

  @override
  String get click_fab_to_add_item =>
      'Nyem lub pob hauv qab sab xis kom ntxiv ib yam khoom';

  @override
  String get confirm_delete => 'Xyuas kom meej tias tau tshem tawm';

  @override
  String get filter_options => 'Kev xaiv lim';

  @override
  String get filter_by_type_category_location =>
      'Lim cov khoom raws li hom, pawg, thiab qhov chaw';

  @override
  String categories_count(int count) {
    return '$count pawg';
  }

  @override
  String get all_categories => 'Tag nrho pawg';

  @override
  String get no_category_data => 'Tsis muaj cov ntaub ntawv pawg';

  @override
  String get storage_location => 'Chaw khaws cia';

  @override
  String locations_count(int count) {
    return '$count chaw';
  }

  @override
  String get all_locations => 'Txhua qhov chaw';

  @override
  String get no_location_data => 'Tsis muaj ntaub ntawv chaw nyob';

  @override
  String get date_range => 'Date Range';

  @override
  String get select_date_range => 'Xaiv hnub tim';

  @override
  String get price_range => 'Nqe Nqe';

  @override
  String get unit_price_range => 'Tus nqi ib qho';

  @override
  String get min_unit_price => 'Tus nqi tsawg kawg nkaus ib chav';

  @override
  String get max_unit_price => 'Tus nqi siab tshaj plaws ib qho khoom';

  @override
  String get total_price_range => 'Tag nrho tus nqi';

  @override
  String get min_total_price => 'Tus nqi tsawg kawg nkaus tag nrho';

  @override
  String get max_total_price => 'Tus nqi siab tshaj plaws tag nrho';

  @override
  String get clear_price_filter => 'Lim nqi meej';

  @override
  String get place_barcode_in_frame =>
      'Muab barcode tso rau hauv thav duab kom scan';

  @override
  String get item_already_exists => 'Cov khoom twb muaj lawm';

  @override
  String barcode_with_value(String barcode) {
    return 'Barcode: $barcode';
  }

  @override
  String name_with_value(String name) {
    return 'Lub npe: $name';
  }

  @override
  String category_with_value(String category) {
    return 'Qeb: $category';
  }

  @override
  String current_quantity_with_value(String quantity, String unit) {
    return 'Tam sim no muaj ntau: $quantity$unit';
  }

  @override
  String get please_select_operation => 'Thov xaiv ib qho kev ua:';

  @override
  String get outbound => 'tawm mus';

  @override
  String get inbound => 'Kev nkag mus khaws cia';

  @override
  String get inbound_quantity => 'Qhov ntau tuaj';

  @override
  String get outbound_quantity => 'qhov ntau tawm';

  @override
  String get quantity => 'Qhov ntau';

  @override
  String get enter_inbound_quantity => 'Thov sau tus naj npawb uas yuav muaj';

  @override
  String get enter_outbound_quantity =>
      'Thov sau tus naj npawb uas yuav xa tawm';

  @override
  String delete_item_confirm_with_irreversible(String name) {
    return 'Koj puas paub tseeb tias koj xav tshem \"$name\"? Qhov kev ua no tsis tuaj yeem hloov tau.';
  }

  @override
  String get database_reset =>
      'Lub database tau rov pib dua, thiab lub qauv rooj yuav tsim dua tshiab.';

  @override
  String database_reset_error(String error) {
    return 'Yuav ua yuam kev rov kho database: $error';
  }

  @override
  String mock_data_init_failed(String error) {
    return 'Kev pib ua qauv ntaub ntawv tsis ua tiav: $error';
  }

  @override
  String get solution_steps => 'Kev daws teeb meem:';

  @override
  String get solution_step_1 => '1. Tshem tawm app thiab rov nruab dua';

  @override
  String get solution_step_2 => '2. Los yog tshem tawm cov ntaub ntawv app';

  @override
  String get solution_step_3 =>
      '3. Los yog teeb resetDatabaseOnStart rau true thiab khiav dua';

  @override
  String notification_service_init_failed(String error) {
    return 'Kev pib kev pabcuam ceeb toom tsis ua tiav: $error';
  }

  @override
  String check_calendar_account_failed(String error) {
    return 'Tsis tau xyuas tus account calendar: $error';
  }

  @override
  String create_calendar_failed(String error) {
    return 'Tsis tau tsim calendar: $error';
  }

  @override
  String add_calendar_event_failed(String error) {
    return 'Tsis tau ntxiv qhov xwm txheej calendar: $error';
  }

  @override
  String delete_calendar_event_failed(String error) {
    return 'Tsis tau tshem tawm qhov xwm txheej calendar: $error';
  }

  @override
  String set_permission_message_failed(String error) {
    return 'Tsis tau teeb tsa permission prompt message: $error';
  }

  @override
  String mock_data_init_success(int count) {
    return 'Tau pib ua tiav $count daim ntaub ntawv simulation';
  }

  @override
  String database_has_data(int count) {
    return 'Lub database twb muaj cov ntaub ntawv $count lawm, tsis tas yuav pib mock data';
  }

  @override
  String get database_structure_mismatch =>
      'Tej zaum yog vim muaj kev tsis sib haum hauv cov qauv database. Pom zoo kom tshem tawm cov ntaub ntawv app lossis rov nruab dua.';

  @override
  String get old_database_deleted =>
      'Cov ntaub ntawv database qub twb raug tshem tawm lawm';

  @override
  String get backup_data_empty => 'Cov ntaub ntawv thaub qab tsis muaj dab tsi';

  @override
  String get backup_file_not_found => 'Cov ntaub ntawv thaub qab tsis muaj';

  @override
  String file_not_utf8(String error) {
    return 'Cov ntaub ntawv encoding tsis yog ib hom UTF-8 raug cai. Thov xyuas kom cov ntaub ntawv tau khaws tseg siv UTF-8 encoding. Cov ntsiab lus yuam kev: $error';
  }

  @override
  String file_not_found(String filePath) {
    return 'Cov ntaub ntawv tsis muaj: $filePath';
  }

  @override
  String file_empty(String filePath) {
    return 'Cov ntaub ntawv tsis muaj dab tsi: $filePath';
  }

  @override
  String get file_content_empty =>
      'Cov ntaub ntawv tsis muaj dab tsi tom qab decode, tej zaum vim muaj kev tsis sib haum encoding';

  @override
  String field_cannot_be_empty(String fieldName) {
    return '$fieldName tsis tuaj yeem yog qhov khoob';
  }

  @override
  String field_min_length(String fieldName, int minLength) {
    return '$fieldName ntev tsis pub tsawg dua $minLength tus cim';
  }

  @override
  String field_max_length(String fieldName, int maxLength) {
    return '$fieldName ntev tsis pub tshaj $maxLength tus cim';
  }

  @override
  String field_invalid_email(String fieldName) {
    return 'Thov sau ib qho chaw $fieldName raug cai';
  }

  @override
  String field_invalid_number(String fieldName, String numberType) {
    return '$fieldName yuav tsum $numberType';
  }

  @override
  String field_min_value(String fieldName, double min) {
    return '$fieldName tsis tuaj yeem tsawg dua $min';
  }

  @override
  String field_max_value(String fieldName, double max) {
    return '$fieldName tsis tuaj yeem loj tshaj $max';
  }

  @override
  String field_positive_integer(String fieldName) {
    return '$fieldName yuav tsum yog tus lej zoo';
  }

  @override
  String field_greater_than_zero(String fieldName) {
    return '$fieldName yuav tsum loj dua 0';
  }

  @override
  String field_positive_number(String fieldName) {
    return '$fieldName yuav tsum yog tus lej zoo';
  }

  @override
  String field_invalid_date(String fieldName) {
    return 'Thov sau ib daim ntawv thov $fieldName';
  }

  @override
  String field_date_not_past(String fieldName) {
    return '$fieldName tsis tuaj yeem yog hnub dhau los';
  }

  @override
  String field_date_not_before(String fieldName, String minDate) {
    return '$fieldName tsis tuaj yeem ua ntej $minDate';
  }

  @override
  String field_date_not_after(String fieldName, String maxDate) {
    return '$fieldName tsis tuaj yeem lig dua $maxDate';
  }

  @override
  String field_invalid_value(String fieldName) {
    return 'Thov sau ib daim ntawv thov $fieldName';
  }

  @override
  String password_min_length(String fieldName) {
    return '$fieldName tsis pub tsawg dua 8 tus cim ntev';
  }

  @override
  String password_uppercase_required(String fieldName) {
    return '$fieldName yuav tsum muaj tsawg kawg ib tsab ntawv loj';
  }

  @override
  String password_lowercase_required(String fieldName) {
    return '$fieldName yuav tsum muaj tsawg kawg ib tsab ntawv me';
  }

  @override
  String password_digit_required(String fieldName) {
    return '$fieldName yuav tsum muaj tsawg kawg ib tus lej';
  }

  @override
  String password_special_char_required(String fieldName) {
    return '$fieldName yuav tsum muaj tsawg kawg ib tus cim tshwj xeeb';
  }

  @override
  String get passwords_not_match => 'Ob lo lus zais uas tau sau tsis phim';

  @override
  String get item_name_cannot_be_empty =>
      'Lub npe khoom tsis tuaj yeem yog khoob';

  @override
  String name_max_length(int maxLength) {
    return 'Lub npe tsis pub tshaj $maxLength tus cim';
  }

  @override
  String quantity_min(int minQuantity) {
    return 'Qhov ntau tsis pub tsawg dua $minQuantity';
  }

  @override
  String quantity_max(int maxQuantity) {
    return 'Qhov ntau tsis pub tshaj $maxQuantity';
  }

  @override
  String get unit_price_not_negative =>
      'Tus nqi ib qho tsis tuaj yeem yog tus nqi tsis zoo';

  @override
  String unit_price_max(double maxUnitPrice) {
    return 'Tus nqi ib chav tsis pub tshaj $maxUnitPrice';
  }

  @override
  String get set_production_expiry_for_validity =>
      'Thov teeb hnub tsim khoom thiab lub neej khaws cia kom nws suav tau lub sijhawm siv tau tsis siv neeg';

  @override
  String get set_purchase_warranty_for_validity =>
      'Thov teeb hnub yuav khoom thiab lub neej txee kom suav tau lub sijhawm lav phib xaub tau';

  @override
  String get calendar_account_creation_failed =>
      'Tsis tuaj yeem tsim ib tus account calendar, thov xyuas cov chaw teeb tsa ntawm system calendar';

  @override
  String get test_notification => 'Kev Ceeb Toom Kuaj';

  @override
  String get test_notification_description =>
      'Qhov no yog ib qho kev ceeb toom kuaj, siv los xyuas kom meej txog local reminder function';

  @override
  String get day_unit => 'Ntuj';

  @override
  String days_with_value(int days) {
    return '$days hnub';
  }

  @override
  String get item_saved => 'Yam khoom tau khaws cia lawm';

  @override
  String get item_updated => 'Yam khoom tau hloov tshiab';

  @override
  String get item_added => 'Yam khoom tau ntxiv lawm';

  @override
  String get save_success => 'Txuag tau zoo';

  @override
  String get update_success => 'Hloov tshiab tau ua tiav';

  @override
  String get delete_success => 'Rho tawm tiav lawm';

  @override
  String get save_failed => 'Txuag tsis tau';

  @override
  String get update_failed => 'Hloov tshiab tsis ua tiav';

  @override
  String get delete_failed => 'Kev tshem tawm tsis ua tiav';

  @override
  String get test_calendar_event => 'Kev Xeem Calendar Xwm Txheej';

  @override
  String get test_calendar_event_description =>
      'Qhov no yog ib qho kev sim siv los xyuas kom daim calendar ua haujlwm';

  @override
  String get in_app => 'Nyob hauv app';

  @override
  String get enable_alert => 'Qhib kev ceeb toom txog hnub tas sij hawm';

  @override
  String get alert_method => 'Txoj kev ceeb toom';

  @override
  String get alert_method_in_app => 'Tsuas yog app xwb';

  @override
  String get alert_method_calendar => 'Tsuas yog daim calendar xwb';

  @override
  String get alert_method_both => 'Ob qho tib si';

  @override
  String get alert_days_before => 'Hnub rau kev ceeb toom ua ntej';

  @override
  String get use_global_setting => 'Siv cov chaw teeb tsa thoob ntiaj teb';

  @override
  String get barcode_label => 'Barcode';

  @override
  String get name_label => 'Lub Npe';

  @override
  String get category_label => 'Kev faib pawg';

  @override
  String get current_quantity => 'Qhov ntau tam sim no';

  @override
  String get select_operation => 'Thov xaiv ib qho kev ua haujlwm';

  @override
  String get unit => 'chav';

  @override
  String get custom_unit => 'Chav Ua Haujlwm Tshwj Xeeb';

  @override
  String get enter_unit => 'Thov nkag mus rau hauv chav';

  @override
  String get custom_location => 'Chaw Tsim Kho';

  @override
  String get enter_storage_location => 'Thov sau qhov chaw khaws khoom';

  @override
  String get scan => 'Luam QR code';

  @override
  String get scan_to_stock =>
      'Scan code kom nkag mus rau hauv cov khoom hauv khw';

  @override
  String get item_categories => 'Kev faib khoom';

  @override
  String get storage_locations => 'Chaw cia khoom';

  @override
  String get place_barcode_in_frame_to_scan =>
      'Muab barcode tso rau hauv thav duab kom scan';

  @override
  String get barcode => 'Barcode';

  @override
  String get enter_barcode_or_scan => 'Thov sau barcode lossis scan code';

  @override
  String get basic_information => 'Cov Lus Qhia Tseem Ceeb';

  @override
  String get item_name => 'Lub Npe Khoom';

  @override
  String get enter_item_name => 'Thov sau lub npe khoom';

  @override
  String get enter_category_name => 'Thov sau lub npe pawg';

  @override
  String item_increased(String itemName, String quantity, String unit) {
    return 'Tau ntxiv $itemName $quantity$unit';
  }

  @override
  String item_decreased(String itemName, String quantity, String unit) {
    return 'Tau txo qis los ntawm $itemName $quantity$unit';
  }

  @override
  String get unsaved_changes => 'Cov kev hloov uas tsis tau khaws cia';

  @override
  String get unsaved_changes_message =>
      'Yog koj muaj kev hloov uas tsis tau txuag, thov xaiv ib qho kev ua:';

  @override
  String get discard => 'Tso tseg';

  @override
  String get unit_piece => 'daim';

  @override
  String get unit_item => 'daim';

  @override
  String get unit_box => 'Thawv';

  @override
  String get unit_package => 'hnab';

  @override
  String get unit_bottle => 'raj mis';

  @override
  String get unit_carton => 'thawv';

  @override
  String get unit_set => 'teem';

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
  String get quantity_label => 'Qhov ntau';

  @override
  String get unit_price_label => 'Nqi ib qho';

  @override
  String get currency_label => 'Nyiaj txiag';

  @override
  String get total_price_label => 'Nqi Tag Nrho:';

  @override
  String get storage_location_label => 'Chaw khaws cia';

  @override
  String get item_properties => 'Cov yam ntxwv ntawm yam khoom';

  @override
  String get expiry_date_label => 'Lub sijhawm siv tau';

  @override
  String get warranty_expiry_date_label => 'Hnub Xaus Kev Lav Ntseg';

  @override
  String get production_date_label => 'Hnub tsim khoom';

  @override
  String get purchase_date_label => 'Hnub yuav khoom';

  @override
  String auto_calculated_from(String dateType) {
    return 'Xam tau tsis siv neeg raws li $dateType thiab lub neej txee';
  }

  @override
  String get auto_calculated => 'Kev suav tsis siv neeg';

  @override
  String get images_label => 'Duab';

  @override
  String get notes_label => 'Lus ceeb toom';

  @override
  String get add_notes_hint => 'Ntxiv lus piav qhia (yeem xaiv)';

  @override
  String get year_label => 'Xyoo';

  @override
  String get month_label => 'Hli';

  @override
  String get day_label => 'Ntuj';

  @override
  String selected_count(int count) {
    return '$count yam khoom xaiv tau';
  }

  @override
  String get select_all => 'Xaiv Txhua Yam';

  @override
  String get deselect_all => 'Tshem Tawm Txhua Yam';

  @override
  String get batch_change_location => 'Batch swap chaw cia ntaub ntawv';

  @override
  String confirm_delete_selected(int count) {
    return 'Koj puas paub tseeb tias koj xav rho tawm cov khoom $count xaiv?';
  }

  @override
  String deleted_count_items(int count) {
    return '$count yam khoom tau raug tshem tawm';
  }

  @override
  String get no_storage_location_available => 'Tsis muaj chaw cia ntaub ntawv';

  @override
  String get batch_change_location_title => 'Batch swap chaw cia ntaub ntawv';

  @override
  String moved_count_items_to_location(int count, String location) {
    return '$count yam khoom tau hloov mus rau $location';
  }

  @override
  String get operation_type_create => 'Nkag';

  @override
  String get operation_type_update => 'Kho kom raug';

  @override
  String get operation_type_delete => 'Rho tawm';

  @override
  String get operation_type_inbound => 'Khaws cia';

  @override
  String get operation_type_outbound => 'Xa tawm ntawm lub tsev khaws khoom';

  @override
  String export_failed_message(String error) {
    return 'Export tsis tau: $error';
  }

  @override
  String get clear_logs => 'Ntxuav cov log';

  @override
  String get confirm_clear_logs =>
      'Koj puas paub tseeb tias koj xav tshem tag nrho cov ntaub ntawv ua haujlwm? Qhov kev ua no tsis tuaj yeem hloov tau.';

  @override
  String get logs_cleared => 'Lub log tau ntxuav lawm';

  @override
  String get operation_logs_title => 'Operation Log';

  @override
  String get export_logs => 'Export Log';

  @override
  String get clear_logs_tooltip => 'Ntxuav cov log';

  @override
  String get no_operation_logs => 'Tsis muaj ntaub ntawv sau kev ua haujlwm';

  @override
  String get log_item_label => 'Yam khoom:';

  @override
  String get log_category_label => 'Qeb:';

  @override
  String get log_type_label => 'Hom:';

  @override
  String get log_quantity_label => 'Ntau:';

  @override
  String get log_unit_price_label => 'Nqi ib chav:';

  @override
  String get log_total_price_label => 'Nqi Tag Nrho:';

  @override
  String get log_expiry_date_label => 'Hnub xaus:';

  @override
  String get log_warranty_date_label => 'Hnub Warranty:';

  @override
  String get log_purchase_date_label => 'Hnub yuav:';

  @override
  String get log_production_date_label => 'Hnub tsim khoom:';

  @override
  String get log_shelf_life_label => 'Lub neej khaws cia:';

  @override
  String get log_storage_location_label => 'Chaw cia khoom:';

  @override
  String get log_barcode_label => 'Barcode:';

  @override
  String get log_notes_label => 'Ceeb toom:';

  @override
  String get log_alert_label => 'Ceeb toom:';

  @override
  String get log_alert_days_label => 'Hnub ceeb toom:';

  @override
  String get log_quantity_change_label => 'Kev Hloov Ntau:';

  @override
  String get log_field_changes_label => 'Hloov kho qhov chaw:';

  @override
  String get log_not_set => 'Tsis tau teeb tsa';

  @override
  String get log_empty => 'tsis muaj dab tsi';

  @override
  String get log_alert_enabled => 'Qhib';

  @override
  String get log_alert_disabled => 'Kaw';

  @override
  String get operation_logs_menu => 'Operation Log';

  @override
  String get operation_logs_description =>
      'Saib thiab rov qab cov ntaub ntawv ua haujlwm';

  @override
  String operation_failed_message(String error) {
    return 'Kev ua haujlwm tsis tau: $error';
  }

  @override
  String get no_date => 'Tsis muaj hnub tim';

  @override
  String get shelf_life_months_suffix => 'hli (hli)';

  @override
  String get shelf_life_days_suffix => 'Ntuj';

  @override
  String get alert_days_suffix => 'Ntuj';

  @override
  String get unknown => 'Tsis paub';

  @override
  String get developer_name => 'Leo';

  @override
  String get log_operation_date_label => 'Hnub Ua Haujlwm:';

  @override
  String get uncategorized => 'tsis tau faib pawg';

  @override
  String get no_location => 'Tsis muaj chaw';

  @override
  String get item_category_cannot_be_empty =>
      'Qeb khoom tsis tuaj yeem ua kom tsis muaj dab tsi';

  @override
  String get storage_location_cannot_be_empty =>
      'Chaw cia khoom tsis tuaj yeem khoob';

  @override
  String get created_at_asc => 'Npaj raws li ntxiv sijhawm nce';

  @override
  String get created_at_desc => 'Ntxiv sijhawm nqis qis';

  @override
  String get location_management => 'Kev tswj hwm lub tsev khaws khoom';

  @override
  String get private_warehouses => 'Chaw khaws ntaub ntawv ntiag tug';

  @override
  String get public_warehouses => 'Tsev qiv ntawv pej xeem';

  @override
  String get is_public_warehouse => 'Tsev qiv ntawv pej xeem';

  @override
  String get public_warehouse_desc =>
      'Lub chaw khaws ntaub ntawv pej xeem tsis muaj tus tswj hwm; Kev nkag thiab tawm ntawm cov khoom yuav tsum tau sau npe rau tus neeg ua haujlwm.';

  @override
  String get manager => 'Tus Thawj Coj';

  @override
  String get not_set => 'Tsis tau teeb tsa';

  @override
  String get edit_location => 'Kho Lub Tsev Qiv Ntawv';

  @override
  String get location_name => 'Lub Npe Tsev Qiv Ntawv';

  @override
  String get manager_name => 'Tus Thawj Coj Lub Npe';

  @override
  String get enter_manager_name => 'Thov sau tus thawj tswj hwm lub npe';

  @override
  String get manager_name_required =>
      'Lub npe tus thawj tswj tsis tuaj yeem ua kom tsis muaj dab tsi';

  @override
  String delete_location_confirm(String name) {
    return 'Koj puas paub tseeb tias koj xav tshem tawm lub tsev qiv ntawv \"$name\"?';
  }

  @override
  String get delete_location_has_items =>
      'Muaj cov khoom tseem nyob hauv lub tsev qiv ntawv, tsis tuaj yeem rho tawm';

  @override
  String get default_manager => 'Tus Thawj Coj Default';

  @override
  String get default_manager_desc =>
      'Tus thawj tswj hwm default thaum tsim ib lub repository ntiag tug tshiab';

  @override
  String get enter_default_manager =>
      'Thov sau lub npe tus thawj tswj hwm default';

  @override
  String get operator_name => 'Lub npe operator';

  @override
  String get enter_operator_name => 'Thov sau tus neeg ua haujlwm lub npe';

  @override
  String get operator_name_required =>
      'Lub npe ntawm tus neeg ua haujlwm tsis tuaj yeem yog khoob';

  @override
  String get no_manager => 'Tsis muaj tus tswj hwm';

  @override
  String get log_operator_label => 'Tus neeg ua haujlwm:';

  @override
  String get outbound_quantity_exceeds_current =>
      'Qhov ntau uas xa tawm tsis pub tshaj qhov khoom tam sim no';
}
