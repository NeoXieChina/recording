// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Afrikaans (`af`).
class AppLocalizationsAf extends AppLocalizations {
  AppLocalizationsAf([String locale = 'af']) : super(locale);

  @override
  String get app_name => 'Berging van dinge in \'n klein ruimte';

  @override
  String get cancel => 'Kanselleer';

  @override
  String get confirm => 'Bevestig';

  @override
  String get save => 'Stoor';

  @override
  String get delete => 'Verwyder';

  @override
  String get edit => 'Redigeer';

  @override
  String get add => 'Voeg by';

  @override
  String get search => 'Soek';

  @override
  String get settings => 'Instellings';

  @override
  String get language_settings => 'Taalinstellings';

  @override
  String get language_settings_description => 'Stel die toepassingskyntaal in';

  @override
  String get system_default => 'Stelsel verstek';

  @override
  String get use_system_language => 'Gebruik stelseltaal';

  @override
  String get language_change_hint =>
      'Taalverandering sal van krag wees nadat die toepassing herbegin is';

  @override
  String get back => 'Terug';

  @override
  String get next => 'Volgende stap';

  @override
  String get done => 'Voltooi';

  @override
  String get loading => 'Laaai...';

  @override
  String get error => 'Fout';

  @override
  String get success => 'sukses';

  @override
  String get warning => 'Waarskuwing';

  @override
  String get info => 'Inligting';

  @override
  String get select_alert_days => 'Kies herinneringsdae';

  @override
  String get custom => 'Pasgemaak';

  @override
  String custom_days(int days) {
    return 'Pasgemaak ($days dae)';
  }

  @override
  String current_selection(int days) {
    return 'Huidige keuse: $days dae';
  }

  @override
  String alert_days_range(int min, int max) {
    return 'Herinneringsdae-reeks: $min-$max dae';
  }

  @override
  String get enter_days => 'Voer asseblief die aantal herinneringsdae in';

  @override
  String get days => 'Dae';

  @override
  String enter_valid_days(int min, int max) {
    return 'Voer asseblief \'n nommer tussen $min en $max in';
  }

  @override
  String get alert_settings => 'Vroeë waarskuwing-instellings';

  @override
  String get calendar_settings => 'Kalenderinstellings';

  @override
  String get calendar_sync => 'Kalendersinchronisasie';

  @override
  String get calendar_sync_desc =>
      'Na aktivering sal die kalendertoestemming gevra word';

  @override
  String get add_test_calendar_event => 'Voeg \'n toetskalenderbyeenkoms by';

  @override
  String get enable_calendar_sync_first =>
      'Skakel asseblief eers die \'Kalendersinchronisasie\'-skakelaar aan';

  @override
  String get app_alert_settings => 'App kennisgewing-instellings';

  @override
  String get local_alerts => 'Plaaslike herinnering';

  @override
  String get local_alerts_desc =>
      'Schakel aan om in-app verstryking herinnerings te ontvang';

  @override
  String get send_test_notification => 'Stuur \'n toet kennisgewing';

  @override
  String get enable_local_alerts_first =>
      'Skakel asseblief eers die \'Plaaslike kennisgewing\'-skakel aan';

  @override
  String get alert_days_settings => 'Herinneringsdae-instelling';

  @override
  String get advance_alert_days => 'Aantal dae vooraf waarsku';

  @override
  String get advance_alert_days_desc =>
      'Stel hoeveel dae vooraf herinner word aan vervaldatum van items of verstryking van waarborg';

  @override
  String get calendar_permission_request => 'Kalendertoestemmingsversoek';

  @override
  String get calendar_permission_desc =>
      'Toegang tot die kalender word benodig om itemherinnerings te sinchroniseer. Wil u dit toelaat?';

  @override
  String get allow => 'toelaat';

  @override
  String get calendar_permission_granted =>
      'Kalendertoestemmings is toegestaan, kalender-sinkronisering is aangeskakel';

  @override
  String get calendar_permission_denied =>
      'Kalendertoestemming is geweier, kalender sinkronisering kan nie aangeskakel word nie';

  @override
  String get calendar_permission_permanently_denied =>
      'Toestemming is permanent geweier';

  @override
  String get calendar_permission_permanently_denied_desc =>
      'Kalendertoestemmings is permanent geweier, maak asseblief die toestemmings handmatig aan in stelselinstellings.';

  @override
  String get go_to_settings => 'Gaan na instellings';

  @override
  String get calendar_account_failed =>
      'Kalendertoestemming is gegee, maar dit is nie moontlik om \'n kalenderrekening te skep nie. Kontroleer asseblief die stelselkalenderinstellings.';

  @override
  String get calendar_account_created =>
      'Kalendertoestemmings is gegee, plaaslike kalenderrekening is geskep';

  @override
  String get calendar_account_creating =>
      'Kalenderrekening suksesvol geskep, maar die stelsel mag \'n bietjie tyd neem om effektief te wees';

  @override
  String get test_calendar_event_added =>
      'Toets kalender gebeurtenis suksesvol bygevoeg';

  @override
  String get test_calendar_event_failed =>
      'Het nie daarin geslaag om \'n toetskalendergebeurtenis by te voeg nie, kyk asseblief die kalenderinstellings na';

  @override
  String get calendar_permission_required =>
      'Kalendarpermisse is benodig om \'n toetsgebeurtenis by te voeg';

  @override
  String get test_notification_sent => 'Toet kennisgewing is gestuur';

  @override
  String test_notification_failed(String error) {
    return 'Stuur toetskennisgewing misluk: $error';
  }

  @override
  String get notification_permission_required =>
      'Meldingstoestemmings is nodig om plaaslike herinneringe te aktiveer';

  @override
  String operation_failed(String error) {
    return 'Operasie het misluk: $error';
  }

  @override
  String get notification_channel_name => 'Item waarskuwing kennisgewing';

  @override
  String get notification_channel_description =>
      'Herinnering vir vervalde of versekering van items';

  @override
  String get item_category_food => 'kos';

  @override
  String get item_category_daily_necessities => 'Daaglikse benodigdhede';

  @override
  String get item_category_cosmetics => 'Skoonheidsmiddels';

  @override
  String get item_category_medicine => 'Medikasie';

  @override
  String get item_category_electronics => 'elektroniese produkte';

  @override
  String get item_category_furniture => 'meubels';

  @override
  String get item_category_clothing => 'klere';

  @override
  String get item_category_books => 'Boeke';

  @override
  String get item_category_other => 'Ander';

  @override
  String get purchase_channel_online_mall => 'Aanlyn winkel';

  @override
  String get purchase_channel_physical_store => 'Fisiese winkel';

  @override
  String get purchase_channel_supermarket => 'supermark';

  @override
  String get purchase_channel_specialty_store => 'winkel';

  @override
  String get purchase_channel_secondhand_market => 'Tweedehandse mark';

  @override
  String get purchase_channel_other => 'Ander';

  @override
  String get default_category => 'Ander';

  @override
  String get default_purchase_channel => 'Aanlyn winkel';

  @override
  String get item_category => 'Produk klassifikasie';

  @override
  String get custom_category => 'Pasgemaakte kategorie';

  @override
  String get backup_data => 'Rugsteun data';

  @override
  String get backup_data_description =>
      'Pak al die data (insluitend beelde) saam in \'n ZIP-lêer vir rugsteun';

  @override
  String get backup_all_data => 'Maak \'n rugsteun van alle data';

  @override
  String get backup_success => 'Rugsteun suksesvol';

  @override
  String backup_failed(String error) {
    return 'Rugsteun het misluk: $error';
  }

  @override
  String get restore_data => 'Herstel data';

  @override
  String get restore_data_description =>
      'Herstel alle data vanaf die ZIP-rugsteunlêer';

  @override
  String get export_data => 'Uitvoer data';

  @override
  String get export_data_description => 'Voer uit in CSV-, TXT-, SQL-formate';

  @override
  String get import_data => 'Voer data in';

  @override
  String get import_data_description =>
      'Data invoer vanaf CSV-, TXT- en SQL-lêers';

  @override
  String get alert_settings_description =>
      'Kalenderherinnerings en App-stoeltoelatings instellings';

  @override
  String get about => 'Oor';

  @override
  String get about_description => 'Aplikaasie-inligting en weergawe';

  @override
  String get select_backup_file_first => 'Kies asseblief eers die rugsteunlêer';

  @override
  String get confirm_restore => 'Bevestig herstel';

  @override
  String get confirm_restore_message =>
      'Herstel rugsteun sal al die bestaande data uitvee en met die rugsteundata vervang; hierdie handeling kan nie ongedaan gemaak word nie. Is jy seker jy wil voortgaan?';

  @override
  String get confirm_again => 'Weer bevestig';

  @override
  String get confirm_restore_warning =>
      'Is u seker dat u alle bestaande data wil uitvee en die rugsteun wil herstel? Hierdie aksie kan nie ongedaan gemaak word nie!';

  @override
  String get confirm_restore_button => 'Bevestig herstel';

  @override
  String restore_success(int count) {
    return 'Herstel suksesvol, totaal van $count items';
  }

  @override
  String restore_failed(String error) {
    return 'Herstel het misluk: $error';
  }

  @override
  String get select_backup_file => 'Kies rugsteunlêer';

  @override
  String get restore_backup => 'Rugsteun herstel';

  @override
  String selected_file(String filename) {
    return 'Geselekteerde lêer: $filename';
  }

  @override
  String get export_success => 'Data-uitvoer suksesvol';

  @override
  String export_failed(String error) {
    return 'Uitvoer mislukt: $error';
  }

  @override
  String get format_csv => 'CSV';

  @override
  String get format_txt => 'TXT';

  @override
  String get format_sql => 'SQL';

  @override
  String get duplicate_data_handling => 'Herhaalde data-verwerking';

  @override
  String get duplicate_data_detected =>
      'Dubbele data opgespoor, kies asseblief hoe om dit te hanteer:';

  @override
  String get skip => 'Oorslaan';

  @override
  String get overwrite => 'bedek';

  @override
  String get skip_all => 'Slaan alles oor';

  @override
  String get overwrite_all => 'Volledige dekking';

  @override
  String get select_import_format_first =>
      'Kies asseblief die invoerformaat eerstens';

  @override
  String get confirm_import => 'Bevestig invoer';

  @override
  String get confirm_import_message =>
      'Die invoer van data sal bestaande data oorskryf, en hierdie aksie kan nie ongedaan gemaak word nie. Is jy seker jy wil voortgaan?';

  @override
  String import_success(int count) {
    return 'Data-invoer suksesvol, totaal $count items ingevoer';
  }

  @override
  String import_failed(String error) {
    return 'Invoer mislukt: $error';
  }

  @override
  String get select_file => 'Kies lêer';

  @override
  String get no_data => 'Geen data beskikbaar';

  @override
  String get no_data_description =>
      'Daar is tans geen data nie, klik op die knoppie hieronder om die eerste rekord by te voeg!';

  @override
  String get load_failed => 'Laai het misluk';

  @override
  String get load_failed_description =>
      'Data-lading het misluk, kontroleer asseblief jou netwerkverbinding en probeer weer';

  @override
  String get retry => 'Probeer weer';

  @override
  String get network_connection_failed => 'Netwerkverbinding het misluk';

  @override
  String get network_connection_failed_description =>
      'Kontroleer asseblief die netwerkverbinding en probeer weer.';

  @override
  String get no_results => 'Geen resultate gevind nie';

  @override
  String get no_results_description =>
      'Probeer ander sleutelwoorde gebruik om te soek';

  @override
  String get clear_search => 'Vee soektog uit';

  @override
  String get insufficient_permission => 'Onvoldoende magte';

  @override
  String get insufficient_permission_description =>
      'Hierdie funksie benodig die toepaslike toestemmings om te gebruik';

  @override
  String get request_permission => 'Versoek magtig';

  @override
  String get app_info => 'Aansoekinligting';

  @override
  String get version => 'weergawe';

  @override
  String get developer => 'ontwikkelaar';

  @override
  String get device_info => 'Toestelinligting';

  @override
  String get device_model => 'Toestelmodel';

  @override
  String get brand => 'Handelsmerk';

  @override
  String get device_name => 'Toestelnaam';

  @override
  String get product => 'produk';

  @override
  String get hardware => 'hardeware';

  @override
  String get android_version => 'Android-weergawe';

  @override
  String get sdk_version => 'SDK-weergawe';

  @override
  String get system_name => 'Stelselsnaam';

  @override
  String get system_version => 'Stelselweergawe';

  @override
  String get device_identifier => 'Toerustingidentifikasie';

  @override
  String get computer_name => 'Rekenaarnaam';

  @override
  String get build_number => 'Weergawe nommer';

  @override
  String error_getting_device_info(String error) {
    return 'Kan nie toestel-inligting kry nie: $error';
  }

  @override
  String get features => 'Funksie-inleiding';

  @override
  String get app_description => 'Slim item bestuur toepassing';

  @override
  String get app_description_detail =>
      'Help u om vervaldatums, waarborgdatums en ander inligting van items te bestuur, en bied slim kennisgewingfunksies.';

  @override
  String get consumable => 'Verbruiksgoedere';

  @override
  String get durable => 'Duursaam goed';

  @override
  String get sort => 'Orden';

  @override
  String get name_asc => 'Naam oplopend';

  @override
  String get name_desc => 'Naam aflopend';

  @override
  String get date_asc => 'Datum oplopend';

  @override
  String get date_desc => 'Datum aflopend';

  @override
  String get price_asc => 'Eenheidsprys stygende volgorde';

  @override
  String get price_desc => 'Eenheidsprys aflopende volgorde';

  @override
  String get quantity_asc => 'Aantal in stygende volgorde';

  @override
  String get quantity_desc => 'Aflopende volgorde van hoeveelheid';

  @override
  String get total_price_asc => 'Totale prys oplopend';

  @override
  String get total_price_desc => 'Totale prys aflopende volgorde';

  @override
  String get clear_all_filters => 'Veeg alle filters uit';

  @override
  String get scan_barcode => 'Scan om in te stoor';

  @override
  String get search_items => 'Soek items...';

  @override
  String get no_items => 'Geen items beskikbaar nie';

  @override
  String get no_items_description =>
      'Klik op die knoppie hieronder om die eerste item by te voeg';

  @override
  String get expired => 'Verval';

  @override
  String get expiring_soon => 'Binnekort verval';

  @override
  String get warranty_expired => 'Waarborg het verstryk';

  @override
  String get warranty_expiring_soon => 'Waarborg is amper verstryk';

  @override
  String days_remaining(int count) {
    return 'Oorblywende $count dae';
  }

  @override
  String expired_days_ago(int count) {
    return 'Het verval $count dae gelede';
  }

  @override
  String get delete_item => 'Verwyder item';

  @override
  String delete_item_confirm(String name) {
    return 'Is jy seker jy wil \"$name\" verwyder?';
  }

  @override
  String get item_deleted => 'Item is verwyder';

  @override
  String get failed_to_delete => 'Verwydering het misluk';

  @override
  String failed_to_delete_message(String error) {
    return 'Kan item nie verwyder word nie: $error';
  }

  @override
  String get date_range_filter => 'Datumreeksfilter';

  @override
  String get price_range_filter => 'Prysreeksfilter';

  @override
  String get my_items => 'My items';

  @override
  String get click_fab_to_add_item =>
      'Klik op die knoppie aan die regteronderkant om items by te voeg';

  @override
  String get confirm_delete => 'Bevestig verwydering';

  @override
  String get filter_options => 'Sorteer opsies';

  @override
  String get filter_by_type_category_location =>
      'Filter items volgens tipe, kategorie en ligging';

  @override
  String categories_count(int count) {
    return '$count kategorieë';
  }

  @override
  String get all_categories => 'Alle kategorieë';

  @override
  String get no_category_data => 'Geen gekategoriseerde data beskikbaar nie';

  @override
  String get storage_location => 'Berging plek';

  @override
  String locations_count(int count) {
    return '$count plekke';
  }

  @override
  String get all_locations => 'Al die plekke';

  @override
  String get no_location_data => 'Geen liggingdata beskikbaar nie';

  @override
  String get date_range => 'Datumbereik';

  @override
  String get select_date_range => 'Kies datumreeks';

  @override
  String get price_range => 'Prysreeks';

  @override
  String get unit_price_range => 'Eenheidsprysreeks';

  @override
  String get min_unit_price => 'Minimum eenheidsprys';

  @override
  String get max_unit_price => 'hoogste eenheidsprys';

  @override
  String get total_price_range => 'Totale prysreeks';

  @override
  String get min_total_price => 'Laagste totale prys';

  @override
  String get max_total_price => 'Hoogste totale prys';

  @override
  String get clear_price_filter => 'Veeg pryssifting skoon';

  @override
  String get place_barcode_in_frame =>
      'Plaas die strepieskode binne die raam om te skandeer';

  @override
  String get item_already_exists => 'Produk bestaan reeds';

  @override
  String barcode_with_value(String barcode) {
    return 'Streepkode: $barcode';
  }

  @override
  String name_with_value(String name) {
    return 'Naam: $name';
  }

  @override
  String category_with_value(String category) {
    return 'Kategorie: $category';
  }

  @override
  String current_quantity_with_value(String quantity, String unit) {
    return 'Huidige aantal: $quantity$unit';
  }

  @override
  String get please_select_operation => 'Kies asseblief ’n aksie:';

  @override
  String get outbound => 'Uit voorraad';

  @override
  String get inbound => 'In voorraad';

  @override
  String get inbound_quantity => 'Inslaghoeveelheid';

  @override
  String get outbound_quantity => 'Uitgaande hoeveelheid';

  @override
  String get quantity => 'Aantal';

  @override
  String get enter_inbound_quantity =>
      'Voer asseblief die voorraad hoeveelheid in';

  @override
  String get enter_outbound_quantity =>
      'Voer asseblief die uitgaande hoeveelheid in';

  @override
  String item_increased(String name, String quantity, String unit) {
    return 'Reeds bygevoeg $name $quantity$unit';
  }

  @override
  String delete_item_confirm_with_irreversible(String name) {
    return 'Is jy seker jy wil „$name“ verwyder? Hierdie aksie kan nie ongedaan gemaak word nie.';
  }

  @override
  String item_decreased(String name, String quantity, String unit) {
    return 'Het verminder $name $quantity$unit';
  }

  @override
  String get database_reset =>
      'Die databasis is teruggestel en die tabelstruktuur sal herontwerp word';

  @override
  String database_reset_error(String error) {
    return 'Fout tydens die herstel van die databasis: $error';
  }

  @override
  String mock_data_init_failed(String error) {
    return 'Simulasie-data-initialisering het misluk: $error';
  }

  @override
  String get solution_steps => 'Oplossing:';

  @override
  String get solution_step_1 =>
      '1. Verwyder die toepassing en installeer dit weer';

  @override
  String get solution_step_2 => '2. Of vee die aansoekdata uit';

  @override
  String get solution_step_3 =>
      '3. Of stel resetDatabaseOnStart op true en laat dit weer loop';

  @override
  String notification_service_init_failed(String error) {
    return 'Herinneringdiens-initialisering het misluk: $error';
  }

  @override
  String check_calendar_account_failed(String error) {
    return 'Kontroleer kalenderrekening het misluk: $error';
  }

  @override
  String create_calendar_failed(String error) {
    return 'Kon nie kalender skep nie: $error';
  }

  @override
  String add_calendar_event_failed(String error) {
    return 'Kon nie kalendergebeure byvoeg nie: $error';
  }

  @override
  String delete_calendar_event_failed(String error) {
    return 'Kon nie kalendergebeure verwyder nie: $error';
  }

  @override
  String set_permission_message_failed(String error) {
    return 'Misluk om toestemmingswermelding te stel: $error';
  }

  @override
  String mock_data_init_success(int count) {
    return '$count simulasiedata is suksesvol geïnitialiseer';
  }

  @override
  String database_has_data(int count) {
    return 'Die databasis het reeds $count rekords, sla simulasie-datainitialisering oor';
  }

  @override
  String get database_structure_mismatch =>
      'Dit is moontlik dat die databasisstruktuur nie ooreenstem nie, dit word aanbeveel om aansoekdata uit te vee of die toepassing weer te installeer.';

  @override
  String get old_database_deleted => 'Ou databasislêers is verwyder';

  @override
  String get backup_data_empty => 'Rugsteundata is leeg';

  @override
  String get backup_file_not_found => 'Die rugsteunlêer bestaan nie';

  @override
  String file_not_utf8(String error) {
    return 'Die lêerkodering is nie \'n geldige UTF-8-formaat nie. Maak seker dat die lêer in UTF-8-kodering gestoor is. Foutbesonderhede: $error';
  }

  @override
  String file_not_found(String filePath) {
    return 'Lêer bestaan nie: $filePath';
  }

  @override
  String file_empty(String filePath) {
    return 'Lêer is leeg: $filePath';
  }

  @override
  String get file_content_empty =>
      'Die inhoud van die lêer is leeg na dekodering, dit kan wees dat die kodering nie ooreenstem nie';

  @override
  String field_cannot_be_empty(String fieldName) {
    return '$fieldName mag nie leeg wees nie';
  }

  @override
  String field_min_length(String fieldName, int minLength) {
    return '$fieldName lengte mag nie minder as $minLength karakters wees nie';
  }

  @override
  String field_max_length(String fieldName, int maxLength) {
    return '$fieldName lengte mag nie meer as $maxLength karakters wees nie';
  }

  @override
  String field_invalid_email(String fieldName) {
    return 'Voer asseblief \'n geldige $fieldName adres in';
  }

  @override
  String field_invalid_number(String fieldName, String numberType) {
    return '$fieldName moet $numberType wees';
  }

  @override
  String field_min_value(String fieldName, double min) {
    return '$fieldName mag nie kleiner wees as $min nie';
  }

  @override
  String field_max_value(String fieldName, double max) {
    return '$fieldName mag nie groter wees as $max nie';
  }

  @override
  String field_positive_integer(String fieldName) {
    return '$fieldName moet \'n positiewe integer wees';
  }

  @override
  String field_greater_than_zero(String fieldName) {
    return '$fieldName moet groter as 0 wees';
  }

  @override
  String field_positive_number(String fieldName) {
    return '$fieldName moet \'n positiewe getal wees';
  }

  @override
  String field_invalid_date(String fieldName) {
    return 'Voer asseblief \'n geldige $fieldName in';
  }

  @override
  String field_date_not_past(String fieldName) {
    return '$fieldName kan nie \'n datum in die verlede wees nie';
  }

  @override
  String field_date_not_before(String fieldName, String minDate) {
    return '$fieldName kan nie vroeër as $minDate wees nie';
  }

  @override
  String field_date_not_after(String fieldName, String maxDate) {
    return '$fieldName mag nie later as $maxDate wees nie';
  }

  @override
  String field_invalid_value(String fieldName) {
    return 'Voer asseblief \'n geldige $fieldName in';
  }

  @override
  String password_min_length(String fieldName) {
    return '$fieldName lengte mag nie minder as 8 karakters wees nie';
  }

  @override
  String password_uppercase_required(String fieldName) {
    return '$fieldName moet minstens een hoofletter bevat';
  }

  @override
  String password_lowercase_required(String fieldName) {
    return '$fieldName moet minstens een kleinletter bevat';
  }

  @override
  String password_digit_required(String fieldName) {
    return '$fieldName moet minstens een syfer bevat';
  }

  @override
  String password_special_char_required(String fieldName) {
    return '$fieldName moet minstens een spesiale karakter bevat';
  }

  @override
  String get passwords_not_match =>
      'Die twee ingevoerde wagwoorde stem nie ooreen nie';

  @override
  String get item_name_cannot_be_empty =>
      'Die naam van die artikel kan nie leeg wees nie';

  @override
  String name_max_length(int maxLength) {
    return 'Die naam mag nie meer as $maxLength karakters hê nie';
  }

  @override
  String quantity_min(int minQuantity) {
    return 'Die hoeveelheid mag nie minder as $minQuantity wees nie';
  }

  @override
  String quantity_max(int maxQuantity) {
    return 'Aantal mag nie meer as $maxQuantity wees nie';
  }

  @override
  String get unit_price_not_negative =>
      'Die eenheidsprys kan nie \'n negatiewe getal wees nie';

  @override
  String unit_price_max(double maxUnitPrice) {
    return 'Die eenheidsprys mag nie meer as $maxUnitPrice wees nie';
  }

  @override
  String get set_production_expiry_for_validity =>
      'Stel asseblief die produksiedatum en vervaldatum in om die houdbaarheid outomaties te bereken';

  @override
  String get set_purchase_warranty_for_validity =>
      'Stel asseblief die aankoopdatum en vervaldatum in om die waarborgperiode outomaties te bereken';

  @override
  String get calendar_account_creation_failed =>
      'Kan nie \'n kalenderrekening skep nie, controleer asseblief die stelselkalenderinstellings';

  @override
  String get test_notification => 'Toets kennisgewing';

  @override
  String get test_notification_description =>
      'Dit is \'n toetskennisgewing, gebruik om die plaaslike herinneringsfunksie te verifieer';

  @override
  String get day_unit => 'lug';

  @override
  String days_with_value(int days) {
    return '$days dae';
  }

  @override
  String get item_saved => 'Die item is gestoor';

  @override
  String get item_updated => 'Item is opgedateer';

  @override
  String get item_added => 'Item is bygevoeg';

  @override
  String get save_success => 'Suksesvol gestoor';

  @override
  String get update_success => 'Opdatering suksesvol';

  @override
  String get delete_success => 'Suksesvol verwyder';

  @override
  String get save_failed => 'Stoor het misluk';

  @override
  String get update_failed => 'Opdatering het misluk';

  @override
  String get delete_failed => 'Verwydering het misluk';
}
