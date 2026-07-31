// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Romanian Moldavian Moldovan (`ro`).
class AppLocalizationsRo extends AppLocalizations {
  AppLocalizationsRo([String locale = 'ro']) : super(locale);

  @override
  String get app_name => 'Păstrarea obiectelor mici';

  @override
  String get cancel => 'Anulare';

  @override
  String get confirm => 'Confirmare';

  @override
  String get save => 'Salvează';

  @override
  String get delete => 'Șterge';

  @override
  String get edit => 'Editează';

  @override
  String get add => 'Adăuga';

  @override
  String get search => 'Căutare';

  @override
  String get settings => 'Setări';

  @override
  String get back => 'Înapoi';

  @override
  String get next => 'Pasul următor';

  @override
  String get done => 'Finalizat';

  @override
  String get loading => 'Se încarcă...';

  @override
  String get error => 'Eroare';

  @override
  String get success => 'Succes';

  @override
  String get warning => 'Avertisment';

  @override
  String get info => 'informație';

  @override
  String get select_alert_days => 'Alegeți numărul de zile pentru notificare';

  @override
  String get custom => 'Personalizat';

  @override
  String custom_days(Object days) {
    return 'Personalizat ($days zile)';
  }

  @override
  String alert_days_range(Object min, Object max) {
    return 'Interval zile de notificare: $min-$max zile';
  }

  @override
  String get enter_days =>
      'Vă rugăm să introduceți numărul de zile pentru memento';

  @override
  String get days => 'zile';

  @override
  String enter_valid_days(Object min, Object max) {
    return 'Vă rugăm să introduceți un număr între $min și $max';
  }

  @override
  String get alert_settings => 'Setări de alertă';

  @override
  String get calendar_settings => 'Setări calendar';

  @override
  String get calendar_sync => 'Sincronizare calendar';

  @override
  String get calendar_sync_desc =>
      'După activare, va solicita permisiunea pentru calendar';

  @override
  String get add_test_calendar_event =>
      'Adaugă un eveniment de test în calendar';

  @override
  String get enable_calendar_sync_first =>
      'Vă rugăm să activați mai întâi comutatorul „Sincronizare calendar”';

  @override
  String get app_alert_settings => 'Setări notificări aplicație';

  @override
  String get local_alerts => 'Memento local';

  @override
  String get local_alerts_desc =>
      'După activare, primește notificări de expirare în aplicație';

  @override
  String get send_test_notification => 'Trimite notificare de test';

  @override
  String get enable_local_alerts_first =>
      'Vă rugăm să activați mai întâi comutatorul „Avertizări locale”';

  @override
  String get alert_days_settings => 'Setarea numărului de zile de avertizare';

  @override
  String get advance_alert_days => 'Numărul de zile pentru memento anticipat';

  @override
  String get advance_alert_days_desc =>
      'Setați cu câte zile înainte să fie trimisă o notificare pentru expirarea sau scadența garanției unui produs';

  @override
  String get calendar_permission_request =>
      'Solicitare de permisiune pentru calendar';

  @override
  String get calendar_permission_desc =>
      'Este necesar accesul la calendar pentru a sincroniza mementourile obiectelor. Permiteți?';

  @override
  String get allow => 'Permite';

  @override
  String get calendar_permission_granted =>
      'Permisiunile pentru calendar au fost acordate, sincronizarea calendarului este activată';

  @override
  String get calendar_permission_denied =>
      'Permisiunea pentru calendar a fost refuzată, nu se poate activa sincronizarea calendarului';

  @override
  String get calendar_permission_permanently_denied =>
      'Permisiunea a fost refuzată permanent';

  @override
  String get calendar_permission_permanently_denied_desc =>
      'Permisiunea pentru calendar a fost refuzată permanent, vă rugăm să activați manual permisiunea în setările sistemului.';

  @override
  String get go_to_settings => 'Du-te la setări';

  @override
  String get calendar_account_failed =>
      'Permisiunea pentru calendar a fost acordată, dar nu se poate crea un cont de calendar. Vă rugăm să verificați setările calendarului sistemului.';

  @override
  String get calendar_account_created =>
      'Permisiunea pentru calendar a fost acordată, contul de calendar local a fost creat';

  @override
  String get calendar_account_creating =>
      'Contul de calendar a fost creat cu succes, dar sistemul poate avea nevoie de ceva timp pentru a intra în vigoare';

  @override
  String get test_calendar_event_added =>
      'Testul de adăugare a evenimentului în calendar a reușit';

  @override
  String get test_calendar_event_failed =>
      'Eșec la adăugarea evenimentului de testare în calendar, vă rugăm să verificați setările calendarului';

  @override
  String get calendar_permission_required =>
      'Este necesară permisiunea pentru calendar pentru a adăuga evenimente de test';

  @override
  String get test_notification_sent => 'Notificarea de test a fost trimisă';

  @override
  String test_notification_failed(Object error) {
    return 'Trimiterea notificării de test a eșuat: $error';
  }

  @override
  String get notification_permission_required =>
      'Este necesară permisiunea de notificare pentru a activa memento-urile locale';

  @override
  String operation_failed(Object error) {
    return 'Operațiunea a eșuat: $error';
  }

  @override
  String get notification_channel_name =>
      'Notificare de avertizare a obiectelor';

  @override
  String get notification_channel_description =>
      'Notificare de expirare sau depășire a garanției a produselor';

  @override
  String get item_category_food => 'alimente';

  @override
  String get item_category_daily_necessities => 'Produse de uz zilnic';

  @override
  String get item_category_cosmetics => 'produse cosmetice';

  @override
  String get item_category_medicine => 'medicament';

  @override
  String get item_category_electronics => 'Produse electronice';

  @override
  String get item_category_furniture => 'mobilier';

  @override
  String get item_category_clothing => 'Îmbrăcăminte';

  @override
  String get item_category_books => 'carte';

  @override
  String get item_category_other => 'Altele';

  @override
  String get purchase_channel_online_mall => 'Magazin online';

  @override
  String get purchase_channel_physical_store => 'Magazin fizic';

  @override
  String get purchase_channel_supermarket => 'supermarket';

  @override
  String get purchase_channel_specialty_store => 'magazin specializat';

  @override
  String get purchase_channel_secondhand_market => 'piață second-hand';

  @override
  String get purchase_channel_other => 'Altele';

  @override
  String get default_category => 'Altele';

  @override
  String get default_purchase_channel => 'Magazin online';

  @override
  String get item_category => 'Clasificarea obiectelor';

  @override
  String get custom_category => 'Clasificare personalizată';

  @override
  String get backup_data => 'Backup de date';

  @override
  String get backup_data_description =>
      'Împachetați toate datele (inclusiv imaginile) într-un fișier ZIP pentru backup';

  @override
  String get backup_all_data => 'Faceți backup pentru toate datele';

  @override
  String get backup_success => 'Backup reușit';

  @override
  String backup_failed(Object error) {
    return 'Backup eșuat: $error';
  }

  @override
  String get restore_data => 'Restaurare date';

  @override
  String get restore_data_description =>
      'Restaurarea tuturor datelor din fișierul de backup ZIP';

  @override
  String get export_data => 'Exportă date';

  @override
  String get export_data_description => 'Exportă ca CSV, TXT, SQL';

  @override
  String get import_data => 'Importă date';

  @override
  String get import_data_description =>
      'Importați date din fișiere CSV, TXT, SQL';

  @override
  String get alert_settings_description =>
      'Setări de notificări prin calendar și notificări prin aplicație';

  @override
  String get about => 'Despre';

  @override
  String get about_description => 'Informații și versiune aplicație';

  @override
  String get select_backup_file_first =>
      'Vă rugăm să selectați mai întâi fișierul de backup';

  @override
  String get confirm_restore => 'Confirmare restaurare';

  @override
  String get confirm_restore_message =>
      'Restaurarea backup-ului va șterge toate datele existente și le va înlocui cu datele din backup, această operațiune nu poate fi anulată. Sigur doriți să continuați?';

  @override
  String get confirm_again => 'Verificare din nou';

  @override
  String get confirm_restore_warning =>
      'Sunteți sigur că doriți să ștergeți toate datele existente și să restaurați copia de rezervă? Această acțiune nu poate fi anulată!';

  @override
  String get confirm_restore_button => 'Confirmare restaurare';

  @override
  String restore_success(Object count) {
    return 'Restaurare reușită, în total $count obiecte';
  }

  @override
  String restore_failed(Object error) {
    return 'Restaurare eșuată: $error';
  }

  @override
  String get select_backup_file => 'Selectați fișierul de backup';

  @override
  String get restore_backup => 'Restaurare backup';

  @override
  String selected_file(Object filename) {
    return 'Fișier selectat: $filename';
  }

  @override
  String get export_success => 'Exportul datelor a reușit';

  @override
  String export_failed(Object error) {
    return 'Export eșuat: $error';
  }

  @override
  String get format_csv => 'CSV';

  @override
  String get format_txt => 'TXT';

  @override
  String get format_sql => 'SQL';

  @override
  String get duplicate_data_handling => 'Procesarea datelor duplicat';

  @override
  String get duplicate_data_detected =>
      'Date duplicate detectate, vă rugăm să selectați modul de procesare:';

  @override
  String get skip => 'Sari peste';

  @override
  String get overwrite => 'acoperi';

  @override
  String get skip_all => 'Sari peste tot';

  @override
  String get overwrite_all => 'Acoperire completă';

  @override
  String get select_import_format_first =>
      'Vă rugăm să selectați mai întâi formatul de import';

  @override
  String get confirm_import => 'Confirmare import';

  @override
  String get confirm_import_message =>
      'Importarea datelor va suprascrie datele existente, această operațiune nu poate fi anulată. Sunteți sigur că doriți să continuați?';

  @override
  String import_success(Object count) {
    return 'Importul datelor a reușit, au fost importate în total $count articole';
  }

  @override
  String import_failed(Object error) {
    return 'Import eșuat: $error';
  }

  @override
  String get select_file => 'Alege fișier';
}
