// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Catalan Valencian (`ca`).
class AppLocalizationsCa extends AppLocalizations {
  AppLocalizationsCa([String locale = 'ca']) : super(locale);

  @override
  String get app_name => 'Guardar coses petites';

  @override
  String get cancel => 'Cancel·lar';

  @override
  String get confirm => 'Confirmar';

  @override
  String get save => 'Desa';

  @override
  String get delete => 'Eliminar';

  @override
  String get edit => 'Editar';

  @override
  String get add => 'Afegir';

  @override
  String get edit_item => 'Editar article';

  @override
  String get add_item => 'Afegir element';

  @override
  String get search => 'Cercar';

  @override
  String get settings => 'Configuració';

  @override
  String get language_settings => 'Configuració de l\'idioma';

  @override
  String get language_settings_description =>
      'Configuració de l\'idioma de visualització de l\'aplicació';

  @override
  String get system_default => 'Per defecte del sistema';

  @override
  String get use_system_language => 'Utilitzar l’idioma del sistema';

  @override
  String get language_change_hint =>
      'El canvi d\'idioma tindrà efecte després de reiniciar l\'aplicació';

  @override
  String get back => 'Tornar';

  @override
  String get next => 'Següent pas';

  @override
  String get done => 'Completar';

  @override
  String get loading => 'Carregant...';

  @override
  String get error => 'error';

  @override
  String get success => 'èxit';

  @override
  String get warning => 'Advertència';

  @override
  String get info => 'informació';

  @override
  String get select_alert_days => 'Trieu el nombre de dies de recordatori';

  @override
  String get custom => 'Personalitzat';

  @override
  String custom_days(int days) {
    return 'Personalitzat ($days dies)';
  }

  @override
  String current_selection(int days) {
    return 'Seleccionat actualment: $days dies';
  }

  @override
  String alert_days_range(int min, int max) {
    return 'Rang de dies d\'avís: $min-$max dies';
  }

  @override
  String get enter_days =>
      'Si us plau, introduïu el nombre de dies per al recordatori';

  @override
  String get days => 'dies';

  @override
  String enter_valid_days(int min, int max) {
    return 'Si us plau, introdueix un número entre $min i $max';
  }

  @override
  String get alert_settings => 'Configuració d’alerta';

  @override
  String get calendar_settings => 'Configuració del calendari';

  @override
  String get calendar_sync => 'Sincronització del calendari';

  @override
  String get calendar_sync_desc =>
      'Després d\'activar, es demanarà permís per al calendari';

  @override
  String get add_test_calendar_event =>
      'Afegir esdeveniment de prova al calendari';

  @override
  String get enable_calendar_sync_first =>
      'Si us plau, activa primer l\'interruptor de \'sincronització del calendari\'';

  @override
  String get app_alert_settings => 'Configuració de recordatoris de l\'app';

  @override
  String get local_alerts => 'Recordatori local';

  @override
  String get local_alerts_desc =>
      'Rebre recordatoris d\'expiració dins de l\'aplicació després d\'activar-lo';

  @override
  String get send_test_notification => 'Enviar notificació de prova';

  @override
  String get enable_local_alerts_first =>
      'Si us plau, activa primer l\'interruptor de \'Recordatori local\'';

  @override
  String get alert_days_settings =>
      'Configuració del nombre de dies de recordatori';

  @override
  String get advance_alert_days => 'Dies d\'avís previ';

  @override
  String get advance_alert_days_desc =>
      'Configura quants dies abans recordar la caducitat dels articles o la finalització de la garantia';

  @override
  String get calendar_permission_request =>
      'Sol·licitud de permisos del calendari';

  @override
  String get calendar_permission_desc =>
      'Cal accedir al permís del calendari per sincronitzar els recordatoris dels elements. Permetre-ho?';

  @override
  String get allow => 'Permetre';

  @override
  String get calendar_permission_granted =>
      'S\'han concedit els permisos del calendari i la sincronització del calendari està activada';

  @override
  String get calendar_permission_denied =>
      'Permís del calendari denegat, no es pot activar la sincronització del calendari';

  @override
  String get calendar_permission_permanently_denied =>
      'Permís denegat permanentment';

  @override
  String get calendar_permission_permanently_denied_desc =>
      'El permís del calendari ha estat rebutjat de manera permanent, si us plau activa el permís manualment a la configuració del sistema.';

  @override
  String get go_to_settings => 'Vés a la configuració';

  @override
  String get calendar_account_failed =>
      'S\'han concedit els permisos del calendari, però no es pot crear un compte de calendari. Si us plau, comprova la configuració del calendari del sistema.';

  @override
  String get calendar_account_created =>
      'S\'han concedit els permisos del calendari i s\'ha creat un compte de calendari local';

  @override
  String get calendar_account_creating =>
      'El compte de calendari s\'ha creat amb èxit, però el sistema pot necessitar una estona per fer efecte';

  @override
  String get test_calendar_event_added =>
      'Prova d\'afegiment d\'esdeveniment del calendari amb èxit';

  @override
  String get test_calendar_event_failed =>
      'No s\'ha pogut afegir l\'esdeveniment de prova al calendari, comprova la configuració del calendari';

  @override
  String get calendar_permission_required =>
      'Cal permís del calendari per afegir un esdeveniment de prova';

  @override
  String get test_notification_sent => 'La notificació de prova s\'ha enviat';

  @override
  String test_notification_failed(String error) {
    return 'Enviament de notificació de prova fallit: $error';
  }

  @override
  String get notification_permission_required =>
      'Cal permís de notificació per activar els recordatoris locals';

  @override
  String operation_failed(String error) {
    return 'Operació fallida: $error';
  }

  @override
  String get notification_channel_name => 'Notificació d\'alerta d\'articles';

  @override
  String get notification_channel_description =>
      'Recordatori de caducitat o garantia dels articles';

  @override
  String get item_category_food => 'Aliments';

  @override
  String get item_category_daily_necessities => 'Articles d\'ús quotidià';

  @override
  String get item_category_cosmetics => 'Cosmètics';

  @override
  String get item_category_medicine => 'Medicaments';

  @override
  String get item_category_electronics => 'Productes electrònics';

  @override
  String get item_category_furniture => 'mobles';

  @override
  String get item_category_clothing => 'Roba';

  @override
  String get item_category_books => 'Llibres';

  @override
  String get item_category_other => 'Altres';

  @override
  String get purchase_channel_online_mall => 'Botiga en línia';

  @override
  String get purchase_channel_physical_store => 'botiga física';

  @override
  String get purchase_channel_supermarket => 'supermercat';

  @override
  String get purchase_channel_specialty_store => 'Botiga especialitzada';

  @override
  String get purchase_channel_secondhand_market => 'mercat de segona mà';

  @override
  String get purchase_channel_other => 'Altres';

  @override
  String get default_category => 'Altres';

  @override
  String get default_purchase_channel => 'Botiga en línia';

  @override
  String get item_category => 'Classificació d\'articles';

  @override
  String get custom_category => 'Classificació personalitzada';

  @override
  String get backup_data => 'Fer una còpia de seguretat de les dades';

  @override
  String get backup_data_description =>
      'Fer una còpia de seguretat de totes les dades (incloses les imatges) empaquetant-les en un arxiu ZIP';

  @override
  String get backup_all_data => 'Fes una còpia de seguretat de totes les dades';

  @override
  String get backup_success => 'Còpia de seguretat completada amb èxit';

  @override
  String backup_failed(String error) {
    return 'Còpia de seguretat fallida: $error';
  }

  @override
  String get restore_data => 'Recuperar dades';

  @override
  String get restore_data_description =>
      'Recuperar totes les dades des d\'un fitxer de còpia de seguretat ZIP';

  @override
  String get export_data => 'Exportar dades';

  @override
  String get export_data_description => 'Exportar com a formats CSV, TXT, SQL';

  @override
  String get import_data => 'Importar dades';

  @override
  String get import_data_description =>
      'Importar dades des de fitxers CSV, TXT, SQL';

  @override
  String get alert_settings_description =>
      'Configuració de recordatoris de calendari i notificacions de l\'aplicació';

  @override
  String get about => 'Sobre';

  @override
  String get about_description => 'Informació de l\'aplicació i versió';

  @override
  String get select_backup_file_first =>
      'Si us plau, seleccioneu primer el fitxer de còpia de seguretat';

  @override
  String get confirm_restore => 'Confirma la restauració';

  @override
  String get confirm_restore_message =>
      'Restaurar la còpia de seguretat esborrarà totes les dades existents i les substituirà per les dades de la còpia de seguretat, i aquesta operació no es pot desfer. Esteu segur que voleu continuar?';

  @override
  String get confirm_again => 'Tornar a confirmar';

  @override
  String get confirm_restore_warning =>
      'Està segur que vol esborrar totes les dades existents i restaurar la còpia de seguretat? Aquesta acció no es podrà desfer!';

  @override
  String get confirm_restore_button => 'Confirma la recuperació';

  @override
  String restore_success(int count) {
    return 'Recuperació exitosa, un total de $count articles';
  }

  @override
  String restore_failed(String error) {
    return 'Restauració fallida: $error';
  }

  @override
  String get select_backup_file => 'Selecciona el fitxer de còpia de seguretat';

  @override
  String get restore_backup => 'Restaurar còpia de seguretat';

  @override
  String selected_file(String filename) {
    return 'S\'ha seleccionat el fitxer: $filename';
  }

  @override
  String get export_success => 'Exportació de dades exitosa';

  @override
  String export_failed(String error) {
    return 'Exportació fallida: $error';
  }

  @override
  String get format_csv => 'CSV';

  @override
  String get format_txt => 'TXT';

  @override
  String get format_sql => 'SQL';

  @override
  String get duplicate_data_handling => 'Processament de dades duplicades';

  @override
  String get duplicate_data_detected =>
      'S\'han detectat dades duplicades, si us plau seleccioneu com procedir:';

  @override
  String get skip => 'Saltar';

  @override
  String get overwrite => 'cobrir';

  @override
  String get skip_all => 'Saltar tot';

  @override
  String get overwrite_all => 'Cobertura total';

  @override
  String get select_import_format_first =>
      'Si us plau, seleccioneu primer el format d\'importació';

  @override
  String get confirm_import => 'Confirma la importació';

  @override
  String get confirm_import_message =>
      'Importar dades substituirà les dades existents, aquesta acció no es pot desfer. Esteu segur que voleu continuar?';

  @override
  String import_success(int count) {
    return 'Importació de dades correcta, s\'han importat un total de $count articles';
  }

  @override
  String import_failed(String error) {
    return 'Importació fallida: $error';
  }

  @override
  String get select_file => 'Seleccionar fitxer';

  @override
  String get no_data => 'Sense dades';

  @override
  String get no_data_description =>
      'Actualment no hi ha dades, fes clic al botó de sota per afegir el primer registre!';

  @override
  String get load_failed => 'Carrega fallida';

  @override
  String get load_failed_description =>
      'Error en carregar les dades, si us plau comprova la connexió a Internet i torna-ho a intentar';

  @override
  String get retry => 'Torna-ho a intentar';

  @override
  String get network_connection_failed => 'Connexió de xarxa fallida';

  @override
  String get network_connection_failed_description =>
      'Si us plau, comproveu la connexió a Internet i torneu-ho a provar';

  @override
  String get no_results => 'No s\'han trobat resultats';

  @override
  String get no_results_description =>
      'Prova de cercar amb altres paraules clau';

  @override
  String get clear_search => 'Esborra la cerca';

  @override
  String get insufficient_permission => 'Permís insuficient';

  @override
  String get insufficient_permission_description =>
      'Es necessiten els permisos corresponents per utilitzar aquesta funció';

  @override
  String get request_permission => 'Sol·licitar permisos';

  @override
  String get app_info => 'Informació de l\'aplicació';

  @override
  String get version => 'versió';

  @override
  String get developer => 'Desenvolupador';

  @override
  String get device_info => 'Informació del dispositiu';

  @override
  String get device_model => 'Model de dispositiu';

  @override
  String get brand => 'marca';

  @override
  String get device_name => 'Nom del dispositiu';

  @override
  String get product => 'producte';

  @override
  String get hardware => 'maquinari';

  @override
  String get android_version => 'Versió d\'Android';

  @override
  String get sdk_version => 'Versió SDK';

  @override
  String get system_name => 'Nom del sistema';

  @override
  String get operating_system => 'sistema operatiu';

  @override
  String get system_version => 'Versió del sistema';

  @override
  String get dart_version => 'Versió de Dart';

  @override
  String get device_identifier => 'Identificador del dispositiu';

  @override
  String get computer_name => 'Nom de l\'ordinador';

  @override
  String get build_number => 'Número de versió';

  @override
  String error_getting_device_info(String error) {
    return 'No es pot obtenir informació del dispositiu: $error';
  }

  @override
  String get features => 'Introducció de funcions';

  @override
  String get app_description => 'Aplicació de gestió d\'articles intel·ligents';

  @override
  String get app_description_detail =>
      'Us ajuda a gestionar la data de caducitat dels objectes, la data de garantia i altra informació, i ofereix una funció d\'avís intel·ligent.';

  @override
  String get consumable => 'Consumibles';

  @override
  String get durable => 'Béns duradors';

  @override
  String get sort => 'Ordenar';

  @override
  String get name_asc => 'Nom en ordre ascendent';

  @override
  String get name_desc => 'Nom en ordre descendent';

  @override
  String get date_asc => 'Ordre ascendent de dates';

  @override
  String get date_desc => 'Ordre descendent per data';

  @override
  String get price_asc => 'Preu unitari en ordre ascendent';

  @override
  String get price_desc => 'Preu unitari de manera descendent';

  @override
  String get quantity_asc => 'Ordre ascendent per quantitat';

  @override
  String get quantity_desc => 'Ordre descendent per quantitat';

  @override
  String get total_price_asc => 'Preu total ascendent';

  @override
  String get total_price_desc => 'Preu total descendent';

  @override
  String get clear_all_filters => 'Esborra tots els filtres';

  @override
  String get scan_barcode => 'Escaneja el codi per emmagatzemar';

  @override
  String get search_items => 'Cerca d\'articles...';

  @override
  String get no_items => 'Cap article per ara';

  @override
  String get no_items_description =>
      'Fes clic al botó de sota per afegir el primer article';

  @override
  String get expired => 'Caducat';

  @override
  String get expiring_soon => 'A punt d\'expirar';

  @override
  String get warranty_expired => 'La garantia ha caducat';

  @override
  String get warranty_expiring_soon => 'La garantia està a punt d\'expirar';

  @override
  String days_remaining(int count) {
    return 'Resten $count dies';
  }

  @override
  String expired_days_ago(int count) {
    return 'Caducat fa $count dies';
  }

  @override
  String get delete_item => 'Eliminar article';

  @override
  String delete_item_confirm(String name) {
    return 'Estàs segur que vols eliminar \"$name\"?';
  }

  @override
  String get item_deleted => 'L\'article ha estat eliminat';

  @override
  String get failed_to_delete => 'Eliminació fallida';

  @override
  String failed_to_delete_message(String error) {
    return 'No es pot eliminar l\'element: $error';
  }

  @override
  String get date_range_filter => 'Filtrar per rang de dates';

  @override
  String get price_range_filter => 'Filtrar per rang de preus';

  @override
  String get my_items => 'Els meus articles';

  @override
  String get click_fab_to_add_item =>
      'Feu clic al botó a la cantonada inferior dreta per afegir articles';

  @override
  String get confirm_delete => 'Confirma l\'eliminació';

  @override
  String get filter_options => 'Opcions de filtratge';

  @override
  String get filter_by_type_category_location =>
      'Filtra els articles per tipus, categoria i ubicació';

  @override
  String categories_count(int count) {
    return '$count categories';
  }

  @override
  String get all_categories => 'Totes les categories';

  @override
  String get no_category_data => 'Encara no hi ha dades classificades';

  @override
  String get storage_location => 'Lloc d\'emmagatzematge';

  @override
  String locations_count(int count) {
    return '$count llocs';
  }

  @override
  String get all_locations => 'Tots els llocs';

  @override
  String get no_location_data => 'Encara no hi ha dades de lloc';

  @override
  String get date_range => 'Interval de dates';

  @override
  String get select_date_range => 'Selecciona l\'interval de dates';

  @override
  String get price_range => 'Rang de preus';

  @override
  String get unit_price_range => 'Rang de preu unitari';

  @override
  String get min_unit_price => 'preu mínim unitari';

  @override
  String get max_unit_price => 'preu unitari màxim';

  @override
  String get total_price_range => 'Rang de preu total';

  @override
  String get min_total_price => 'Preu total mínim';

  @override
  String get max_total_price => 'preu total màxim';

  @override
  String get clear_price_filter => 'Esborra el filtre de preu';

  @override
  String get place_barcode_in_frame =>
      'Col·loqueu el codi de barres dins del marc per escanejar-lo';

  @override
  String get item_already_exists => 'El producte ja existeix';

  @override
  String barcode_with_value(String barcode) {
    return 'Codi de barres: $barcode';
  }

  @override
  String name_with_value(String name) {
    return 'Nom: $name';
  }

  @override
  String category_with_value(String category) {
    return 'Categoria: $category';
  }

  @override
  String current_quantity_with_value(String quantity, String unit) {
    return 'Quantitat actual: $quantity$unit';
  }

  @override
  String get please_select_operation => 'Si us plau, seleccioneu l\'operació:';

  @override
  String get outbound => 'Sortida d\'emmagatzematge';

  @override
  String get inbound => 'Emmagatzemat';

  @override
  String get inbound_quantity => 'Quantitat d’entrada d’inventari';

  @override
  String get outbound_quantity => 'Quantitat d\'emmagatzematge sortint';

  @override
  String get quantity => 'quantitat';

  @override
  String get enter_inbound_quantity =>
      'Si us plau, introduïu la quantitat d\'entrada a l\'emmagatzematge';

  @override
  String get enter_outbound_quantity =>
      'Si us plau, introduïu la quantitat de sortida d\'emmagatzematge';

  @override
  String delete_item_confirm_with_irreversible(String name) {
    return 'Segur que vols eliminar «$name»? Aquesta acció no es pot desfer.';
  }

  @override
  String get database_reset =>
      'La base de dades s\'ha reiniciat i es tornaran a crear les estructures de les taules';

  @override
  String database_reset_error(String error) {
    return 'S\'ha produït un error en reiniciar la base de dades: $error';
  }

  @override
  String mock_data_init_failed(String error) {
    return 'La inicialització de dades simulades ha fallat: $error';
  }

  @override
  String get solution_steps => 'Solució:';

  @override
  String get solution_step_1 =>
      '1. Desinstal·la l\'aplicació i torna-la a instal·lar';

  @override
  String get solution_step_2 => '2. O esborrar les dades de l\'aplicació';

  @override
  String get solution_step_3 =>
      '3. O bé configureu resetDatabaseOnStart a true i torneu a executar';

  @override
  String notification_service_init_failed(String error) {
    return 'La inicialització del servei de recordatori ha fallat: $error';
  }

  @override
  String check_calendar_account_failed(String error) {
    return 'Error en comprovar el compte del calendari: $error';
  }

  @override
  String create_calendar_failed(String error) {
    return 'Error en crear el calendari: $error';
  }

  @override
  String add_calendar_event_failed(String error) {
    return 'No s\'ha pogut afegir l\'esdeveniment del calendari: $error';
  }

  @override
  String delete_calendar_event_failed(String error) {
    return 'No s\'ha pogut eliminar l\'esdeveniment del calendari: $error';
  }

  @override
  String set_permission_message_failed(String error) {
    return 'Error en mostrar el missatge d\'avís de permisos: $error';
  }

  @override
  String mock_data_init_success(int count) {
    return 'S\'han inicialitzat correctament $count dades simulades';
  }

  @override
  String database_has_data(int count) {
    return 'La base de dades ja té $count registres, ometent la inicialització de dades simulades';
  }

  @override
  String get database_structure_mismatch =>
      'Pot ser que l\'estructura de la base de dades no coincideixi; es recomana esborrar les dades de l\'aplicació o reinstal·lar-la';

  @override
  String get old_database_deleted =>
      'S\'han suprimit els fitxers antics de la base de dades';

  @override
  String get backup_data_empty =>
      'Les dades de còpia de seguretat estan buides';

  @override
  String get backup_file_not_found =>
      'El fitxer de còpia de seguretat no existeix';

  @override
  String file_not_utf8(String error) {
    return 'El codificació del fitxer no és un format UTF-8 vàlid. Si us plau, assegureu-vos que el fitxer està desat amb codificació UTF-8. Detalls de l\'error: $error';
  }

  @override
  String file_not_found(String filePath) {
    return 'El fitxer no existeix: $filePath';
  }

  @override
  String file_empty(String filePath) {
    return 'El fitxer està buit: $filePath';
  }

  @override
  String get file_content_empty =>
      'El contingut del fitxer és buit després de desxifrar-lo, podria ser que la codificació no coincideixi';

  @override
  String field_cannot_be_empty(String fieldName) {
    return '$fieldName no pot estar buit';
  }

  @override
  String field_min_length(String fieldName, int minLength) {
    return 'La longitud de $fieldName no pot ser inferior a $minLength caràcters';
  }

  @override
  String field_max_length(String fieldName, int maxLength) {
    return 'La longitud de $fieldName no pot superar els $maxLength caràcters';
  }

  @override
  String field_invalid_email(String fieldName) {
    return 'Si us plau, introdueix una adreça $fieldName vàlida';
  }

  @override
  String field_invalid_number(String fieldName, String numberType) {
    return '$fieldName ha de ser $numberType';
  }

  @override
  String field_min_value(String fieldName, double min) {
    return '$fieldName no pot ser menor que $min';
  }

  @override
  String field_max_value(String fieldName, double max) {
    return '$fieldName no pot ser més gran que $max';
  }

  @override
  String field_positive_integer(String fieldName) {
    return '$fieldName ha de ser un enter positiu';
  }

  @override
  String field_greater_than_zero(String fieldName) {
    return '$fieldName ha de ser més gran que 0';
  }

  @override
  String field_positive_number(String fieldName) {
    return '$fieldName ha de ser un nombre positiu';
  }

  @override
  String field_invalid_date(String fieldName) {
    return 'Si us plau, introduïu un $fieldName vàlid';
  }

  @override
  String field_date_not_past(String fieldName) {
    return '$fieldName no pot ser una data passada';
  }

  @override
  String field_date_not_before(String fieldName, String minDate) {
    return '$fieldName no pot ser anterior a $minDate';
  }

  @override
  String field_date_not_after(String fieldName, String maxDate) {
    return '$fieldName no pot ser més tard que $maxDate';
  }

  @override
  String field_invalid_value(String fieldName) {
    return 'Si us plau, introduïu un $fieldName vàlid';
  }

  @override
  String password_min_length(String fieldName) {
    return 'La longitud de $fieldName no pot ser inferior a 8 caràcters';
  }

  @override
  String password_uppercase_required(String fieldName) {
    return '$fieldName ha de contenir almenys una lletra majúscula';
  }

  @override
  String password_lowercase_required(String fieldName) {
    return '$fieldName ha de contenir almenys una lletra minúscula';
  }

  @override
  String password_digit_required(String fieldName) {
    return '$fieldName ha de contenir almenys un número';
  }

  @override
  String password_special_char_required(String fieldName) {
    return '$fieldName ha de contenir almenys un caràcter especial';
  }

  @override
  String get passwords_not_match =>
      'Les contrasenyes introduïdes dues vegades no coincideixen';

  @override
  String get item_name_cannot_be_empty =>
      'El nom de l\'article no pot estar buit';

  @override
  String name_max_length(int maxLength) {
    return 'El nom no pot superar els $maxLength caràcters';
  }

  @override
  String quantity_min(int minQuantity) {
    return 'La quantitat no pot ser inferior a $minQuantity';
  }

  @override
  String quantity_max(int maxQuantity) {
    return 'La quantitat no pot superar $maxQuantity';
  }

  @override
  String get unit_price_not_negative => 'El preu unitari no pot ser negatiu';

  @override
  String unit_price_max(double maxUnitPrice) {
    return 'El preu unitari no pot superar $maxUnitPrice';
  }

  @override
  String get set_production_expiry_for_validity =>
      'Si us plau, configureu la data de producció i el termini de validesa per calcular automàticament la data de caducitat';

  @override
  String get set_purchase_warranty_for_validity =>
      'Si us plau, configureu la data de compra i el termini de validesa per calcular automàticament el període de garantia';

  @override
  String get calendar_account_creation_failed =>
      'No es pot crear un compte de calendari, comprova la configuració del calendari del sistema';

  @override
  String get test_notification => 'Notificació de prova';

  @override
  String get test_notification_description =>
      'Aquesta és una notificació de prova, utilitzada per verificar la funció de recordatori local';

  @override
  String get day_unit => 'cel';

  @override
  String days_with_value(int days) {
    return '$days dies';
  }

  @override
  String get item_saved => 'L\'objecte s\'ha desat';

  @override
  String get item_updated => 'L\'article s\'ha actualitzat';

  @override
  String get item_added => 'L\'article s\'ha afegit';

  @override
  String get save_success => 'Desat correctament';

  @override
  String get update_success => 'Actualització satisfactòria';

  @override
  String get delete_success => 'Eliminació correcta';

  @override
  String get save_failed => 'Error en desar';

  @override
  String get update_failed => 'Actualització fallida';

  @override
  String get delete_failed => 'Eliminació fallida';

  @override
  String get test_calendar_event => 'Provar esdeveniments del calendari';

  @override
  String get test_calendar_event_description =>
      'Aquest és un esdeveniment de prova, utilitzat per verificar la funcionalitat del calendari';

  @override
  String get in_app => 'Dins de l\'aplicació';

  @override
  String get enable_alert => 'Activa recordatori de caducitat';

  @override
  String get alert_method => 'Mànega de recordatori';

  @override
  String get alert_method_in_app => 'Només dins de l\'aplicació';

  @override
  String get alert_method_calendar => 'Només calendari';

  @override
  String get alert_method_both => 'ambdós';

  @override
  String get alert_days_before => 'Dies d\'avís previ';

  @override
  String get use_global_setting => 'Utilitzar la configuració global';

  @override
  String get barcode_label => 'codi de barres';

  @override
  String get name_label => 'Nom';

  @override
  String get category_label => 'Classificació';

  @override
  String get current_quantity => 'Quantitat actual';

  @override
  String get select_operation => 'Seleccioneu una operació';

  @override
  String get unit => 'unitat';

  @override
  String get custom_unit => 'Unitat personalitzada';

  @override
  String get enter_unit => 'Si us plau, introdueixi la unitat';

  @override
  String get custom_location => 'Lloc personalitzat';

  @override
  String get enter_storage_location =>
      'Si us plau, introduïu la ubicació d\'emmagatzematge';

  @override
  String get scan => 'Escanejar el codi';

  @override
  String get scan_to_stock => 'Escaneja el codi per emmagatzemar';

  @override
  String get item_categories => 'Classificació d\'articles';

  @override
  String get storage_locations => 'Lloc d\'emmagatzematge';

  @override
  String get place_barcode_in_frame_to_scan =>
      'Col·loqueu el codi de barres dins del marc per escanejar-lo';

  @override
  String get barcode => 'codi de barres';

  @override
  String get enter_barcode_or_scan =>
      'Si us plau, introduïu el codi de barres o escanegeu-lo';

  @override
  String get basic_information => 'Informació bàsica';

  @override
  String get item_name => 'Nom de l\'article';

  @override
  String get enter_item_name => 'Si us plau, introduïu el nom de l\'article';

  @override
  String get enter_category_name =>
      'Si us plau, introdueix el nom de la categoria';

  @override
  String item_increased(String itemName, String quantity, String unit) {
    return 'S\'ha afegit $itemName $quantity$unit';
  }

  @override
  String item_decreased(String itemName, String quantity, String unit) {
    return 'S\'ha reduït $itemName $quantity$unit';
  }

  @override
  String get unsaved_changes => 'Canvis no desats';

  @override
  String get unsaved_changes_message =>
      'Teniu canvis no desats, si us plau, trieu una acció:';

  @override
  String get discard => 'renunciar';

  @override
  String get unit_piece => 'qüestió';

  @override
  String get unit_item => 'qüestió';

  @override
  String get unit_box => 'caixa';

  @override
  String get unit_package => 'paquet';

  @override
  String get unit_bottle => 'ampolla';

  @override
  String get unit_carton => 'caixa';

  @override
  String get unit_set => 'conjunt';

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
  String get quantity_label => 'quantitat';

  @override
  String get unit_price_label => 'preu unitari';

  @override
  String get currency_label => 'moneda';

  @override
  String get total_price_label => 'Preu total:';

  @override
  String get storage_location_label => 'Lloc d\'emmagatzematge';

  @override
  String get item_properties => 'Atributs de l\'objecte';

  @override
  String get expiry_date_label => 'Període de validesa';

  @override
  String get warranty_expiry_date_label => 'Data de venciment de la garantia';

  @override
  String get production_date_label => 'Data de producció';

  @override
  String get purchase_date_label => 'Data de compra';

  @override
  String auto_calculated_from(String dateType) {
    return 'Calculeu automàticament segons $dateType i el termini de validesa';
  }

  @override
  String get auto_calculated => 'Càlcul automàtic';

  @override
  String get images_label => 'imatge';

  @override
  String get notes_label => 'Nota';

  @override
  String get add_notes_hint => 'Afegeix informació addicional (opcional)';

  @override
  String get year_label => 'any';

  @override
  String get month_label => 'lluna';

  @override
  String get day_label => 'cel';

  @override
  String selected_count(int count) {
    return 'S\'han seleccionat $count elements';
  }

  @override
  String get select_all => 'Selecciona-ho tot';

  @override
  String get deselect_all => 'Desmarcar tot';

  @override
  String get batch_change_location =>
      'Canviar massivement el lloc d\'emmagatzematge';

  @override
  String confirm_delete_selected(int count) {
    return 'Estàs segur que vols eliminar els $count elements seleccionats?';
  }

  @override
  String deleted_count_items(int count) {
    return 'S\'han eliminat $count articles';
  }

  @override
  String get no_storage_location_available =>
      'Encara no hi ha cap lloc d\'emmagatzematge disponible';

  @override
  String get batch_change_location_title =>
      'Canvi massiu de lloc d\'emmagatzematge';

  @override
  String moved_count_items_to_location(int count, String location) {
    return 'S\'han mogut $count articles a $location';
  }

  @override
  String get operation_type_create => 'Introduir';

  @override
  String get operation_type_update => 'Editar';

  @override
  String get operation_type_delete => 'Eliminar';

  @override
  String get operation_type_inbound => 'Emmagatzemat';

  @override
  String get operation_type_outbound => 'Sortida d\'emmagatzematge';

  @override
  String export_failed_message(String error) {
    return 'Exportació fallida: $error';
  }

  @override
  String get clear_logs => 'Esborrar el registre';

  @override
  String get confirm_clear_logs =>
      'Estàs segur de voler esborrar tots els registres d\'operacions? Aquesta acció és irreversible.';

  @override
  String get logs_cleared => 'El registre s\'ha esborrat';

  @override
  String get operation_logs_title => 'Registre d\'operacions';

  @override
  String get export_logs => 'Exportar registre';

  @override
  String get clear_logs_tooltip => 'Esborrar el registre';

  @override
  String get no_operation_logs => 'Encara no hi ha registre d\'operacions';

  @override
  String get log_item_label => 'Article:';

  @override
  String get log_category_label => 'Categoria:';

  @override
  String get log_type_label => 'Tipus:';

  @override
  String get log_quantity_label => 'Quantitat:';

  @override
  String get log_unit_price_label => 'Preu unitari:';

  @override
  String get log_total_price_label => 'Preu total:';

  @override
  String get log_expiry_date_label => 'Data de caducitat:';

  @override
  String get log_warranty_date_label => 'Data de garantia:';

  @override
  String get log_purchase_date_label => 'Data de compra:';

  @override
  String get log_production_date_label => 'Data de producció:';

  @override
  String get log_shelf_life_label => 'Data de caducitat:';

  @override
  String get log_storage_location_label => 'Lloc d\'emmagatzematge:';

  @override
  String get log_barcode_label => 'Codi de barres:';

  @override
  String get log_notes_label => 'Nota:';

  @override
  String get log_alert_label => 'Avís anticipat:';

  @override
  String get log_alert_days_label => 'Dies d\'alerta:';

  @override
  String get log_quantity_change_label => 'Canvi de quantitat:';

  @override
  String get log_field_changes_label => 'Modifica el camp:';

  @override
  String get log_not_set => 'No establert';

  @override
  String get log_empty => 'buït';

  @override
  String get log_alert_enabled => 'Obrir';

  @override
  String get log_alert_disabled => 'Tancar';

  @override
  String get operation_logs_menu => 'Registre d\'operacions';

  @override
  String get operation_logs_description =>
      'Veure i restaurar els registres d\'operació';

  @override
  String operation_failed_message(String error) {
    return 'Operació fallida: $error';
  }

  @override
  String get no_date => 'Sense data';

  @override
  String get shelf_life_months_suffix => 'mesos';

  @override
  String get shelf_life_days_suffix => 'cel';

  @override
  String get alert_days_suffix => 'cel';

  @override
  String get unknown => 'Desconegut';

  @override
  String get developer_name => 'Leo';

  @override
  String get log_operation_date_label => 'Data d\'operació:';

  @override
  String get uncategorized => 'Sense classificar';

  @override
  String get no_location => 'Sense lloc';

  @override
  String get item_category_cannot_be_empty =>
      'La classificació de l\'ítem no pot estar buida';

  @override
  String get storage_location_cannot_be_empty =>
      'El lloc d\'emmagatzematge no pot estar buit';

  @override
  String get created_at_asc => 'Afegir ordre ascendent de temps';

  @override
  String get created_at_desc => 'Afegir ordre descendent de temps';
}
