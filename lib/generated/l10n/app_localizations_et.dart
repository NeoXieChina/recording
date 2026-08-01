// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Estonian (`et`).
class AppLocalizationsEt extends AppLocalizations {
  AppLocalizationsEt([String locale = 'et']) : super(locale);

  @override
  String get app_name => 'Aardehoiukoht';

  @override
  String get cancel => 'Tühista';

  @override
  String get confirm => 'Kinnita';

  @override
  String get save => 'Salvesta';

  @override
  String get delete => 'Kustuta';

  @override
  String get edit => 'Redigeeri';

  @override
  String get add => 'Lisa';

  @override
  String get edit_item => 'Redigeeri eset';

  @override
  String get add_item => 'Lisa ese';

  @override
  String get search => 'Otsi';

  @override
  String get settings => 'Seaded';

  @override
  String get language_settings => 'Keelesätted';

  @override
  String get language_settings_description =>
      'Rakenduse kuvakeele seadistamine';

  @override
  String get system_default => 'Süsteemi vaikeseadistus';

  @override
  String get use_system_language => 'Kasuta süsteemi keelt';

  @override
  String get language_change_hint =>
      'Keele muutus jõustub pärast rakenduse taaskäivitamist';

  @override
  String get back => 'Tagasi';

  @override
  String get next => 'Järgmine samm';

  @override
  String get done => 'Valmis';

  @override
  String get loading => 'Laadimine...';

  @override
  String get error => 'viga';

  @override
  String get success => 'Edu';

  @override
  String get warning => 'Hoiatus';

  @override
  String get info => 'teave';

  @override
  String get select_alert_days => 'Vali meeldetuletuse päevade arv';

  @override
  String get custom => 'Kohandatud';

  @override
  String custom_days(int days) {
    return 'Kohandatud ($days päeva)';
  }

  @override
  String current_selection(int days) {
    return 'Praegune valik: $days päeva';
  }

  @override
  String alert_days_range(int min, int max) {
    return 'Meeldetuletuse päevade vahemik: $min-$max päeva';
  }

  @override
  String get enter_days => 'Palun sisestage meeldetuletuse päevade arv';

  @override
  String get days => 'päevade arv';

  @override
  String enter_valid_days(int min, int max) {
    return 'Palun sisestage number vahemikus $min kuni $max';
  }

  @override
  String get alert_settings => 'Hoiatusseadistus';

  @override
  String get calendar_settings => 'Kalendri seaded';

  @override
  String get calendar_sync => 'Kalendri sünkroonimine';

  @override
  String get calendar_sync_desc =>
      'Lubamise korral taotletakse juurdepääsu kalendri õigustele';

  @override
  String get add_test_calendar_event => 'Lisa testkalendrisündmus';

  @override
  String get enable_calendar_sync_first =>
      'Palun lülitage esmalt sisse \'kalendri sünkroonimise\' lüliti';

  @override
  String get app_alert_settings => 'Rakenduse teadete seaded';

  @override
  String get local_alerts => 'kohalik meeldetuletus';

  @override
  String get local_alerts_desc =>
      'Lülitage sisse, et saada rakenduses aegumisteavitusi';

  @override
  String get send_test_notification => 'Saada testteade';

  @override
  String get enable_local_alerts_first =>
      'Palun lülitage esmalt sisse \'kohalikud märguanded\'';

  @override
  String get alert_days_settings => 'Meeldetuletuse päevade seadistus';

  @override
  String get advance_alert_days => 'Etteteatamise päevade arv';

  @override
  String get advance_alert_days_desc =>
      'Seadistage, mitu päeva ette teavitada esemete aegumisest või garantiiaja lõppemisest';

  @override
  String get calendar_permission_request => 'Kalendri õiguste taotlus';

  @override
  String get calendar_permission_desc =>
      'Rakendusel on vaja juurdepääsu kalendrile, et sünkroonida esemete meeldetuletusi. Kas lubate?';

  @override
  String get allow => 'lubama';

  @override
  String get calendar_permission_granted =>
      'Kalendriõigused on antud, kalendri sünkroonimine on sisse lülitatud';

  @override
  String get calendar_permission_denied =>
      'Kalendriõigused on keelatud, kalendrisünkroonimist ei saa sisse lülitada';

  @override
  String get calendar_permission_permanently_denied =>
      'Õigused on alaliselt keelatud';

  @override
  String get calendar_permission_permanently_denied_desc =>
      'Kalendri õigused on püsivalt keelatud, palun lülitage õigused süsteemi seadetes käsitsi sisse.';

  @override
  String get go_to_settings => 'Mine seadistustesse';

  @override
  String get calendar_account_failed =>
      'Kalendri õigused on antud, kuid kalendrikontot ei saa luua. Palun kontrollige süsteemi kalendri seadeid.';

  @override
  String get calendar_account_created =>
      'Kalendriõigused on antud, kohalik kalendrikonto on loodud';

  @override
  String get calendar_account_creating =>
      'Kalendrikonto on edukalt loodud, kuid süsteem võib vajada mõnda aega, et see jõustuks';

  @override
  String get test_calendar_event_added => 'Kalendrisündmuse lisamine õnnestus';

  @override
  String get test_calendar_event_failed =>
      'Testikalendri sündmuse lisamine ebaõnnestus, palun kontrollige kalendri seadeid';

  @override
  String get calendar_permission_required =>
      'Testisündmuse lisamiseks on vajalik kalendriõigus';

  @override
  String get test_notification_sent => 'Testiteade on saadetud';

  @override
  String test_notification_failed(String error) {
    return 'Testteate saatmine ebaõnnestus: $error';
  }

  @override
  String get notification_permission_required =>
      'Kohalike meeldetuletuste lubamiseks on vaja teatamisluba';

  @override
  String operation_failed(String error) {
    return 'Toiming ebaõnnestus: $error';
  }

  @override
  String get notification_channel_name => 'Esemete hoiatusteade';

  @override
  String get notification_channel_description =>
      'Esemete aegumuse või garantii lõppemise meeldetuletus';

  @override
  String get item_category_food => 'toit';

  @override
  String get item_category_daily_necessities => 'Iganädalased tarbekaup';

  @override
  String get item_category_cosmetics => 'Kosmeetika';

  @override
  String get item_category_medicine => 'Ravim';

  @override
  String get item_category_electronics => 'elektroonikaseadmed';

  @override
  String get item_category_furniture => 'mööbel';

  @override
  String get item_category_clothing => 'Rõivad';

  @override
  String get item_category_books => 'Raamatud';

  @override
  String get item_category_other => 'Muud';

  @override
  String get purchase_channel_online_mall => 'Veebipood';

  @override
  String get purchase_channel_physical_store => 'füüsiline pood';

  @override
  String get purchase_channel_supermarket => 'supermarket';

  @override
  String get purchase_channel_specialty_store => 'esinduspood';

  @override
  String get purchase_channel_secondhand_market => 'kasutatud kaupade turg';

  @override
  String get purchase_channel_other => 'Muud';

  @override
  String get default_category => 'Muu';

  @override
  String get default_purchase_channel => 'veebipood';

  @override
  String get item_category => 'Esmete klassifitseerimine';

  @override
  String get custom_category => 'Kohandatud kategooria';

  @override
  String get backup_data => 'Varundada andmed';

  @override
  String get backup_data_description =>
      'Pakkige kõik andmed (sh pildid) ZIP-failiks varundamiseks';

  @override
  String get backup_all_data => 'Varunda kõik andmed';

  @override
  String get backup_success => 'Varukoopia õnnestus';

  @override
  String backup_failed(String error) {
    return 'Varundamine ebaõnnestus: $error';
  }

  @override
  String get restore_data => 'Andmete taastamine';

  @override
  String get restore_data_description =>
      'Taasta kõik andmed ZIP-varundusfailist';

  @override
  String get export_data => 'Ekspordi andmed';

  @override
  String get export_data_description =>
      'Eksportimine CSV-, TXT- ja SQL-vormingus';

  @override
  String get import_data => 'Impordi andmed';

  @override
  String get import_data_description =>
      'Andmete importimine CSV-, TXT- ja SQL-failidest';

  @override
  String get alert_settings_description =>
      'Kalendri meeldetuletuste ja rakenduse teadete seaded';

  @override
  String get about => 'kohta';

  @override
  String get about_description => 'Rakenduse teave ja versioon';

  @override
  String get select_backup_file_first => 'Palun valige kõigepealt varufail';

  @override
  String get confirm_restore => 'Kinnita taastamine';

  @override
  String get confirm_restore_message =>
      'Varukoopia taastamine kustutab kogu olemasoleva teabe ja asendab selle varukoopia andmetega, seda toimingut ei saa tagasi pöörata. Kas olete kindel, et soovite jätkata?';

  @override
  String get confirm_again => 'Kinnitage uuesti';

  @override
  String get confirm_restore_warning =>
      'Kas olete kindel, et soovite tühjendada kõik praegused andmed ja taastada varukoopia? Seda toimingut ei saa tagasi pöörata!';

  @override
  String get confirm_restore_button => 'Kinnita taastamine';

  @override
  String restore_success(int count) {
    return 'Taastamine õnnestus, kokku $count eset';
  }

  @override
  String restore_failed(String error) {
    return 'Taastamine ebaõnnestus: $error';
  }

  @override
  String get select_backup_file => 'Vali varundusfail';

  @override
  String get restore_backup => 'Varukoopia taastamine';

  @override
  String selected_file(String filename) {
    return 'Valitud fail: $filename';
  }

  @override
  String get export_success => 'Andmete eksportimine õnnestus';

  @override
  String export_failed(String error) {
    return 'Eksport ebaõnnestus: $error';
  }

  @override
  String get format_csv => 'CSV';

  @override
  String get format_txt => 'TXT';

  @override
  String get format_sql => 'SQL';

  @override
  String get duplicate_data_handling => 'Korduvandmete töötlemine';

  @override
  String get duplicate_data_detected =>
      'Korratud andmed tuvastatud, palun valige töötlemisviis:';

  @override
  String get skip => 'Jäta vahele';

  @override
  String get overwrite => 'katma';

  @override
  String get skip_all => 'Kõik vahele jätta';

  @override
  String get overwrite_all => 'täielik katvus';

  @override
  String get select_import_format_first =>
      'Palun valige esmalt importimise formaat';

  @override
  String get confirm_import => 'Kinnita importimine';

  @override
  String get confirm_import_message =>
      'Andmete importimine kirjutab olemasolevad andmed üle, seda toimingut ei saa tagasi võtta. Kas olete kindel, et soovite jätkata?';

  @override
  String import_success(int count) {
    return 'Andmete import õnnestus, kokku imporditi $count eset';
  }

  @override
  String import_failed(String error) {
    return 'Impordi ebaõnnestus: $error';
  }

  @override
  String get select_file => 'Vali fail';

  @override
  String get no_data => 'Andmed puuduvad';

  @override
  String get no_data_description =>
      'Praegu pole andmeid, klõpsake alloleval nupul, et lisada esimene kirje!';

  @override
  String get load_failed => 'Laadimine ebaõnnestus';

  @override
  String get load_failed_description =>
      'Andmete laadimine ebaõnnestus, kontrollige võrguühendust ja proovige uuesti';

  @override
  String get retry => 'Proovi uuesti';

  @override
  String get network_connection_failed => 'Võrguühendus ebaõnnestus';

  @override
  String get network_connection_failed_description =>
      'Palun kontrollige võrguühendust ja proovige uuesti';

  @override
  String get no_results => 'Tulemusi ei leitud';

  @override
  String get no_results_description => 'Proovi otsida teiste märksõnadega';

  @override
  String get clear_search => 'Tühjenda otsing';

  @override
  String get insufficient_permission => 'Piiratud õigused';

  @override
  String get insufficient_permission_description =>
      'Selle funktsiooni kasutamiseks on vaja asjakohaseid õigusi';

  @override
  String get request_permission => 'Taotle luba';

  @override
  String get app_info => 'Rakenduse teave';

  @override
  String get version => 'versioon';

  @override
  String get developer => 'Arendaja';

  @override
  String get device_info => 'Seadme teave';

  @override
  String get device_model => 'Seadme mudel';

  @override
  String get brand => 'bränd';

  @override
  String get device_name => 'Seadme nimi';

  @override
  String get product => 'toode';

  @override
  String get hardware => 'Riistvara';

  @override
  String get android_version => 'Androidi versioon';

  @override
  String get sdk_version => 'SDK versioon';

  @override
  String get system_name => 'Süsteemi nimi';

  @override
  String get operating_system => 'Operatsioonisüsteem';

  @override
  String get system_version => 'Süsteemiversioon';

  @override
  String get dart_version => 'Darti versioon';

  @override
  String get device_identifier => 'Seadme identifikaator';

  @override
  String get computer_name => 'Arvuti nimi';

  @override
  String get build_number => 'versiooninumber';

  @override
  String error_getting_device_info(String error) {
    return 'Seadme teavet ei saa hankida: $error';
  }

  @override
  String get features => 'Funktsioonide tutvustus';

  @override
  String get app_description => 'Nutiseadmete haldamise rakendus';

  @override
  String get app_description_detail =>
      'Aitab teil hallata esemete aegumiskuupäevi, garantiiкуupäevi ja muud teavet ning pakub nutiteavituse funktsiooni.';

  @override
  String get consumable => 'Tarvikud';

  @override
  String get durable => 'Kestvad kaubad';

  @override
  String get sort => 'järjestamine';

  @override
  String get name_asc => 'Nimekiri kasvavas järjekorras';

  @override
  String get name_desc => 'Nimekiri kahanevas järjekorras';

  @override
  String get date_asc => 'Kuupäeva kasvavas järjekorras';

  @override
  String get date_desc => 'Kuupäeva kahanev järjestus';

  @override
  String get price_asc => 'Ühikuhinna kasvav järjekord';

  @override
  String get price_desc => 'Ühikhind kahanevas järjekorras';

  @override
  String get quantity_asc => 'Koguse kasvav järjekord';

  @override
  String get quantity_desc => 'Koguse kahanevas järjekorras';

  @override
  String get total_price_asc => 'Kokkuhind kasvavas järjekorras';

  @override
  String get total_price_desc => 'Kokkuhind kahanevas järjekorras';

  @override
  String get clear_all_filters => 'Tühjenda kõik filtrid';

  @override
  String get scan_barcode => 'Skaneeri koodi, et laosse sisestada';

  @override
  String get search_items => 'Otsi esemeid...';

  @override
  String get no_items => 'Puuduvad esemed';

  @override
  String get no_items_description =>
      'Klõpsake allolevat nuppu, et lisada esimene ese';

  @override
  String get expired => 'Aegunud';

  @override
  String get expiring_soon => 'Aegumas';

  @override
  String get warranty_expired => 'Garantii on aegunud';

  @override
  String get warranty_expiring_soon => 'Garantii aeg hakkab lõppema';

  @override
  String days_remaining(int count) {
    return 'Alles on $count päeva';
  }

  @override
  String expired_days_ago(int count) {
    return 'On aegunud $count päeva';
  }

  @override
  String get delete_item => 'Kustuta ese';

  @override
  String delete_item_confirm(String name) {
    return 'Kas olete kindel, et soovite kustutada \"$name\"?';
  }

  @override
  String get item_deleted => 'Ese on kustutatud';

  @override
  String get failed_to_delete => 'Kustutamine ebaõnnestus';

  @override
  String failed_to_delete_message(String error) {
    return 'Elemendi kustutamine ei õnnestu: $error';
  }

  @override
  String get date_range_filter => 'Kuupäevavahemiku filter';

  @override
  String get price_range_filter => 'Hinna vahemiku filter';

  @override
  String get my_items => 'Minu asjad';

  @override
  String get click_fab_to_add_item =>
      'Klõpsake paremas allnurgas nuppu, et lisada ese';

  @override
  String get confirm_delete => 'Kinnita kustutamine';

  @override
  String get filter_options => 'Filtreerimisvalikud';

  @override
  String get filter_by_type_category_location =>
      'Filtreeri esemeid tüübi, kategooria ja asukoha järgi';

  @override
  String categories_count(int count) {
    return '$count kategooriat';
  }

  @override
  String get all_categories => 'Kõik kategooriad';

  @override
  String get no_category_data => 'Kategooriateta andmed puuduvad';

  @override
  String get storage_location => 'Salvestuskoht';

  @override
  String locations_count(int count) {
    return '$count kohta';
  }

  @override
  String get all_locations => 'Kõik kohad';

  @override
  String get no_location_data => 'Puuduvad kohadandmed';

  @override
  String get date_range => 'Kuupäevade vahemik';

  @override
  String get select_date_range => 'Vali kuupäevavahemik';

  @override
  String get price_range => 'Hinnavahemik';

  @override
  String get unit_price_range => 'Ühiku hinna vahemik';

  @override
  String get min_unit_price => 'minimaalne ühikhind';

  @override
  String get max_unit_price => 'kõrgeim ühikuhind';

  @override
  String get total_price_range => 'Kogu hinna vahemik';

  @override
  String get min_total_price => 'madalaim koguhind';

  @override
  String get max_total_price => 'kõrgeim koguhind';

  @override
  String get clear_price_filter => 'Tühjenda hinnafiltrid';

  @override
  String get place_barcode_in_frame => 'Aseta vöötkood kasti ja skaneeri';

  @override
  String get item_already_exists => 'Toode on juba olemas';

  @override
  String barcode_with_value(String barcode) {
    return 'Vöötkood: $barcode';
  }

  @override
  String name_with_value(String name) {
    return 'Nimi: $name';
  }

  @override
  String category_with_value(String category) {
    return 'Kategooria: $category';
  }

  @override
  String current_quantity_with_value(String quantity, String unit) {
    return 'Praegune kogus: $quantity$unit';
  }

  @override
  String get please_select_operation => 'Palun valige toiming:';

  @override
  String get outbound => 'Ladu lähtestamine';

  @override
  String get inbound => 'laole sisestama';

  @override
  String get inbound_quantity => 'Lattu sisenemise kogus';

  @override
  String get outbound_quantity => 'Ladu väljuv kogus';

  @override
  String get quantity => 'kogus';

  @override
  String get enter_inbound_quantity => 'Palun sisestage laekumise kogus';

  @override
  String get enter_outbound_quantity => 'Palun sisestage väljastamise kogus';

  @override
  String delete_item_confirm_with_irreversible(String name) {
    return 'Kas olete kindel, et soovite kustutada „$name“? Seda toimingut ei saa tagasi võtta.';
  }

  @override
  String get database_reset =>
      'Andmebaas on lähtestatud ja tabeli struktuur luuakse uuesti';

  @override
  String database_reset_error(String error) {
    return 'Andmebaasi lähtestamisel tekkis viga: $error';
  }

  @override
  String mock_data_init_failed(String error) {
    return 'Simuleeritud andmete algatamine ebaõnnestus: $error';
  }

  @override
  String get solution_steps => 'Lahendus:';

  @override
  String get solution_step_1 => '1. Desinstalli rakendus ja installi uuesti';

  @override
  String get solution_step_2 => '2. Või kustutage rakenduse andmed';

  @override
  String get solution_step_3 =>
      '3. Või seadke resetDatabaseOnStart väärtuseks true ja käivitage uuesti';

  @override
  String notification_service_init_failed(String error) {
    return 'Meeldetuletusteenuse initsialiseerimine ebaõnnestus: $error';
  }

  @override
  String check_calendar_account_failed(String error) {
    return 'Kalendrikonto kontroll ebaõnnestus: $error';
  }

  @override
  String create_calendar_failed(String error) {
    return 'Kalendri loomine ebaõnnestus: $error';
  }

  @override
  String add_calendar_event_failed(String error) {
    return 'Kalendrisündmuse lisamine ebaõnnestus: $error';
  }

  @override
  String delete_calendar_event_failed(String error) {
    return 'Kalendrisündmuse kustutamine ebaõnnestus: $error';
  }

  @override
  String set_permission_message_failed(String error) {
    return 'Luba teavitussõnumi seadistamine ebaõnnestus: $error';
  }

  @override
  String mock_data_init_success(int count) {
    return 'Õnnestus algatada $count simulatsioonandmeid';
  }

  @override
  String database_has_data(int count) {
    return 'Andmebaasis on juba $count andmerida, vahele jätta simuleeritud andmete initsialiseerimine';
  }

  @override
  String get database_structure_mismatch =>
      'Võib-olla ei ühti andmebaasi struktuur, soovitatav on tühjendada rakenduse andmed või uuesti installida';

  @override
  String get old_database_deleted => 'Vana andmebaasi fail on kustutatud';

  @override
  String get backup_data_empty => 'Varukoopia andmed on tühjad';

  @override
  String get backup_file_not_found => 'Varukoopia fail ei eksisteeri';

  @override
  String file_not_utf8(String error) {
    return 'Faili kodeering ei ole kehtiv UTF-8 vorming. Palun veenduge, et fail oleks salvestatud UTF-8 kodeeringus. Vea üksikasjad: $error';
  }

  @override
  String file_not_found(String filePath) {
    return 'Faili ei eksisteeri: $filePath';
  }

  @override
  String file_empty(String filePath) {
    return 'Fail on tühi: $filePath';
  }

  @override
  String get file_content_empty =>
      'Faili sisu dekodeerimisel on see tühi, võib-olla on kodeeringud erinevad';

  @override
  String field_cannot_be_empty(String fieldName) {
    return '$fieldName ei tohi olla tühi';
  }

  @override
  String field_min_length(String fieldName, int minLength) {
    return '$fieldName pikkus ei tohi olla vähem kui $minLength tähemärki';
  }

  @override
  String field_max_length(String fieldName, int maxLength) {
    return '$fieldName pikkus ei tohi ületada $maxLength sümbolit';
  }

  @override
  String field_invalid_email(String fieldName) {
    return 'Palun sisestage kehtiv $fieldName aadress';
  }

  @override
  String field_invalid_number(String fieldName, String numberType) {
    return '$fieldName peab olema $numberType';
  }

  @override
  String field_min_value(String fieldName, double min) {
    return '$fieldName ei tohi olla väiksem kui $min';
  }

  @override
  String field_max_value(String fieldName, double max) {
    return '$fieldName ei tohi olla suurem kui $max';
  }

  @override
  String field_positive_integer(String fieldName) {
    return '$fieldName peab olema positiivne täisarv';
  }

  @override
  String field_greater_than_zero(String fieldName) {
    return '$fieldName peab olema suurem kui 0';
  }

  @override
  String field_positive_number(String fieldName) {
    return '$fieldName peab olema positiivne arv';
  }

  @override
  String field_invalid_date(String fieldName) {
    return 'Palun sisestage kehtiv $fieldName';
  }

  @override
  String field_date_not_past(String fieldName) {
    return '$fieldName ei tohi olla mineviku kuupäev';
  }

  @override
  String field_date_not_before(String fieldName, String minDate) {
    return '$fieldName ei tohi olla varem kui $minDate';
  }

  @override
  String field_date_not_after(String fieldName, String maxDate) {
    return '$fieldName ei tohi olla hiljem kui $maxDate';
  }

  @override
  String field_invalid_value(String fieldName) {
    return 'Palun sisestage kehtiv $fieldName';
  }

  @override
  String password_min_length(String fieldName) {
    return '$fieldName pikkus ei tohi olla vähem kui 8 tähemärki';
  }

  @override
  String password_uppercase_required(String fieldName) {
    return '$fieldName peab sisaldama vähemalt ühte suurtähte';
  }

  @override
  String password_lowercase_required(String fieldName) {
    return '$fieldName peab sisaldama vähemalt ühte väiketähte';
  }

  @override
  String password_digit_required(String fieldName) {
    return '$fieldName peab sisaldama vähemalt ühte numbrit';
  }

  @override
  String password_special_char_required(String fieldName) {
    return '$fieldName peab sisaldama vähemalt ühte erimärki';
  }

  @override
  String get passwords_not_match => 'Kaks korda sisestatud parool ei ühti';

  @override
  String get item_name_cannot_be_empty => 'Eseme nimi ei tohi olla tühi';

  @override
  String name_max_length(int maxLength) {
    return 'Nimi ei tohi ületada $maxLength tähemärki';
  }

  @override
  String quantity_min(int minQuantity) {
    return 'Kogus ei tohi olla väiksem kui $minQuantity';
  }

  @override
  String quantity_max(int maxQuantity) {
    return 'Kogus ei tohi ületada $maxQuantity';
  }

  @override
  String get unit_price_not_negative => 'Ühikuhind ei tohi olla negatiivne';

  @override
  String unit_price_max(double maxUnitPrice) {
    return 'Ühikuhind ei tohi ületada $maxUnitPrice';
  }

  @override
  String get set_production_expiry_for_validity =>
      'Palun määrake tootmiskuupäev ja säilivusaeg, et automaatselt kehtivusaega arvutada';

  @override
  String get set_purchase_warranty_for_validity =>
      'Palun seadistage ostukuupäev ja säilivusaeg, et automaatselt arvutada garantii kestust';

  @override
  String get calendar_account_creation_failed =>
      'Kalendrikontot ei õnnestu luua, kontrollige süsteemi kalendri seadistusi';

  @override
  String get test_notification => 'Testiteade';

  @override
  String get test_notification_description =>
      'See on testteavitus kohaliku meeldetuletuse funktsiooni kontrollimiseks';

  @override
  String get day_unit => 'taevas';

  @override
  String days_with_value(int days) {
    return '$days päeva';
  }

  @override
  String get item_saved => 'Ese on salvestatud';

  @override
  String get item_updated => 'Ese on uuendatud';

  @override
  String get item_added => 'Ese on lisatud';

  @override
  String get save_success => 'Salvestamine õnnestus';

  @override
  String get update_success => 'Uuendamine õnnestus';

  @override
  String get delete_success => 'Kustutamine õnnestus';

  @override
  String get save_failed => 'Salvestamine ebaõnnestus';

  @override
  String get update_failed => 'Uuendamine ebaõnnestus';

  @override
  String get delete_failed => 'Kustutamine ebaõnnestus';

  @override
  String get test_calendar_event => 'Kalendrisündmuse testimine';

  @override
  String get test_calendar_event_description =>
      'See on testüritus, mis on mõeldud kalendrifunktsiooni kontrollimiseks';

  @override
  String get in_app => 'rakenduses';

  @override
  String get enable_alert => 'Luba aegumisteate';

  @override
  String get alert_method => 'meeldetuletuse viis';

  @override
  String get alert_method_in_app => 'Ainult rakenduses';

  @override
  String get alert_method_calendar => 'Ainult kalender';

  @override
  String get alert_method_both => 'mõlemad';

  @override
  String get alert_days_before => 'Etteteatamise päevade arv';

  @override
  String get use_global_setting => 'Kasuta globaalset seadet';

  @override
  String get barcode_label => 'vöötkood';

  @override
  String get name_label => 'Nimi';

  @override
  String get category_label => 'Klassifikatsioon';

  @override
  String get current_quantity => 'Praegune kogus';

  @override
  String get select_operation => 'Palun valige toiming';

  @override
  String get unit => 'üksus';

  @override
  String get custom_unit => 'Kohandatud ühik';

  @override
  String get enter_unit => 'Palun sisestage ühik';

  @override
  String get custom_location => 'Kohandatud koht';

  @override
  String get enter_storage_location => 'Palun sisestage salvestuskoht';

  @override
  String get scan => 'Skaneeri kood';

  @override
  String get scan_to_stock => 'Skaneeri koodi, et laosse sisestada';

  @override
  String get item_categories => 'Esmete klassifitseerimine';

  @override
  String get storage_locations => 'Salvestuskoht';

  @override
  String get place_barcode_in_frame_to_scan =>
      'Aseta vöötkood kasti ja skaneeri';

  @override
  String get barcode => 'vöötkood';

  @override
  String get enter_barcode_or_scan => 'Sisestage vöötkood või skannige kood';

  @override
  String get basic_information => 'Põhiandmed';

  @override
  String get item_name => 'Eseme nimi';

  @override
  String get enter_item_name => 'Palun sisestage toote nimi';

  @override
  String get enter_category_name => 'Palun sisestage kategooria nimi';

  @override
  String item_increased(String itemName, String quantity, String unit) {
    return 'On lisatud $itemName $quantity$unit';
  }

  @override
  String item_decreased(String itemName, String quantity, String unit) {
    return 'On vähendatud $itemName $quantity$unit';
  }
}
