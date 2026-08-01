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
  String get system_version => 'Systeemversie';

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
  String item_increased(String name, String quantity, String unit) {
    return 'Er is $name $quantity$unit toegevoegd';
  }

  @override
  String delete_item_confirm_with_irreversible(String name) {
    return 'Weet u zeker dat u „$name” wilt verwijderen? Deze actie kan niet ongedaan worden gemaakt.';
  }

  @override
  String item_decreased(String name, String quantity, String unit) {
    return 'Al verminderd $name $quantity$unit';
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
}
