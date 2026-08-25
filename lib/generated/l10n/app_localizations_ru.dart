// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get app_name => 'Сокровища в ладони';

  @override
  String get cancel => 'Отменить';

  @override
  String get confirm => 'Подтвердить';

  @override
  String get save => 'Сохранить';

  @override
  String get delete => 'Удалить';

  @override
  String get edit => 'Редактировать';

  @override
  String get add => 'Добавить';

  @override
  String get edit_item => 'Редактировать предмет';

  @override
  String get add_item => 'Добавить предмет';

  @override
  String get search => 'поиск';

  @override
  String get settings => 'Настройка';

  @override
  String get language_settings => 'Языковые настройки';

  @override
  String get language_settings_description =>
      'Настроить язык отображения приложения';

  @override
  String get system_default => 'Системные по умолчанию';

  @override
  String get use_system_language => 'Использовать язык системы';

  @override
  String get language_change_hint =>
      'Изменение языка вступит в силу после перезапуска приложения';

  @override
  String get back => 'Возврат';

  @override
  String get next => 'Следующий шаг';

  @override
  String get done => 'Завершено';

  @override
  String get loading => 'Загрузка...';

  @override
  String get error => 'ошибка';

  @override
  String get success => 'успех';

  @override
  String get warning => 'Предупреждение';

  @override
  String get info => 'информация';

  @override
  String get select_alert_days => 'Выбрать количество дней для напоминания';

  @override
  String get custom => 'Настройка';

  @override
  String custom_days(int days) {
    return 'Пользовательский ($days дней)';
  }

  @override
  String current_selection(int days) {
    return 'Текущий выбор: $days дней';
  }

  @override
  String alert_days_range(int min, int max) {
    return 'Диапазон дней напоминания: $min-$max дней';
  }

  @override
  String get enter_days => 'Пожалуйста, введите количество дней напоминания';

  @override
  String get days => 'дни';

  @override
  String enter_valid_days(int min, int max) {
    return 'Пожалуйста, введите число между $min и $max';
  }

  @override
  String get alert_settings => 'Настройка предупреждений';

  @override
  String get calendar_settings => 'Настройки календаря';

  @override
  String get calendar_sync => 'Синхронизация календаря';

  @override
  String get calendar_sync_desc =>
      'После включения будет запрошен доступ к календарю';

  @override
  String get add_test_calendar_event => 'Добавить событие календаря для теста';

  @override
  String get enable_calendar_sync_first =>
      'Пожалуйста, сначала включите переключатель «Синхронизация календаря»';

  @override
  String get app_alert_settings => 'Настройки уведомлений приложения';

  @override
  String get local_alerts => 'Местное напоминание';

  @override
  String get local_alerts_desc =>
      'Включите, чтобы получать уведомления о просрочке в приложении';

  @override
  String get send_test_notification => 'Отправить тестовое уведомление';

  @override
  String get enable_local_alerts_first =>
      'Пожалуйста, сначала включите переключатель «Местные напоминания»';

  @override
  String get alert_days_settings => 'Настройка количества дней для напоминания';

  @override
  String get advance_alert_days =>
      'Количество дней предварительного уведомления';

  @override
  String get advance_alert_days_desc =>
      'Настроить, за сколько дней заранее напоминать о истечении срока годности или гарантии товара';

  @override
  String get calendar_permission_request => 'Запрос разрешения на календарь';

  @override
  String get calendar_permission_desc =>
      'Необходим доступ к календарю для синхронизации напоминаний о предметах. Разрешить?';

  @override
  String get allow => 'разрешать';

  @override
  String get calendar_permission_granted =>
      'Разрешение на доступ к календарю предоставлено, синхронизация календаря включена';

  @override
  String get calendar_permission_denied =>
      'Доступ к календарю был отклонен, невозможно включить синхронизацию календаря';

  @override
  String get calendar_permission_permanently_denied =>
      'Доступ навсегда запрещен';

  @override
  String get calendar_permission_permanently_denied_desc =>
      'Разрешение на календарь было навсегда отклонено, пожалуйста, включите разрешение вручную в настройках системы.';

  @override
  String get go_to_settings => 'Перейти в настройки';

  @override
  String get calendar_account_failed =>
      'Разрешение на календарь предоставлено, но создать учетную запись календаря невозможно. Пожалуйста, проверьте настройки системного календаря.';

  @override
  String get calendar_account_created =>
      'Разрешение на доступ к календарю предоставлено, локальная учетная запись календаря создана';

  @override
  String get calendar_account_creating =>
      'Календарная учетная запись успешно создана, но системе может потребоваться некоторое время для вступления в силу';

  @override
  String get test_calendar_event_added =>
      'Тестовое событие календаря успешно добавлено';

  @override
  String get test_calendar_event_failed =>
      'Не удалось добавить событие в тестовый календарь, пожалуйста, проверьте настройки календаря';

  @override
  String get calendar_permission_required =>
      'Требуются разрешения на календарь для добавления тестового события';

  @override
  String get test_notification_sent => 'Тестовое уведомление отправлено';

  @override
  String test_notification_failed(String error) {
    return 'Не удалось отправить тестовое уведомление: $error';
  }

  @override
  String get notification_permission_required =>
      'Требуется разрешение на уведомления, чтобы включить локальные напоминания';

  @override
  String operation_failed(String error) {
    return 'Операция не удалась: $error';
  }

  @override
  String get notification_channel_name =>
      'Уведомление о предупреждении о товаре';

  @override
  String get notification_channel_description =>
      'Напоминание об истечении срока годности или гарантии товара';

  @override
  String get item_category_food => 'продукты питания';

  @override
  String get item_category_daily_necessities =>
      'предметы повседневного обихода';

  @override
  String get item_category_cosmetics => 'косметика';

  @override
  String get item_category_medicine => 'лекарство';

  @override
  String get item_category_electronics => 'электронные продукты';

  @override
  String get item_category_furniture => 'мебель';

  @override
  String get item_category_clothing => 'Одежда';

  @override
  String get item_category_books => 'книги';

  @override
  String get item_category_other => 'другое';

  @override
  String get purchase_channel_online_mall => 'онлайн-магазин';

  @override
  String get purchase_channel_physical_store => 'Физический магазин';

  @override
  String get purchase_channel_supermarket => 'супермаркет';

  @override
  String get purchase_channel_specialty_store => 'фирменный магазин';

  @override
  String get purchase_channel_secondhand_market => 'рынок подержанных товаров';

  @override
  String get purchase_channel_other => 'другое';

  @override
  String get default_category => 'другой';

  @override
  String get default_purchase_channel => 'онлайн-магазин';

  @override
  String get item_category => 'Категория предметов';

  @override
  String get custom_category => 'Пользовательская категория';

  @override
  String get backup_data => 'Резервное копирование данных';

  @override
  String get backup_data_description =>
      'Собрать все данные (включая изображения) в ZIP-файл для резервного копирования';

  @override
  String get backup_all_data => 'Резервное копирование всех данных';

  @override
  String get backup_success => 'Резервное копирование успешно';

  @override
  String backup_failed(String error) {
    return 'Резервное копирование не удалось: $error';
  }

  @override
  String get restore_data => 'Восстановить данные';

  @override
  String get restore_data_description =>
      'Восстановить все данные из ZIP-резервной копии';

  @override
  String get export_data => 'Экспорт данных';

  @override
  String get export_data_description => 'Экспорт в формате CSV, TXT, SQL';

  @override
  String get import_data => 'Импорт данных';

  @override
  String get import_data_description => 'Импорт данных из файлов CSV, TXT, SQL';

  @override
  String get alert_settings_description =>
      'Настройки напоминаний календаря и уведомлений приложений';

  @override
  String get about => 'О';

  @override
  String get about_description => 'Информация о приложении и версия';

  @override
  String get select_backup_file_first =>
      'Пожалуйста, сначала выберите файл резервной копии';

  @override
  String get confirm_restore => 'Подтвердить восстановление';

  @override
  String get confirm_restore_message =>
      'Восстановление резервной копии очистит все существующие данные и заменит их данными из резервной копии. Эта операция необратима. Вы уверены, что хотите продолжить?';

  @override
  String get confirm_again => 'Снова подтвердить';

  @override
  String get confirm_restore_warning =>
      'Вы уверены, что хотите очистить все существующие данные и восстановить резервную копию? Эта операция не подлежит восстановлению!';

  @override
  String get confirm_restore_button => 'Подтвердить восстановление';

  @override
  String restore_success(int count) {
    return 'Восстановление успешно, всего $count предметов';
  }

  @override
  String restore_failed(String error) {
    return 'Восстановление не удалось: $error';
  }

  @override
  String get select_backup_file => 'Выбрать файл резервной копии';

  @override
  String get restore_backup => 'Восстановить резервную копию';

  @override
  String selected_file(String filename) {
    return 'Выбран файл: $filename';
  }

  @override
  String get export_success => 'Данные успешно экспортированы';

  @override
  String export_failed(String error) {
    return 'Экспорт не удался: $error';
  }

  @override
  String get format_csv => 'CSV';

  @override
  String get format_txt => 'TXT';

  @override
  String get format_sql => 'SQL';

  @override
  String get duplicate_data_handling => 'Обработка повторяющихся данных';

  @override
  String get duplicate_data_detected =>
      'Обнаружены повторяющиеся данные, пожалуйста, выберите способ обработки:';

  @override
  String get skip => 'Пропустить';

  @override
  String get overwrite => 'покрытие';

  @override
  String get skip_all => 'Пропустить всё';

  @override
  String get overwrite_all => 'Полное покрытие';

  @override
  String get select_import_format_first =>
      'Пожалуйста, сначала выберите формат импорта';

  @override
  String get confirm_import => 'Подтвердить импорт';

  @override
  String get confirm_import_message =>
      'Импорт данных перезапишет существующие данные, эта операция необратима. Вы действительно хотите продолжить?';

  @override
  String import_success(int count) {
    return 'Данные успешно импортированы, всего импортировано $count предметов';
  }

  @override
  String import_failed(String error) {
    return 'Импорт не удался: $error';
  }

  @override
  String get select_file => 'Выбрать файл';

  @override
  String get no_data => 'Нет данных';

  @override
  String get no_data_description =>
      'В данный момент нет данных, нажмите кнопку ниже, чтобы добавить первую запись!';

  @override
  String get load_failed => 'Ошибка загрузки';

  @override
  String get load_failed_description =>
      'Не удалось загрузить данные, пожалуйста, проверьте сетевое соединение и попробуйте снова';

  @override
  String get retry => 'Повторить попытку';

  @override
  String get network_connection_failed => 'Сбой сетевого подключения';

  @override
  String get network_connection_failed_description =>
      'Пожалуйста, проверьте подключение к сети и попробуйте снова';

  @override
  String get no_results => 'Результаты не найдены';

  @override
  String get no_results_description =>
      'Попробуйте поиск с другими ключевыми словами';

  @override
  String get clear_search => 'Очистить поиск';

  @override
  String get insufficient_permission => 'Недостаточно прав';

  @override
  String get insufficient_permission_description =>
      'Для использования этой функции требуется соответствующее разрешение';

  @override
  String get request_permission => 'Запрос разрешения';

  @override
  String get app_info => 'Информация о приложении';

  @override
  String get version => 'версия';

  @override
  String get developer => 'Разработчик';

  @override
  String get device_info => 'Информация об устройстве';

  @override
  String get device_model => 'Модель устройства';

  @override
  String get brand => 'бренд';

  @override
  String get device_name => 'Название устройства';

  @override
  String get product => 'продукт';

  @override
  String get hardware => 'Аппаратное обеспечение';

  @override
  String get android_version => 'Версия Android';

  @override
  String get sdk_version => 'Версия SDK';

  @override
  String get system_name => 'название системы';

  @override
  String get operating_system => 'Операционная система';

  @override
  String get system_version => 'Версия системы';

  @override
  String get dart_version => 'Версия Dart';

  @override
  String get device_identifier => 'Идентификатор устройства';

  @override
  String get computer_name => 'Имя компьютера';

  @override
  String get build_number => 'Номер версии';

  @override
  String error_getting_device_info(String error) {
    return 'Не удалось получить информацию об устройстве: $error';
  }

  @override
  String get features => 'Описание функций';

  @override
  String get app_description => 'Приложение для управления умными предметами';

  @override
  String get app_description_detail =>
      'Помогает вам управлять сроками годности предметов, сроками гарантии и другой информацией, а также предоставляет функцию умных напоминаний.';

  @override
  String get consumable => 'расходные материалы';

  @override
  String get durable => 'товары длительного пользования';

  @override
  String get sort => 'сортировка';

  @override
  String get name_asc => 'По возрастанию названия';

  @override
  String get name_desc => 'Сортировка по имени по убыванию';

  @override
  String get date_asc => 'по возрастанию даты';

  @override
  String get date_desc => 'Дата по убыванию';

  @override
  String get price_asc => 'по возрастанию цены за единицу';

  @override
  String get price_desc => 'по убыванию цены за единицу';

  @override
  String get quantity_asc => 'по возрастанию количества';

  @override
  String get quantity_desc => 'по убыванию количества';

  @override
  String get total_price_asc => 'По возрастанию общей цены';

  @override
  String get total_price_desc => 'Общая цена по убыванию';

  @override
  String get clear_all_filters => 'Очистить все фильтры';

  @override
  String get scan_barcode => 'Сканировать код для поступления на склад';

  @override
  String get search_items => 'Поиск предмета...';

  @override
  String get no_items => 'Нет предметов';

  @override
  String get no_items_description =>
      'Нажмите кнопку ниже, чтобы добавить первый предмет';

  @override
  String get expired => 'Просрочено';

  @override
  String get expiring_soon => 'Скоро истечет';

  @override
  String get warranty_expired => 'Гарантия истекла';

  @override
  String get warranty_expiring_soon => 'Гарантия скоро истекает';

  @override
  String days_remaining(int count) {
    return 'Осталось $count дней';
  }

  @override
  String expired_days_ago(int count) {
    return 'Просрочено на $count дней';
  }

  @override
  String get delete_item => 'Удалить предмет';

  @override
  String delete_item_confirm(String name) {
    return 'Вы уверены, что хотите удалить \"$name\"?';
  }

  @override
  String get item_deleted => 'Предмет удалён';

  @override
  String get failed_to_delete => 'Удаление не удалось';

  @override
  String failed_to_delete_message(String error) {
    return 'Невозможно удалить предмет: $error';
  }

  @override
  String get date_range_filter => 'Фильтр по диапазону дат';

  @override
  String get price_range_filter => 'Фильтр по диапазону цен';

  @override
  String get my_items => 'Мои вещи';

  @override
  String get click_fab_to_add_item =>
      'Нажмите кнопку в правом нижнем углу, чтобы добавить предмет';

  @override
  String get confirm_delete => 'Подтвердить удаление';

  @override
  String get filter_options => 'Фильтровать варианты';

  @override
  String get filter_by_type_category_location =>
      'Фильтровать предметы по типу, категории и местоположению';

  @override
  String categories_count(int count) {
    return '$count категорий';
  }

  @override
  String get all_categories => 'Все категории';

  @override
  String get no_category_data => 'Нет данных по категориям';

  @override
  String get storage_location => 'место хранения';

  @override
  String locations_count(int count) {
    return '$count мест';
  }

  @override
  String get all_locations => 'Все места';

  @override
  String get no_location_data => 'Нет данных о местоположении';

  @override
  String get date_range => 'Диапазон дат';

  @override
  String get select_date_range => 'Выбрать диапазон дат';

  @override
  String get price_range => 'Ценовой диапазон';

  @override
  String get unit_price_range => 'Диапазон цен за единицу';

  @override
  String get min_unit_price => 'минимальная цена за единицу';

  @override
  String get max_unit_price => 'Максимальная цена за единицу';

  @override
  String get total_price_range => 'Диапазон общей цены';

  @override
  String get min_total_price => 'Минимальная общая цена';

  @override
  String get max_total_price => 'Максимальная общая цена';

  @override
  String get clear_price_filter => 'Очистить фильтр цены';

  @override
  String get place_barcode_in_frame =>
      'Поместите штрихкод в рамку для сканирования';

  @override
  String get item_already_exists => 'Товар уже существует';

  @override
  String barcode_with_value(String barcode) {
    return 'Штрихкод: $barcode';
  }

  @override
  String name_with_value(String name) {
    return 'Название: $name';
  }

  @override
  String category_with_value(String category) {
    return 'Категория: $category';
  }

  @override
  String current_quantity_with_value(String quantity, String unit) {
    return 'Текущее количество: $quantity$unit';
  }

  @override
  String get please_select_operation => 'Пожалуйста, выберите действие:';

  @override
  String get outbound => 'выезд со склада';

  @override
  String get inbound => 'в склад';

  @override
  String get inbound_quantity => 'Количество на складе';

  @override
  String get outbound_quantity => 'Количество отгрузки';

  @override
  String get quantity => 'количество';

  @override
  String get enter_inbound_quantity =>
      'Пожалуйста, введите количество для поступления на склад';

  @override
  String get enter_outbound_quantity =>
      'Пожалуйста, введите количество для отгрузки';

  @override
  String delete_item_confirm_with_irreversible(String name) {
    return 'Вы уверены, что хотите удалить «$name»? Это действие нельзя отменить.';
  }

  @override
  String get database_reset =>
      'База данных была сброшена, структура таблицы будет создана заново';

  @override
  String database_reset_error(String error) {
    return 'Ошибка при сбросе базы данных: $error';
  }

  @override
  String mock_data_init_failed(String error) {
    return 'Не удалось инициализировать модельные данные: $error';
  }

  @override
  String get solution_steps => 'Решение:';

  @override
  String get solution_step_1 => '1. Удалите приложение и установите его заново';

  @override
  String get solution_step_2 => '2. Или очистить данные приложения';

  @override
  String get solution_step_3 =>
      '3. Или после установки resetDatabaseOnStart в true запустите снова';

  @override
  String notification_service_init_failed(String error) {
    return 'Не удалось инициализировать службу уведомлений: $error';
  }

  @override
  String check_calendar_account_failed(String error) {
    return 'Не удалось проверить аккаунт календаря: $error';
  }

  @override
  String create_calendar_failed(String error) {
    return 'Не удалось создать календарь: $error';
  }

  @override
  String add_calendar_event_failed(String error) {
    return 'Не удалось добавить событие в календарь: $error';
  }

  @override
  String delete_calendar_event_failed(String error) {
    return 'Не удалось удалить событие календаря: $error';
  }

  @override
  String set_permission_message_failed(String error) {
    return 'Не удалось установить сообщение о запросе разрешения: $error';
  }

  @override
  String mock_data_init_success(int count) {
    return 'Успешно инициализировано $count симулированных данных';
  }

  @override
  String database_has_data(int count) {
    return 'В базе данных уже есть $count записей, пропуск инициализации имитационных данных';
  }

  @override
  String get database_structure_mismatch =>
      'Возможно, структура базы данных не соответствует, рекомендуется очистить данные приложения или переустановить его';

  @override
  String get old_database_deleted => 'Старый файл базы данных удален';

  @override
  String get backup_data_empty => 'Резервные данные пусты';

  @override
  String get backup_file_not_found => 'Резервный файл не существует';

  @override
  String file_not_utf8(String error) {
    return 'Кодировка файла не является допустимым форматом UTF-8. Пожалуйста, убедитесь, что файл сохранен в кодировке UTF-8. Подробности ошибки: $error';
  }

  @override
  String file_not_found(String filePath) {
    return 'Файл не существует: $filePath';
  }

  @override
  String file_empty(String filePath) {
    return 'Файл пуст: $filePath';
  }

  @override
  String get file_content_empty =>
      'После декодирования содержимое файла пусто, возможно, кодировка не совпадает';

  @override
  String field_cannot_be_empty(String fieldName) {
    return '$fieldName не может быть пустым';
  }

  @override
  String field_min_length(String fieldName, int minLength) {
    return '$fieldName не может быть короче $minLength символов';
  }

  @override
  String field_max_length(String fieldName, int maxLength) {
    return '$fieldName не может превышать $maxLength символов';
  }

  @override
  String field_invalid_email(String fieldName) {
    return 'Пожалуйста, введите действительный адрес $fieldName';
  }

  @override
  String field_invalid_number(String fieldName, String numberType) {
    return '$fieldName должен быть $numberType';
  }

  @override
  String field_min_value(String fieldName, double min) {
    return '$fieldName не может быть меньше $min';
  }

  @override
  String field_max_value(String fieldName, double max) {
    return '$fieldName не может быть больше $max';
  }

  @override
  String field_positive_integer(String fieldName) {
    return '$fieldName должен быть положительным целым числом';
  }

  @override
  String field_greater_than_zero(String fieldName) {
    return '$fieldName должен быть больше 0';
  }

  @override
  String field_positive_number(String fieldName) {
    return '$fieldName должен быть положительным числом';
  }

  @override
  String field_invalid_date(String fieldName) {
    return 'Пожалуйста, введите действительный $fieldName';
  }

  @override
  String field_date_not_past(String fieldName) {
    return '$fieldName не может быть датой в прошлом';
  }

  @override
  String field_date_not_before(String fieldName, String minDate) {
    return '$fieldName не может быть раньше $minDate';
  }

  @override
  String field_date_not_after(String fieldName, String maxDate) {
    return '$fieldName не может быть позже $maxDate';
  }

  @override
  String field_invalid_value(String fieldName) {
    return 'Пожалуйста, введите действительный $fieldName';
  }

  @override
  String password_min_length(String fieldName) {
    return '$fieldName длина не может быть меньше 8 символов';
  }

  @override
  String password_uppercase_required(String fieldName) {
    return '$fieldName должен содержать как минимум одну заглавную букву';
  }

  @override
  String password_lowercase_required(String fieldName) {
    return '$fieldName должен содержать как минимум одну строчную букву';
  }

  @override
  String password_digit_required(String fieldName) {
    return '$fieldName должен содержать хотя бы одну цифру';
  }

  @override
  String password_special_char_required(String fieldName) {
    return '$fieldName должен содержать как минимум один специальный символ';
  }

  @override
  String get passwords_not_match => 'Введённые дважды пароли не совпадают';

  @override
  String get item_name_cannot_be_empty =>
      'Название предмета не может быть пустым';

  @override
  String name_max_length(int maxLength) {
    return 'Название не может превышать $maxLength символов';
  }

  @override
  String quantity_min(int minQuantity) {
    return 'Количество не может быть меньше $minQuantity';
  }

  @override
  String quantity_max(int maxQuantity) {
    return 'Количество не может превышать $maxQuantity';
  }

  @override
  String get unit_price_not_negative =>
      'Цена за единицу не может быть отрицательной';

  @override
  String unit_price_max(double maxUnitPrice) {
    return 'Цена за единицу не может превышать $maxUnitPrice';
  }

  @override
  String get set_production_expiry_for_validity =>
      'Пожалуйста, установите дату производства и срок годности для автоматического расчета срока действия';

  @override
  String get set_purchase_warranty_for_validity =>
      'Пожалуйста, установите дату покупки и срок годности, чтобы автоматически рассчитать гарантийный срок';

  @override
  String get calendar_account_creation_failed =>
      'Не удалось создать учетную запись календаря, пожалуйста, проверьте настройки системного календаря';

  @override
  String get test_notification => 'Тестовое уведомление';

  @override
  String get test_notification_description =>
      'Это тестовое уведомление, предназначенное для проверки функции локальных напоминаний';

  @override
  String get day_unit => 'небо';

  @override
  String days_with_value(int days) {
    return '$days дней';
  }

  @override
  String get item_saved => 'Предмет сохранён';

  @override
  String get item_updated => 'Предмет обновлён';

  @override
  String get item_added => 'Товар добавлен';

  @override
  String get save_success => 'Сохранение успешно';

  @override
  String get update_success => 'Обновление успешно';

  @override
  String get delete_success => 'Удаление выполнено успешно';

  @override
  String get save_failed => 'Сохранение не удалось';

  @override
  String get update_failed => 'Обновление не удалось';

  @override
  String get delete_failed => 'Удаление не удалось';

  @override
  String get test_calendar_event => 'Тестовое событие календаря';

  @override
  String get test_calendar_event_description =>
      'Это тестовое событие, предназначенное для проверки функции календаря';

  @override
  String get in_app => 'в приложении';

  @override
  String get enable_alert => 'Включить напоминание об истечении срока';

  @override
  String get alert_method => 'Способ напоминания';

  @override
  String get alert_method_in_app => 'Только в приложении';

  @override
  String get alert_method_calendar => 'Только календарь';

  @override
  String get alert_method_both => 'оба';

  @override
  String get alert_days_before =>
      'Количество дней предварительного уведомления';

  @override
  String get use_global_setting => 'Использовать глобальные настройки';

  @override
  String get barcode_label => 'штрихкод';

  @override
  String get name_label => 'Название';

  @override
  String get category_label => 'Классификация';

  @override
  String get current_quantity => 'Текущее количество';

  @override
  String get select_operation => 'Пожалуйста, выберите действие';

  @override
  String get unit => 'единица';

  @override
  String get custom_unit => 'Пользовательская единица';

  @override
  String get enter_unit => 'Пожалуйста, введите единицу';

  @override
  String get custom_location => 'Пользовательское место';

  @override
  String get enter_storage_location => 'Пожалуйста, введите место хранения';

  @override
  String get scan => 'Сканировать QR-код';

  @override
  String get scan_to_stock => 'Сканировать код для поступления на склад';

  @override
  String get item_categories => 'Категория предметов';

  @override
  String get storage_locations => 'Место хранения';

  @override
  String get place_barcode_in_frame_to_scan =>
      'Поместите штрихкод в рамку для сканирования';

  @override
  String get barcode => 'штрихкод';

  @override
  String get enter_barcode_or_scan =>
      'Пожалуйста, введите штрихкод или отсканируйте его';

  @override
  String get basic_information => 'Основная информация';

  @override
  String get item_name => 'Название предмета';

  @override
  String get enter_item_name => 'Пожалуйста, введите название предмета';

  @override
  String get enter_category_name => 'Пожалуйста, введите название категории';

  @override
  String item_increased(String itemName, String quantity, String unit) {
    return 'Добавлено $itemName $quantity$unit';
  }

  @override
  String item_decreased(String itemName, String quantity, String unit) {
    return 'Уменьшено на $itemName $quantity$unit';
  }

  @override
  String get unsaved_changes => 'Несохранённые изменения';

  @override
  String get unsaved_changes_message =>
      'У вас есть несохранённые изменения, пожалуйста, выберите действие:';

  @override
  String get discard => 'отказаться';

  @override
  String get unit_piece => 'штука';

  @override
  String get unit_item => 'штука';

  @override
  String get unit_box => 'ящик';

  @override
  String get unit_package => 'пакет';

  @override
  String get unit_bottle => 'бутылка';

  @override
  String get unit_carton => 'коробка';

  @override
  String get unit_set => 'комплект';

  @override
  String get unit_kg => 'кг';

  @override
  String get unit_g => 'г';

  @override
  String get unit_l => 'L';

  @override
  String get unit_ml => 'мл';

  @override
  String get unit_m => 'м';

  @override
  String get unit_cm => 'см';

  @override
  String get quantity_label => 'количество';

  @override
  String get unit_price_label => 'Цена за единицу';

  @override
  String get currency_label => 'валюта';

  @override
  String get total_price_label => 'Общая стоимость:';

  @override
  String get storage_location_label => 'Место хранения';

  @override
  String get item_properties => 'Свойства предмета';

  @override
  String get expiry_date_label => 'Срок действия';

  @override
  String get warranty_expiry_date_label => 'Дата окончания гарантии';

  @override
  String get production_date_label => 'Дата производства';

  @override
  String get purchase_date_label => 'Дата покупки';

  @override
  String auto_calculated_from(String dateType) {
    return 'Автоматический расчет на основе $dateType и срока годности';
  }

  @override
  String get auto_calculated => 'Автоматический расчет';

  @override
  String get images_label => 'изображение';

  @override
  String get notes_label => 'Примечание';

  @override
  String get add_notes_hint => 'Добавить примечание (по желанию)';

  @override
  String get year_label => 'год';

  @override
  String get month_label => 'луна';

  @override
  String get day_label => 'небо';

  @override
  String selected_count(int count) {
    return 'Выбрано $count элементов';
  }

  @override
  String get select_all => 'Выбрать всё';

  @override
  String get deselect_all => 'Снять выделение со всех';

  @override
  String get batch_change_location => 'Массовая замена мест хранения';

  @override
  String confirm_delete_selected(int count) {
    return 'Вы уверены, что хотите удалить выбранные $count предмета(ов)?';
  }

  @override
  String deleted_count_items(int count) {
    return 'Удалено $count предметов';
  }

  @override
  String get no_storage_location_available =>
      'В настоящее время нет доступного места для хранения';

  @override
  String get batch_change_location_title => 'Массовая замена мест хранения';

  @override
  String moved_count_items_to_location(int count, String location) {
    return 'Перемещено $count предметов в $location';
  }

  @override
  String get operation_type_create => 'ввод';

  @override
  String get operation_type_update => 'Редактировать';

  @override
  String get operation_type_delete => 'Удалить';

  @override
  String get operation_type_inbound => 'в склад';

  @override
  String get operation_type_outbound => 'выезд со склада';

  @override
  String export_failed_message(String error) {
    return 'Экспорт не удался: $error';
  }

  @override
  String get clear_logs => 'Очистить журнал';

  @override
  String get confirm_clear_logs =>
      'Вы уверены, что хотите очистить все журналы операций? Это действие необратимо.';

  @override
  String get logs_cleared => 'Журнал очищен';

  @override
  String get operation_logs_title => 'Журнал операций';

  @override
  String get export_logs => 'Экспорт журнала';

  @override
  String get clear_logs_tooltip => 'Очистить журнал';

  @override
  String get no_operation_logs => 'Нет журналов операций';

  @override
  String get log_item_label => 'Предмет:';

  @override
  String get log_category_label => 'Категория:';

  @override
  String get log_type_label => 'Тип:';

  @override
  String get log_quantity_label => 'Количество:';

  @override
  String get log_unit_price_label => 'Цена за единицу:';

  @override
  String get log_total_price_label => 'Общая стоимость:';

  @override
  String get log_expiry_date_label => 'Срок годности:';

  @override
  String get log_warranty_date_label => 'Дата гарантии:';

  @override
  String get log_purchase_date_label => 'Дата покупки:';

  @override
  String get log_production_date_label => 'Дата производства:';

  @override
  String get log_shelf_life_label => 'Срок годности:';

  @override
  String get log_storage_location_label => 'Место хранения:';

  @override
  String get log_barcode_label => 'Штрихкод:';

  @override
  String get log_notes_label => 'Примечание:';

  @override
  String get log_alert_label => 'Предупреждение:';

  @override
  String get log_alert_days_label => 'Дни предупреждения:';

  @override
  String get log_quantity_change_label => 'Изменение количества:';

  @override
  String get log_field_changes_label => 'Изменить поле:';

  @override
  String get log_not_set => 'Не установлено';

  @override
  String get log_empty => 'пусто';

  @override
  String get log_alert_enabled => 'Включить';

  @override
  String get log_alert_disabled => 'Закрыть';

  @override
  String get operation_logs_menu => 'Журнал операций';

  @override
  String get operation_logs_description =>
      'Просмотр и восстановление записей операций';

  @override
  String operation_failed_message(String error) {
    return 'Операция не удалась: $error';
  }

  @override
  String get no_date => 'Без даты';

  @override
  String get shelf_life_months_suffix => 'месяцев';

  @override
  String get shelf_life_days_suffix => 'небо';

  @override
  String get alert_days_suffix => 'небо';

  @override
  String get unknown => 'неизвестно';

  @override
  String get developer_name => 'Лео';

  @override
  String get log_operation_date_label => 'Дата операции:';

  @override
  String get uncategorized => 'Неклассифицированный';

  @override
  String get no_location => 'без места';

  @override
  String get item_category_cannot_be_empty =>
      'Категория товара не может быть пустой';

  @override
  String get storage_location_cannot_be_empty =>
      'Место хранения не может быть пустым';

  @override
  String get created_at_asc => 'Добавить по возрастанию времени';

  @override
  String get created_at_desc => 'Добавить по убыванию времени';

  @override
  String get location_management => 'Управление складом';

  @override
  String get private_warehouses => 'частный репозиторий';

  @override
  String get public_warehouses => 'Общественная библиотека';

  @override
  String get is_public_warehouse => 'Общественная библиотека';

  @override
  String get public_warehouse_desc =>
      'Общая библиотека не имеет администратора, для выдачи и приема необходимо указывать оператора';

  @override
  String get manager => 'администратор';

  @override
  String get not_set => 'Не установлено';

  @override
  String get edit_location => 'Редактировать библиотеку';

  @override
  String get location_name => 'Название библиотеки';

  @override
  String get manager_name => 'Имя администратора';

  @override
  String get enter_manager_name => 'Пожалуйста, введите имя администратора';

  @override
  String get manager_name_required => 'Имя администратора не может быть пустым';

  @override
  String delete_location_confirm(String name) {
    return 'Вы уверены, что хотите удалить библиотеку «$name»?';
  }

  @override
  String get delete_location_has_items =>
      'В этой библиотеке есть предметы, удаление невозможно';

  @override
  String get default_manager => 'Администратор по умолчанию';

  @override
  String get default_manager_desc =>
      'Администратор по умолчанию при создании нового приватного репозитория';

  @override
  String get enter_default_manager =>
      'Пожалуйста, введите имя администратора по умолчанию';

  @override
  String get operator_name => 'Имя оператора';

  @override
  String get enter_operator_name => 'Пожалуйста, введите имя оператора';

  @override
  String get operator_name_required => 'Имя оператора не может быть пустым';

  @override
  String get no_manager => 'Нет администратора';

  @override
  String get log_operator_label => 'Оператор:';

  @override
  String get outbound_quantity_exceeds_current =>
      'Количество отгрузки не может превышать текущие запасы';
}
