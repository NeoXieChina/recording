// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Filipino Pilipino (`fil`).
class AppLocalizationsFil extends AppLocalizations {
  AppLocalizationsFil([String locale = 'fil']) : super(locale);

  @override
  String get app_name => 'Lihim na puwang ng mga bagay';

  @override
  String get cancel => 'Kanselahin';

  @override
  String get confirm => 'Tiyak';

  @override
  String get save => 'I-save';

  @override
  String get delete => 'Tanggalin';

  @override
  String get edit => 'I-edit';

  @override
  String get add => 'Magdagdag';

  @override
  String get edit_item => 'I-edit ang item';

  @override
  String get add_item => 'Magdagdag ng item';

  @override
  String get search => 'Maghanap';

  @override
  String get settings => 'Mga setting';

  @override
  String get language_settings => 'Mga setting ng wika';

  @override
  String get language_settings_description =>
      'Itakda ang wika ng display ng app';

  @override
  String get system_default => 'Default ng sistema';

  @override
  String get use_system_language => 'Gamitin ang wika ng sistema';

  @override
  String get language_change_hint =>
      'Magsisimula ang pagbabago ng wika pagkatapos i-restart ang app';

  @override
  String get back => 'Bumalik';

  @override
  String get next => 'Susunod na hakbang';

  @override
  String get done => 'Tapos na';

  @override
  String get loading => 'Nilo-load...';

  @override
  String get error => 'Mali';

  @override
  String get success => 'Tagumpay';

  @override
  String get warning => 'Babala';

  @override
  String get info => 'Impormasyon';

  @override
  String get select_alert_days => 'Pumili ng bilang ng araw ng paalala';

  @override
  String get custom => 'Pasadya';

  @override
  String custom_days(int days) {
    return 'Pasadyang ($days na araw)';
  }

  @override
  String current_selection(int days) {
    return 'Kasalukuyang pinili: $days na araw';
  }

  @override
  String alert_days_range(int min, int max) {
    return 'Saklaw ng mga araw ng paalala: $min-$max araw';
  }

  @override
  String get enter_days => 'Paki-input ang bilang ng mga araw para sa paalala';

  @override
  String get days => 'Araw';

  @override
  String enter_valid_days(int min, int max) {
    return 'Mangyaring ipasok ang numero sa pagitan ng $min-$max';
  }

  @override
  String get alert_settings => 'Pagtatakda ng Babala';

  @override
  String get calendar_settings => 'Mga setting ng kalendaryo';

  @override
  String get calendar_sync => 'Pag-synchronize ng kalendaryo';

  @override
  String get calendar_sync_desc =>
      'Papayagan ang request para sa pahintulot sa kalendaryo pagkatapos buksan';

  @override
  String get add_test_calendar_event =>
      'Magdagdag ng kaganapan sa kalendaryo para sa pagsubok';

  @override
  String get enable_calendar_sync_first =>
      'Paki-buksan muna ang switch na \'Calendar Sync\'';

  @override
  String get app_alert_settings => 'Mga setting ng paalala ng app';

  @override
  String get local_alerts => 'Lokal na paalala';

  @override
  String get local_alerts_desc =>
      'Pagkatapos buksan, tumanggap ng mga paalala ng pag-expire sa loob ng app';

  @override
  String get send_test_notification => 'Magpadala ng abiso sa pagsubok';

  @override
  String get enable_local_alerts_first =>
      'Paki-buksan muna ang switch na \'Local Reminder\'';

  @override
  String get alert_days_settings => 'Pagtatakda ng bilang ng araw ng paalala';

  @override
  String get advance_alert_days => 'Bilang ng araw ng maagang paalala';

  @override
  String get advance_alert_days_desc =>
      'Itakda kung ilang araw nang maaga paaalalahanan tungkol sa pag-expire ng item o pag-expire ng warranty';

  @override
  String get calendar_permission_request => 'Pahintulot sa Kalendaryo';

  @override
  String get calendar_permission_desc =>
      'Kailangang magkaroon ng pahintulot sa kalendaryo upang ma-synchronize ang mga paalala ng item. Papayagan ba?';

  @override
  String get allow => 'Pahintulutan';

  @override
  String get calendar_permission_granted =>
      'Ibinigay na ang pahintulot sa kalendaryo, at nakabukas na ang pagsabay ng kalendaryo';

  @override
  String get calendar_permission_denied =>
      'Tinanggihan ang permiso sa kalendaryo, hindi maaring buksan ang pagsabay ng kalendaryo';

  @override
  String get calendar_permission_permanently_denied =>
      'Ang pahintulot ay permanenteng tinanggihan';

  @override
  String get calendar_permission_permanently_denied_desc =>
      'Ang pahintulot sa kalendaryo ay permanenteng tinanggihan, mangyaring manu-manong buksan ang pahintulot sa mga setting ng system.';

  @override
  String get go_to_settings => 'Pumunta sa mga setting';

  @override
  String get calendar_account_failed =>
      'Naibigay na ang pahintulot sa kalendaryo, ngunit hindi makalikha ng account sa kalendaryo. Pakisuri ang mga setting ng kalendaryo ng sistema';

  @override
  String get calendar_account_created =>
      'Naibigay na ang pahintulot sa kalendaryo, naitala na ang lokal na account sa kalendaryo';

  @override
  String get calendar_account_creating =>
      'Matagumpay na nalikha ang account sa kalendaryo, ngunit maaaring kailanganin ng ilang oras bago ito maging epektibo sa sistema';

  @override
  String get test_calendar_event_added =>
      'Matagumpay na naidagdag ang kaganapan sa kalendaryo';

  @override
  String get test_calendar_event_failed =>
      'Nabigong idagdag ang test na kaganapan sa kalendaryo, pakisuri ang mga setting ng kalendaryo';

  @override
  String get calendar_permission_required =>
      'Kailangan ng pahintulot sa kalendaryo upang magdagdag ng test na kaganapan';

  @override
  String get test_notification_sent => 'Naipadala na ang abiso ng pagsubok';

  @override
  String test_notification_failed(String error) {
    return 'Nabigong magpadala ng test na abiso: $error';
  }

  @override
  String get notification_permission_required =>
      'Kailangan ng pahintulot sa abiso upang paganahin ang lokal na paalala';

  @override
  String operation_failed(String error) {
    return 'Pagpalya sa operasyon: $error';
  }

  @override
  String get notification_channel_name => 'Abiso ng Babala sa Bagay';

  @override
  String get notification_channel_description =>
      'Paalala sa pag-expire o paglipas ng warranty ng mga item';

  @override
  String get item_category_food => 'Pagkain';

  @override
  String get item_category_daily_necessities => 'Pang-araw-araw na gamit';

  @override
  String get item_category_cosmetics => 'Pampaganda';

  @override
  String get item_category_medicine => 'Gamot';

  @override
  String get item_category_electronics => 'Mga produktong elektroniko';

  @override
  String get item_category_furniture => 'Kasangkapan';

  @override
  String get item_category_clothing => 'Damit';

  @override
  String get item_category_books => 'mga aklat';

  @override
  String get item_category_other => 'Iba pa';

  @override
  String get purchase_channel_online_mall => 'Online na tindahan';

  @override
  String get purchase_channel_physical_store => 'Tindahang pisikal';

  @override
  String get purchase_channel_supermarket => 'Supermarket';

  @override
  String get purchase_channel_specialty_store => 'Tanging tindahan';

  @override
  String get purchase_channel_secondhand_market =>
      'Pangalawang-kamay na pamilihan';

  @override
  String get purchase_channel_other => 'Iba pa';

  @override
  String get default_category => 'Iba pa';

  @override
  String get default_purchase_channel => 'Online na tindahan';

  @override
  String get item_category => 'Pagsasailalim ng mga bagay sa klase';

  @override
  String get custom_category => 'Pasadyang kategorya';

  @override
  String get backup_data => 'I-back up ang data';

  @override
  String get backup_data_description =>
      'I-package ang lahat ng data (kasama ang mga larawan) sa isang ZIP file para sa backup';

  @override
  String get backup_all_data => 'I-back up ang lahat ng data';

  @override
  String get backup_success => 'Matagumpay ang backup';

  @override
  String backup_failed(String error) {
    return 'Backup nabigong gawin: $error';
  }

  @override
  String get restore_data => 'Ibalik ang data';

  @override
  String get restore_data_description =>
      'Ibalik lahat ng data mula sa ZIP backup file';

  @override
  String get export_data => 'I-export ang data';

  @override
  String get export_data_description =>
      'I-export bilang CSV, TXT, SQL na format';

  @override
  String get import_data => 'I-import ang data';

  @override
  String get import_data_description =>
      'I-import ang data mula sa mga CSV, TXT, SQL na file';

  @override
  String get alert_settings_description =>
      'Mga setting ng paalala sa kalendaryo at push notification ng app';

  @override
  String get about => 'Tungkol sa';

  @override
  String get about_description => 'Impormasyon ng Aplikasyon at Bersyon';

  @override
  String get select_backup_file_first =>
      'Mangyaring piliin muna ang backup na file';

  @override
  String get confirm_restore => 'Kumpirmahin ang pagbawi';

  @override
  String get confirm_restore_message =>
      'Ang pagbabalik ng backup ay magbubura ng lahat ng kasalukuyang data at papalitan ito ng backup na data, ang operasyon na ito ay hindi na mababawi. Sigurado ka bang gustong ipagpatuloy?';

  @override
  String get confirm_again => 'Kumpirmahin muli';

  @override
  String get confirm_restore_warning =>
      'Sigurado ka bang gusto mong burahin ang lahat ng kasalukuyang data at ibalik ang backup? Ang operasyon na ito ay hindi na mababawi!';

  @override
  String get confirm_restore_button => 'Tiyakin ang pagpapanumbalik';

  @override
  String restore_success(int count) {
    return 'Nabawi nang matagumpay, kabuuang $count na item';
  }

  @override
  String restore_failed(String error) {
    return 'Nabigong ibalik: $error';
  }

  @override
  String get select_backup_file => 'Pumili ng backup na file';

  @override
  String get restore_backup => 'Ibalik ang backup';

  @override
  String selected_file(String filename) {
    return 'Napiling file: $filename';
  }

  @override
  String get export_success => 'Matagumpay na na-export ang data';

  @override
  String export_failed(String error) {
    return 'Nabigong i-export: $error';
  }

  @override
  String get format_csv => 'CSV';

  @override
  String get format_txt => 'TXT';

  @override
  String get format_sql => 'SQL';

  @override
  String get duplicate_data_handling => 'Paghawak ng paulit-ulit na data';

  @override
  String get duplicate_data_detected =>
      'Natukoy ang paulit-ulit na data, mangyaring piliin ang paraan ng pagproseso:';

  @override
  String get skip => 'Laktawan';

  @override
  String get overwrite => 'takpan';

  @override
  String get skip_all => 'Laktawan ang lahat';

  @override
  String get overwrite_all => 'Saklaw ng lahat';

  @override
  String get select_import_format_first =>
      'Mangyaring piliin muna ang format ng pag-import';

  @override
  String get confirm_import => 'Kumpirmahin ang pag-import';

  @override
  String get confirm_import_message =>
      'Ang pag-import ng data ay papalitan ang kasalukuyang data, at ang operasyong ito ay hindi maaaring bawiin. Sigurado ka bang nais ipagpatuloy?';

  @override
  String import_success(int count) {
    return 'Matagumpay ang pag-import ng data, kabuuang na-import ang $count na item';
  }

  @override
  String import_failed(String error) {
    return 'Pag-import nabigo: $error';
  }

  @override
  String get select_file => 'Pumili ng file';

  @override
  String get no_data => 'Walang datos';

  @override
  String get no_data_description =>
      'Walang datos sa ngayon, i-click ang button sa ibaba upang idagdag ang unang tala!';

  @override
  String get load_failed => 'Nabigong mag-load';

  @override
  String get load_failed_description =>
      'Nabigong mag-load ang data, pakisuri ang koneksyon sa network at subukang muli';

  @override
  String get retry => 'Muling subukan';

  @override
  String get network_connection_failed => 'Nabigo ang koneksyon sa network';

  @override
  String get network_connection_failed_description =>
      'Pakisuri ang koneksyon sa internet at subukang muli';

  @override
  String get no_results => 'Walang nahanap na resulta';

  @override
  String get no_results_description =>
      'Subukan gumamit ng ibang mga keyword sa paghahanap';

  @override
  String get clear_search => 'I-clear ang paghahanap';

  @override
  String get insufficient_permission => 'Hindi sapat ang pahintulot';

  @override
  String get insufficient_permission_description =>
      'Kailangan ng kaukulang permiso upang magamit ang tampok na ito';

  @override
  String get request_permission => 'Humiling ng pahintulot';

  @override
  String get app_info => 'Impormasyon ng aplikasyon';

  @override
  String get version => 'Bersyon';

  @override
  String get developer => 'Developer';

  @override
  String get device_info => 'Impormasyon ng kagamitan';

  @override
  String get device_model => 'Modelo ng kagamitan';

  @override
  String get brand => 'tatak';

  @override
  String get device_name => 'Pangalan ng Kagamitan';

  @override
  String get product => 'produkto';

  @override
  String get hardware => 'Hardware';

  @override
  String get android_version => 'Bersyon ng Android';

  @override
  String get sdk_version => 'Bersyon ng SDK';

  @override
  String get system_name => 'Pangalan ng Sistema';

  @override
  String get operating_system => 'Operating System';

  @override
  String get system_version => 'Bersyon ng sistema';

  @override
  String get dart_version => 'Bersyon ng Dart';

  @override
  String get device_identifier => 'Pagtukoy ng kagamitan';

  @override
  String get computer_name => 'Pangalan ng kompyuter';

  @override
  String get build_number => 'Bersyon ng Numero';

  @override
  String error_getting_device_info(String error) {
    return 'Hindi makuha ang impormasyon ng aparato: $error';
  }

  @override
  String get features => 'Pagpapakilala ng Function';

  @override
  String get app_description => 'Aplikasyon sa Pamamahala ng Matalinong Bagay';

  @override
  String get app_description_detail =>
      'Tinutulungan kang pamahalaan ang mga petsa ng pag-expire ng item, petsa ng warranty, at iba pang impormasyon, at nag-aalok ng matalinong function ng paalala.';

  @override
  String get consumable => 'Mga kailangan gastusin';

  @override
  String get durable => 'Matibay na produkto';

  @override
  String get sort => 'Pag-aayos ng pagkakasunod-sunod';

  @override
  String get name_asc => 'Pataas na pagkakasunod ayon sa pangalan';

  @override
  String get name_desc => 'Pababa ayon sa Pangalan';

  @override
  String get date_asc => 'Pataas na pagkakasunod-sunod ng petsa';

  @override
  String get date_desc => 'Pababa ayon sa petsa';

  @override
  String get price_asc => 'Pataas ng presyo bawat yunit';

  @override
  String get price_desc => 'Pababa ang Presyo kada Yunit';

  @override
  String get quantity_asc => 'Pataas na pagkakasunod-sunod ng dami';

  @override
  String get quantity_desc => 'Pababa ayon sa dami';

  @override
  String get total_price_asc => 'Pataas ayon sa kabuuang presyo';

  @override
  String get total_price_desc => 'Pababa ang kabuuang presyo';

  @override
  String get clear_all_filters => 'I-clear ang lahat ng mga filter';

  @override
  String get scan_barcode => 'I-scan para sa pag-iimbak';

  @override
  String get search_items => 'Naghahanap ng item...';

  @override
  String get no_items => 'Walang item';

  @override
  String get no_items_description =>
      'I-tap ang button sa ibaba upang idagdag ang unang item';

  @override
  String get expired => 'Nag-expire na';

  @override
  String get expiring_soon => 'Malapit nang mag-expire';

  @override
  String get warranty_expired => 'Wala nang bisa ang warranty';

  @override
  String get warranty_expiring_soon => 'Malapit nang mag-expire ang warranty';

  @override
  String days_remaining(int count) {
    return 'Natitira pang $count na araw';
  }

  @override
  String expired_days_ago(int count) {
    return 'Nag-expire na ng $count araw';
  }

  @override
  String get delete_item => 'Tanggalin ang item';

  @override
  String delete_item_confirm(String name) {
    return 'Sigurado ka bang gusto mong tanggalin ang \"$name\"?';
  }

  @override
  String get item_deleted => 'Ang item ay tinanggal na';

  @override
  String get failed_to_delete => 'Hindi natanggal';

  @override
  String failed_to_delete_message(String error) {
    return 'Hindi mai-delete ang item: $error';
  }

  @override
  String get date_range_filter => 'Pagsala ng Saklaw ng Petsa';

  @override
  String get price_range_filter => 'Pagsala ng saklaw ng presyo';

  @override
  String get my_items => 'Aking mga gamit';

  @override
  String get click_fab_to_add_item =>
      'I-tap ang button sa ibabang kanang sulok upang magdagdag ng item';

  @override
  String get confirm_delete => 'Kumpirmahin ang pagtanggal';

  @override
  String get filter_options => 'Mga pagpipilian sa pagsala';

  @override
  String get filter_by_type_category_location =>
      'I-filter ang mga item ayon sa uri, kategorya, at lokasyon';

  @override
  String categories_count(int count) {
    return '$count na kategorya';
  }

  @override
  String get all_categories => 'Lahat ng Kategorya';

  @override
  String get no_category_data => 'Walang data para sa kategorya';

  @override
  String get storage_location => 'Lugar ng Imbakan';

  @override
  String locations_count(int count) {
    return '$count na mga lugar';
  }

  @override
  String get all_locations => 'Lahat ng lugar';

  @override
  String get no_location_data => 'Walang data ng lokasyon';

  @override
  String get date_range => 'Saklaw ng petsa';

  @override
  String get select_date_range => 'Piliin ang saklaw ng petsa';

  @override
  String get price_range => 'Saklaw ng presyo';

  @override
  String get unit_price_range => 'Saklaw ng presyo bawat yunit';

  @override
  String get min_unit_price => 'Pinakamababang presyo kada yunit';

  @override
  String get max_unit_price => 'Pinakamataas na presyo kada yunit';

  @override
  String get total_price_range => 'Saklaw ng kabuuang presyo';

  @override
  String get min_total_price => 'Pinakamababang kabuuang presyo';

  @override
  String get max_total_price => 'Pinakamataas na kabuuang presyo';

  @override
  String get clear_price_filter => 'I-clear ang filter ng presyo';

  @override
  String get place_barcode_in_frame =>
      'Ilagay ang barcode sa loob ng kahon para i-scan';

  @override
  String get item_already_exists => 'Ang produkto ay umiiral na';

  @override
  String barcode_with_value(String barcode) {
    return 'Barcode: $barcode';
  }

  @override
  String name_with_value(String name) {
    return 'Pangalan: $name';
  }

  @override
  String category_with_value(String category) {
    return 'Kategorya: $category';
  }

  @override
  String current_quantity_with_value(String quantity, String unit) {
    return 'Kasalukuyang bilang: $quantity$unit';
  }

  @override
  String get please_select_operation => 'Piliin ang operasyon:';

  @override
  String get outbound => 'Paglabas ng stock';

  @override
  String get inbound => 'Pagpasok sa imbentaryo';

  @override
  String get inbound_quantity => 'Dami ng Pagpasok sa Imbentaryo';

  @override
  String get outbound_quantity => 'Dami ng inilabas mula sa bodega';

  @override
  String get quantity => 'Dami';

  @override
  String get enter_inbound_quantity =>
      'Pakipasok ang dami ng ipapasok sa imbentaryo';

  @override
  String get enter_outbound_quantity =>
      'Pakipasok ang dami ng ilalabas sa bodega';

  @override
  String delete_item_confirm_with_irreversible(String name) {
    return 'Sigurado ka bang gusto mong tanggalin ang \"$name\"? Ang pagkilos na ito ay hindi maaaring bawiin.';
  }

  @override
  String get database_reset =>
      'Ang database ay na-reset na, muling gagawin ang istruktura ng mga talahanayan';

  @override
  String database_reset_error(String error) {
    return 'Nagkaroon ng error sa pag-reset ng database: $error';
  }

  @override
  String mock_data_init_failed(String error) {
    return 'Nabigong i-initialize ang simulated na data: $error';
  }

  @override
  String get solution_steps => 'Solusyon:';

  @override
  String get solution_step_1 => '1. I-uninstall ang app at i-reinstall';

  @override
  String get solution_step_2 => '2. O linisin ang data ng app';

  @override
  String get solution_step_3 =>
      '3. O i-set ang resetDatabaseOnStart sa true at muling patakbuhin';

  @override
  String notification_service_init_failed(String error) {
    return 'Nabigong i-initialize ang serbisyo ng paalala: $error';
  }

  @override
  String check_calendar_account_failed(String error) {
    return 'Nabigong suriin ang account ng kalendaryo: $error';
  }

  @override
  String create_calendar_failed(String error) {
    return 'Nabigong lumikha ng kalendaryo: $error';
  }

  @override
  String add_calendar_event_failed(String error) {
    return 'Nabigong idagdag ang kaganapan sa kalendaryo: $error';
  }

  @override
  String delete_calendar_event_failed(String error) {
    return 'Nabigong tanggalin ang kaganapan sa kalendaryo: $error';
  }

  @override
  String set_permission_message_failed(String error) {
    return 'Nabigong itakda ang mensahe ng paalala sa pahintulot: $error';
  }

  @override
  String mock_data_init_success(int count) {
    return 'Matagumpay na na-initialize ang $count na mga simulated na data';
  }

  @override
  String database_has_data(int count) {
    return 'Ang database ay mayroon nang $count na datos, laktawan ang pagsisimula ng simulated na datos';
  }

  @override
  String get database_structure_mismatch =>
      'Maaaring hindi tugma ang istruktura ng database, inirerekomenda na linisin ang data ng app o muling i-install.';

  @override
  String get old_database_deleted => 'Tinanggal na ang lumang file ng database';

  @override
  String get backup_data_empty => 'Walang laman ang backup na datos';

  @override
  String get backup_file_not_found => 'Ang backup na file ay hindi umiiral';

  @override
  String file_not_utf8(String error) {
    return 'Ang encoding ng file ay hindi isang wastong format na UTF-8. Mangyaring tiyakin na ang file ay naka-save gamit ang UTF-8 na encoding. Detalye ng error: $error';
  }

  @override
  String file_not_found(String filePath) {
    return 'Hindi umiiral ang file: $filePath';
  }

  @override
  String file_empty(String filePath) {
    return 'Walang laman ang dokumento: $filePath';
  }

  @override
  String get file_content_empty =>
      'Ang nilalaman ng file ay walang laman matapos ma-decode, maaaring hindi tumutugma ang encoding';

  @override
  String field_cannot_be_empty(String fieldName) {
    return '$fieldName ay hindi maaaring walang laman';
  }

  @override
  String field_min_length(String fieldName, int minLength) {
    return '$fieldName ay hindi maaaring mas mababa sa $minLength na karakter';
  }

  @override
  String field_max_length(String fieldName, int maxLength) {
    return '$fieldName ay hindi maaaring lumampas sa $maxLength na mga karakter';
  }

  @override
  String field_invalid_email(String fieldName) {
    return 'Mangyaring ilagay ang wastong $fieldName na address';
  }

  @override
  String field_invalid_number(String fieldName, String numberType) {
    return '$fieldName ay dapat na $numberType';
  }

  @override
  String field_min_value(String fieldName, double min) {
    return '$fieldName ay hindi maaaring mas mababa sa $min';
  }

  @override
  String field_max_value(String fieldName, double max) {
    return '$fieldName ay hindi maaaring mas malaki kaysa sa $max';
  }

  @override
  String field_positive_integer(String fieldName) {
    return '$fieldName ay dapat na positibong buong numero';
  }

  @override
  String field_greater_than_zero(String fieldName) {
    return '$fieldName ay dapat na mas malaki sa 0';
  }

  @override
  String field_positive_number(String fieldName) {
    return '$fieldName ay dapat na positibong numero';
  }

  @override
  String field_invalid_date(String fieldName) {
    return 'Mangyaring ipasok ang wastong $fieldName';
  }

  @override
  String field_date_not_past(String fieldName) {
    return '$fieldName ay hindi pwedeng maging nakaraang petsa';
  }

  @override
  String field_date_not_before(String fieldName, String minDate) {
    return '$fieldName ay hindi maaaring mas maaga kaysa sa $minDate';
  }

  @override
  String field_date_not_after(String fieldName, String maxDate) {
    return '$fieldName ay hindi pwedeng maslate kaysa $maxDate';
  }

  @override
  String field_invalid_value(String fieldName) {
    return 'Mangyaring ipasok ang wastong $fieldName';
  }

  @override
  String password_min_length(String fieldName) {
    return '$fieldName ay hindi maaaring mas mababa sa 8 karakter';
  }

  @override
  String password_uppercase_required(String fieldName) {
    return '$fieldName ay dapat mayroong hindi bababa sa isang malaking titik';
  }

  @override
  String password_lowercase_required(String fieldName) {
    return '$fieldName ay dapat mayroong kahit isang maliit na titik';
  }

  @override
  String password_digit_required(String fieldName) {
    return '$fieldName ay dapat maglaman ng hindi bababa sa isang numero';
  }

  @override
  String password_special_char_required(String fieldName) {
    return '$fieldName ay dapat maglaman ng hindi bababa sa isang espesyal na karakter';
  }

  @override
  String get passwords_not_match =>
      'Ang dalawang ipinasok na password ay hindi magkapareho';

  @override
  String get item_name_cannot_be_empty =>
      'Ang pangalan ng item ay hindi maaaring walang laman';

  @override
  String name_max_length(int maxLength) {
    return 'Ang pangalan ay hindi maaaring lumampas sa $maxLength na mga character';
  }

  @override
  String quantity_min(int minQuantity) {
    return 'Ang dami ay hindi maaaring mas mababa sa $minQuantity';
  }

  @override
  String quantity_max(int maxQuantity) {
    return 'Ang dami ay hindi maaaring lumampas sa $maxQuantity';
  }

  @override
  String get unit_price_not_negative =>
      'Hindi maaaring maging negatibo ang presyo bawat yunit';

  @override
  String unit_price_max(double maxUnitPrice) {
    return 'Ang presyo bawat yunit ay hindi dapat lumampas sa $maxUnitPrice';
  }

  @override
  String get set_production_expiry_for_validity =>
      'Pakiset ang petsa ng produksyon at ang shelf life upang awtomatikong makalkula ang bisa.';

  @override
  String get set_purchase_warranty_for_validity =>
      'Mangyaring itakda ang petsa ng pagbili at ang batayang petsa ng bisa upang awtomatikong kalkulahin ang warranty';

  @override
  String get calendar_account_creation_failed =>
      'Hindi malikha ang account sa kalendaryo, pakisuri ang mga setting ng systema ng kalendaryo';

  @override
  String get test_notification => 'Pagsubok ng abiso';

  @override
  String get test_notification_description =>
      'Ito ay isang test na abiso, para subukan ang lokal na tampok ng paalala';

  @override
  String get day_unit => 'langit';

  @override
  String days_with_value(int days) {
    return '$days araw';
  }

  @override
  String get item_saved => 'Naitabi na ang bagay';

  @override
  String get item_updated => 'Na-update na ang item';

  @override
  String get item_added => 'Nagdagdag na ng item';

  @override
  String get save_success => 'Matagumpay na na-save';

  @override
  String get update_success => 'Matagumpay ang pag-update';

  @override
  String get delete_success => 'Matagumpay na natanggal';

  @override
  String get save_failed => 'Hindi nakasave';

  @override
  String get update_failed => 'Nabigong i-update';

  @override
  String get delete_failed => 'Hindi natanggal';

  @override
  String get test_calendar_event => 'Pagsubok ng kaganapan sa kalendaryo';

  @override
  String get test_calendar_event_description =>
      'Ito ay isang test event, na ginagamit upang suriin ang functionality ng kalendaryo';

  @override
  String get in_app => 'sa loob ng app';

  @override
  String get enable_alert => 'Paganahin ang paalala ng pag-expire';

  @override
  String get alert_method => 'Paraan ng paalala';

  @override
  String get alert_method_in_app => 'App lamang';

  @override
  String get alert_method_calendar => 'Kalendaryo lamang';

  @override
  String get alert_method_both => 'dalawa';

  @override
  String get alert_days_before => 'Bilang ng araw ng maagang paalala';

  @override
  String get use_global_setting => 'Gamitin ang mga global na setting';

  @override
  String get barcode_label => 'Barcode';

  @override
  String get name_label => 'Pangalan';

  @override
  String get category_label => 'Pag-uuri';

  @override
  String get current_quantity => 'Kasalukuyang dami';

  @override
  String get select_operation => 'Pumili ng operasyon';

  @override
  String get unit => 'yunit';

  @override
  String get custom_unit => 'Pasadyang yunit';

  @override
  String get enter_unit => 'Mangyaring maglagay ng yunit';

  @override
  String get custom_location => 'Pasadyang lokasyon';

  @override
  String get enter_storage_location => 'Paki-input ang lokasyon ng imbakan';

  @override
  String get scan => 'I-scan ang QR code';

  @override
  String get scan_to_stock => 'I-scan ang code para mag-imbak';

  @override
  String get item_categories => 'Pagsasailalim ng mga bagay sa klase';

  @override
  String get storage_locations => 'Lugar ng Imbakan';

  @override
  String get place_barcode_in_frame_to_scan =>
      'Ilagay ang barcode sa loob ng kahon para i-scan';

  @override
  String get barcode => 'barcode';

  @override
  String get enter_barcode_or_scan => 'Mangyaring ipasok ang barcode o i-scan';

  @override
  String get basic_information => 'Pangunahing impormasyon';

  @override
  String get item_name => 'Pangalan ng Bagay';

  @override
  String get enter_item_name => 'Paki-input ang pangalan ng item';

  @override
  String get enter_category_name =>
      'Mangyaring ilagay ang pangalan ng kategorya';

  @override
  String item_increased(String itemName, String quantity, String unit) {
    return 'Nadagdagan na ang $itemName $quantity$unit';
  }

  @override
  String item_decreased(String itemName, String quantity, String unit) {
    return 'Bumaba na ng $itemName $quantity$unit';
  }

  @override
  String get unsaved_changes => 'Hindi naisave na mga pagbabago';

  @override
  String get unsaved_changes_message =>
      'Mayroon kang mga hindi na-save na pagbabago, pakipili ang aksyon:';

  @override
  String get discard => 'Sumuko';

  @override
  String get unit_piece => 'piraso';

  @override
  String get unit_item => 'piraso';

  @override
  String get unit_box => 'kahon';

  @override
  String get unit_package => 'bag';

  @override
  String get unit_bottle => 'bote';

  @override
  String get unit_carton => 'kahon';

  @override
  String get unit_set => 'set';

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
  String get unit_cm => 'sentimetro';

  @override
  String get quantity_label => 'Dami';

  @override
  String get unit_price_label => 'Presyo bawat yunit';

  @override
  String get currency_label => 'Salapi';

  @override
  String get total_price_label => 'Kabuuang presyo:';

  @override
  String get storage_location_label => 'Lugar ng Imbakan';

  @override
  String get item_properties => 'Ari-arian ng bagay';

  @override
  String get expiry_date_label => 'Bisa';

  @override
  String get warranty_expiry_date_label => 'Petsa ng pag-expire ng warranty';

  @override
  String get production_date_label => 'Petsa ng paggawa';

  @override
  String get purchase_date_label => 'Petsa ng Pagbili';

  @override
  String auto_calculated_from(String dateType) {
    return 'Awtomatikong kalkulahin ayon sa $dateType at petsa ng pagiging bago';
  }

  @override
  String get auto_calculated => 'Awtomatikong pagkalkula';

  @override
  String get images_label => 'larawan';

  @override
  String get notes_label => 'Tandaan';

  @override
  String get add_notes_hint => 'Magdagdag ng impormasyon ng tala (opsyonal)';

  @override
  String get year_label => 'taon';

  @override
  String get month_label => 'buwan';

  @override
  String get day_label => 'langit';

  @override
  String selected_count(int count) {
    return 'Napili na ang $count na item';
  }

  @override
  String get select_all => 'Piliin Lahat';

  @override
  String get deselect_all => 'I-undo ang piliin lahat';

  @override
  String get batch_change_location =>
      'Maramihang pagpapalit ng lokasyon ng imbakan';

  @override
  String confirm_delete_selected(int count) {
    return 'Tiyakin mo bang gusto mong tanggalin ang napiling $count na mga item?';
  }

  @override
  String deleted_count_items(int count) {
    return 'Na-delete na ang $count item';
  }

  @override
  String get no_storage_location_available =>
      'Walang magagamit na lokasyon ng imbakan';

  @override
  String get batch_change_location_title =>
      'Maramihang pagpapalit ng lokasyon ng imbakan';

  @override
  String moved_count_items_to_location(int count, String location) {
    return 'Naipadala na ang $count na mga item sa $location';
  }

  @override
  String get operation_type_create => 'Ipasok';

  @override
  String get operation_type_update => 'I-edit';

  @override
  String get operation_type_delete => 'Tanggalin';

  @override
  String get operation_type_inbound => 'Pagpasok sa imbentaryo';

  @override
  String get operation_type_outbound => 'Paglabas ng stock';

  @override
  String export_failed_message(String error) {
    return 'Nabigong i-export: $error';
  }

  @override
  String get clear_logs => 'I-clear ang log';

  @override
  String get confirm_clear_logs =>
      'Sigurado ka bang i-clear ang lahat ng mga log ng operasyon? Hindi maibabalik ang aksyong ito.';

  @override
  String get logs_cleared => 'Nalinis na ang talaan';

  @override
  String get operation_logs_title => 'Talaan ng Operasyon';

  @override
  String get export_logs => 'I-export ang tala';

  @override
  String get clear_logs_tooltip => 'I-clear ang tala';

  @override
  String get no_operation_logs => 'Walang log ng operasyon sa ngayon';

  @override
  String get log_item_label => 'Bagay:';

  @override
  String get log_category_label => 'Kategorya:';

  @override
  String get log_type_label => 'Uri:';

  @override
  String get log_quantity_label => 'Dami:';

  @override
  String get log_unit_price_label => 'Presyo kada yunit:';

  @override
  String get log_total_price_label => 'Kabuuang presyo:';

  @override
  String get log_expiry_date_label => 'Petsa ng pag-expire:';

  @override
  String get log_warranty_date_label => 'Petsa ng Garantiya:';

  @override
  String get log_purchase_date_label => 'Petsa ng Pagbili:';

  @override
  String get log_production_date_label => 'Petsa ng paggawa:';

  @override
  String get log_shelf_life_label => 'Petsa ng pagiging sariwa:';

  @override
  String get log_storage_location_label => 'Lugar ng Imbakan:';

  @override
  String get log_barcode_label => 'Barcode:';

  @override
  String get log_notes_label => 'Tandaan:';

  @override
  String get log_alert_label => 'Babala:';

  @override
  String get log_alert_days_label => 'Bilang ng araw ng paunang babala:';

  @override
  String get log_quantity_change_label => 'Pagbabago ng dami:';

  @override
  String get log_field_changes_label => 'I-edit ang field:';

  @override
  String get log_not_set => 'Hindi nakatakda';

  @override
  String get log_empty => 'Wala';

  @override
  String get log_alert_enabled => 'Buksan';

  @override
  String get log_alert_disabled => 'Isara';

  @override
  String get operation_logs_menu => 'Talaan ng Operasyon';

  @override
  String get operation_logs_description =>
      'Tingnan at Ibalik ang Mga Talaan ng Operasyon';

  @override
  String operation_failed_message(String error) {
    return 'Pagpalya sa operasyon: $error';
  }

  @override
  String get no_date => 'Walang petsa';

  @override
  String get shelf_life_months_suffix => 'buwan';

  @override
  String get shelf_life_days_suffix => 'langit';

  @override
  String get alert_days_suffix => 'langit';

  @override
  String get unknown => 'Hindi alam';

  @override
  String get developer_name => 'Leo';

  @override
  String get log_operation_date_label => 'Petsa ng operasyon:';

  @override
  String get uncategorized => 'Hindi nakategorya';

  @override
  String get no_location => 'Walang lokasyon';

  @override
  String get item_category_cannot_be_empty =>
      'Hindi maaaring walang laman ang kategorya ng item';

  @override
  String get storage_location_cannot_be_empty =>
      'Hindi maaaring walang laman ang lokasyon ng imbakan';

  @override
  String get created_at_asc =>
      'Ayon sa pataas na pagkakasunud-sunod ng oras ng pagdagdag';

  @override
  String get created_at_desc =>
      'Idagdag ayon sa pababang pagkakasunud-sunod ng oras';

  @override
  String get location_management => 'Pamamahala ng Imbakan';

  @override
  String get private_warehouses => 'Pribadong repository';

  @override
  String get public_warehouses => 'Pampublikong aklatan';

  @override
  String get is_public_warehouse => 'Pampublikong aklatan';

  @override
  String get public_warehouse_desc =>
      'Walang administrador ang pampublikong imbakan, kailangang punan ang pangalan ng operator kapag naglalabas o nag-iimbak';

  @override
  String get manager => 'Tagapangasiwa';

  @override
  String get not_set => 'Hindi nakatakda';

  @override
  String get edit_location => 'I-edit ang aklatan';

  @override
  String get location_name => 'Pangalan ng Aklatan';

  @override
  String get manager_name => 'Pangalan ng Administrator';

  @override
  String get enter_manager_name => 'Pakipasok ang pangalan ng administrador';

  @override
  String get manager_name_required =>
      'Ang pangalan ng administrador ay hindi maaaring walang laman';

  @override
  String delete_location_confirm(String name) {
    return 'Sigurado ka bang gusto mong tanggalin ang library na \"$name\"?';
  }

  @override
  String get delete_location_has_items =>
      'May mga item pa sa library na ito, hindi maaaring tanggalin';

  @override
  String get default_manager => 'Default na administrador';

  @override
  String get default_manager_desc =>
      'Default na administrador kapag gumawa ng bagong pribadong repository';

  @override
  String get enter_default_manager =>
      'Paki-input ang default na pangalan ng administrador';

  @override
  String get operator_name => 'Pangalan ng operator';

  @override
  String get enter_operator_name => 'Paki-input ang pangalan ng operator';

  @override
  String get operator_name_required =>
      'Ang pangalan ng operator ay hindi maaaring walang laman';

  @override
  String get no_manager => 'Walang administrador';

  @override
  String get log_operator_label => 'Operator:';

  @override
  String get outbound_quantity_exceeds_current =>
      'Ang dami ng ilalabas mula sa bodega ay hindi maaaring lumampas sa kasalukuyang imbentaryo';
}
