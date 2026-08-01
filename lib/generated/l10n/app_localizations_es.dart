// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get app_name => 'Guardar tesoros en el espacio más pequeño';

  @override
  String get cancel => 'Cancelar';

  @override
  String get confirm => 'Confirmar';

  @override
  String get save => 'Guardar';

  @override
  String get delete => 'Eliminar';

  @override
  String get edit => 'Editar';

  @override
  String get add => 'Agregar';

  @override
  String get edit_item => 'Editar artículo';

  @override
  String get add_item => 'Agregar artículo';

  @override
  String get search => 'Buscar';

  @override
  String get settings => 'Configuración';

  @override
  String get language_settings => 'Configuración de idioma';

  @override
  String get language_settings_description =>
      'Configurar el idioma de visualización de la aplicación';

  @override
  String get system_default => 'Predeterminado del sistema';

  @override
  String get use_system_language => 'Usar el idioma del sistema';

  @override
  String get language_change_hint =>
      'El cambio de idioma tendrá efecto después de reiniciar la aplicación';

  @override
  String get back => 'Regresar';

  @override
  String get next => 'Siguiente paso';

  @override
  String get done => 'Completar';

  @override
  String get loading => 'Cargando...';

  @override
  String get error => 'error';

  @override
  String get success => 'éxito';

  @override
  String get warning => 'Advertencia';

  @override
  String get info => 'información';

  @override
  String get select_alert_days => 'Seleccionar días de recordatorio';

  @override
  String get custom => 'Personalizado';

  @override
  String custom_days(int days) {
    return 'Personalizado ($days días)';
  }

  @override
  String current_selection(int days) {
    return 'Selección actual: $days días';
  }

  @override
  String alert_days_range(int min, int max) {
    return 'Rango de días de recordatorio: $min-$max días';
  }

  @override
  String get enter_days =>
      'Por favor, introduzca el número de días de recordatorio';

  @override
  String get days => 'días';

  @override
  String enter_valid_days(int min, int max) {
    return 'Por favor, ingrese un número entre $min y $max';
  }

  @override
  String get alert_settings => 'Configuración de alerta';

  @override
  String get calendar_settings => 'Configuración del calendario';

  @override
  String get calendar_sync => 'Sincronización del calendario';

  @override
  String get calendar_sync_desc =>
      'Después de activarlo, se solicitarán permisos de calendario';

  @override
  String get add_test_calendar_event =>
      'Agregar evento de calendario de prueba';

  @override
  String get enable_calendar_sync_first =>
      'Por favor, active primero el interruptor de \'sincronización de calendario\'';

  @override
  String get app_alert_settings => 'Configuración de recordatorios de la app';

  @override
  String get local_alerts => 'Recordatorio local';

  @override
  String get local_alerts_desc =>
      'Recibir recordatorios de caducidad dentro de la aplicación después de activarlo';

  @override
  String get send_test_notification => 'Enviar notificación de prueba';

  @override
  String get enable_local_alerts_first =>
      'Por favor, primero activa el interruptor de \'Recordatorios locales\'';

  @override
  String get alert_days_settings => 'Configuración de días de recordatorio';

  @override
  String get advance_alert_days => 'Días de aviso anticipado';

  @override
  String get advance_alert_days_desc =>
      'Configurar cuántos días de anticipación para recordar el vencimiento de los artículos o el fin de la garantía';

  @override
  String get calendar_permission_request =>
      'Solicitud de permisos del calendario';

  @override
  String get calendar_permission_desc =>
      'Se necesita acceso al calendario para sincronizar recordatorios de ítems. ¿Permitir?';

  @override
  String get allow => 'Permitir';

  @override
  String get calendar_permission_granted =>
      'Se han concedido los permisos del calendario y la sincronización del calendario está activada';

  @override
  String get calendar_permission_denied =>
      'Se denegaron los permisos del calendario, no se puede activar la sincronización del calendario';

  @override
  String get calendar_permission_permanently_denied =>
      'Permiso denegado permanentemente';

  @override
  String get calendar_permission_permanently_denied_desc =>
      'El permiso del calendario ha sido denegado permanentemente, por favor active el permiso manualmente en la configuración del sistema.';

  @override
  String get go_to_settings => 'Ir a configuración';

  @override
  String get calendar_account_failed =>
      'Se han concedido los permisos del calendario, pero no se puede crear una cuenta de calendario. Por favor, compruebe la configuración del calendario del sistema.';

  @override
  String get calendar_account_created =>
      'Permiso de calendario concedido, cuenta de calendario local creada';

  @override
  String get calendar_account_creating =>
      'La cuenta del calendario se ha creado con éxito, pero el sistema puede tardar un tiempo en activarse';

  @override
  String get test_calendar_event_added =>
      'Prueba de evento de calendario agregado con éxito';

  @override
  String get test_calendar_event_failed =>
      'Error al agregar el evento de prueba al calendario, por favor revisa la configuración del calendario';

  @override
  String get calendar_permission_required =>
      'Se requieren permisos de calendario para agregar eventos de prueba';

  @override
  String get test_notification_sent =>
      'La notificación de prueba ha sido enviada';

  @override
  String test_notification_failed(String error) {
    return 'Error al enviar la notificación de prueba: $error';
  }

  @override
  String get notification_permission_required =>
      'Se requieren permisos de notificación para habilitar los recordatorios locales';

  @override
  String operation_failed(String error) {
    return 'Operación fallida: $error';
  }

  @override
  String get notification_channel_name => 'Notificación de alerta de artículos';

  @override
  String get notification_channel_description =>
      'Recordatorio de caducidad o garantía de los productos';

  @override
  String get item_category_food => 'Alimentos';

  @override
  String get item_category_daily_necessities => 'Artículos de uso diario';

  @override
  String get item_category_cosmetics => 'cosméticos';

  @override
  String get item_category_medicine => 'Medicamento';

  @override
  String get item_category_electronics => 'Productos electrónicos';

  @override
  String get item_category_furniture => 'muebles';

  @override
  String get item_category_clothing => 'Ropa';

  @override
  String get item_category_books => 'libros';

  @override
  String get item_category_other => 'Otros';

  @override
  String get purchase_channel_online_mall => 'Tienda en línea';

  @override
  String get purchase_channel_physical_store => 'tienda física';

  @override
  String get purchase_channel_supermarket => 'supermercado';

  @override
  String get purchase_channel_specialty_store => 'Tienda exclusiva';

  @override
  String get purchase_channel_secondhand_market => 'mercado de segunda mano';

  @override
  String get purchase_channel_other => 'Otros';

  @override
  String get default_category => 'Otros';

  @override
  String get default_purchase_channel => 'Tienda en línea';

  @override
  String get item_category => 'Clasificación de artículos';

  @override
  String get custom_category => 'Clasificación personalizada';

  @override
  String get backup_data => 'Respaldar datos';

  @override
  String get backup_data_description =>
      'Empaquetar todos los datos (incluidas las imágenes) en un archivo ZIP para hacer una copia de seguridad';

  @override
  String get backup_all_data =>
      'Hacer una copia de seguridad de todos los datos';

  @override
  String get backup_success => 'Copia de seguridad exitosa';

  @override
  String backup_failed(String error) {
    return 'Copia de seguridad fallida: $error';
  }

  @override
  String get restore_data => 'Recuperar datos';

  @override
  String get restore_data_description =>
      'Restaurar todos los datos desde el archivo de copia de seguridad ZIP';

  @override
  String get export_data => 'Exportar datos';

  @override
  String get export_data_description => 'Exportar como CSV, TXT, SQL';

  @override
  String get import_data => 'Importar datos';

  @override
  String get import_data_description =>
      'Importar datos desde archivos CSV, TXT o SQL';

  @override
  String get alert_settings_description =>
      'Configuración de recordatorios del calendario y notificaciones de la aplicación';

  @override
  String get about => 'Sobre';

  @override
  String get about_description => 'Información de la aplicación y versión';

  @override
  String get select_backup_file_first =>
      'Por favor, seleccione primero el archivo de copia de seguridad';

  @override
  String get confirm_restore => 'Confirmar restauración';

  @override
  String get confirm_restore_message =>
      'Restaurar la copia de seguridad borrará todos los datos existentes y los reemplazará con los datos de la copia de seguridad, esta acción no se puede deshacer. ¿Está seguro de que desea continuar?';

  @override
  String get confirm_again => 'Confirmar de nuevo';

  @override
  String get confirm_restore_warning =>
      '¿Está seguro de que desea borrar todos los datos existentes y restaurar la copia de seguridad? ¡Esta operación no se puede deshacer!';

  @override
  String get confirm_restore_button => 'Confirmar restauración';

  @override
  String restore_success(int count) {
    return 'Restauración exitosa, un total de $count artículos';
  }

  @override
  String restore_failed(String error) {
    return 'Restauración fallida: $error';
  }

  @override
  String get select_backup_file => 'Seleccionar archivo de copia de seguridad';

  @override
  String get restore_backup => 'Restaurar copia de seguridad';

  @override
  String selected_file(String filename) {
    return 'Archivo seleccionado: $filename';
  }

  @override
  String get export_success => 'Exportación de datos exitosa';

  @override
  String export_failed(String error) {
    return 'Error de exportación: $error';
  }

  @override
  String get format_csv => 'CSV';

  @override
  String get format_txt => 'TXT';

  @override
  String get format_sql => 'SQL';

  @override
  String get duplicate_data_handling => 'Procesamiento de datos duplicados';

  @override
  String get duplicate_data_detected =>
      'Se detectaron datos duplicados, por favor seleccione un método de manejo:';

  @override
  String get skip => 'Saltar';

  @override
  String get overwrite => 'cubrir';

  @override
  String get skip_all => 'Saltar todo';

  @override
  String get overwrite_all => 'Cubrir todo';

  @override
  String get select_import_format_first =>
      'Por favor, primero seleccione el formato de importación';

  @override
  String get confirm_import => 'Confirmar importación';

  @override
  String get confirm_import_message =>
      'Importar datos sobrescribirá los datos existentes, esta operación no se puede deshacer. ¿Está seguro de que desea continuar?';

  @override
  String import_success(int count) {
    return 'Importación de datos exitosa, se han importado $count artículos';
  }

  @override
  String import_failed(String error) {
    return 'Importación fallida: $error';
  }

  @override
  String get select_file => 'Seleccionar archivo';

  @override
  String get no_data => 'No hay datos';

  @override
  String get no_data_description =>
      'Actualmente no hay datos, ¡haz clic en el botón de abajo para agregar el primer registro!';

  @override
  String get load_failed => 'Error de carga';

  @override
  String get load_failed_description =>
      'Error al cargar los datos, por favor verifique la conexión de red e intente de nuevo';

  @override
  String get retry => 'Reintentar';

  @override
  String get network_connection_failed => 'Conexión de red fallida';

  @override
  String get network_connection_failed_description =>
      'Por favor, revise la conexión de red y vuelva a intentarlo';

  @override
  String get no_results => 'No se encontraron resultados';

  @override
  String get no_results_description =>
      'Intenta buscar usando otras palabras clave';

  @override
  String get clear_search => 'Borrar búsqueda';

  @override
  String get insufficient_permission => 'Permiso insuficiente';

  @override
  String get insufficient_permission_description =>
      'Se requieren los permisos correspondientes para usar esta función';

  @override
  String get request_permission => 'Solicitar permisos';

  @override
  String get app_info => 'Información de la aplicación';

  @override
  String get version => 'versión';

  @override
  String get developer => 'Desarrollador';

  @override
  String get device_info => 'Información del dispositivo';

  @override
  String get device_model => 'Modelo del dispositivo';

  @override
  String get brand => 'marca';

  @override
  String get device_name => 'Nombre del dispositivo';

  @override
  String get product => 'Producto';

  @override
  String get hardware => 'hardware';

  @override
  String get android_version => 'Versión de Android';

  @override
  String get sdk_version => 'Versión del SDK';

  @override
  String get system_name => 'Nombre del sistema';

  @override
  String get operating_system => 'Sistema operativo';

  @override
  String get system_version => 'Versión del sistema';

  @override
  String get dart_version => 'Versión de Dart';

  @override
  String get device_identifier => 'Identificación del dispositivo';

  @override
  String get computer_name => 'Nombre de la computadora';

  @override
  String get build_number => 'Número de versión';

  @override
  String error_getting_device_info(String error) {
    return 'No se puede obtener la información del dispositivo: $error';
  }

  @override
  String get features => 'Introducción de funciones';

  @override
  String get app_description => 'Aplicación de gestión de objetos inteligentes';

  @override
  String get app_description_detail =>
      'Ayuda a gestionar las fechas de caducidad, fechas de garantía y otra información de sus artículos, y proporciona funciones de recordatorio inteligentes.';

  @override
  String get consumable => 'Consumibles';

  @override
  String get durable => 'Bien duradero';

  @override
  String get sort => 'ordenar';

  @override
  String get name_asc => 'Orden ascendente por nombre';

  @override
  String get name_desc => 'Nombre descendente';

  @override
  String get date_asc => 'Orden ascendente por fecha';

  @override
  String get date_desc => 'Orden descendente por fecha';

  @override
  String get price_asc => 'Precio unitario ascendente';

  @override
  String get price_desc => 'Precio unitario en orden descendente';

  @override
  String get quantity_asc => 'Orden ascendente por cantidad';

  @override
  String get quantity_desc => 'Orden descendente por cantidad';

  @override
  String get total_price_asc => 'Precio total ascendente';

  @override
  String get total_price_desc => 'Precio total descendente';

  @override
  String get clear_all_filters => 'Borrar todos los filtros';

  @override
  String get scan_barcode => 'Escanear código para almacenar';

  @override
  String get search_items => 'Buscar artículos...';

  @override
  String get no_items => 'No hay artículos por el momento';

  @override
  String get no_items_description =>
      'Haga clic en el botón de abajo para agregar el primer artículo';

  @override
  String get expired => 'Caducado';

  @override
  String get expiring_soon => 'A punto de expirar';

  @override
  String get warranty_expired => 'La garantía ha expirado';

  @override
  String get warranty_expiring_soon => 'La garantía está por expirar';

  @override
  String days_remaining(int count) {
    return 'Quedan $count días';
  }

  @override
  String expired_days_ago(int count) {
    return 'Ha expirado $count días';
  }

  @override
  String get delete_item => 'Eliminar artículo';

  @override
  String delete_item_confirm(String name) {
    return '¿Está seguro de que desea eliminar \"$name\"?';
  }

  @override
  String get item_deleted => 'El artículo ha sido eliminado';

  @override
  String get failed_to_delete => 'Eliminación fallida';

  @override
  String failed_to_delete_message(String error) {
    return 'No se puede eliminar el artículo: $error';
  }

  @override
  String get date_range_filter => 'Filtro por rango de fechas';

  @override
  String get price_range_filter => 'Filtrar por rango de precios';

  @override
  String get my_items => 'Mis artículos';

  @override
  String get click_fab_to_add_item =>
      'Haz clic en el botón de la esquina inferior derecha para añadir artículos';

  @override
  String get confirm_delete => 'Confirmar eliminación';

  @override
  String get filter_options => 'Opciones de filtrado';

  @override
  String get filter_by_type_category_location =>
      'Filtrar artículos por tipo, categoría y ubicación';

  @override
  String categories_count(int count) {
    return '$count categorías';
  }

  @override
  String get all_categories => 'Todas las categorías';

  @override
  String get no_category_data => 'Sin datos de categoría';

  @override
  String get storage_location => 'Lugar de almacenamiento';

  @override
  String locations_count(int count) {
    return '$count lugares';
  }

  @override
  String get all_locations => 'Todos los lugares';

  @override
  String get no_location_data => 'No hay datos de ubicación por el momento';

  @override
  String get date_range => 'Rango de fechas';

  @override
  String get select_date_range => 'Seleccionar rango de fechas';

  @override
  String get price_range => 'Rango de precios';

  @override
  String get unit_price_range => 'Rango de precios unitarios';

  @override
  String get min_unit_price => 'Precio mínimo por unidad';

  @override
  String get max_unit_price => 'Precio unitario más alto';

  @override
  String get total_price_range => 'Rango de precio total';

  @override
  String get min_total_price => 'Precio total mínimo';

  @override
  String get max_total_price => 'Precio máximo total';

  @override
  String get clear_price_filter => 'Borrar el filtro de precios';

  @override
  String get place_barcode_in_frame =>
      'Coloca el código de barras dentro del marco para escanear';

  @override
  String get item_already_exists => 'El producto ya existe';

  @override
  String barcode_with_value(String barcode) {
    return 'Código de barras: $barcode';
  }

  @override
  String name_with_value(String name) {
    return 'Nombre: $name';
  }

  @override
  String category_with_value(String category) {
    return 'Categoría: $category';
  }

  @override
  String current_quantity_with_value(String quantity, String unit) {
    return 'Cantidad actual: $quantity$unit';
  }

  @override
  String get please_select_operation => 'Por favor, seleccione una operación:';

  @override
  String get outbound => 'Salida de almacén';

  @override
  String get inbound => 'Ingresar al almacén';

  @override
  String get inbound_quantity => 'Cantidad de entrada en almacén';

  @override
  String get outbound_quantity => 'Cantidad de salida de almacén';

  @override
  String get quantity => 'Cantidad';

  @override
  String get enter_inbound_quantity =>
      'Por favor, introduzca la cantidad de entrada en almacén';

  @override
  String get enter_outbound_quantity =>
      'Por favor, introduzca la cantidad de salida de almacén';

  @override
  String delete_item_confirm_with_irreversible(String name) {
    return '¿Está seguro de que desea eliminar «$name»? Esta acción no se puede deshacer.';
  }

  @override
  String get database_reset =>
      'La base de datos ha sido reiniciada, se recreará la estructura de las tablas';

  @override
  String database_reset_error(String error) {
    return 'Error al restablecer la base de datos: $error';
  }

  @override
  String mock_data_init_failed(String error) {
    return 'Inicialización de datos simulados fallida: $error';
  }

  @override
  String get solution_steps => 'Solución:';

  @override
  String get solution_step_1 => '1. Desinstalar la aplicación y reinstalarla';

  @override
  String get solution_step_2 => '2. O borrar los datos de la aplicación';

  @override
  String get solution_step_3 =>
      '3. O configure resetDatabaseOnStart como true y luego vuelva a ejecutar';

  @override
  String notification_service_init_failed(String error) {
    return 'Error al inicializar el servicio de recordatorio: $error';
  }

  @override
  String check_calendar_account_failed(String error) {
    return 'Error al verificar la cuenta del calendario: $error';
  }

  @override
  String create_calendar_failed(String error) {
    return 'Error al crear el calendario: $error';
  }

  @override
  String add_calendar_event_failed(String error) {
    return 'Error al agregar evento al calendario: $error';
  }

  @override
  String delete_calendar_event_failed(String error) {
    return 'Error al eliminar el evento del calendario: $error';
  }

  @override
  String set_permission_message_failed(String error) {
    return 'Error al establecer el mensaje de aviso de permisos: $error';
  }

  @override
  String mock_data_init_success(int count) {
    return 'Se ha inicializado correctamente $count datos simulados';
  }

  @override
  String database_has_data(int count) {
    return 'La base de datos ya tiene $count datos, se omite la inicialización de datos de simulación';
  }

  @override
  String get database_structure_mismatch =>
      'Podría ser que la estructura de la base de datos no coincida, se recomienda borrar los datos de la aplicación o reinstalarla';

  @override
  String get old_database_deleted =>
      'Se han eliminado los archivos de la base de datos antiguos';

  @override
  String get backup_data_empty =>
      'Los datos de copia de seguridad están vacíos';

  @override
  String get backup_file_not_found =>
      'El archivo de copia de seguridad no existe';

  @override
  String file_not_utf8(String error) {
    return 'La codificación del archivo no es un formato UTF-8 válido. Por favor, asegúrese de que el archivo esté guardado con codificación UTF-8. Detalles del error: $error';
  }

  @override
  String file_not_found(String filePath) {
    return 'Archivo no encontrado: $filePath';
  }

  @override
  String file_empty(String filePath) {
    return 'El archivo está vacío: $filePath';
  }

  @override
  String get file_content_empty =>
      'El contenido del archivo está vacío después de la decodificación, puede ser que la codificación no coincida';

  @override
  String field_cannot_be_empty(String fieldName) {
    return '$fieldName no puede estar vacío';
  }

  @override
  String field_min_length(String fieldName, int minLength) {
    return '$fieldName no puede tener menos de $minLength caracteres';
  }

  @override
  String field_max_length(String fieldName, int maxLength) {
    return 'La longitud de $fieldName no puede exceder $maxLength caracteres';
  }

  @override
  String field_invalid_email(String fieldName) {
    return 'Por favor, introduzca una dirección $fieldName válida';
  }

  @override
  String field_invalid_number(String fieldName, String numberType) {
    return '$fieldName debe ser $numberType';
  }

  @override
  String field_min_value(String fieldName, double min) {
    return '$fieldName no puede ser menor que $min';
  }

  @override
  String field_max_value(String fieldName, double max) {
    return '$fieldName no puede ser mayor que $max';
  }

  @override
  String field_positive_integer(String fieldName) {
    return '$fieldName debe ser un número entero positivo';
  }

  @override
  String field_greater_than_zero(String fieldName) {
    return '$fieldName debe ser mayor que 0';
  }

  @override
  String field_positive_number(String fieldName) {
    return '$fieldName debe ser un número positivo';
  }

  @override
  String field_invalid_date(String fieldName) {
    return 'Por favor, introduzca un $fieldName válido';
  }

  @override
  String field_date_not_past(String fieldName) {
    return '$fieldName no puede ser una fecha pasada';
  }

  @override
  String field_date_not_before(String fieldName, String minDate) {
    return '$fieldName no puede ser antes de $minDate';
  }

  @override
  String field_date_not_after(String fieldName, String maxDate) {
    return '$fieldName no puede ser posterior a $maxDate';
  }

  @override
  String field_invalid_value(String fieldName) {
    return 'Por favor, introduzca un $fieldName válido';
  }

  @override
  String password_min_length(String fieldName) {
    return '$fieldName no puede tener menos de 8 caracteres';
  }

  @override
  String password_uppercase_required(String fieldName) {
    return '$fieldName debe contener al menos una letra mayúscula';
  }

  @override
  String password_lowercase_required(String fieldName) {
    return '$fieldName debe contener al menos una letra minúscula';
  }

  @override
  String password_digit_required(String fieldName) {
    return '$fieldName debe contener al menos un número';
  }

  @override
  String password_special_char_required(String fieldName) {
    return '$fieldName debe contener al menos un carácter especial';
  }

  @override
  String get passwords_not_match => 'Las contraseñas ingresadas no coinciden';

  @override
  String get item_name_cannot_be_empty =>
      'El nombre del artículo no puede estar vacío';

  @override
  String name_max_length(int maxLength) {
    return 'El nombre no puede exceder $maxLength caracteres';
  }

  @override
  String quantity_min(int minQuantity) {
    return 'La cantidad no puede ser menor que $minQuantity';
  }

  @override
  String quantity_max(int maxQuantity) {
    return 'La cantidad no puede exceder $maxQuantity';
  }

  @override
  String get unit_price_not_negative =>
      'El precio unitario no puede ser negativo';

  @override
  String unit_price_max(double maxUnitPrice) {
    return 'El precio unitario no puede superar $maxUnitPrice';
  }

  @override
  String get set_production_expiry_for_validity =>
      'Por favor, establezca la fecha de producción y la fecha de caducidad para calcular automáticamente el período de validez';

  @override
  String get set_purchase_warranty_for_validity =>
      'Por favor, establezca la fecha de compra y la fecha de caducidad para calcular automáticamente el período de garantía';

  @override
  String get calendar_account_creation_failed =>
      'No se puede crear la cuenta de calendario, por favor verifique la configuración del calendario del sistema';

  @override
  String get test_notification => 'Notificación de prueba';

  @override
  String get test_notification_description =>
      'Esta es una notificación de prueba, utilizada para verificar la función de recordatorio local';

  @override
  String get day_unit => 'cielo';

  @override
  String days_with_value(int days) {
    return '$days días';
  }

  @override
  String get item_saved => 'El artículo ha sido guardado';

  @override
  String get item_updated => 'El artículo ha sido actualizado';

  @override
  String get item_added => 'Artículo agregado';

  @override
  String get save_success => 'Guardado con éxito';

  @override
  String get update_success => 'Actualización exitosa';

  @override
  String get delete_success => 'Eliminado con éxito';

  @override
  String get save_failed => 'Error al guardar';

  @override
  String get update_failed => 'Actualización fallida';

  @override
  String get delete_failed => 'Eliminación fallida';

  @override
  String get test_calendar_event => 'Probar eventos del calendario';

  @override
  String get test_calendar_event_description =>
      'Este es un evento de prueba, utilizado para verificar la función del calendario';

  @override
  String get in_app => 'Dentro de la aplicación';

  @override
  String get enable_alert => 'Activar recordatorio de vencimiento';

  @override
  String get alert_method => 'Método de recordatorio';

  @override
  String get alert_method_in_app => 'Solo dentro de la aplicación';

  @override
  String get alert_method_calendar => 'Solo calendario';

  @override
  String get alert_method_both => 'ambos';

  @override
  String get alert_days_before => 'Días de aviso anticipado';

  @override
  String get use_global_setting => 'Usar configuración global';

  @override
  String get barcode_label => 'Código de barras';

  @override
  String get name_label => 'Nombre';

  @override
  String get category_label => 'Clasificación';

  @override
  String get current_quantity => 'Cantidad actual';

  @override
  String get select_operation => 'Por favor, seleccione una operación';

  @override
  String get unit => 'unidad';

  @override
  String get custom_unit => 'Unidad personalizada';

  @override
  String get enter_unit => 'Por favor, ingrese la unidad';

  @override
  String get custom_location => 'Ubicación personalizada';

  @override
  String get enter_storage_location =>
      'Por favor, introduzca el lugar de almacenamiento';

  @override
  String get scan => 'Escanear código';

  @override
  String get scan_to_stock => 'Escanear código para almacenar';

  @override
  String get item_categories => 'Clasificación de artículos';

  @override
  String get storage_locations => 'Lugar de almacenamiento';

  @override
  String get place_barcode_in_frame_to_scan =>
      'Coloque el código de barras dentro del marco para escanear';

  @override
  String get barcode => 'Código de barras';

  @override
  String get enter_barcode_or_scan =>
      'Por favor, introduzca el código de barras o escanee el código';

  @override
  String get basic_information => 'Información básica';

  @override
  String get item_name => 'Nombre del artículo';

  @override
  String get enter_item_name => 'Por favor, introduzca el nombre del artículo';

  @override
  String get enter_category_name =>
      'Por favor, introduzca el nombre de la categoría';

  @override
  String item_increased(String itemName, String quantity, String unit) {
    return 'Se ha añadido $itemName $quantity$unit';
  }

  @override
  String item_decreased(String itemName, String quantity, String unit) {
    return 'Se ha reducido $itemName $quantity$unit';
  }
}
