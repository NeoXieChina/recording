// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get app_name => 'Schatzkammer';

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
  String get back => 'Zurück';

  @override
  String get next => 'Nächster Schritt';

  @override
  String get done => 'Abgeschlossen';

  @override
  String get loading => 'Lädt...';

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
  String custom_days(Object days) {
    return 'Benutzerdefiniert ($days Tage)';
  }

  @override
  String alert_days_range(Object min, Object max) {
    return 'Erinnerungszeitraum: $min-$max Tage';
  }

  @override
  String get enter_days => 'Bitte geben Sie die Anzahl der Erinnerungstage ein';

  @override
  String get days => 'Tage';

  @override
  String enter_valid_days(Object min, Object max) {
    return 'Bitte geben Sie eine Zahl zwischen $min und $max ein';
  }

  @override
  String get alert_settings => 'Warnungseinstellungen';

  @override
  String get calendar_settings => 'Kalendereinstellungen';

  @override
  String get calendar_sync => 'Kalendersynchronisierung';

  @override
  String get calendar_sync_desc =>
      'Nach dem Aktivieren wird um Kalenderberechtigungen gebeten';

  @override
  String get add_test_calendar_event => 'Testkalendereintrag hinzufügen';

  @override
  String get enable_calendar_sync_first =>
      'Bitte schalten Sie zuerst den Schalter \'Kalendersynchronisation\' ein';

  @override
  String get app_alert_settings => 'App-Benachrichtigungseinstellungen';

  @override
  String get local_alerts => 'Lokale Erinnerung';

  @override
  String get local_alerts_desc =>
      'Nach dem Aktivieren erhalten Sie in der App ablaufende Erinnerungen';

  @override
  String get send_test_notification => 'Testbenachrichtigung senden';

  @override
  String get enable_local_alerts_first =>
      'Bitte schalten Sie zuerst den Schalter \'Lokale Erinnerungen\' ein';

  @override
  String get alert_days_settings => 'Einstellung der Erinnerungstage';

  @override
  String get advance_alert_days => 'Tage im Voraus erinnern';

  @override
  String get advance_alert_days_desc =>
      'Einstellen, wie viele Tage im Voraus an den Ablaufdatum oder das Garantieende von Gegenständen erinnert werden soll';

  @override
  String get calendar_permission_request => 'Kalenderberechtigungsanforderung';

  @override
  String get calendar_permission_desc =>
      'Der Zugriff auf den Kalender ist erforderlich, um Erinnerungen für Elemente zu synchronisieren. Erlauben Sie dies?';

  @override
  String get allow => 'Erlauben';

  @override
  String get calendar_permission_granted =>
      'Kalenderberechtigungen wurden erteilt, die Kalendersynchronisierung ist aktiviert';

  @override
  String get calendar_permission_denied =>
      'Kalenderberechtigung wurde verweigert, Kalender-Synchronisierung kann nicht aktiviert werden';

  @override
  String get calendar_permission_permanently_denied =>
      'Berechtigung dauerhaft verweigert';

  @override
  String get calendar_permission_permanently_denied_desc =>
      'Der Kalenderzugriff wurde dauerhaft verweigert. Bitte aktivieren Sie die Berechtigung manuell in den Systemeinstellungen.';

  @override
  String get go_to_settings => 'Zu den Einstellungen gehen';

  @override
  String get calendar_account_failed =>
      'Kalenderberechtigungen wurden erteilt, aber es kann kein Kalenderkonto erstellt werden. Bitte überprüfen Sie die Systemeinstellungen für den Kalender.';

  @override
  String get calendar_account_created =>
      'Kalenderberechtigungen wurden erteilt, ein lokales Kalenderkonto wurde erstellt';

  @override
  String get calendar_account_creating =>
      'Das Kalenderkonto wurde erfolgreich erstellt, aber das System könnte einige Zeit benötigen, um wirksam zu werden.';

  @override
  String get test_calendar_event_added =>
      'Testkalenderereignis erfolgreich hinzugefügt';

  @override
  String get test_calendar_event_failed =>
      'Hinzufügen des Testkalendereintrags fehlgeschlagen, bitte überprüfen Sie die Kalendereinstellungen';

  @override
  String get calendar_permission_required =>
      'Kalenderberechtigung erforderlich, um Testereignisse hinzuzufügen';

  @override
  String get test_notification_sent => 'Testbenachrichtigung wurde gesendet';

  @override
  String test_notification_failed(Object error) {
    return 'Testbenachrichtigung senden fehlgeschlagen: $error';
  }

  @override
  String get notification_permission_required =>
      'Benachrichtigungsberechtigungen sind erforderlich, um lokale Erinnerungen zu aktivieren';

  @override
  String operation_failed(Object error) {
    return 'Vorgang fehlgeschlagen: $error';
  }

  @override
  String get notification_channel_name => 'Artikelwarnung Benachrichtigung';

  @override
  String get notification_channel_description =>
      'Erinnerung an abgelaufene oder überschrittene Gegenstände';

  @override
  String get item_category_food => 'Lebensmittel';

  @override
  String get item_category_daily_necessities => 'Alltagsgegenstände';

  @override
  String get item_category_cosmetics => 'Kosmetik';

  @override
  String get item_category_medicine => 'Medikament';

  @override
  String get item_category_electronics => 'elektronische Produkte';

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
  String get purchase_channel_physical_store => 'stationäres Geschäft';

  @override
  String get purchase_channel_supermarket => 'Supermarkt';

  @override
  String get purchase_channel_specialty_store => 'Fachgeschäft';

  @override
  String get purchase_channel_secondhand_market => 'Gebrauchtwarenmarkt';

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
      'Alle Daten (einschließlich Bildern) in einer ZIP-Datei für die Sicherung verpacken';

  @override
  String get backup_all_data => 'Alle Daten sichern';

  @override
  String get backup_success => 'Sicherung erfolgreich';

  @override
  String backup_failed(Object error) {
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
      'Kalendererinnerungen und App-Benachrichtigungseinstellungen';

  @override
  String get about => 'Über';

  @override
  String get about_description => 'Anwendungsinformationen und Version';

  @override
  String get select_backup_file_first =>
      'Bitte wählen Sie zuerst die Sicherungsdatei aus';

  @override
  String get confirm_restore => 'Bestätigung der Wiederherstellung';

  @override
  String get confirm_restore_message =>
      'Das Wiederherstellen des Backups wird alle vorhandenen Daten löschen und durch die Backup-Daten ersetzen. Dieser Vorgang kann nicht rückgängig gemacht werden. Möchten Sie fortfahren?';

  @override
  String get confirm_again => 'Erneut bestätigen';

  @override
  String get confirm_restore_warning =>
      'Sind Sie sicher, dass Sie alle vorhandenen Daten löschen und das Backup wiederherstellen möchten? Diese Aktion kann nicht rückgängig gemacht werden!';

  @override
  String get confirm_restore_button => 'Wiederherstellung bestätigen';

  @override
  String restore_success(Object count) {
    return 'Wiederherstellung erfolgreich, insgesamt $count Artikel';
  }

  @override
  String restore_failed(Object error) {
    return 'Wiederherstellung fehlgeschlagen: $error';
  }

  @override
  String get select_backup_file => 'Backup-Datei auswählen';

  @override
  String get restore_backup => 'Backup wiederherstellen';

  @override
  String selected_file(Object filename) {
    return 'Ausgewählte Datei: $filename';
  }

  @override
  String get export_success => 'Datenexport erfolgreich';

  @override
  String export_failed(Object error) {
    return 'Export fehlgeschlagen: $error';
  }

  @override
  String get format_csv => 'CSV';

  @override
  String get format_txt => 'TXT';

  @override
  String get format_sql => 'SQL';

  @override
  String get duplicate_data_handling => 'Verarbeitung von doppelten Daten';

  @override
  String get duplicate_data_detected =>
      'Doppelte Daten erkannt, bitte wählen Sie die Vorgehensweise:';

  @override
  String get skip => 'Überspringen';

  @override
  String get overwrite => 'bedecken';

  @override
  String get skip_all => 'Alles überspringen';

  @override
  String get overwrite_all => 'Vollständig abdecken';

  @override
  String get select_import_format_first =>
      'Bitte wählen Sie zuerst das Importformat aus';

  @override
  String get confirm_import => 'Import bestätigen';

  @override
  String get confirm_import_message =>
      'Das Importieren von Daten überschreibt die vorhandenen Daten, dieser Vorgang kann nicht rückgängig gemacht werden. Möchten Sie fortfahren?';

  @override
  String import_success(Object count) {
    return 'Datenimport erfolgreich, insgesamt $count Artikel importiert';
  }

  @override
  String import_failed(Object error) {
    return 'Import fehlgeschlagen: $error';
  }

  @override
  String get select_file => 'Datei auswählen';
}
