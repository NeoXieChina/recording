// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get app_name => 'Custodire oggetti preziosi';

  @override
  String get cancel => 'Annulla';

  @override
  String get confirm => 'Confermare';

  @override
  String get save => 'Salva';

  @override
  String get delete => 'Eliminare';

  @override
  String get edit => 'Modifica';

  @override
  String get add => 'Aggiungere';

  @override
  String get search => 'Cerca';

  @override
  String get settings => 'Impostazioni';

  @override
  String get back => 'Indietro';

  @override
  String get next => 'Passo successivo';

  @override
  String get done => 'Completato';

  @override
  String get loading => 'Caricamento in corso...';

  @override
  String get error => 'Errore';

  @override
  String get success => 'Successo';

  @override
  String get warning => 'Avviso';

  @override
  String get info => 'informazioni';

  @override
  String get select_alert_days => 'Seleziona i giorni di promemoria';

  @override
  String get custom => 'Personalizzato';

  @override
  String custom_days(Object days) {
    return 'Personalizzato ($days giorni)';
  }

  @override
  String alert_days_range(Object min, Object max) {
    return 'Intervallo di giorni di promemoria: $min-$max giorni';
  }

  @override
  String get enter_days =>
      'Per favore inserisci il numero di giorni per il promemoria';

  @override
  String get days => 'Giorni';

  @override
  String enter_valid_days(Object min, Object max) {
    return 'Per favore inserisci un numero tra $min e $max';
  }

  @override
  String get alert_settings => 'Impostazioni di avviso';

  @override
  String get calendar_settings => 'Impostazioni del calendario';

  @override
  String get calendar_sync => 'Sincronizzazione del calendario';

  @override
  String get calendar_sync_desc =>
      'Dopo l\'attivazione verranno richieste le autorizzazioni del calendario';

  @override
  String get add_test_calendar_event => 'Aggiungi evento al calendario di test';

  @override
  String get enable_calendar_sync_first =>
      'Per favore attiva prima l\'interruttore \'Sincronizzazione calendario\'';

  @override
  String get app_alert_settings => 'Impostazioni di notifica dell\'app';

  @override
  String get local_alerts => 'Promemoria locale';

  @override
  String get local_alerts_desc =>
      'Ricevi promemoria di scadenza all\'interno dell\'app dopo l\'attivazione';

  @override
  String get send_test_notification => 'Invia notifica di test';

  @override
  String get enable_local_alerts_first =>
      'Per favore attiva prima l\'interruttore \'Promemoria locale\'';

  @override
  String get alert_days_settings => 'Impostazione dei giorni di promemoria';

  @override
  String get advance_alert_days => 'Giorni di preavviso';

  @override
  String get advance_alert_days_desc =>
      'Impostare quanti giorni prima avvisare della scadenza degli articoli o della garanzia';

  @override
  String get calendar_permission_request =>
      'Richiesta di autorizzazione al calendario';

  @override
  String get calendar_permission_desc =>
      'È necessario accedere al calendario per sincronizzare i promemoria degli elementi. Vuoi consentirlo?';

  @override
  String get allow => 'Permettere';

  @override
  String get calendar_permission_granted =>
      'I permessi del calendario sono stati concessi e la sincronizzazione del calendario è attiva';

  @override
  String get calendar_permission_denied =>
      'I permessi del calendario sono stati negati, impossibile attivare la sincronizzazione del calendario';

  @override
  String get calendar_permission_permanently_denied =>
      'Autorizzazione permanentemente negata';

  @override
  String get calendar_permission_permanently_denied_desc =>
      'Il permesso del calendario è stato rifiutato permanentemente, si prega di attivare manualmente il permesso nelle impostazioni di sistema.';

  @override
  String get go_to_settings => 'Vai alle impostazioni';

  @override
  String get calendar_account_failed =>
      'I permessi del calendario sono stati concessi, ma non è possibile creare un account del calendario. Si prega di controllare le impostazioni del calendario di sistema';

  @override
  String get calendar_account_created =>
      'I permessi del calendario sono stati concessi e l\'account del calendario locale è stato creato';

  @override
  String get calendar_account_creating =>
      'Il conto del calendario è stato creato con successo, ma il sistema potrebbe aver bisogno di un po\' di tempo per entrare in vigore';

  @override
  String get test_calendar_event_added =>
      'Aggiunta dell\'evento del calendario riuscita';

  @override
  String get test_calendar_event_failed =>
      'Aggiunta dell\'evento di test al calendario non riuscita, controlla le impostazioni del calendario';

  @override
  String get calendar_permission_required =>
      'È necessario il permesso del calendario per aggiungere eventi di test';

  @override
  String get test_notification_sent => 'La notifica di test è stata inviata';

  @override
  String test_notification_failed(Object error) {
    return 'Invio della notifica di prova non riuscito: $error';
  }

  @override
  String get notification_permission_required =>
      'È necessario il permesso di notifica per abilitare i promemoria locali';

  @override
  String operation_failed(Object error) {
    return 'Operazione fallita: $error';
  }

  @override
  String get notification_channel_name => 'Notifica di allerta oggetto';

  @override
  String get notification_channel_description =>
      'Promemoria per scadenza o superamento della garanzia degli oggetti';

  @override
  String get item_category_food => 'cibo';

  @override
  String get item_category_daily_necessities => 'Articoli di uso quotidiano';

  @override
  String get item_category_cosmetics => 'Cosmetici';

  @override
  String get item_category_medicine => 'Medicinale';

  @override
  String get item_category_electronics => 'Prodotti elettronici';

  @override
  String get item_category_furniture => 'Mobili';

  @override
  String get item_category_clothing => 'Abbigliamento';

  @override
  String get item_category_books => 'libro';

  @override
  String get item_category_other => 'Altro';

  @override
  String get purchase_channel_online_mall => 'Negozio online';

  @override
  String get purchase_channel_physical_store => 'negozio fisico';

  @override
  String get purchase_channel_supermarket => 'supermercato';

  @override
  String get purchase_channel_specialty_store => 'negozio specializzato';

  @override
  String get purchase_channel_secondhand_market => 'mercato dell\'usato';

  @override
  String get purchase_channel_other => 'Altro';

  @override
  String get default_category => 'Altro';

  @override
  String get default_purchase_channel => 'Negozio online';

  @override
  String get item_category => 'Classificazione degli oggetti';

  @override
  String get custom_category => 'Categoria personalizzata';

  @override
  String get backup_data => 'Backup dei dati';

  @override
  String get backup_data_description =>
      'Comprimere tutti i dati (comprese le immagini) in un file ZIP per il backup';

  @override
  String get backup_all_data => 'Esegui il backup di tutti i dati';

  @override
  String get backup_success => 'Backup riuscito';

  @override
  String backup_failed(Object error) {
    return 'Backup fallito: $error';
  }

  @override
  String get restore_data => 'Ripristina dati';

  @override
  String get restore_data_description =>
      'Ripristina tutti i dati dal file di backup ZIP';

  @override
  String get export_data => 'Esporta dati';

  @override
  String get export_data_description => 'Esporta in formato CSV, TXT, SQL';

  @override
  String get import_data => 'Importa dati';

  @override
  String get import_data_description => 'Importare dati da file CSV, TXT, SQL';

  @override
  String get alert_settings_description =>
      'Impostazioni promemoria del calendario e notifiche delle app';

  @override
  String get about => 'Riguardo';

  @override
  String get about_description => 'Informazioni sull\'app e versione';

  @override
  String get select_backup_file_first =>
      'Si prega di selezionare prima il file di backup';

  @override
  String get confirm_restore => 'Conferma il ripristino';

  @override
  String get confirm_restore_message =>
      'Il ripristino del backup cancellerà tutti i dati esistenti e li sostituirà con i dati di backup, questa operazione è irreversibile. Sei sicuro di voler continuare?';

  @override
  String get confirm_again => 'Confermare di nuovo';

  @override
  String get confirm_restore_warning =>
      'Sei sicuro di voler cancellare tutti i dati esistenti e ripristinare il backup? Questa operazione non può essere annullata!';

  @override
  String get confirm_restore_button => 'Confermare il ripristino';

  @override
  String restore_success(Object count) {
    return 'Ripristino riuscito, in totale $count articoli';
  }

  @override
  String restore_failed(Object error) {
    return 'Ripristino fallito: $error';
  }

  @override
  String get select_backup_file => 'Seleziona il file di backup';

  @override
  String get restore_backup => 'Ripristina il backup';

  @override
  String selected_file(Object filename) {
    return 'File selezionato: $filename';
  }

  @override
  String get export_success => 'Esportazione dei dati riuscita';

  @override
  String export_failed(Object error) {
    return 'Esportazione fallita: $error';
  }

  @override
  String get format_csv => 'CSV';

  @override
  String get format_txt => 'TXT';

  @override
  String get format_sql => 'SQL';

  @override
  String get duplicate_data_handling => 'Elaborazione dei dati duplicati';

  @override
  String get duplicate_data_detected =>
      'Rilevati dati duplicati, si prega di scegliere il metodo di gestione:';

  @override
  String get skip => 'Salta';

  @override
  String get overwrite => 'coprire';

  @override
  String get skip_all => 'Salta tutto';

  @override
  String get overwrite_all => 'Copertura totale';

  @override
  String get select_import_format_first =>
      'Si prega di selezionare prima il formato di importazione';

  @override
  String get confirm_import => 'Conferma importazione';

  @override
  String get confirm_import_message =>
      'Importare i dati sovrascriverà i dati esistenti e questa operazione non può essere annullata. Sei sicuro di voler continuare?';

  @override
  String import_success(Object count) {
    return 'Importazione dei dati riuscita, sono stati importati $count articoli';
  }

  @override
  String import_failed(Object error) {
    return 'Importazione fallita: $error';
  }

  @override
  String get select_file => 'Seleziona file';
}
