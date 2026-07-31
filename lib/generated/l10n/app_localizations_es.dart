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
  String get search => 'Buscar';

  @override
  String get settings => 'Configuración';

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
  String custom_days(Object days) {
    return 'Personalizado ($days días)';
  }

  @override
  String alert_days_range(Object min, Object max) {
    return 'Rango de días de recordatorio: $min-$max días';
  }

  @override
  String get enter_days =>
      'Por favor, introduzca el número de días de recordatorio';

  @override
  String get days => 'días';

  @override
  String enter_valid_days(Object min, Object max) {
    return 'Por favor, introduzca un número entre $min y $max';
  }

  @override
  String get alert_settings => 'Configuración de alerta';

  @override
  String get calendar_settings => 'Configuración del calendario';

  @override
  String get calendar_sync => 'Sincronización del calendario';

  @override
  String get calendar_sync_desc =>
      'Se solicitará permiso para el calendario al activarlo';

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
  String test_notification_failed(Object error) {
    return 'Error al enviar la notificación de prueba: $error';
  }

  @override
  String get notification_permission_required =>
      'Se requieren permisos de notificación para habilitar los recordatorios locales';

  @override
  String operation_failed(Object error) {
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
  String get purchase_channel_physical_store => 'Tienda física';

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
  String backup_failed(Object error) {
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
      'Restaurar la copia de seguridad borrará todos los datos existentes y los reemplazará con los datos de la copia de seguridad. Esta acción no se puede deshacer. ¿Está seguro de que desea continuar?';

  @override
  String get confirm_again => 'Confirmar de nuevo';

  @override
  String get confirm_restore_warning =>
      '¿Está seguro de que desea borrar todos los datos existentes y restaurar la copia de seguridad? ¡Esta operación no se puede deshacer!';

  @override
  String get confirm_restore_button => 'Confirmar restauración';

  @override
  String restore_success(Object count) {
    return 'Restauración exitosa, un total de $count artículos';
  }

  @override
  String restore_failed(Object error) {
    return 'Restauración fallida: $error';
  }

  @override
  String get select_backup_file => 'Seleccionar archivo de copia de seguridad';

  @override
  String get restore_backup => 'Restaurar copia de seguridad';

  @override
  String selected_file(Object filename) {
    return 'Archivo seleccionado: $filename';
  }

  @override
  String get export_success => 'Exportación de datos exitosa';

  @override
  String export_failed(Object error) {
    return 'Exportación fallida: $error';
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
  String import_success(Object count) {
    return 'Importación de datos exitosa, se importaron $count artículos';
  }

  @override
  String import_failed(Object error) {
    return 'Importación fallida: $error';
  }

  @override
  String get select_file => 'Seleccionar archivo';
}
