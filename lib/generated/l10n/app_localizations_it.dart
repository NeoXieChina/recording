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
  String get edit_item => 'Modifica articolo';

  @override
  String get add_item => 'Aggiungi elemento';

  @override
  String get search => 'Cerca';

  @override
  String get settings => 'Impostazioni';

  @override
  String get language_settings => 'Impostazioni della lingua';

  @override
  String get language_settings_description =>
      'Imposta la lingua di visualizzazione dell\'app';

  @override
  String get system_default => 'Predefinito di sistema';

  @override
  String get use_system_language => 'Usa la lingua di sistema';

  @override
  String get language_change_hint =>
      'La modifica della lingua avrà effetto dopo il riavvio dell\'applicazione';

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
  String custom_days(int days) {
    return 'Personalizzato ($days giorni)';
  }

  @override
  String current_selection(int days) {
    return 'Selezione attuale: $days giorni';
  }

  @override
  String alert_days_range(int min, int max) {
    return 'Intervallo giorni di promemoria: $min-$max giorni';
  }

  @override
  String get enter_days =>
      'Per favore inserisci il numero di giorni per il promemoria';

  @override
  String get days => 'Giorni';

  @override
  String enter_valid_days(int min, int max) {
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
  String get add_test_calendar_event => 'Aggiungi evento di calendario di test';

  @override
  String get enable_calendar_sync_first =>
      'Si prega di attivare prima l\'interruttore \"Sincronizzazione del calendario\"';

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
      'Impostare quanti giorni prima avvisare della scadenza del prodotto o della garanzia';

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
      'I permessi del calendario sono stati concessi e la sincronizzazione del calendario è attivata';

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
  String test_notification_failed(String error) {
    return 'Invio della notifica di test non riuscito: $error';
  }

  @override
  String get notification_permission_required =>
      'È necessario il permesso di notifica per abilitare i promemoria locali';

  @override
  String operation_failed(String error) {
    return 'Operazione fallita: $error';
  }

  @override
  String get notification_channel_name => 'Notifica di allerta oggetti';

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
  String backup_failed(String error) {
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
      'Il ripristino del backup cancellerà tutti i dati esistenti e li sostituirà con quelli del backup; questa operazione non può essere annullata. Sei sicuro di voler continuare?';

  @override
  String get confirm_again => 'Confermare di nuovo';

  @override
  String get confirm_restore_warning =>
      'Sei sicuro di voler cancellare tutti i dati esistenti e ripristinare il backup? Questa operazione non può essere annullata!';

  @override
  String get confirm_restore_button => 'Confermare il ripristino';

  @override
  String restore_success(int count) {
    return 'Ripristino riuscito, un totale di $count elementi';
  }

  @override
  String restore_failed(String error) {
    return 'Ripristino fallito: $error';
  }

  @override
  String get select_backup_file => 'Seleziona il file di backup';

  @override
  String get restore_backup => 'Ripristina il backup';

  @override
  String selected_file(String filename) {
    return 'File selezionato: $filename';
  }

  @override
  String get export_success => 'Esportazione dei dati riuscita';

  @override
  String export_failed(String error) {
    return 'Esportazione non riuscita: $error';
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
      'Importare i dati sovrascriverà i dati esistenti, questa operazione non può essere annullata. Sei sicuro di voler continuare?';

  @override
  String import_success(int count) {
    return 'Importazione dei dati riuscita, sono stati importati $count articoli';
  }

  @override
  String import_failed(String error) {
    return 'Importazione fallita: $error';
  }

  @override
  String get select_file => 'Seleziona file';

  @override
  String get no_data => 'Nessun dato disponibile';

  @override
  String get no_data_description =>
      'Attualmente non ci sono dati, clicca sul pulsante qui sotto per aggiungere il primo record!';

  @override
  String get load_failed => 'Caricamento fallito';

  @override
  String get load_failed_description =>
      'Caricamento dei dati non riuscito, controlla la connessione di rete e riprova';

  @override
  String get retry => 'Riprova';

  @override
  String get network_connection_failed => 'Connessione di rete fallita';

  @override
  String get network_connection_failed_description =>
      'Si prega di controllare la connessione di rete e riprovare';

  @override
  String get no_results => 'Nessun risultato trovato';

  @override
  String get no_results_description =>
      'Prova a cercare utilizzando altre parole chiave';

  @override
  String get clear_search => 'Cancella ricerca';

  @override
  String get insufficient_permission => 'Permessi insufficienti';

  @override
  String get insufficient_permission_description =>
      'È necessario avere le autorizzazioni corrispondenti per utilizzare questa funzionalità';

  @override
  String get request_permission => 'Richiedi autorizzazione';

  @override
  String get app_info => 'Informazioni sull\'app';

  @override
  String get version => 'versione';

  @override
  String get developer => 'Sviluppatore';

  @override
  String get device_info => 'Informazioni sul dispositivo';

  @override
  String get device_model => 'Modello del dispositivo';

  @override
  String get brand => 'Marchio';

  @override
  String get device_name => 'Nome del dispositivo';

  @override
  String get product => 'Prodotto';

  @override
  String get hardware => 'Hardware';

  @override
  String get android_version => 'Versione Android';

  @override
  String get sdk_version => 'Versione SDK';

  @override
  String get system_name => 'Nome del sistema';

  @override
  String get operating_system => 'Sistema operativo';

  @override
  String get system_version => 'Versione del sistema';

  @override
  String get dart_version => 'Versione di Dart';

  @override
  String get device_identifier => 'Identificazione del dispositivo';

  @override
  String get computer_name => 'Nome del computer';

  @override
  String get build_number => 'Numero di versione';

  @override
  String error_getting_device_info(String error) {
    return 'Impossibile ottenere le informazioni sul dispositivo: $error';
  }

  @override
  String get features => 'Introduzione alle funzioni';

  @override
  String get app_description =>
      'Applicazione per la gestione di oggetti intelligenti';

  @override
  String get app_description_detail =>
      'Aiutarti a gestire le scadenze degli oggetti, le date di garanzia e altre informazioni, fornendo anche una funzione di promemoria intelligente.';

  @override
  String get consumable => 'Materiale di consumo';

  @override
  String get durable => 'Beni durevoli';

  @override
  String get sort => 'Ordinamento';

  @override
  String get name_asc => 'Ordine alfabetico per nome';

  @override
  String get name_desc => 'Ordine decrescente per nome';

  @override
  String get date_asc => 'Ordine crescente di data';

  @override
  String get date_desc => 'Ordine decrescente per data';

  @override
  String get price_asc => 'Ordine dei prezzi crescente';

  @override
  String get price_desc => 'Ordine decrescente del prezzo unitario';

  @override
  String get quantity_asc => 'Ordine crescente di quantità';

  @override
  String get quantity_desc => 'Ordine decrescente per quantità';

  @override
  String get total_price_asc => 'Prezzo totale in ordine crescente';

  @override
  String get total_price_desc => 'Prezzo totale in ordine decrescente';

  @override
  String get clear_all_filters => 'Cancella tutti i filtri';

  @override
  String get scan_barcode => 'Scansiona il codice per entrare in magazzino';

  @override
  String get search_items => 'Cerca oggetti...';

  @override
  String get no_items => 'Nessun oggetto al momento';

  @override
  String get no_items_description =>
      'Clicca sul pulsante in basso per aggiungere il primo articolo';

  @override
  String get expired => 'Scaduto';

  @override
  String get expiring_soon => 'Sta per scadere';

  @override
  String get warranty_expired => 'La garanzia è scaduta';

  @override
  String get warranty_expiring_soon => 'La garanzia sta per scadere';

  @override
  String days_remaining(int count) {
    return 'Rimangono $count giorni';
  }

  @override
  String expired_days_ago(int count) {
    return 'Scaduto da $count giorni';
  }

  @override
  String get delete_item => 'Eliminare oggetto';

  @override
  String delete_item_confirm(String name) {
    return 'Sei sicuro di voler eliminare \"$name\"?';
  }

  @override
  String get item_deleted => 'L\'oggetto è stato eliminato';

  @override
  String get failed_to_delete => 'Eliminazione fallita';

  @override
  String failed_to_delete_message(String error) {
    return 'Impossibile eliminare l\'oggetto: $error';
  }

  @override
  String get date_range_filter => 'Filtro per intervallo di date';

  @override
  String get price_range_filter => 'Filtra per fascia di prezzo';

  @override
  String get my_items => 'I miei oggetti';

  @override
  String get click_fab_to_add_item =>
      'Clicca sul pulsante in basso a destra per aggiungere un elemento';

  @override
  String get confirm_delete => 'Conferma eliminazione';

  @override
  String get filter_options => 'Opzioni di filtraggio';

  @override
  String get filter_by_type_category_location =>
      'Filtra gli articoli per tipo, categoria e posizione';

  @override
  String categories_count(int count) {
    return '$count categorie';
  }

  @override
  String get all_categories => 'Tutte le categorie';

  @override
  String get no_category_data => 'Nessun dato classificato al momento';

  @override
  String get storage_location => 'Luogo di conservazione';

  @override
  String locations_count(int count) {
    return '$count luoghi';
  }

  @override
  String get all_locations => 'Tutti i luoghi';

  @override
  String get no_location_data => 'Nessun dato sulla posizione disponibile';

  @override
  String get date_range => 'Intervallo di date';

  @override
  String get select_date_range => 'Seleziona intervallo di date';

  @override
  String get price_range => 'Fascia di prezzo';

  @override
  String get unit_price_range => 'Gamma di prezzo unitario';

  @override
  String get min_unit_price => 'Prezzo minimo unitario';

  @override
  String get max_unit_price => 'Prezzo massimo unitario';

  @override
  String get total_price_range => 'Intervallo di prezzo totale';

  @override
  String get min_total_price => 'Prezzo totale minimo';

  @override
  String get max_total_price => 'Prezzo massimo totale';

  @override
  String get clear_price_filter => 'Cancella filtro prezzo';

  @override
  String get place_barcode_in_frame =>
      'Posiziona il codice a barre nel riquadro per la scansione';

  @override
  String get item_already_exists => 'Il prodotto esiste già';

  @override
  String barcode_with_value(String barcode) {
    return 'Codice a barre: $barcode';
  }

  @override
  String name_with_value(String name) {
    return 'Nome: $name';
  }

  @override
  String category_with_value(String category) {
    return 'Categoria: $category';
  }

  @override
  String current_quantity_with_value(String quantity, String unit) {
    return 'Quantità attuale: $quantity$unit';
  }

  @override
  String get please_select_operation =>
      'Si prega di selezionare un\'operazione:';

  @override
  String get outbound => 'Uscita dal magazzino';

  @override
  String get inbound => 'Ingresso in magazzino';

  @override
  String get inbound_quantity => 'Quantità in magazzino';

  @override
  String get outbound_quantity => 'Quantità spedita';

  @override
  String get quantity => 'quantità';

  @override
  String get enter_inbound_quantity =>
      'Per favore inserisci la quantità di magazzino';

  @override
  String get enter_outbound_quantity =>
      'Per favore inserisci la quantità di uscita dal magazzino';

  @override
  String delete_item_confirm_with_irreversible(String name) {
    return 'Sei sicuro di voler eliminare \"$name\"? Questa operazione non può essere annullata.';
  }

  @override
  String get database_reset =>
      'Il database è stato resettato, le strutture delle tabelle saranno ricreate';

  @override
  String database_reset_error(String error) {
    return 'Errore durante il ripristino del database: $error';
  }

  @override
  String mock_data_init_failed(String error) {
    return 'Inizializzazione dei dati simulati fallita: $error';
  }

  @override
  String get solution_steps => 'Soluzione:';

  @override
  String get solution_step_1 => '1. Disinstalla l\'app e reinstallala';

  @override
  String get solution_step_2 => '2. Oppure cancella i dati dell\'app';

  @override
  String get solution_step_3 =>
      '3. Oppure impostare resetDatabaseOnStart su true e quindi eseguire nuovamente';

  @override
  String notification_service_init_failed(String error) {
    return 'Inizializzazione del servizio di promemoria fallita: $error';
  }

  @override
  String check_calendar_account_failed(String error) {
    return 'Verifica del conto calendario fallita: $error';
  }

  @override
  String create_calendar_failed(String error) {
    return 'Creazione del calendario fallita: $error';
  }

  @override
  String add_calendar_event_failed(String error) {
    return 'Aggiunta dell\'evento al calendario non riuscita: $error';
  }

  @override
  String delete_calendar_event_failed(String error) {
    return 'Eliminazione dell\'evento del calendario non riuscita: $error';
  }

  @override
  String set_permission_message_failed(String error) {
    return 'Impostazione del messaggio di notifica dei permessi non riuscita: $error';
  }

  @override
  String mock_data_init_success(int count) {
    return 'Inizializzati con successo $count dati simulati';
  }

  @override
  String database_has_data(int count) {
    return 'Il database contiene già $count record, salta l\'inizializzazione dei dati simulati';
  }

  @override
  String get database_structure_mismatch =>
      'Potrebbe esserci una discrepanza nella struttura del database, si consiglia di cancellare i dati dell\'applicazione o reinstallarla';

  @override
  String get old_database_deleted =>
      'Il file del vecchio database è stato eliminato';

  @override
  String get backup_data_empty => 'I dati di backup sono vuoti';

  @override
  String get backup_file_not_found => 'Il file di backup non esiste';

  @override
  String file_not_utf8(String error) {
    return 'La codifica del file non è un formato UTF-8 valido. Si prega di assicurarsi che il file sia salvato con codifica UTF-8. Dettagli dell\'errore: $error';
  }

  @override
  String file_not_found(String filePath) {
    return 'File non esiste: $filePath';
  }

  @override
  String file_empty(String filePath) {
    return 'Il file è vuoto: $filePath';
  }

  @override
  String get file_content_empty =>
      'Il contenuto del file è vuoto dopo la decodifica, potrebbe esserci una discrepanza di codifica';

  @override
  String field_cannot_be_empty(String fieldName) {
    return '$fieldName non può essere vuoto';
  }

  @override
  String field_min_length(String fieldName, int minLength) {
    return '$fieldName non può essere lungo meno di $minLength caratteri';
  }

  @override
  String field_max_length(String fieldName, int maxLength) {
    return '$fieldName non può superare $maxLength caratteri';
  }

  @override
  String field_invalid_email(String fieldName) {
    return 'Si prega di inserire un indirizzo $fieldName valido';
  }

  @override
  String field_invalid_number(String fieldName, String numberType) {
    return '$fieldName deve essere $numberType';
  }

  @override
  String field_min_value(String fieldName, double min) {
    return '$fieldName non può essere inferiore a $min';
  }

  @override
  String field_max_value(String fieldName, double max) {
    return '$fieldName non può essere maggiore di $max';
  }

  @override
  String field_positive_integer(String fieldName) {
    return '$fieldName deve essere un numero intero positivo';
  }

  @override
  String field_greater_than_zero(String fieldName) {
    return '$fieldName deve essere maggiore di 0';
  }

  @override
  String field_positive_number(String fieldName) {
    return '$fieldName deve essere un numero positivo';
  }

  @override
  String field_invalid_date(String fieldName) {
    return 'Per favore inserisci un $fieldName valido';
  }

  @override
  String field_date_not_past(String fieldName) {
    return '$fieldName non può essere una data passata';
  }

  @override
  String field_date_not_before(String fieldName, String minDate) {
    return '$fieldName non può essere prima di $minDate';
  }

  @override
  String field_date_not_after(String fieldName, String maxDate) {
    return '$fieldName non può essere più tardi di $maxDate';
  }

  @override
  String field_invalid_value(String fieldName) {
    return 'Per favore inserisci un $fieldName valido';
  }

  @override
  String password_min_length(String fieldName) {
    return '$fieldName non può essere lungo meno di 8 caratteri';
  }

  @override
  String password_uppercase_required(String fieldName) {
    return '$fieldName deve contenere almeno una lettera maiuscola';
  }

  @override
  String password_lowercase_required(String fieldName) {
    return '$fieldName deve contenere almeno una lettera minuscola';
  }

  @override
  String password_digit_required(String fieldName) {
    return '$fieldName deve contenere almeno un numero';
  }

  @override
  String password_special_char_required(String fieldName) {
    return '$fieldName deve contenere almeno un carattere speciale';
  }

  @override
  String get passwords_not_match =>
      'Le due password inserite non corrispondono';

  @override
  String get item_name_cannot_be_empty =>
      'Il nome dell\'articolo non può essere vuoto';

  @override
  String name_max_length(int maxLength) {
    return 'Il nome non può superare $maxLength caratteri';
  }

  @override
  String quantity_min(int minQuantity) {
    return 'La quantità non può essere inferiore a $minQuantity';
  }

  @override
  String quantity_max(int maxQuantity) {
    return 'La quantità non può superare $maxQuantity';
  }

  @override
  String get unit_price_not_negative =>
      'Il prezzo unitario non può essere negativo';

  @override
  String unit_price_max(double maxUnitPrice) {
    return 'Il prezzo unitario non può superare $maxUnitPrice';
  }

  @override
  String get set_production_expiry_for_validity =>
      'Si prega di impostare la data di produzione e la durata di conservazione per calcolare automaticamente il periodo di validità';

  @override
  String get set_purchase_warranty_for_validity =>
      'Si prega di impostare la data di acquisto e la data di scadenza per calcolare automaticamente il periodo di garanzia';

  @override
  String get calendar_account_creation_failed =>
      'Impossibile creare l\'account del calendario, controlla le impostazioni del calendario di sistema';

  @override
  String get test_notification => 'Notifica di test';

  @override
  String get test_notification_description =>
      'Questa è una notifica di test, utilizzata per verificare la funzione di promemoria locale';

  @override
  String get day_unit => 'cielo';

  @override
  String days_with_value(int days) {
    return '$days giorni';
  }

  @override
  String get item_saved => 'Oggetto salvato';

  @override
  String get item_updated => 'L\'oggetto è stato aggiornato';

  @override
  String get item_added => 'Oggetto aggiunto';

  @override
  String get save_success => 'Salvataggio riuscito';

  @override
  String get update_success => 'Aggiornamento riuscito';

  @override
  String get delete_success => 'Eliminazione riuscita';

  @override
  String get save_failed => 'Salvataggio fallito';

  @override
  String get update_failed => 'Aggiornamento fallito';

  @override
  String get delete_failed => 'Eliminazione fallita';

  @override
  String get test_calendar_event => 'Testare evento del calendario';

  @override
  String get test_calendar_event_description =>
      'Questo è un evento di prova, utilizzato per verificare la funzionalità del calendario';

  @override
  String get in_app => 'all\'interno dell\'app';

  @override
  String get enable_alert => 'Abilita promemoria di scadenza';

  @override
  String get alert_method => 'Modalità di promemoria';

  @override
  String get alert_method_in_app => 'Solo dentro l\'app';

  @override
  String get alert_method_calendar => 'Solo calendario';

  @override
  String get alert_method_both => 'Entrambi';

  @override
  String get alert_days_before => 'Giorni di preavviso';

  @override
  String get use_global_setting => 'Usa le impostazioni globali';

  @override
  String get barcode_label => 'codice a barre';

  @override
  String get name_label => 'Nome';

  @override
  String get category_label => 'Classificazione';

  @override
  String get current_quantity => 'Quantità attuale';

  @override
  String get select_operation => 'Seleziona un\'operazione';

  @override
  String get unit => 'unità';

  @override
  String get custom_unit => 'Unità personalizzata';

  @override
  String get enter_unit => 'Per favore inserisci l\'unità';

  @override
  String get custom_location => 'Luogo personalizzato';

  @override
  String get enter_storage_location =>
      'Per favore inserisci il luogo di archiviazione';

  @override
  String get scan => 'Scansiona il codice';

  @override
  String get scan_to_stock => 'Scansiona il codice per entrare in magazzino';

  @override
  String get item_categories => 'Classificazione degli oggetti';

  @override
  String get storage_locations => 'Luogo di conservazione';

  @override
  String get place_barcode_in_frame_to_scan =>
      'Posiziona il codice a barre nel riquadro per la scansione';

  @override
  String get barcode => 'codice a barre';

  @override
  String get enter_barcode_or_scan =>
      'Si prega di inserire il codice a barre o scansionarlo';

  @override
  String get basic_information => 'Informazioni di base';

  @override
  String get item_name => 'Nome dell\'oggetto';

  @override
  String get enter_item_name => 'Per favore inserisci il nome dell\'oggetto';

  @override
  String get enter_category_name =>
      'Per favore inserisci il nome della categoria';

  @override
  String item_increased(String itemName, String quantity, String unit) {
    return 'È stato aggiunto $itemName $quantity$unit';
  }

  @override
  String item_decreased(String itemName, String quantity, String unit) {
    return 'È stato ridotto $itemName $quantity$unit';
  }

  @override
  String get unsaved_changes => 'Modifiche non salvate';

  @override
  String get unsaved_changes_message =>
      'Hai delle modifiche non salvate, scegli un\'azione:';

  @override
  String get discard => 'Abbandonare';

  @override
  String get unit_piece => 'unità';

  @override
  String get unit_item => 'pezzo';

  @override
  String get unit_box => 'scatola';

  @override
  String get unit_package => 'busta';

  @override
  String get unit_bottle => 'bottiglia';

  @override
  String get unit_carton => 'scatola';

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
  String get quantity_label => 'quantità';

  @override
  String get unit_price_label => 'Prezzo unitario';

  @override
  String get currency_label => 'Valuta';

  @override
  String get total_price_label => 'Prezzo totale:';

  @override
  String get storage_location_label => 'Luogo di conservazione';

  @override
  String get item_properties => 'Attributi dell\'oggetto';

  @override
  String get expiry_date_label => 'Periodo di validità';

  @override
  String get warranty_expiry_date_label => 'Data di scadenza della garanzia';

  @override
  String get production_date_label => 'Data di produzione';

  @override
  String get purchase_date_label => 'Data di acquisto';

  @override
  String auto_calculated_from(String dateType) {
    return 'Calcolo automatico in base a $dateType e alla durata di conservazione';
  }

  @override
  String get auto_calculated => 'Calcolo automatico';

  @override
  String get images_label => 'Immagine';

  @override
  String get notes_label => 'Nota';

  @override
  String get add_notes_hint => 'Aggiungere informazioni di nota (opzionale)';

  @override
  String get year_label => 'anno';

  @override
  String get month_label => 'luna';

  @override
  String get day_label => 'cielo';

  @override
  String selected_count(int count) {
    return 'È stato selezionato $count elemento';
  }

  @override
  String get select_all => 'Seleziona tutto';

  @override
  String get deselect_all => 'Deseleziona tutto';

  @override
  String get batch_change_location =>
      'Spostamento di massa delle posizioni di stoccaggio';

  @override
  String confirm_delete_selected(int count) {
    return 'Sei sicuro di voler eliminare i $count oggetti selezionati?';
  }

  @override
  String deleted_count_items(int count) {
    return 'Sono stati eliminati $count articoli';
  }

  @override
  String get no_storage_location_available =>
      'Nessun luogo di archiviazione disponibile';

  @override
  String get batch_change_location_title =>
      'Spostamento di massa dei luoghi di stoccaggio';

  @override
  String moved_count_items_to_location(int count, String location) {
    return 'Sono stati spostati $count articoli in $location';
  }

  @override
  String get operation_type_create => 'Inserire';

  @override
  String get operation_type_update => 'Modifica';

  @override
  String get operation_type_delete => 'Eliminare';

  @override
  String get operation_type_inbound => 'Ingresso in magazzino';

  @override
  String get operation_type_outbound => 'Uscita dal magazzino';

  @override
  String export_failed_message(String error) {
    return 'Esportazione fallita: $error';
  }

  @override
  String get clear_logs => 'Svuota il registro';

  @override
  String get confirm_clear_logs =>
      'Sei sicuro di voler cancellare tutti i registri delle operazioni? Questa operazione non può essere annullata.';

  @override
  String get logs_cleared => 'Il registro è stato svuotato';

  @override
  String get operation_logs_title => 'Registro operativo';

  @override
  String get export_logs => 'Esporta registro';

  @override
  String get clear_logs_tooltip => 'Svuota il registro';

  @override
  String get no_operation_logs => 'Nessun registro operativo disponibile';

  @override
  String get log_item_label => 'Oggetto:';

  @override
  String get log_category_label => 'Categoria:';

  @override
  String get log_type_label => 'Tipo:';

  @override
  String get log_quantity_label => 'Quantità:';

  @override
  String get log_unit_price_label => 'Prezzo unitario:';

  @override
  String get log_total_price_label => 'Prezzo totale:';

  @override
  String get log_expiry_date_label => 'Data di scadenza:';

  @override
  String get log_warranty_date_label => 'Data di garanzia:';

  @override
  String get log_purchase_date_label => 'Data di acquisto:';

  @override
  String get log_production_date_label => 'Data di produzione:';

  @override
  String get log_shelf_life_label => 'Data di scadenza:';

  @override
  String get log_storage_location_label => 'Luogo di conservazione:';

  @override
  String get log_barcode_label => 'Codice a barre:';

  @override
  String get log_notes_label => 'Nota:';

  @override
  String get log_alert_label => 'Avviso di allerta:';

  @override
  String get log_alert_days_label => 'Giorni di allerta:';

  @override
  String get log_quantity_change_label => 'Variazione di quantità:';

  @override
  String get log_field_changes_label => 'Modifica campo:';

  @override
  String get log_not_set => 'Non impostato';

  @override
  String get log_empty => 'Vuoto';

  @override
  String get log_alert_enabled => 'Aprire';

  @override
  String get log_alert_disabled => 'Chiudere';

  @override
  String get operation_logs_menu => 'Registro operativo';

  @override
  String get operation_logs_description =>
      'Visualizza e ripristina i record delle operazioni';

  @override
  String operation_failed_message(String error) {
    return 'Operazione fallita: $error';
  }

  @override
  String get no_date => 'Senza data';

  @override
  String get shelf_life_months_suffix => 'mesi';

  @override
  String get shelf_life_days_suffix => 'cielo';

  @override
  String get alert_days_suffix => 'cielo';

  @override
  String get unknown => 'Sconosciuto';

  @override
  String get developer_name => 'Leo';

  @override
  String get log_operation_date_label => 'Data operazione:';

  @override
  String get uncategorized => 'Non classificato';

  @override
  String get no_location => 'Senza luogo';

  @override
  String get item_category_cannot_be_empty =>
      'La classificazione degli oggetti non può essere vuota';

  @override
  String get storage_location_cannot_be_empty =>
      'Il luogo di conservazione non può essere vuoto';

  @override
  String get created_at_asc => 'Ordine crescente per data di aggiunta';

  @override
  String get created_at_desc => 'Ordine decrescente per data di aggiunta';

  @override
  String get location_management => 'Gestione del magazzino';

  @override
  String get private_warehouses => 'repository privato';

  @override
  String get public_warehouses => 'Biblioteca pubblica';

  @override
  String get is_public_warehouse => 'Biblioteca pubblica';

  @override
  String get public_warehouse_desc =>
      'La biblioteca pubblica non ha amministratori, è necessario compilare l\'operatore per l\'entrata e l\'uscita del magazzino';

  @override
  String get manager => 'Amministratore';

  @override
  String get not_set => 'Non impostato';

  @override
  String get edit_location => 'Modifica libreria';

  @override
  String get location_name => 'Nome della libreria';

  @override
  String get manager_name => 'Nome dell\'amministratore';

  @override
  String get enter_manager_name =>
      'Si prega di inserire il nome dell\'amministratore';

  @override
  String get manager_name_required =>
      'Il nome dell\'amministratore non può essere vuoto';

  @override
  String delete_location_confirm(String name) {
    return 'Sei sicuro di voler eliminare la libreria «$name»?';
  }

  @override
  String get delete_location_has_items =>
      'Ci sono ancora oggetti in questa libreria, impossibile eliminarla';

  @override
  String get default_manager => 'Amministratore predefinito';

  @override
  String get default_manager_desc =>
      'Amministratore predefinito quando si crea un nuovo repository privato';

  @override
  String get enter_default_manager =>
      'Per favore inserisci il nome dell\'amministratore predefinito';

  @override
  String get operator_name => 'Nome dell\'operatore';

  @override
  String get enter_operator_name =>
      'Per favore inserisci il nome dell\'operatore';

  @override
  String get operator_name_required =>
      'Il nome dell\'operatore non può essere vuoto';

  @override
  String get no_manager => 'Nessun amministratore';

  @override
  String get log_operator_label => 'Operatore:';

  @override
  String get outbound_quantity_exceeds_current =>
      'La quantità in uscita non può superare l\'inventario attuale';
}
