// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get app_name => 'Het bewaren van voorwerpen';

  @override
  String get cancel => 'Annuleren';

  @override
  String get confirm => 'Bevestigen';

  @override
  String get save => 'Opslaan';

  @override
  String get delete => 'Verwijderen';

  @override
  String get edit => 'Bewerken';

  @override
  String get add => 'Toevoegen';

  @override
  String get edit_item => 'Item bewerken';

  @override
  String get add_item => 'Item toevoegen';

  @override
  String get search => 'Zoeken';

  @override
  String get settings => 'Instellingen';

  @override
  String get language_settings => 'Taalinstellingen';

  @override
  String get language_settings_description =>
      'Instellingen voor de weergavetaal van de app';

  @override
  String get system_default => 'Standaard systeem';

  @override
  String get use_system_language => 'Systeemtaal gebruiken';

  @override
  String get language_change_hint =>
      'De taalwijziging wordt van kracht na het opnieuw starten van de app';

  @override
  String get back => 'Terug';

  @override
  String get next => 'Volgende stap';

  @override
  String get done => 'Voltooid';

  @override
  String get loading => 'Laden...';

  @override
  String get error => 'Fout';

  @override
  String get success => 'succes';

  @override
  String get warning => 'Waarschuwing';

  @override
  String get info => 'informatie';

  @override
  String get select_alert_days => 'Herinneringsdagen kiezen';

  @override
  String get custom => 'Aangepast';

  @override
  String custom_days(int days) {
    return 'Aangepast ($days dagen)';
  }

  @override
  String current_selection(int days) {
    return 'Huidige selectie: $days dagen';
  }

  @override
  String alert_days_range(int min, int max) {
    return 'Herinneringsdagen bereik: $min-$max dagen';
  }

  @override
  String get enter_days => 'Voer het aantal dagen voor de herinnering in';

  @override
  String get days => 'dagen';

  @override
  String enter_valid_days(int min, int max) {
    return 'Voer een nummer in tussen $min en $max';
  }

  @override
  String get alert_settings => 'Waarschuwingsinstellingen';

  @override
  String get calendar_settings => 'Kalenderinstellingen';

  @override
  String get calendar_sync => 'Agenda-synchronisatie';

  @override
  String get calendar_sync_desc =>
      'Na inschakeling wordt toestemming gevraagd voor toegang tot de kalender';

  @override
  String get add_test_calendar_event => 'Testagenda-item toevoegen';

  @override
  String get enable_calendar_sync_first =>
      'Schakel eerst de schakelaar \'kalendersynchronisatie\' in';

  @override
  String get app_alert_settings => 'App-meldingsinstellingen';

  @override
  String get local_alerts => 'Lokale herinnering';

  @override
  String get local_alerts_desc =>
      'Inschakelen om vervaldatummeldingen binnen de app te ontvangen';

  @override
  String get send_test_notification => 'Verzend testmelding';

  @override
  String get enable_local_alerts_first =>
      'Schakel eerst de schakelaar \'Lokale herinnering\' in';

  @override
  String get alert_days_settings => 'Herinneringsdagen instellen';

  @override
  String get advance_alert_days => 'Aantal dagen van tevoren herinneren';

  @override
  String get advance_alert_days_desc =>
      'Instellen hoeveel dagen van tevoren herinnerd moet worden aan het verlopen van een item of aan het verlopen van de garantie';

  @override
  String get calendar_permission_request => 'Agenda toestemmingsverzoek';

  @override
  String get calendar_permission_desc =>
      'Toegang tot de kalender is nodig om herinneringen voor items te synchroniseren. Mag dit worden toegestaan?';

  @override
  String get allow => 'toestaan';

  @override
  String get calendar_permission_granted =>
      'Kalenderrechten zijn verleend, kalendersynchronisatie is ingeschakeld';

  @override
  String get calendar_permission_denied =>
      'Kalendermachtiging geweigerd, kan kalendersynchronisatie niet inschakelen';

  @override
  String get calendar_permission_permanently_denied =>
      'Toestemming permanent geweigerd';

  @override
  String get calendar_permission_permanently_denied_desc =>
      'De kalenderrechten zijn permanent geweigerd, schakel de rechten handmatig in in de systeeminstellingen.';

  @override
  String get go_to_settings => 'Ga naar instellingen';

  @override
  String get calendar_account_failed =>
      'Kalenderrechten zijn verleend, maar het is niet mogelijk om een kalenderaccount te maken. Controleer de systeemkalenderinstellingen';

  @override
  String get calendar_account_created =>
      'Kalendermachtigingen zijn verleend, een lokaal kalenderaccount is aangemaakt';

  @override
  String get calendar_account_creating =>
      'De kalenderaccount is succesvol aangemaakt, maar het systeem kan enige tijd nodig hebben om van kracht te worden';

  @override
  String get test_calendar_event_added =>
      'Test kalendergebeurtenis succesvol toegevoegd';

  @override
  String get test_calendar_event_failed =>
      'Het toevoegen van een testkalenderevenement is mislukt, controleer de kalenderinstellingen';

  @override
  String get calendar_permission_required =>
      'Kalendertoegang is vereist om een testgebeurtenis toe te voegen';

  @override
  String get test_notification_sent => 'Testmelding is verzonden';

  @override
  String test_notification_failed(String error) {
    return 'Mislukt om testmelding te verzenden: $error';
  }

  @override
  String get notification_permission_required =>
      'Toestemming voor meldingen is vereist om lokale herinneringen in te schakelen';

  @override
  String operation_failed(String error) {
    return 'Operatie mislukt: $error';
  }

  @override
  String get notification_channel_name => 'Artikel waarschuwingmelding';

  @override
  String get notification_channel_description =>
      'Herinnering voor verlopen of overgarantiegoed';

  @override
  String get item_category_food => 'voedsel';

  @override
  String get item_category_daily_necessities => 'Dagelijkse benodigdheden';

  @override
  String get item_category_cosmetics => 'cosmetica';

  @override
  String get item_category_medicine => 'Medicijn';

  @override
  String get item_category_electronics => 'elektronische producten';

  @override
  String get item_category_furniture => 'meubels';

  @override
  String get item_category_clothing => 'kleding';

  @override
  String get item_category_books => 'boek';

  @override
  String get item_category_other => 'Overig';

  @override
  String get purchase_channel_online_mall => 'online winkel';

  @override
  String get purchase_channel_physical_store => 'fysieke winkel';

  @override
  String get purchase_channel_supermarket => 'supermarkt';

  @override
  String get purchase_channel_specialty_store => 'filiaalwinkel';

  @override
  String get purchase_channel_secondhand_market => 'tweedehandsmarkt';

  @override
  String get purchase_channel_other => 'Overig';

  @override
  String get default_category => 'Overig';

  @override
  String get default_purchase_channel => 'online winkel';

  @override
  String get item_category => 'Itemclassificatie';

  @override
  String get custom_category => 'Aangepaste categorie';

  @override
  String get backup_data => 'Gegevens back-uppen';

  @override
  String get backup_data_description =>
      'Alles gegevens (inclusief afbeeldingen) verpakken als een ZIP-bestand voor back-up';

  @override
  String get backup_all_data => 'Alle gegevens back-uppen';

  @override
  String get backup_success => 'Back-up geslaagd';

  @override
  String backup_failed(String error) {
    return 'Back-up mislukt: $error';
  }

  @override
  String get restore_data => 'Gegevens herstellen';

  @override
  String get restore_data_description =>
      'Herstel alle gegevens van het ZIP-back-upbestand';

  @override
  String get export_data => 'Gegevens exporteren';

  @override
  String get export_data_description =>
      'Exporteren naar CSV-, TXT- en SQL-formaat';

  @override
  String get import_data => 'Gegevens importeren';

  @override
  String get import_data_description =>
      'Gegevens importeren uit CSV-, TXT- en SQL-bestanden';

  @override
  String get alert_settings_description =>
      'Kalenderherinneringen en app-pushmeldingsinstellingen';

  @override
  String get about => 'Over';

  @override
  String get about_description => 'App-informatie en versie';

  @override
  String get select_backup_file_first => 'Selecteer eerst het back-upbestand';

  @override
  String get confirm_restore => 'Bevestig herstel';

  @override
  String get confirm_restore_message =>
      'Het herstellen van een back-up zal alle bestaande gegevens wissen en vervangen door de back-upgegevens. Deze actie kan niet ongedaan worden gemaakt. Weet u zeker dat u wilt doorgaan?';

  @override
  String get confirm_again => 'Opnieuw bevestigen';

  @override
  String get confirm_restore_warning =>
      'Weet u zeker dat u alle bestaande gegevens wilt wissen en een back-up wilt herstellen? Deze actie kan niet ongedaan worden gemaakt!';

  @override
  String get confirm_restore_button => 'Bevestigen herstel';

  @override
  String restore_success(int count) {
    return 'Herstel succesvol, in totaal $count items';
  }

  @override
  String restore_failed(String error) {
    return 'Herstel mislukt: $error';
  }

  @override
  String get select_backup_file => 'Selecteer back-upbestand';

  @override
  String get restore_backup => 'Back-up herstellen';

  @override
  String selected_file(String filename) {
    return 'Geselecteerd bestand: $filename';
  }

  @override
  String get export_success => 'Gegevens succesvol geëxporteerd';

  @override
  String export_failed(String error) {
    return 'Export mislukt: $error';
  }

  @override
  String get format_csv => 'CSV';

  @override
  String get format_txt => 'TXT';

  @override
  String get format_sql => 'SQL';

  @override
  String get duplicate_data_handling => 'Verwerking van dubbele gegevens';

  @override
  String get duplicate_data_detected =>
      'Er zijn dubbele gegevens gedetecteerd, kies een verwerkingsmethode:';

  @override
  String get skip => 'Overslaan';

  @override
  String get overwrite => 'bedekken';

  @override
  String get skip_all => 'Alles overslaan';

  @override
  String get overwrite_all => 'volledige dekking';

  @override
  String get select_import_format_first => 'Selecteer eerst het importformaat';

  @override
  String get confirm_import => 'Import bevestigen';

  @override
  String get confirm_import_message =>
      'Het importeren van gegevens zal de bestaande gegevens overschrijven, deze handeling kan niet ongedaan worden gemaakt. Weet u zeker dat u wilt doorgaan?';

  @override
  String import_success(int count) {
    return 'Gegevens succesvol geïmporteerd, in totaal $count items geïmporteerd';
  }

  @override
  String import_failed(String error) {
    return 'Import mislukt: $error';
  }

  @override
  String get select_file => 'Bestand kiezen';

  @override
  String get no_data => 'Geen gegevens';

  @override
  String get no_data_description =>
      'Er zijn momenteel geen gegevens, klik op de onderstaande knop om het eerste record toe te voegen!';

  @override
  String get load_failed => 'Laden mislukt';

  @override
  String get load_failed_description =>
      'Gegevens laden mislukt, controleer de netwerkverbinding en probeer het opnieuw';

  @override
  String get retry => 'Opnieuw proberen';

  @override
  String get network_connection_failed => 'Verbinding met netwerk mislukt';

  @override
  String get network_connection_failed_description =>
      'Controleer de netwerkverbinding en probeer het opnieuw';

  @override
  String get no_results => 'Geen resultaten gevonden';

  @override
  String get no_results_description =>
      'Probeer andere zoekwoorden te gebruiken';

  @override
  String get clear_search => 'Zoekopdracht wissen';

  @override
  String get insufficient_permission => 'Onvoldoende machtigingen';

  @override
  String get insufficient_permission_description =>
      'U heeft de relevante machtigingen nodig om deze functie te gebruiken';

  @override
  String get request_permission => 'Toestemming aanvragen';

  @override
  String get app_info => 'App-informatie';

  @override
  String get version => 'versie';

  @override
  String get developer => 'Ontwikkelaar';

  @override
  String get device_info => 'Apparaatgegevens';

  @override
  String get device_model => 'Apparaatmodel';

  @override
  String get brand => 'merk';

  @override
  String get device_name => 'Apparaatnaam';

  @override
  String get product => 'Product';

  @override
  String get hardware => 'hardware';

  @override
  String get android_version => 'Android-versie';

  @override
  String get sdk_version => 'SDK-versie';

  @override
  String get system_name => 'Systeemnaam';

  @override
  String get operating_system => 'besturingssysteem';

  @override
  String get system_version => 'Systeemversie';

  @override
  String get dart_version => 'Dart-versie';

  @override
  String get device_identifier => 'Apparaatid';

  @override
  String get computer_name => 'Computernaam';

  @override
  String get build_number => 'versienummer';

  @override
  String error_getting_device_info(String error) {
    return 'Kan apparaatinformatie niet ophalen: $error';
  }

  @override
  String get features => 'Functie-introductie';

  @override
  String get app_description => 'Slimme voorwerpenbeheerapplicatie';

  @override
  String get app_description_detail =>
      'Helpt u de vervaldatum, garantiedatum en andere informatie van uw spullen te beheren en biedt slimme herinneringsfuncties.';

  @override
  String get consumable => 'Verbruiksartikelen';

  @override
  String get durable => 'duurzaam product';

  @override
  String get sort => 'Sorteren';

  @override
  String get name_asc => 'Naam oplopend';

  @override
  String get name_desc => 'Naam aflopende volgorde';

  @override
  String get date_asc => 'Oplopende datum';

  @override
  String get date_desc => 'Datum aflopende volgorde';

  @override
  String get price_asc => 'Prijs oplopend';

  @override
  String get price_desc => 'Prijs aflopend';

  @override
  String get quantity_asc => 'Oplopende hoeveelheid';

  @override
  String get quantity_desc => 'Aantal aflopende volgorde';

  @override
  String get total_price_asc => 'Totale prijs oplopend';

  @override
  String get total_price_desc => 'Totale prijs aflopend';

  @override
  String get clear_all_filters => 'Alle filters wissen';

  @override
  String get scan_barcode => 'Scan om op te slaan';

  @override
  String get search_items => 'Zoek items...';

  @override
  String get no_items => 'Geen items';

  @override
  String get no_items_description =>
      'Klik op de onderstaande knop om het eerste item toe te voegen';

  @override
  String get expired => 'Verlopen';

  @override
  String get expiring_soon => 'Bijna verlopen';

  @override
  String get warranty_expired => 'De garantie is verlopen';

  @override
  String get warranty_expiring_soon => 'De garantie verloopt binnenkort';

  @override
  String days_remaining(int count) {
    return 'Nog $count dagen';
  }

  @override
  String expired_days_ago(int count) {
    return 'Verlopen sinds $count dagen';
  }

  @override
  String get delete_item => 'Verwijder item';

  @override
  String delete_item_confirm(String name) {
    return 'Weet u zeker dat u \"$name\" wilt verwijderen?';
  }

  @override
  String get item_deleted => 'Item is verwijderd';

  @override
  String get failed_to_delete => 'Verwijderen mislukt';

  @override
  String failed_to_delete_message(String error) {
    return 'Kan item niet verwijderen: $error';
  }

  @override
  String get date_range_filter => 'Datumreeksfilter';

  @override
  String get price_range_filter => 'Prijsbereik filter';

  @override
  String get my_items => 'Mijn spullen';

  @override
  String get click_fab_to_add_item =>
      'Klik op de knop rechtsonder om een item toe te voegen';

  @override
  String get confirm_delete => 'Bevestigen verwijderen';

  @override
  String get filter_options => 'Filteropties';

  @override
  String get filter_by_type_category_location =>
      'Filter items op type, categorie en locatie';

  @override
  String categories_count(int count) {
    return '$count categorieën';
  }

  @override
  String get all_categories => 'Alle categorieën';

  @override
  String get no_category_data => 'Geen gecategoriseerde gegevens';

  @override
  String get storage_location => 'Opslaglocatie';

  @override
  String locations_count(int count) {
    return '$count locaties';
  }

  @override
  String get all_locations => 'Alle locaties';

  @override
  String get no_location_data => 'Geen locatiedata beschikbaar';

  @override
  String get date_range => 'dateringsbereik';

  @override
  String get select_date_range => 'Selecteer datumbereik';

  @override
  String get price_range => 'Prijsbereik';

  @override
  String get unit_price_range => 'Prijsbereik per eenheid';

  @override
  String get min_unit_price => 'Minimumprijs';

  @override
  String get max_unit_price => 'hoogste eenheidsprijs';

  @override
  String get total_price_range => 'Totale prijsklasse';

  @override
  String get min_total_price => 'Laagste totale prijs';

  @override
  String get max_total_price => 'Maximum totale prijs';

  @override
  String get clear_price_filter => 'Prijsfilter wissen';

  @override
  String get place_barcode_in_frame =>
      'Plaats de barcode binnen het kader om te scannen';

  @override
  String get item_already_exists => 'Het product bestaat al';

  @override
  String barcode_with_value(String barcode) {
    return 'Streepjescode: $barcode';
  }

  @override
  String name_with_value(String name) {
    return 'Naam: $name';
  }

  @override
  String category_with_value(String category) {
    return 'Categorie: $category';
  }

  @override
  String current_quantity_with_value(String quantity, String unit) {
    return 'Huidig aantal: $quantity$unit';
  }

  @override
  String get please_select_operation => 'Selecteer een actie:';

  @override
  String get outbound => 'Uit voorraad';

  @override
  String get inbound => 'In voorraad opnemen';

  @override
  String get inbound_quantity => 'Inkoophoeveelheid';

  @override
  String get outbound_quantity => 'Uitgaande hoeveelheid';

  @override
  String get quantity => 'hoeveelheid';

  @override
  String get enter_inbound_quantity => 'Voer de voorraadhoeveelheid in';

  @override
  String get enter_outbound_quantity => 'Voer de uitgaande hoeveelheid in';

  @override
  String delete_item_confirm_with_irreversible(String name) {
    return 'Weet u zeker dat u „$name” wilt verwijderen? Deze actie kan niet ongedaan worden gemaakt.';
  }

  @override
  String get database_reset =>
      'De database is gereset en de tabelstructuur wordt opnieuw aangemaakt';

  @override
  String database_reset_error(String error) {
    return 'Fout bij het opnieuw instellen van de database: $error';
  }

  @override
  String mock_data_init_failed(String error) {
    return 'Simulatiedatainitialisatie mislukt: $error';
  }

  @override
  String get solution_steps => 'Oplossing:';

  @override
  String get solution_step_1 =>
      '1. De app deïnstalleren en opnieuw installeren';

  @override
  String get solution_step_2 => '2. Of wis de app-gegevens';

  @override
  String get solution_step_3 =>
      '3. Of stel resetDatabaseOnStart in op true en voer het opnieuw uit';

  @override
  String notification_service_init_failed(String error) {
    return 'Herinneringsservice initialisatie mislukt: $error';
  }

  @override
  String check_calendar_account_failed(String error) {
    return 'Het controleren van het kalenderaccount is mislukt: $error';
  }

  @override
  String create_calendar_failed(String error) {
    return 'Mislukte het aanmaken van de kalender: $error';
  }

  @override
  String add_calendar_event_failed(String error) {
    return 'Het toevoegen van een agendagebeurtenis is mislukt: $error';
  }

  @override
  String delete_calendar_event_failed(String error) {
    return 'Het verwijderen van de kalendergebeurtenis is mislukt: $error';
  }

  @override
  String set_permission_message_failed(String error) {
    return 'Melding voor machtigingsinstelling mislukt: $error';
  }

  @override
  String mock_data_init_success(int count) {
    return 'Er is succesvol $count simulatiedata geïnitialiseerd';
  }

  @override
  String database_has_data(int count) {
    return 'De database bevat al $count records, het initialiseren van gesimuleerde gegevens wordt overgeslagen';
  }

  @override
  String get database_structure_mismatch =>
      'Het kan zijn dat de database-structuur niet overeenkomt, het wordt aanbevolen om de applicatiegegevens te wissen of de applicatie opnieuw te installeren';

  @override
  String get old_database_deleted => 'Oude databasebestanden zijn verwijderd';

  @override
  String get backup_data_empty => 'Back-upgegevens zijn leeg';

  @override
  String get backup_file_not_found => 'Back-upbestand bestaat niet';

  @override
  String file_not_utf8(String error) {
    return 'Het bestand is geen geldig UTF-8-formaat. Zorg ervoor dat het bestand is opgeslagen met UTF-8-codering. Foutdetails: $error';
  }

  @override
  String file_not_found(String filePath) {
    return 'Bestand bestaat niet: $filePath';
  }

  @override
  String file_empty(String filePath) {
    return 'Het bestand is leeg: $filePath';
  }

  @override
  String get file_content_empty =>
      'De inhoud van het bestand is leeg na decodering, mogelijk is de codering niet compatibel';

  @override
  String field_cannot_be_empty(String fieldName) {
    return '$fieldName mag niet leeg zijn';
  }

  @override
  String field_min_length(String fieldName, int minLength) {
    return '$fieldName lengte mag niet minder dan $minLength tekens zijn';
  }

  @override
  String field_max_length(String fieldName, int maxLength) {
    return '$fieldName mag niet meer dan $maxLength tekens bevatten';
  }

  @override
  String field_invalid_email(String fieldName) {
    return 'Voer een geldig $fieldName-adres in';
  }

  @override
  String field_invalid_number(String fieldName, String numberType) {
    return '$fieldName moet $numberType zijn';
  }

  @override
  String field_min_value(String fieldName, double min) {
    return '$fieldName mag niet kleiner zijn dan $min';
  }

  @override
  String field_max_value(String fieldName, double max) {
    return '$fieldName mag niet groter zijn dan $max';
  }

  @override
  String field_positive_integer(String fieldName) {
    return '$fieldName moet een positief geheel getal zijn';
  }

  @override
  String field_greater_than_zero(String fieldName) {
    return '$fieldName moet groter zijn dan 0';
  }

  @override
  String field_positive_number(String fieldName) {
    return '$fieldName moet een positief getal zijn';
  }

  @override
  String field_invalid_date(String fieldName) {
    return 'Voer alstublieft een geldige $fieldName in';
  }

  @override
  String field_date_not_past(String fieldName) {
    return '$fieldName mag geen datum in het verleden zijn';
  }

  @override
  String field_date_not_before(String fieldName, String minDate) {
    return '$fieldName mag niet eerder zijn dan $minDate';
  }

  @override
  String field_date_not_after(String fieldName, String maxDate) {
    return '$fieldName mag niet later zijn dan $maxDate';
  }

  @override
  String field_invalid_value(String fieldName) {
    return 'Voer alstublieft een geldige $fieldName in';
  }

  @override
  String password_min_length(String fieldName) {
    return '$fieldName lengte mag niet minder dan 8 tekens zijn';
  }

  @override
  String password_uppercase_required(String fieldName) {
    return '$fieldName moet ten minste één hoofdletter bevatten';
  }

  @override
  String password_lowercase_required(String fieldName) {
    return '$fieldName moet ten minste één kleine letter bevatten';
  }

  @override
  String password_digit_required(String fieldName) {
    return '$fieldName moet minimaal één cijfer bevatten';
  }

  @override
  String password_special_char_required(String fieldName) {
    return '$fieldName moet ten minste één speciaal teken bevatten';
  }

  @override
  String get passwords_not_match =>
      'De twee ingevoerde wachtwoorden komen niet overeen';

  @override
  String get item_name_cannot_be_empty =>
      'De naam van het artikel mag niet leeg zijn';

  @override
  String name_max_length(int maxLength) {
    return 'De naam mag niet meer dan $maxLength tekens bevatten';
  }

  @override
  String quantity_min(int minQuantity) {
    return 'De hoeveelheid mag niet kleiner zijn dan $minQuantity';
  }

  @override
  String quantity_max(int maxQuantity) {
    return 'De hoeveelheid mag niet meer dan $maxQuantity zijn';
  }

  @override
  String get unit_price_not_negative => 'Eenheidsprijs mag niet negatief zijn';

  @override
  String unit_price_max(double maxUnitPrice) {
    return 'De eenheidsprijs mag niet hoger zijn dan $maxUnitPrice';
  }

  @override
  String get set_production_expiry_for_validity =>
      'Stel alstublieft de productiedatum en houdbaarheidsdatum in om de geldigheidsduur automatisch te berekenen';

  @override
  String get set_purchase_warranty_for_validity =>
      'Stel de aankoopdatum en houdbaarheidsdatum in om de garantie automatisch te berekenen';

  @override
  String get calendar_account_creation_failed =>
      'Kan geen kalenderaccount aanmaken, controleer de systeemkalenderinstellingen';

  @override
  String get test_notification => 'Testmelding';

  @override
  String get test_notification_description =>
      'Dit is een testmelding om de lokale herinneringsfunctie te verifiëren';

  @override
  String get day_unit => 'hemel';

  @override
  String days_with_value(int days) {
    return '$days dagen';
  }

  @override
  String get item_saved => 'Item is opgeslagen';

  @override
  String get item_updated => 'Het item is bijgewerkt';

  @override
  String get item_added => 'Item is toegevoegd';

  @override
  String get save_success => 'Succesvol opgeslagen';

  @override
  String get update_success => 'Update geslaagd';

  @override
  String get delete_success => 'Verwijderen geslaagd';

  @override
  String get save_failed => 'Opslaan mislukt';

  @override
  String get update_failed => 'Update mislukt';

  @override
  String get delete_failed => 'Verwijderen mislukt';

  @override
  String get test_calendar_event => 'Testkalenderevenement';

  @override
  String get test_calendar_event_description =>
      'Dit is een testgebeurtenis om de kalenderfunctie te verifiëren';

  @override
  String get in_app => 'in-app';

  @override
  String get enable_alert => 'Inschakelen van vervaldatumherinnering';

  @override
  String get alert_method => 'Herinneringsmethode';

  @override
  String get alert_method_in_app => 'Alleen binnen de app';

  @override
  String get alert_method_calendar => 'Alleen kalender';

  @override
  String get alert_method_both => 'beide';

  @override
  String get alert_days_before => 'Aantal dagen van tevoren herinneren';

  @override
  String get use_global_setting => 'Gebruik globale instellingen';

  @override
  String get barcode_label => 'Streepjescode';

  @override
  String get name_label => 'Naam';

  @override
  String get category_label => 'Categorie';

  @override
  String get current_quantity => 'Huidige hoeveelheid';

  @override
  String get select_operation => 'Selecteer een actie';

  @override
  String get unit => 'eenheid';

  @override
  String get custom_unit => 'Aangepaste eenheid';

  @override
  String get enter_unit => 'Voer alstublieft de eenheid in';

  @override
  String get custom_location => 'Aangepaste locatie';

  @override
  String get enter_storage_location => 'Voer de opslaglocatie in';

  @override
  String get scan => 'Scan de QR-code';

  @override
  String get scan_to_stock => 'Scan om op te slaan';

  @override
  String get item_categories => 'Itemclassificatie';

  @override
  String get storage_locations => 'Opslaglocatie';

  @override
  String get place_barcode_in_frame_to_scan =>
      'Plaats de barcode binnen het kader om te scannen';

  @override
  String get barcode => 'Streepjescode';

  @override
  String get enter_barcode_or_scan =>
      'Voer de streepjescode in of scan de code';

  @override
  String get basic_information => 'Basisinformatie';

  @override
  String get item_name => 'Itemnaam';

  @override
  String get enter_item_name => 'Voer de naam van het item in';

  @override
  String get enter_category_name => 'Voer de categorienaam in';

  @override
  String item_increased(String itemName, String quantity, String unit) {
    return 'Er is $itemName $quantity$unit toegevoegd';
  }

  @override
  String item_decreased(String itemName, String quantity, String unit) {
    return 'Al verminderd $itemName $quantity$unit';
  }

  @override
  String get unsaved_changes => 'Niet-opgeslagen wijzigingen';

  @override
  String get unsaved_changes_message =>
      'U heeft niet-opgeslagen wijzigingen, kies alstublieft een actie:';

  @override
  String get discard => 'opgeven';

  @override
  String get unit_piece => 'stuk';

  @override
  String get unit_item => 'stuk';

  @override
  String get unit_box => 'doos';

  @override
  String get unit_package => 'tas';

  @override
  String get unit_bottle => 'fles';

  @override
  String get unit_carton => 'doos';

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
  String get unit_cm => 'cm';

  @override
  String get quantity_label => 'hoeveelheid';

  @override
  String get unit_price_label => 'Stuksprijs';

  @override
  String get currency_label => 'Valuta';

  @override
  String get total_price_label => 'Totale prijs:';

  @override
  String get storage_location_label => 'Opslaglocatie';

  @override
  String get item_properties => 'Itemeigenschappen';

  @override
  String get expiry_date_label => 'Geldigheidsduur';

  @override
  String get warranty_expiry_date_label => 'Garantie vervaldatum';

  @override
  String get production_date_label => 'Productiedatum';

  @override
  String get purchase_date_label => 'Aankoopdatum';

  @override
  String auto_calculated_from(String dateType) {
    return 'Automatisch berekenen op basis van $dateType en houdbaarheidsdatum';
  }

  @override
  String get auto_calculated => 'Automatisch berekenen';

  @override
  String get images_label => 'afbeelding';

  @override
  String get notes_label => 'Opmerking';

  @override
  String get add_notes_hint => 'Opmerkingen toevoegen (optioneel)';

  @override
  String get year_label => 'jaar';

  @override
  String get month_label => 'maan';

  @override
  String get day_label => 'hemel';

  @override
  String selected_count(int count) {
    return '$count items geselecteerd';
  }

  @override
  String get select_all => 'Alles selecteren';

  @override
  String get deselect_all => 'Alles de-selecteren';

  @override
  String get batch_change_location => 'Batchwissel van opslaglocatie';

  @override
  String confirm_delete_selected(int count) {
    return 'Weet u zeker dat u de geselecteerde $count items wilt verwijderen?';
  }

  @override
  String deleted_count_items(int count) {
    return '$count items verwijderd';
  }

  @override
  String get no_storage_location_available =>
      'Er zijn momenteel geen opslaglocaties beschikbaar';

  @override
  String get batch_change_location_title => 'Batchwissel van opslaglocatie';

  @override
  String moved_count_items_to_location(int count, String location) {
    return '$count items zijn verplaatst naar $location';
  }

  @override
  String get operation_type_create => 'invoeren';

  @override
  String get operation_type_update => 'Bewerken';

  @override
  String get operation_type_delete => 'Verwijderen';

  @override
  String get operation_type_inbound => 'In voorraad opnemen';

  @override
  String get operation_type_outbound => 'Uit voorraad';

  @override
  String export_failed_message(String error) {
    return 'Export mislukt: $error';
  }

  @override
  String get clear_logs => 'Logboek wissen';

  @override
  String get confirm_clear_logs =>
      'Weet u zeker dat u alle activiteitslogboeken wilt wissen? Deze actie kan niet ongedaan worden gemaakt.';

  @override
  String get logs_cleared => 'Logboek is geleegd';

  @override
  String get operation_logs_title => 'Activiteitenlog';

  @override
  String get export_logs => 'Log exporteren';

  @override
  String get clear_logs_tooltip => 'Logboek wissen';

  @override
  String get no_operation_logs => 'Geen bedieningslogboek';

  @override
  String get log_item_label => 'Item:';

  @override
  String get log_category_label => 'Categorie:';

  @override
  String get log_type_label => 'Type:';

  @override
  String get log_quantity_label => 'Aantal:';

  @override
  String get log_unit_price_label => 'Eenheidsprijs:';

  @override
  String get log_total_price_label => 'Totale prijs:';

  @override
  String get log_expiry_date_label => 'Vervaldatum:';

  @override
  String get log_warranty_date_label => 'Garantieperiode:';

  @override
  String get log_purchase_date_label => 'Aankoopdatum:';

  @override
  String get log_production_date_label => 'Productiedatum:';

  @override
  String get log_shelf_life_label => 'Houdbaarheidsdatum:';

  @override
  String get log_storage_location_label => 'Opslaglocatie:';

  @override
  String get log_barcode_label => 'Streepjescode:';

  @override
  String get log_notes_label => 'Opmerking:';

  @override
  String get log_alert_label => 'Waarschuwing:';

  @override
  String get log_alert_days_label => 'Waarschuwing dagen:';

  @override
  String get log_quantity_change_label => 'Veranderingen in hoeveelheid:';

  @override
  String get log_field_changes_label => 'Veld bewerken:';

  @override
  String get log_not_set => 'Niet ingesteld';

  @override
  String get log_empty => 'leeg';

  @override
  String get log_alert_enabled => 'Openen';

  @override
  String get log_alert_disabled => 'Sluiten';

  @override
  String get operation_logs_menu => 'Activiteitenlog';

  @override
  String get operation_logs_description =>
      'Bekijk en herstel bewerkingsgeschiedenis';

  @override
  String operation_failed_message(String error) {
    return 'Operatie mislukt: $error';
  }

  @override
  String get no_date => 'Datumloos';

  @override
  String get shelf_life_months_suffix => 'maanden';

  @override
  String get shelf_life_days_suffix => 'hemel';

  @override
  String get alert_days_suffix => 'hemel';

  @override
  String get unknown => 'onbekend';

  @override
  String get developer_name => 'Leo';

  @override
  String get log_operation_date_label => 'Verwerkingsdatum:';

  @override
  String get uncategorized => 'Ongecategoriseerd';

  @override
  String get no_location => 'Geen locatie';

  @override
  String get item_category_cannot_be_empty =>
      'De artikelcategorie mag niet leeg zijn';

  @override
  String get storage_location_cannot_be_empty =>
      'De opslaglocatie mag niet leeg zijn';

  @override
  String get created_at_asc => 'Toevoegingstijd oplopend sorteren';

  @override
  String get created_at_desc => 'Toegevoegd datum aflopend';

  @override
  String get location_management => 'Magazijnbeheer';

  @override
  String get private_warehouses => 'Privérepository';

  @override
  String get public_warehouses => 'publieke bibliotheek';

  @override
  String get is_public_warehouse => 'publieke bibliotheek';

  @override
  String get public_warehouse_desc =>
      'De openbare opslag heeft geen beheerder, het in- en uitboeken vereist het invullen van de operator';

  @override
  String get manager => 'beheerder';

  @override
  String get not_set => 'Niet ingesteld';

  @override
  String get edit_location => 'Bibliotheek bewerken';

  @override
  String get location_name => 'Bibliotheeknaam';

  @override
  String get manager_name => 'Beheerdersnaam';

  @override
  String get enter_manager_name => 'Voer de naam van de beheerder in';

  @override
  String get manager_name_required =>
      'De naam van de beheerder mag niet leeg zijn';

  @override
  String delete_location_confirm(String name) {
    return 'Weet u zeker dat u de bibliotheek \"$name\" wilt verwijderen?';
  }

  @override
  String get delete_location_has_items =>
      'Er bevinden zich nog items in deze bibliotheek, verwijderen is niet mogelijk';

  @override
  String get default_manager => 'Standaardbeheerder';

  @override
  String get default_manager_desc =>
      'Standaardbeheerder bij het aanmaken van een nieuwe privérepository';

  @override
  String get enter_default_manager => 'Voer de standaard beheerdersnaam in';

  @override
  String get operator_name => 'Naam van de operator';

  @override
  String get enter_operator_name => 'Voer de naam van de operator in';

  @override
  String get operator_name_required =>
      'De naam van de operator mag niet leeg zijn';

  @override
  String get no_manager => 'Geen beheerder';

  @override
  String get log_operator_label => 'Operator:';

  @override
  String get outbound_quantity_exceeds_current =>
      'De uit te leveren hoeveelheid mag de huidige voorraad niet overschrijden';
}
