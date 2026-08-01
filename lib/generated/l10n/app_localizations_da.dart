// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Danish (`da`).
class AppLocalizationsDa extends AppLocalizations {
  AppLocalizationsDa([String locale = 'da']) : super(locale);

  @override
  String get app_name => 'Opbevaringsplads';

  @override
  String get cancel => 'Annuller';

  @override
  String get confirm => 'Bekræft';

  @override
  String get save => 'Gem';

  @override
  String get delete => 'Slet';

  @override
  String get edit => 'Rediger';

  @override
  String get add => 'Tilføj';

  @override
  String get edit_item => 'Rediger vare';

  @override
  String get add_item => 'Tilføj vare';

  @override
  String get search => 'Søg';

  @override
  String get settings => 'Indstillinger';

  @override
  String get language_settings => 'Sprogindstillinger';

  @override
  String get language_settings_description => 'Indstil appens visningssprog';

  @override
  String get system_default => 'Systemstandard';

  @override
  String get use_system_language => 'Brug systemets sprog';

  @override
  String get language_change_hint =>
      'Sprogændringen træder i kraft efter genstart af appen';

  @override
  String get back => 'Tilbage';

  @override
  String get next => 'Næste';

  @override
  String get done => 'Udfør';

  @override
  String get loading => 'Indlæser...';

  @override
  String get error => 'Fejl';

  @override
  String get success => 'Succes';

  @override
  String get warning => 'Advarsel';

  @override
  String get info => 'Information';

  @override
  String get select_alert_days => 'Vælg påmindelsesdage';

  @override
  String get custom => 'Tilpas';

  @override
  String custom_days(int days) {
    return 'Brugerdefineret ($days dage)';
  }

  @override
  String current_selection(int days) {
    return 'Nuværende valg: $days dage';
  }

  @override
  String alert_days_range(int min, int max) {
    return 'Påmindelsesdageinterval: $min-$max dage';
  }

  @override
  String get enter_days => 'Indtast påmindelsesdage';

  @override
  String get days => 'dage';

  @override
  String enter_valid_days(int min, int max) {
    return 'Indtast venligst et tal mellem $min og $max';
  }

  @override
  String get alert_settings => 'Advarselsindstillinger';

  @override
  String get calendar_settings => 'Kalenderindstillinger';

  @override
  String get calendar_sync => 'Kalendersynkronisering';

  @override
  String get calendar_sync_desc =>
      'Når aktiveret, vil der blive anmodet om kalenderadgang';

  @override
  String get add_test_calendar_event => 'Tilføj testkalenderbegivenhed';

  @override
  String get enable_calendar_sync_first =>
      'Tænd venligst først for \'Kalendersynkronisering\'';

  @override
  String get app_alert_settings => 'App-påmindelsesindstillinger';

  @override
  String get local_alerts => 'Lokale påmindelser';

  @override
  String get local_alerts_desc =>
      'Modtag påmindelser om udløb i appen, når den er tændt';

  @override
  String get send_test_notification => 'Send testmeddelelse';

  @override
  String get enable_local_alerts_first =>
      'Tænd først for \'Lokale påmindelser\'';

  @override
  String get alert_days_settings => 'Indstillinger for påmindelsesdage';

  @override
  String get advance_alert_days => 'Dage før påmindelse';

  @override
  String get advance_alert_days_desc =>
      'Indstil hvor mange dage i forvejen du vil mindes om, at varen udløber eller garantien udløber';

  @override
  String get calendar_permission_request => 'Kalenderadgangsanmodning';

  @override
  String get calendar_permission_desc =>
      'Der kræves adgang til kalenderen for at synkronisere objektpåmindelser. Tillader du det?';

  @override
  String get allow => 'Tillad';

  @override
  String get calendar_permission_granted =>
      'Kalenderadgang er givet, kalendersynkronisering er aktiveret';

  @override
  String get calendar_permission_denied =>
      'Kalendertilladelse er nægtet, kan ikke aktivere kalendersynkronisering';

  @override
  String get calendar_permission_permanently_denied =>
      'Tilladelse er permanent nægtet';

  @override
  String get calendar_permission_permanently_denied_desc =>
      'Kalendertilladelser er permanent nægtet, venligst aktiver tilladelser manuelt i systemindstillingerne.';

  @override
  String get go_to_settings => 'Gå til indstillinger';

  @override
  String get calendar_account_failed =>
      'Kalendertilladelser er givet, men det er ikke muligt at oprette en kalenderkonto. Kontroller systemets kalenderindstillinger';

  @override
  String get calendar_account_created =>
      'Kalendertilladelser er givet, lokal kalenderkonto oprettet';

  @override
  String get calendar_account_creating =>
      'Kalenderkontoen blev oprettet med succes, men systemet kan tage lidt tid at træde i kraft';

  @override
  String get test_calendar_event_added =>
      'Testkalenderbegivenhed tilføjet med succes';

  @override
  String get test_calendar_event_failed =>
      'Tilføjelse af testkalenderbegivenhed mislykkedes, tjek venligst kalenderindstillinger';

  @override
  String get calendar_permission_required =>
      'Kalenderadgang kræves for at tilføje testbegivenhed';

  @override
  String get test_notification_sent => 'Testmeddelelse er sendt';

  @override
  String test_notification_failed(String error) {
    return 'Afsendelse af testmeddelelse mislykkedes: $error';
  }

  @override
  String get notification_permission_required =>
      'Lokale påmindelser kræver notifikationstilladelse';

  @override
  String operation_failed(String error) {
    return 'Handling mislykkedes: $error';
  }

  @override
  String get notification_channel_name => 'Vareadvarselsmeddelelse';

  @override
  String get notification_channel_description =>
      'Påmindelse om udløb eller garantioverskridelse af varer';

  @override
  String get item_category_food => 'Fødevarer';

  @override
  String get item_category_daily_necessities => 'Dagligvarer';

  @override
  String get item_category_cosmetics => 'Kosmetik';

  @override
  String get item_category_medicine => 'Medicin';

  @override
  String get item_category_electronics => 'Elektronik';

  @override
  String get item_category_furniture => 'Møbler';

  @override
  String get item_category_clothing => 'Tøj';

  @override
  String get item_category_books => 'Bøger';

  @override
  String get item_category_other => 'Andet';

  @override
  String get purchase_channel_online_mall => 'Online butik';

  @override
  String get purchase_channel_physical_store => 'Fysiske butikker';

  @override
  String get purchase_channel_supermarket => 'Supermarked';

  @override
  String get purchase_channel_specialty_store => 'Specialbutik';

  @override
  String get purchase_channel_secondhand_market => 'Andetmarked';

  @override
  String get purchase_channel_other => 'Andre';

  @override
  String get default_category => 'Andre';

  @override
  String get default_purchase_channel => 'Online butik';

  @override
  String get item_category => 'Varekategorier';

  @override
  String get custom_category => 'Tilpasset kategori';

  @override
  String get backup_data => 'Sikkerhedskopiér data';

  @override
  String get backup_data_description =>
      'Pak alle data (inklusive billeder) som en ZIP-fil til sikkerhedskopiering';

  @override
  String get backup_all_data => 'Sikkerhedskopier alle data';

  @override
  String get backup_success => 'Sikkerhedskopiering lykkedes';

  @override
  String backup_failed(String error) {
    return 'Backup mislykkedes: $error';
  }

  @override
  String get restore_data => 'Gendan data';

  @override
  String get restore_data_description => 'Gendan alle data fra ZIP-backupfilen';

  @override
  String get export_data => 'Eksporter data';

  @override
  String get export_data_description => 'Eksporter som CSV, TXT, SQL format';

  @override
  String get import_data => 'Importer data';

  @override
  String get import_data_description =>
      'Importer data fra CSV-, TXT- og SQL-filer';

  @override
  String get alert_settings_description =>
      'Indstilling af kalenderpåmindelser og app-notifikationer';

  @override
  String get about => 'Om';

  @override
  String get about_description => 'App-oplysninger og version';

  @override
  String get select_backup_file_first =>
      'Vælg venligst en sikkerhedskopifil først';

  @override
  String get confirm_restore => 'Bekræft gendannelse';

  @override
  String get confirm_restore_message =>
      'Gendannelse af backup vil slette alle eksisterende data og erstatte dem med backup-data. Denne handling kan ikke fortrydes. Er du sikker på, at du vil fortsætte?';

  @override
  String get confirm_again => 'Bekræft igen';

  @override
  String get confirm_restore_warning =>
      'Er du sikker på, at du vil rydde alle eksisterende data og gendanne backup? Denne handling kan ikke fortrydes!';

  @override
  String get confirm_restore_button => 'Bekræft gendannelse';

  @override
  String restore_success(int count) {
    return 'Gendannelse vellykket, i alt $count varer';
  }

  @override
  String restore_failed(String error) {
    return 'Gendannelse mislykkedes: $error';
  }

  @override
  String get select_backup_file => 'Vælg backupfil';

  @override
  String get restore_backup => 'Gendan backup';

  @override
  String selected_file(String filename) {
    return 'Filen valgt: $filename';
  }

  @override
  String get export_success => 'Dataeksport lykkedes';

  @override
  String export_failed(String error) {
    return 'Eksport mislykkedes: $error';
  }

  @override
  String get format_csv => 'CSV';

  @override
  String get format_txt => 'TXT';

  @override
  String get format_sql => 'SQL';

  @override
  String get duplicate_data_handling => 'Dobbeltdatahåndtering';

  @override
  String get duplicate_data_detected =>
      'Dublerede data er fundet, vælg venligst en behandlingsmetode:';

  @override
  String get skip => 'Spring over';

  @override
  String get overwrite => 'Overskriv';

  @override
  String get skip_all => 'Spring over alle';

  @override
  String get overwrite_all => 'Dæk alt';

  @override
  String get select_import_format_first => 'Vælg importformat først';

  @override
  String get confirm_import => 'Bekræft import';

  @override
  String get confirm_import_message =>
      'Importering af data vil overskrive eksisterende data, denne handling kan ikke fortrydes. Er du sikker på, at du vil fortsætte?';

  @override
  String import_success(int count) {
    return 'Dataimporten lykkedes, i alt blev $count genstande importeret';
  }

  @override
  String import_failed(String error) {
    return 'Import mislykkedes: $error';
  }

  @override
  String get select_file => 'Vælg fil';

  @override
  String get no_data => 'Ingen data';

  @override
  String get no_data_description =>
      'Der er ingen data i øjeblikket, klik på knappen nedenfor for at tilføje den første post!';

  @override
  String get load_failed => 'Indlæsning mislykkedes';

  @override
  String get load_failed_description =>
      'Dat indlæsning mislykkedes, kontroller netværksforbindelsen og prøv igen';

  @override
  String get retry => 'Prøv igen';

  @override
  String get network_connection_failed => 'Netværksforbindelse mislykkedes';

  @override
  String get network_connection_failed_description =>
      'Kontroller netværksforbindelsen og prøv igen';

  @override
  String get no_results => 'Ingen resultater fundet';

  @override
  String get no_results_description => 'Prøv at søge med andre søgeord';

  @override
  String get clear_search => 'Ryd søgning';

  @override
  String get insufficient_permission => 'Utilstrækkelige rettigheder';

  @override
  String get insufficient_permission_description =>
      'Denne funktion kræver de relevante tilladelser';

  @override
  String get request_permission => 'Anmod om tilladelser';

  @override
  String get app_info => 'App-oplysninger';

  @override
  String get version => 'Version';

  @override
  String get developer => 'Udvikler';

  @override
  String get device_info => 'Enhedsinformation';

  @override
  String get device_model => 'Enhedsmodel';

  @override
  String get brand => 'Mærke';

  @override
  String get device_name => 'Enhedsnavn';

  @override
  String get product => 'Produkt';

  @override
  String get hardware => 'Hardware';

  @override
  String get android_version => 'Android-version';

  @override
  String get sdk_version => 'SDK-version';

  @override
  String get system_name => 'Systemnavn';

  @override
  String get operating_system => 'Operativsystem';

  @override
  String get system_version => 'Systemversion';

  @override
  String get dart_version => 'Dart-version';

  @override
  String get device_identifier => 'Enheds-id';

  @override
  String get computer_name => 'Computernavn';

  @override
  String get build_number => 'Versionsnummer';

  @override
  String error_getting_device_info(String error) {
    return 'Kan ikke hente enhedsoplysninger: $error';
  }

  @override
  String get features => 'Funktionsintroduktion';

  @override
  String get app_description => 'Intelligent genstandsstyringsapp';

  @override
  String get app_description_detail =>
      'Hjælper dig med at administrere oplysninger om udløbsdatoer, garantidatoer osv. og tilbyder intelligente påmindelsesfunktioner.';

  @override
  String get consumable => 'Forbrugsvarer';

  @override
  String get durable => 'Holdbare varer';

  @override
  String get sort => 'Sortering';

  @override
  String get name_asc => 'Navn stigende';

  @override
  String get name_desc => 'Navn faldende';

  @override
  String get date_asc => 'Dato stigende';

  @override
  String get date_desc => 'Dato faldende';

  @override
  String get price_asc => 'Enhedspris stigende';

  @override
  String get price_desc => 'Enhedspris faldende';

  @override
  String get quantity_asc => 'Mængde stigende';

  @override
  String get quantity_desc => 'Mængde faldende';

  @override
  String get total_price_asc => 'Totalpris stigende';

  @override
  String get total_price_desc => 'Totalpris faldende';

  @override
  String get clear_all_filters => 'Ryd alle filtre';

  @override
  String get scan_barcode => 'Scan for at lagre';

  @override
  String get search_items => 'Søg efter varer...';

  @override
  String get no_items => 'Ingen varer';

  @override
  String get no_items_description =>
      'Klik på knappen nedenfor for at tilføje det første element';

  @override
  String get expired => 'Udløbet';

  @override
  String get expiring_soon => 'Udløber snart';

  @override
  String get warranty_expired => 'Garanti udløbet';

  @override
  String get warranty_expiring_soon => 'Garanti udløber snart';

  @override
  String days_remaining(int count) {
    return '$count dage tilbage';
  }

  @override
  String expired_days_ago(int count) {
    return 'Udløbet for $count dage';
  }

  @override
  String get delete_item => 'Slet genstand';

  @override
  String delete_item_confirm(String name) {
    return 'Er du sikker på, at du vil slette \"$name\"?';
  }

  @override
  String get item_deleted => 'Varen er slettet';

  @override
  String get failed_to_delete => 'Sletning mislykkedes';

  @override
  String failed_to_delete_message(String error) {
    return 'Kan ikke slette vare: $error';
  }

  @override
  String get date_range_filter => 'Datoområde filter';

  @override
  String get price_range_filter => 'Prisområde filter';

  @override
  String get my_items => 'Mine genstande';

  @override
  String get click_fab_to_add_item =>
      'Klik på knappen nederst til højre for at tilføje genstande';

  @override
  String get confirm_delete => 'Bekræft sletning';

  @override
  String get filter_options => 'Filtreringsmuligheder';

  @override
  String get filter_by_type_category_location =>
      'Filtrer genstande efter type, kategori og sted';

  @override
  String categories_count(int count) {
    return '$count kategorier';
  }

  @override
  String get all_categories => 'Alle kategorier';

  @override
  String get no_category_data => 'Ingen kategoridata';

  @override
  String get storage_location => 'Opbevaringssted';

  @override
  String locations_count(int count) {
    return '$count steder';
  }

  @override
  String get all_locations => 'Alle steder';

  @override
  String get no_location_data => 'Ingen lokalitetsdata';

  @override
  String get date_range => 'Datoområde';

  @override
  String get select_date_range => 'Vælg datoområde';

  @override
  String get price_range => 'Prisspænd';

  @override
  String get unit_price_range => 'Enhedsprisspænd';

  @override
  String get min_unit_price => 'Laveste enhedspris';

  @override
  String get max_unit_price => 'Højeste enhedspris';

  @override
  String get total_price_range => 'Prisinterval';

  @override
  String get min_total_price => 'Laveste totalpris';

  @override
  String get max_total_price => 'Højeste totalpris';

  @override
  String get clear_price_filter => 'Ryd prisfilter';

  @override
  String get place_barcode_in_frame => 'Læg stregkoden i boksen for at scanne';

  @override
  String get item_already_exists => 'Varen findes allerede';

  @override
  String barcode_with_value(String barcode) {
    return 'Stregkode: $barcode';
  }

  @override
  String name_with_value(String name) {
    return 'Navn: $name';
  }

  @override
  String category_with_value(String category) {
    return 'Kategori: $category';
  }

  @override
  String current_quantity_with_value(String quantity, String unit) {
    return 'Nuværende antal: $quantity$unit';
  }

  @override
  String get please_select_operation => 'Vælg handling:';

  @override
  String get outbound => 'Udlager';

  @override
  String get inbound => 'Indlager';

  @override
  String get inbound_quantity => 'Indlagerantal';

  @override
  String get outbound_quantity => 'Udlagerantal';

  @override
  String get quantity => 'Antal';

  @override
  String get enter_inbound_quantity => 'Indtast venligst indlagerantal';

  @override
  String get enter_outbound_quantity => 'Indtast antallet til udlevering';

  @override
  String delete_item_confirm_with_irreversible(String name) {
    return 'Er du sikker på, at du vil slette „$name“? Denne handling kan ikke fortrydes.';
  }

  @override
  String get database_reset =>
      'Databasen er nulstillet, tabellens struktur vil blive genskabt';

  @override
  String database_reset_error(String error) {
    return 'Fejl ved nulstilling af databasen: $error';
  }

  @override
  String mock_data_init_failed(String error) {
    return 'Simulerede data initialisering mislykkedes: $error';
  }

  @override
  String get solution_steps => 'Løsning:';

  @override
  String get solution_step_1 => '1. Afinstaller appen og geninstaller';

  @override
  String get solution_step_2 => '2. Eller ryd appdata';

  @override
  String get solution_step_3 =>
      '3. Eller sæt resetDatabaseOnStart til true og kør igen';

  @override
  String notification_service_init_failed(String error) {
    return 'Påmindelsestjeneste initialisering mislykkedes: $error';
  }

  @override
  String check_calendar_account_failed(String error) {
    return 'Kontrol af kalenderkonto mislykkedes: $error';
  }

  @override
  String create_calendar_failed(String error) {
    return 'Oprettelse af kalender mislykkedes: $error';
  }

  @override
  String add_calendar_event_failed(String error) {
    return 'Tilføjelse af kalenderbegivenhed mislykkedes: $error';
  }

  @override
  String delete_calendar_event_failed(String error) {
    return 'Sletning af kalenderbegivenhed mislykkedes: $error';
  }

  @override
  String set_permission_message_failed(String error) {
    return 'Kunne ikke indstille tilladelsesmeddelelsen: $error';
  }

  @override
  String mock_data_init_success(int count) {
    return 'Der er blevet initialiseret $count simulerede data med succes';
  }

  @override
  String database_has_data(int count) {
    return 'Databasen har allerede $count poster, spring over initialisering af simulerede data';
  }

  @override
  String get database_structure_mismatch =>
      'Det kan være, at databasestrukturen ikke matcher, det anbefales at rydde appdata eller geninstallere';

  @override
  String get old_database_deleted => 'Gamle databasefiler er slettet';

  @override
  String get backup_data_empty => 'Backupdata er tom';

  @override
  String get backup_file_not_found => 'Sikkerhedskopifilen findes ikke';

  @override
  String file_not_utf8(String error) {
    return 'Filkodningen er ikke i et gyldigt UTF-8-format. Sørg for, at filen gemmes med UTF-8-kodning. Fejldetaljer: $error';
  }

  @override
  String file_not_found(String filePath) {
    return 'Filen findes ikke: $filePath';
  }

  @override
  String file_empty(String filePath) {
    return 'Filen er tom: $filePath';
  }

  @override
  String get file_content_empty =>
      'Filens indhold er tomt efter dekodning, muligvis på grund af misforhold i kodningen';

  @override
  String field_cannot_be_empty(String fieldName) {
    return '$fieldName må ikke være tom';
  }

  @override
  String field_min_length(String fieldName, int minLength) {
    return '$fieldName længde må ikke være mindre end $minLength tegn';
  }

  @override
  String field_max_length(String fieldName, int maxLength) {
    return '$fieldName må ikke overstige $maxLength tegn';
  }

  @override
  String field_invalid_email(String fieldName) {
    return 'Indtast en gyldig $fieldName-adresse';
  }

  @override
  String field_invalid_number(String fieldName, String numberType) {
    return '$fieldName skal være $numberType';
  }

  @override
  String field_min_value(String fieldName, double min) {
    return '$fieldName kan ikke være mindre end $min';
  }

  @override
  String field_max_value(String fieldName, double max) {
    return '$fieldName må ikke være større end $max';
  }

  @override
  String field_positive_integer(String fieldName) {
    return '$fieldName skal være et positivt helt tal';
  }

  @override
  String field_greater_than_zero(String fieldName) {
    return '$fieldName skal være større end 0';
  }

  @override
  String field_positive_number(String fieldName) {
    return '$fieldName skal være et positivt tal';
  }

  @override
  String field_invalid_date(String fieldName) {
    return 'Indtast venligst en gyldig $fieldName';
  }

  @override
  String field_date_not_past(String fieldName) {
    return '$fieldName må ikke være en dato i fortiden';
  }

  @override
  String field_date_not_before(String fieldName, String minDate) {
    return '$fieldName kan ikke være tidligere end $minDate';
  }

  @override
  String field_date_not_after(String fieldName, String maxDate) {
    return '$fieldName må ikke være senere end $maxDate';
  }

  @override
  String field_invalid_value(String fieldName) {
    return 'Indtast venligst en gyldig $fieldName';
  }

  @override
  String password_min_length(String fieldName) {
    return '$fieldName længde må ikke være mindre end 8 tegn';
  }

  @override
  String password_uppercase_required(String fieldName) {
    return '$fieldName skal indeholde mindst ét stort bogstav';
  }

  @override
  String password_lowercase_required(String fieldName) {
    return '$fieldName skal indeholde mindst ét lille bogstav';
  }

  @override
  String password_digit_required(String fieldName) {
    return '$fieldName skal indeholde mindst ét tal';
  }

  @override
  String password_special_char_required(String fieldName) {
    return '$fieldName skal indeholde mindst ét specialtegn';
  }

  @override
  String get passwords_not_match => 'De indtastede adgangskoder er ikke ens';

  @override
  String get item_name_cannot_be_empty => 'Varenavn kan ikke være tomt';

  @override
  String name_max_length(int maxLength) {
    return 'Navnet må ikke overstige $maxLength tegn';
  }

  @override
  String quantity_min(int minQuantity) {
    return 'Mængden må ikke være mindre end $minQuantity';
  }

  @override
  String quantity_max(int maxQuantity) {
    return 'Mængden må ikke overstige $maxQuantity';
  }

  @override
  String get unit_price_not_negative => 'Enhedsprisen må ikke være negativ';

  @override
  String unit_price_max(double maxUnitPrice) {
    return 'Enhedsprisen må ikke overstige $maxUnitPrice';
  }

  @override
  String get set_production_expiry_for_validity =>
      'Angiv venligst produktionsdato og holdbarhed for automatisk at beregne udløbsdatoen';

  @override
  String get set_purchase_warranty_for_validity =>
      'Indstil venligst købsdato og holdbarhed for automatisk at beregne garantiperioden';

  @override
  String get calendar_account_creation_failed =>
      'Kan ikke oprette kalenderkonto, tjek venligst systemets kalenderindstillinger';

  @override
  String get test_notification => 'Testmeddelelse';

  @override
  String get test_notification_description =>
      'Dette er en testmeddelelse til at verificere den lokale påmindelsesfunktion';

  @override
  String get day_unit => 'Dag';

  @override
  String days_with_value(int days) {
    return '$days dage';
  }

  @override
  String get item_saved => 'Varen er gemt';

  @override
  String get item_updated => 'Varen er opdateret';

  @override
  String get item_added => 'Varen er tilføjet';

  @override
  String get save_success => 'Gem succes';

  @override
  String get update_success => 'Opdatering lykkedes';

  @override
  String get delete_success => 'Sletning lykkedes';

  @override
  String get save_failed => 'Gem mislykkedes';

  @override
  String get update_failed => 'Opdatering mislykkedes';

  @override
  String get delete_failed => 'Sletning mislykkedes';

  @override
  String get test_calendar_event => 'Test kalenderbegivenhed';

  @override
  String get test_calendar_event_description =>
      'Dette er en testbegivenhed til at verificere kalenderfunktionen';

  @override
  String get in_app => 'i appen';

  @override
  String get enable_alert => 'Aktiver udløbs påmindelse';

  @override
  String get alert_method => 'påmindelsesmetode';

  @override
  String get alert_method_in_app => 'Kun i appen';

  @override
  String get alert_method_calendar => 'Kun kalender';

  @override
  String get alert_method_both => 'Begge';

  @override
  String get alert_days_before => 'Antal dage til påmindelse på forhånd';

  @override
  String get use_global_setting => 'Brug globale indstillinger';

  @override
  String get barcode_label => 'Stregkode';

  @override
  String get name_label => 'Navn';

  @override
  String get category_label => 'Klassificering';

  @override
  String get current_quantity => 'Nuværende antal';

  @override
  String get select_operation => 'Vælg handling';

  @override
  String get unit => 'enhed';

  @override
  String get custom_unit => 'Brugerdefineret enhed';

  @override
  String get enter_unit => 'Indtast venligst enhed';

  @override
  String get custom_location => 'Brugerdefineret sted';

  @override
  String get enter_storage_location => 'Indtast opbevaringssted';

  @override
  String get scan => 'Scan QR-kode';

  @override
  String get scan_to_stock => 'Scan for lagerindtastning';

  @override
  String get item_categories => 'Vareklassificering';

  @override
  String get storage_locations => 'Opbevaringssted';

  @override
  String get place_barcode_in_frame_to_scan =>
      'Plac stregkoden inden for rammen for at scanne';

  @override
  String get barcode => 'Stregkode';

  @override
  String get enter_barcode_or_scan => 'Indtast stregkoden eller scan koden';

  @override
  String get basic_information => 'Grundlæggende information';

  @override
  String get item_name => 'Varenavn';

  @override
  String get enter_item_name => 'Indtast varenavn';

  @override
  String get enter_category_name => 'Indtast kategorinavn';

  @override
  String item_increased(String itemName, String quantity, String unit) {
    return 'Er blevet tilføjet $itemName $quantity$unit';
  }

  @override
  String item_decreased(String itemName, String quantity, String unit) {
    return 'Er allerede reduceret med $itemName $quantity$unit';
  }
}
