// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get app_name => 'Aufbewahrungsort';

  @override
  String get cancel => 'Abbrechen';

  @override
  String get confirm => 'Bestätigen';

  @override
  String get save => 'Speichern';

  @override
  String get delete => 'Löschen';

  @override
  String get edit => 'Bearbeiten';

  @override
  String get add => 'Hinzufügen';

  @override
  String get search => 'Suchen';

  @override
  String get settings => 'Einstellungen';

  @override
  String get language_settings => 'Spracheinstellungen';

  @override
  String get language_settings_description =>
      'Anzeige Sprache der Anwendung einstellen';

  @override
  String get system_default => 'Systemstandard';

  @override
  String get use_system_language => 'Systemsprache verwenden';

  @override
  String get language_change_hint =>
      'Die Sprachänderung wird nach dem Neustart der Anwendung wirksam.';

  @override
  String get back => 'Zurück';

  @override
  String get next => 'Weiter';

  @override
  String get done => 'Fertig';

  @override
  String get loading => 'Wird geladen...';

  @override
  String get error => 'Fehler';

  @override
  String get success => 'Erfolg';

  @override
  String get warning => 'Warnung';

  @override
  String get info => 'Information';

  @override
  String get select_alert_days => 'Erinnerungstage auswählen';

  @override
  String get custom => 'Benutzerdefiniert';

  @override
  String custom_days(int days) {
    return 'Benutzerdefiniert ($days Tage)';
  }

  @override
  String current_selection(int days) {
    return 'Derzeit ausgewählt: $days Tage';
  }

  @override
  String alert_days_range(int min, int max) {
    return 'Erinnerungszeitraum: $min-$max Tage';
  }

  @override
  String get enter_days => 'Bitte geben Sie die Anzahl der Erinnerungstage ein';

  @override
  String get days => 'Anzahl der Tage';

  @override
  String enter_valid_days(int min, int max) {
    return 'Bitte geben Sie eine Zahl zwischen $min und $max ein';
  }

  @override
  String get alert_settings => 'Warnungseinstellungen';

  @override
  String get calendar_settings => 'Kalendereinstellungen';

  @override
  String get calendar_sync => 'Kalender synchronisieren';

  @override
  String get calendar_sync_desc =>
      'Nach dem Aktivieren werden Kalenderberechtigungen angefordert';

  @override
  String get add_test_calendar_event => 'Test-Kalendereintrag hinzufügen';

  @override
  String get enable_calendar_sync_first =>
      'Bitte schalten Sie zuerst den Schalter \'Kalendersynchronisierung\' ein';

  @override
  String get app_alert_settings => 'App-Erinnerungseinstellungen';

  @override
  String get local_alerts => 'Lokale Erinnerungen';

  @override
  String get local_alerts_desc =>
      'Nach dem Einschalten erhalten Sie abgelaufene Erinnerungen in der App';

  @override
  String get send_test_notification => 'Testbenachrichtigung senden';

  @override
  String get enable_local_alerts_first =>
      'Bitte schalten Sie zuerst den Schalter \"Lokale Benachrichtigung\" ein';

  @override
  String get alert_days_settings => 'Einstellung der Erinnerungstage';

  @override
  String get advance_alert_days => 'Tage im Voraus benachrichtigen';

  @override
  String get advance_alert_days_desc =>
      'Legen Sie fest, wie viele Tage im Voraus Sie an das Ablaufdatum oder das Garantieende eines Artikels erinnert werden möchten';

  @override
  String get calendar_permission_request => 'Kalenderberechtigungsanforderung';

  @override
  String get calendar_permission_desc =>
      'Der Zugriff auf den Kalender wird benötigt, um Erinnerungen für Elemente zu synchronisieren. Erlauben?';

  @override
  String get allow => 'Erlauben';

  @override
  String get calendar_permission_granted =>
      'Kalenderberechtigung wurde erteilt, Kalendersynchronisierung ist aktiviert';

  @override
  String get calendar_permission_denied =>
      'Kalenderberechtigungen wurden verweigert, Kalender-Synchronisierung kann nicht aktiviert werden';

  @override
  String get calendar_permission_permanently_denied =>
      'Berechtigung dauerhaft verweigert';

  @override
  String get calendar_permission_permanently_denied_desc =>
      'Kalenderberechtigung wurde dauerhaft verweigert. Bitte aktivieren Sie die Berechtigung manuell in den Systemeinstellungen.';

  @override
  String get go_to_settings => 'Zu den Einstellungen';

  @override
  String get calendar_account_failed =>
      'Kalenderberechtigungen wurden erteilt, aber es kann kein Kalenderkonto erstellt werden. Bitte überprüfen Sie die Systemeinstellungen des Kalenders';

  @override
  String get calendar_account_created =>
      'Kalenderberechtigungen wurden erteilt, lokales Kalenderkonto wurde erstellt';

  @override
  String get calendar_account_creating =>
      'Kalenderkonto erfolgreich erstellt, aber das System benötigt möglicherweise einige Zeit, um wirksam zu werden';

  @override
  String get test_calendar_event_added =>
      'Test-Kalenderereignis erfolgreich hinzugefügt';

  @override
  String get test_calendar_event_failed =>
      'Hinzufügen eines Testkalendereintrags fehlgeschlagen, bitte überprüfen Sie die Kalendereinstellungen';

  @override
  String get calendar_permission_required =>
      'Kalenderberechtigung erforderlich, um Testereignisse hinzuzufügen';

  @override
  String get test_notification_sent => 'Testbenachrichtigung wurde gesendet';

  @override
  String test_notification_failed(String error) {
    return 'Senden der Testbenachrichtigung fehlgeschlagen: $error';
  }

  @override
  String get notification_permission_required =>
      'Benachrichtigungsberechtigungen sind erforderlich, um lokale Erinnerungen zu aktivieren';

  @override
  String operation_failed(String error) {
    return 'Operation fehlgeschlagen: $error';
  }

  @override
  String get notification_channel_name => 'Artikel-Warnbenachrichtigung';

  @override
  String get notification_channel_description =>
      'Erinnerung an abgelaufene oder über die Garantie hinausgehende Artikel';

  @override
  String get item_category_food => 'Lebensmittel';

  @override
  String get item_category_daily_necessities => 'Alltagsartikel';

  @override
  String get item_category_cosmetics => 'Kosmetika';

  @override
  String get item_category_medicine => 'Medikamente';

  @override
  String get item_category_electronics => 'Elektronikprodukte';

  @override
  String get item_category_furniture => 'Möbel';

  @override
  String get item_category_clothing => 'Kleidung';

  @override
  String get item_category_books => 'Bücher';

  @override
  String get item_category_other => 'Andere';

  @override
  String get purchase_channel_online_mall => 'Online-Shop';

  @override
  String get purchase_channel_physical_store => 'Einzelhandelsgeschäft';

  @override
  String get purchase_channel_supermarket => 'Supermarkt';

  @override
  String get purchase_channel_specialty_store => 'Fachgeschäft';

  @override
  String get purchase_channel_secondhand_market => 'Second-Hand-Markt';

  @override
  String get purchase_channel_other => 'Andere';

  @override
  String get default_category => 'Andere';

  @override
  String get default_purchase_channel => 'Online-Shop';

  @override
  String get item_category => 'Artikelkategorie';

  @override
  String get custom_category => 'Benutzerdefinierte Kategorie';

  @override
  String get backup_data => 'Daten sichern';

  @override
  String get backup_data_description =>
      'Alle Daten (einschließlich Bilder) in eine ZIP-Datei zum Sichern verpacken';

  @override
  String get backup_all_data => 'Alle Daten sichern';

  @override
  String get backup_success => 'Sicherung erfolgreich';

  @override
  String backup_failed(String error) {
    return 'Sicherung fehlgeschlagen: $error';
  }

  @override
  String get restore_data => 'Daten wiederherstellen';

  @override
  String get restore_data_description =>
      'Alle Daten aus der ZIP-Sicherungsdatei wiederherstellen';

  @override
  String get export_data => 'Daten exportieren';

  @override
  String get export_data_description =>
      'Als CSV-, TXT- oder SQL-Format exportieren';

  @override
  String get import_data => 'Daten importieren';

  @override
  String get import_data_description =>
      'Daten aus CSV-, TXT- und SQL-Dateien importieren';

  @override
  String get alert_settings_description =>
      'Kalendererinnerungen und App-Push-Benachrichtigungseinstellungen';

  @override
  String get about => 'Über';

  @override
  String get about_description => 'Anwendungsinformationen und Version';

  @override
  String get select_backup_file_first =>
      'Bitte wählen Sie zuerst die Sicherungsdatei';

  @override
  String get confirm_restore => 'Wiederherstellung bestätigen';

  @override
  String get confirm_restore_message =>
      'Das Wiederherstellen des Backups wird alle bestehenden Daten löschen und durch die Backup-Daten ersetzen. Dieser Vorgang kann nicht rückgängig gemacht werden. Möchten Sie fortfahren?';

  @override
  String get confirm_again => 'Nochmals bestätigen';

  @override
  String get confirm_restore_warning =>
      'Sind Sie sicher, dass Sie alle vorhandenen Daten löschen und das Backup wiederherstellen möchten? Dieser Vorgang kann nicht rückgängig gemacht werden!';

  @override
  String get confirm_restore_button => 'Wiederherstellung bestätigen';

  @override
  String restore_success(int count) {
    return 'Wiederherstellung erfolgreich, insgesamt $count Artikel';
  }

  @override
  String restore_failed(String error) {
    return 'Wiederherstellung fehlgeschlagen: $error';
  }

  @override
  String get select_backup_file => 'Backup-Datei auswählen';

  @override
  String get restore_backup => 'Backup wiederherstellen';

  @override
  String selected_file(String filename) {
    return 'Ausgewählte Datei: $filename';
  }

  @override
  String get export_success => 'Datenexport erfolgreich';

  @override
  String export_failed(String error) {
    return 'Export fehlgeschlagen: $error';
  }

  @override
  String get format_csv => 'CSV';

  @override
  String get format_txt => 'TXT';

  @override
  String get format_sql => 'SQL';

  @override
  String get duplicate_data_handling => 'Duplikatdatenverarbeitung';

  @override
  String get duplicate_data_detected =>
      'Duplikatdaten erkannt, bitte wählen Sie die Bearbeitungsmethode:';

  @override
  String get skip => 'Überspringen';

  @override
  String get overwrite => 'Überschreiben';

  @override
  String get skip_all => 'Alle überspringen';

  @override
  String get overwrite_all => 'Alles abdecken';

  @override
  String get select_import_format_first =>
      'Bitte wählen Sie zuerst das Importformat';

  @override
  String get confirm_import => 'Import bestätigen';

  @override
  String get confirm_import_message =>
      'Das Importieren von Daten überschreibt die vorhandenen Daten, dieser Vorgang kann nicht rückgängig gemacht werden. Möchten Sie fortfahren?';

  @override
  String import_success(int count) {
    return 'Datenimport erfolgreich, insgesamt wurden $count Artikel importiert';
  }

  @override
  String import_failed(String error) {
    return 'Import fehlgeschlagen: $error';
  }

  @override
  String get select_file => 'Datei auswählen';

  @override
  String get no_data => 'Keine Daten';

  @override
  String get no_data_description =>
      'Derzeit liegen keine Daten vor. Klicken Sie auf die Schaltfläche unten, um den ersten Eintrag hinzuzufügen!';

  @override
  String get load_failed => 'Laden fehlgeschlagen';

  @override
  String get load_failed_description =>
      'Daten konnten nicht geladen werden, bitte überprüfen Sie Ihre Netzwerkverbindung und versuchen Sie es erneut';

  @override
  String get retry => 'Erneut versuchen';

  @override
  String get network_connection_failed => 'Netzwerkverbindung fehlgeschlagen';

  @override
  String get network_connection_failed_description =>
      'Bitte überprüfen Sie Ihre Netzwerkverbindung und versuchen Sie es erneut';

  @override
  String get no_results => 'Keine Ergebnisse gefunden';

  @override
  String get no_results_description =>
      'Versuchen Sie, mit anderen Schlüsselwörtern zu suchen';

  @override
  String get clear_search => 'Suche löschen';

  @override
  String get insufficient_permission => 'Unzureichende Berechtigungen';

  @override
  String get insufficient_permission_description =>
      'Für die Nutzung dieser Funktion sind entsprechende Berechtigungen erforderlich';

  @override
  String get request_permission => 'Berechtigung anfordern';

  @override
  String get app_info => 'Anwendungsinformationen';

  @override
  String get version => 'Version';

  @override
  String get developer => 'Entwickler';

  @override
  String get device_info => 'Geräteinformationen';

  @override
  String get device_model => 'Gerätemodell';

  @override
  String get brand => 'Marke';

  @override
  String get device_name => 'Gerätebezeichnung';

  @override
  String get product => 'Produkt';

  @override
  String get hardware => 'Hardware';

  @override
  String get android_version => 'Android-Version';

  @override
  String get sdk_version => 'SDK-Version';

  @override
  String get system_name => 'Systemname';

  @override
  String get system_version => 'Systemversion';

  @override
  String get device_identifier => 'Gerätekennzeichnung';

  @override
  String get computer_name => 'Computername';

  @override
  String get build_number => 'Versionsnummer';

  @override
  String error_getting_device_info(String error) {
    return 'Gerätedaten können nicht abgerufen werden: $error';
  }

  @override
  String get features => 'Funktionsbeschreibung';

  @override
  String get app_description => 'Intelligente Objektverwaltungsanwendung';

  @override
  String get app_description_detail =>
      'Hilft Ihnen, Informationen wie Ablaufdaten und Garantiezeiten von Gegenständen zu verwalten und bietet intelligente Erinnerungsfunktionen.';

  @override
  String get consumable => 'Verbrauchsmaterialien';

  @override
  String get durable => 'Gebrauchsgüter';

  @override
  String get sort => 'Sortierung';

  @override
  String get name_asc => 'Name aufsteigend';

  @override
  String get name_desc => 'Name absteigend';

  @override
  String get date_asc => 'Datum aufsteigend';

  @override
  String get date_desc => 'Datum absteigend';

  @override
  String get price_asc => 'Einzelpreis aufsteigend';

  @override
  String get price_desc => 'Einzelpreis absteigend';

  @override
  String get quantity_asc => 'Menge aufsteigend';

  @override
  String get quantity_desc => 'Menge absteigend';

  @override
  String get total_price_asc => 'Gesamtpreis aufsteigend';

  @override
  String get total_price_desc => 'Gesamtpreis absteigend';

  @override
  String get clear_all_filters => 'Alle Filter löschen';

  @override
  String get scan_barcode => 'Lager per Scan eingeben';

  @override
  String get search_items => 'Artikel suchen...';

  @override
  String get no_items => 'Keine Artikel vorhanden';

  @override
  String get no_items_description =>
      'Klicken Sie auf die Schaltfläche unten, um den ersten Artikel hinzuzufügen';

  @override
  String get expired => 'Abgelaufen';

  @override
  String get expiring_soon => 'Bald ablaufend';

  @override
  String get warranty_expired => 'Garantie abgelaufen';

  @override
  String get warranty_expiring_soon => 'Garantie läuft bald ab';

  @override
  String days_remaining(int count) {
    return 'Noch $count Tage';
  }

  @override
  String expired_days_ago(int count) {
    return 'Abgelaufen vor $count Tagen';
  }

  @override
  String get delete_item => 'Artikel löschen';

  @override
  String delete_item_confirm(String name) {
    return 'Möchten Sie \"$name\" wirklich löschen?';
  }

  @override
  String get item_deleted => 'Artikel wurde gelöscht';

  @override
  String get failed_to_delete => 'Löschen fehlgeschlagen';

  @override
  String failed_to_delete_message(String error) {
    return 'Artikel kann nicht gelöscht werden: $error';
  }

  @override
  String get date_range_filter => 'Datumsbereich filtern';

  @override
  String get price_range_filter => 'Preisbereich filtern';

  @override
  String get my_items => 'Meine Gegenstände';

  @override
  String get click_fab_to_add_item =>
      'Klicken Sie auf die Schaltfläche unten rechts, um einen Gegenstand hinzuzufügen';

  @override
  String get confirm_delete => 'Löschen bestätigen';

  @override
  String get filter_options => 'Filteroptionen';

  @override
  String get filter_by_type_category_location =>
      'Artikel nach Typ, Kategorie und Ort filtern';

  @override
  String categories_count(int count) {
    return '$count Kategorien';
  }

  @override
  String get all_categories => 'Alle Kategorien';

  @override
  String get no_category_data => 'Keine kategorisierten Daten';

  @override
  String get storage_location => 'Speicherort';

  @override
  String locations_count(int count) {
    return '$count Orte';
  }

  @override
  String get all_locations => 'Alle Orte';

  @override
  String get no_location_data => 'Keine Standortdaten';

  @override
  String get date_range => 'Datumsbereich';

  @override
  String get select_date_range => 'Datumsbereich auswählen';

  @override
  String get price_range => 'Preisspanne';

  @override
  String get unit_price_range => 'Einzelpreisbereich';

  @override
  String get min_unit_price => 'Mindeststückpreis';

  @override
  String get max_unit_price => 'Höchststückpreis';

  @override
  String get total_price_range => 'Gesamtpreisbereich';

  @override
  String get min_total_price => 'Mindestgesamtpreis';

  @override
  String get max_total_price => 'Höchstgesamtpreis';

  @override
  String get clear_price_filter => 'Preisfilter löschen';

  @override
  String get place_barcode_in_frame => 'Barcode in das Feld legen und scannen';

  @override
  String get item_already_exists => 'Produkt existiert bereits';

  @override
  String barcode_with_value(String barcode) {
    return 'Barcode: $barcode';
  }

  @override
  String name_with_value(String name) {
    return 'Name: $name';
  }

  @override
  String category_with_value(String category) {
    return 'Kategorie: $category';
  }

  @override
  String current_quantity_with_value(String quantity, String unit) {
    return 'Aktuelle Menge: $quantity$unit';
  }

  @override
  String get please_select_operation => 'Bitte wählen Sie eine Aktion:';

  @override
  String get outbound => 'Ausgangslager';

  @override
  String get inbound => 'Eingangslager';

  @override
  String get inbound_quantity => 'Eingangsmenge';

  @override
  String get outbound_quantity => 'Ausgangsmenge';

  @override
  String get quantity => 'Menge';

  @override
  String get enter_inbound_quantity => 'Bitte geben Sie die Eingangsmenge ein';

  @override
  String get enter_outbound_quantity =>
      'Bitte geben Sie die Auslagerungsmenge ein';

  @override
  String item_increased(String name, String quantity, String unit) {
    return '$name $quantity$unit wurden hinzugefügt';
  }

  @override
  String delete_item_confirm_with_irreversible(String name) {
    return 'Möchten Sie „$name“ wirklich löschen? Dieser Vorgang kann nicht rückgängig gemacht werden.';
  }

  @override
  String item_decreased(String name, String quantity, String unit) {
    return 'Wurde um $name $quantity$unit reduziert';
  }

  @override
  String get database_reset =>
      'Die Datenbank wurde zurückgesetzt und die Tabellenstruktur wird neu erstellt';

  @override
  String database_reset_error(String error) {
    return 'Fehler beim Zurücksetzen der Datenbank: $error';
  }

  @override
  String mock_data_init_failed(String error) {
    return 'Simulation der Dateninitialisierung fehlgeschlagen: $error';
  }

  @override
  String get solution_steps => 'Lösung:';

  @override
  String get solution_step_1 =>
      '1. Deinstallieren Sie die App und installieren Sie sie erneut';

  @override
  String get solution_step_2 => '2. Oder löschen Sie die App-Daten';

  @override
  String get solution_step_3 =>
      '3. Oder setzen Sie resetDatabaseOnStart auf true und führen Sie es dann erneut aus';

  @override
  String notification_service_init_failed(String error) {
    return 'Erinnerungsdienst-Initialisierung fehlgeschlagen: $error';
  }

  @override
  String check_calendar_account_failed(String error) {
    return 'Fehler beim Überprüfen des Kalenderkontos: $error';
  }

  @override
  String create_calendar_failed(String error) {
    return 'Kalendererstellung fehlgeschlagen: $error';
  }

  @override
  String add_calendar_event_failed(String error) {
    return 'Das Hinzufügen des Kalendereintrags ist fehlgeschlagen: $error';
  }

  @override
  String delete_calendar_event_failed(String error) {
    return 'Das Löschen des Kalendereintrags ist fehlgeschlagen: $error';
  }

  @override
  String set_permission_message_failed(String error) {
    return 'Fehler beim Einstellen der Berechtigungsaufforderungsnachricht: $error';
  }

  @override
  String mock_data_init_success(int count) {
    return '$count Simulationsdaten erfolgreich initialisiert';
  }

  @override
  String database_has_data(int count) {
    return 'Die Datenbank enthält bereits $count Datensätze, die Initialisierung der Simulationsdaten wird übersprungen';
  }

  @override
  String get database_structure_mismatch =>
      'Möglicherweise stimmt die Datenbankstruktur nicht überein, es wird empfohlen, die Anwendungsdaten zu löschen oder die App neu zu installieren';

  @override
  String get old_database_deleted => 'Alte Datenbankdateien gelöscht';

  @override
  String get backup_data_empty => 'Sichern der Daten ist leer';

  @override
  String get backup_file_not_found => 'Die Backup-Datei existiert nicht';

  @override
  String file_not_utf8(String error) {
    return 'Die Datei-Codierung ist kein gültiges UTF-8-Format. Bitte stellen Sie sicher, dass die Datei im UTF-8-Format gespeichert ist. Fehlerdetails: $error';
  }

  @override
  String file_not_found(String filePath) {
    return 'Datei existiert nicht: $filePath';
  }

  @override
  String file_empty(String filePath) {
    return 'Datei ist leer: $filePath';
  }

  @override
  String get file_content_empty =>
      'Der Inhalt der Datei ist nach der Dekodierung leer, möglicherweise stimmt die Codierung nicht überein';

  @override
  String field_cannot_be_empty(String fieldName) {
    return '$fieldName darf nicht leer sein';
  }

  @override
  String field_min_length(String fieldName, int minLength) {
    return '$fieldName darf nicht weniger als $minLength Zeichen lang sein';
  }

  @override
  String field_max_length(String fieldName, int maxLength) {
    return '$fieldName darf $maxLength Zeichen nicht überschreiten';
  }

  @override
  String field_invalid_email(String fieldName) {
    return 'Bitte geben Sie eine gültige $fieldName-Adresse ein';
  }

  @override
  String field_invalid_number(String fieldName, String numberType) {
    return '$fieldName muss $numberType sein';
  }

  @override
  String field_min_value(String fieldName, double min) {
    return '$fieldName darf $min nicht unterschreiten';
  }

  @override
  String field_max_value(String fieldName, double max) {
    return '$fieldName darf $max nicht überschreiten';
  }

  @override
  String field_positive_integer(String fieldName) {
    return '$fieldName muss eine positive ganze Zahl sein';
  }

  @override
  String field_greater_than_zero(String fieldName) {
    return '$fieldName muss größer als 0 sein';
  }

  @override
  String field_positive_number(String fieldName) {
    return '$fieldName muss eine positive Zahl sein';
  }

  @override
  String field_invalid_date(String fieldName) {
    return 'Bitte geben Sie eine gültige $fieldName ein';
  }

  @override
  String field_date_not_past(String fieldName) {
    return '$fieldName darf kein vergangenes Datum sein';
  }

  @override
  String field_date_not_before(String fieldName, String minDate) {
    return '$fieldName darf nicht früher als $minDate sein';
  }

  @override
  String field_date_not_after(String fieldName, String maxDate) {
    return '$fieldName darf nicht später als $maxDate sein';
  }

  @override
  String field_invalid_value(String fieldName) {
    return 'Bitte geben Sie eine gültige $fieldName ein';
  }

  @override
  String password_min_length(String fieldName) {
    return '$fieldName darf nicht weniger als 8 Zeichen lang sein';
  }

  @override
  String password_uppercase_required(String fieldName) {
    return '$fieldName muss mindestens einen Großbuchstaben enthalten';
  }

  @override
  String password_lowercase_required(String fieldName) {
    return '$fieldName muss mindestens einen Kleinbuchstaben enthalten';
  }

  @override
  String password_digit_required(String fieldName) {
    return '$fieldName muss mindestens eine Zahl enthalten';
  }

  @override
  String password_special_char_required(String fieldName) {
    return '$fieldName muss mindestens ein Sonderzeichen enthalten';
  }

  @override
  String get passwords_not_match =>
      'Die beiden eingegebenen Passwörter stimmen nicht überein';

  @override
  String get item_name_cannot_be_empty =>
      'Der Name des Artikels darf nicht leer sein';

  @override
  String name_max_length(int maxLength) {
    return 'Der Name darf $maxLength Zeichen nicht überschreiten';
  }

  @override
  String quantity_min(int minQuantity) {
    return 'Die Menge darf nicht kleiner als $minQuantity sein';
  }

  @override
  String quantity_max(int maxQuantity) {
    return 'Die Menge darf $maxQuantity nicht überschreiten';
  }

  @override
  String get unit_price_not_negative =>
      'Der Einzelpreis darf nicht negativ sein';

  @override
  String unit_price_max(double maxUnitPrice) {
    return 'Der Einzelpreis darf $maxUnitPrice nicht überschreiten';
  }

  @override
  String get set_production_expiry_for_validity =>
      'Bitte geben Sie das Produktionsdatum und das Haltbarkeitsdatum ein, um die Gültigkeit automatisch zu berechnen';

  @override
  String get set_purchase_warranty_for_validity =>
      'Bitte legen Sie Kaufdatum und Haltbarkeitsdatum fest, um die Garantiezeit automatisch zu berechnen';

  @override
  String get calendar_account_creation_failed =>
      'Konto für Kalender konnte nicht erstellt werden, bitte überprüfen Sie die Systemeinstellungen des Kalenders';

  @override
  String get test_notification => 'Testbenachrichtigung';

  @override
  String get test_notification_description =>
      'Dies ist eine Testbenachrichtigung zur Überprüfung der lokalen Benachrichtigungsfunktion';

  @override
  String get day_unit => 'Tag';

  @override
  String days_with_value(int days) {
    return '$days Tage';
  }

  @override
  String get item_saved => 'Artikel gespeichert';

  @override
  String get item_updated => 'Artikel aktualisiert';

  @override
  String get item_added => 'Artikel hinzugefügt';

  @override
  String get save_success => 'Speichern erfolgreich';

  @override
  String get update_success => 'Aktualisierung erfolgreich';

  @override
  String get delete_success => 'Löschen erfolgreich';

  @override
  String get save_failed => 'Speichern fehlgeschlagen';

  @override
  String get update_failed => 'Aktualisierung fehlgeschlagen';

  @override
  String get delete_failed => 'Löschen fehlgeschlagen';
}
