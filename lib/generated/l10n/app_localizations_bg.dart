// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bulgarian (`bg`).
class AppLocalizationsBg extends AppLocalizations {
  AppLocalizationsBg([String locale = 'bg']) : super(locale);

  @override
  String get app_name => 'Място за съхранение на предмети';

  @override
  String get cancel => 'Откажи';

  @override
  String get confirm => 'Потвърди';

  @override
  String get save => 'Запази';

  @override
  String get delete => 'Изтриване';

  @override
  String get edit => 'Редактиране';

  @override
  String get add => 'Добавяне';

  @override
  String get edit_item => 'Редактиране на артикул';

  @override
  String get add_item => 'Добавяне на предмет';

  @override
  String get search => 'търсене';

  @override
  String get settings => 'Настройки';

  @override
  String get language_settings => 'Езикови настройки';

  @override
  String get language_settings_description =>
      'Настройване на езика за показване на приложението';

  @override
  String get system_default => 'Системни по подразбиране';

  @override
  String get use_system_language => 'Използвай системния език';

  @override
  String get language_change_hint =>
      'Промяната на езика ще влезе в сила след рестартиране на приложението';

  @override
  String get back => 'Връщане';

  @override
  String get next => 'Следваща стъпка';

  @override
  String get done => 'Завършено';

  @override
  String get loading => 'Зареждане...';

  @override
  String get error => 'грешка';

  @override
  String get success => 'успех';

  @override
  String get warning => 'Предупреждение';

  @override
  String get info => 'информация';

  @override
  String get select_alert_days => 'Изберете броя дни за напомняне';

  @override
  String get custom => 'Персонализиран';

  @override
  String custom_days(int days) {
    return 'Персонализирано ($days дни)';
  }

  @override
  String current_selection(int days) {
    return 'Текущ избор: $days дни';
  }

  @override
  String alert_days_range(int min, int max) {
    return 'Обхват на броя дни за напомняне: $min-$max дни';
  }

  @override
  String get enter_days => 'Моля, въведете броя дни за напомняне';

  @override
  String get days => 'Дни';

  @override
  String enter_valid_days(int min, int max) {
    return 'Моля, въведете число между $min и $max';
  }

  @override
  String get alert_settings => 'Настройки за предупреждение';

  @override
  String get calendar_settings => 'Настройки на календара';

  @override
  String get calendar_sync => 'Синхронизация на календар';

  @override
  String get calendar_sync_desc =>
      'След включване ще се поиска разрешение за достъп до календара';

  @override
  String get add_test_calendar_event =>
      'Добавяне на тестово календарно събитие';

  @override
  String get enable_calendar_sync_first =>
      'Моля, първо включете превключвателя „Синхронизация на календара“';

  @override
  String get app_alert_settings => 'Настройки на известията на приложението';

  @override
  String get local_alerts => 'Местно напомняне';

  @override
  String get local_alerts_desc =>
      'След включване получавайте напомняния за изтичане в приложението';

  @override
  String get send_test_notification => 'Изпращане на тестово известие';

  @override
  String get enable_local_alerts_first =>
      'Моля, първо включете превключвателя „Местни напомняния“';

  @override
  String get alert_days_settings => 'Настройки на броя дни за напомняне';

  @override
  String get advance_alert_days => 'Брой дни за предварително напомняне';

  @override
  String get advance_alert_days_desc =>
      'Настройте с колко дни предварително да се напомня за изтичане на срока на годност или гаранцията на артикулите';

  @override
  String get calendar_permission_request => 'Искане за достъп до календара';

  @override
  String get calendar_permission_desc =>
      'Необходим е достъп до календара, за да се синхронизират напомнянията за артикулите. Разрешавате ли?';

  @override
  String get allow => 'позволявам';

  @override
  String get calendar_permission_granted =>
      'Разрешенията за календара са предоставени, синхронизацията на календара е включена';

  @override
  String get calendar_permission_denied =>
      'Достъпът до календара е отказан, не може да се включи синхронизацията на календара';

  @override
  String get calendar_permission_permanently_denied =>
      'Достъпът е постоянно отказан';

  @override
  String get calendar_permission_permanently_denied_desc =>
      'Достъпът до календара е постоянно отказан, моля, активирайте разрешението ръчно в системните настройки.';

  @override
  String get go_to_settings => 'Отидете в настройките';

  @override
  String get calendar_account_failed =>
      'Разрешенията за календара са дадени, но не може да се създаде календарен акаунт. Моля, проверете настройките на системния календар.';

  @override
  String get calendar_account_created =>
      'Разрешенията за календара са предоставени, локален календарен акаунт е създаден';

  @override
  String get calendar_account_creating =>
      'Календарният акаунт е създаден успешно, но системата може да се нуждае от известно време, за да влезе в сила';

  @override
  String get test_calendar_event_added =>
      'Тестът за добавяне на календарно събитие е успешен';

  @override
  String get test_calendar_event_failed =>
      'Неуспешно добавяне на тестово събитие в календара, моля, проверете настройките на календара';

  @override
  String get calendar_permission_required =>
      'Необходими са разрешения за календара, за да добавите тестово събитие';

  @override
  String get test_notification_sent => 'Тестовото известие е изпратено';

  @override
  String test_notification_failed(String error) {
    return 'Неуспешно изпращане на тестово уведомление: $error';
  }

  @override
  String get notification_permission_required =>
      'Необходими са разрешения за уведомления, за да се активират местните напомняния';

  @override
  String operation_failed(String error) {
    return 'Операцията е неуспешна: $error';
  }

  @override
  String get notification_channel_name =>
      'Известие за предупреждение за предмети';

  @override
  String get notification_channel_description =>
      'Напомняне за изтичане на срока на годност или гаранцията на предмети';

  @override
  String get item_category_food => 'Храна';

  @override
  String get item_category_daily_necessities => 'Дневни стоки';

  @override
  String get item_category_cosmetics => 'Козметика';

  @override
  String get item_category_medicine => 'лекарство';

  @override
  String get item_category_electronics => 'електронни продукти';

  @override
  String get item_category_furniture => 'Мебели';

  @override
  String get item_category_clothing => 'Облекло';

  @override
  String get item_category_books => 'книги';

  @override
  String get item_category_other => 'Други';

  @override
  String get purchase_channel_online_mall => 'Онлайн магазин';

  @override
  String get purchase_channel_physical_store => 'Физически магазин';

  @override
  String get purchase_channel_supermarket => 'супермаркет';

  @override
  String get purchase_channel_specialty_store => 'специализиран магазин';

  @override
  String get purchase_channel_secondhand_market => 'Вторичен пазар';

  @override
  String get purchase_channel_other => 'Други';

  @override
  String get default_category => 'Други';

  @override
  String get default_purchase_channel => 'Онлайн магазин';

  @override
  String get item_category => 'Категоризация на предметите';

  @override
  String get custom_category => 'Персонализирана категория';

  @override
  String get backup_data => 'Архивиране на данни';

  @override
  String get backup_data_description =>
      'Архивирайте всички данни (включително изображения) като ZIP файл';

  @override
  String get backup_all_data => 'Архивиране на всички данни';

  @override
  String get backup_success => 'Архивирането е успешно';

  @override
  String backup_failed(String error) {
    return 'Архивирането е неуспешно: $error';
  }

  @override
  String get restore_data => 'Възстановяване на данни';

  @override
  String get restore_data_description =>
      'Възстановяване на всички данни от ZIP архивен файл';

  @override
  String get export_data => 'Експортиране на данни';

  @override
  String get export_data_description => 'Експорт в CSV, TXT, SQL формат';

  @override
  String get import_data => 'Импортиране на данни';

  @override
  String get import_data_description =>
      'Импортиране на данни от CSV, TXT, SQL файлове';

  @override
  String get alert_settings_description =>
      'Настройки за напомняне от календара и известия от приложения';

  @override
  String get about => 'Относно';

  @override
  String get about_description => 'Информация за приложението и версия';

  @override
  String get select_backup_file_first => 'Моля, първо изберете резервен файл';

  @override
  String get confirm_restore => 'Потвърдете възстановяването';

  @override
  String get confirm_restore_message =>
      'Възстановяването на резервното копие ще изтрие всички съществуващи данни и ще ги замени с данните от резервното копие. Тази операция не може да бъде отменена. Сигурни ли сте, че искате да продължите?';

  @override
  String get confirm_again => 'Потвърдете отново';

  @override
  String get confirm_restore_warning =>
      'Сигурни ли сте, че искате да изтриете всички съществуващи данни и да възстановите резервното копие? Тази операция не може да бъде върната!';

  @override
  String get confirm_restore_button => 'Потвърдете възстановяването';

  @override
  String restore_success(int count) {
    return 'Възстановяването е успешно, общо $count предмета';
  }

  @override
  String restore_failed(String error) {
    return 'Възстановяване неуспешно: $error';
  }

  @override
  String get select_backup_file => 'Изберете резервния файл';

  @override
  String get restore_backup => 'Възстановяване на резервно копие';

  @override
  String selected_file(String filename) {
    return 'Файлът е избран: $filename';
  }

  @override
  String get export_success => 'Експортът на данни е успешен';

  @override
  String export_failed(String error) {
    return 'Експортът неуспешен: $error';
  }

  @override
  String get format_csv => 'CSV';

  @override
  String get format_txt => 'TXT';

  @override
  String get format_sql => 'SQL';

  @override
  String get duplicate_data_handling => 'Обработка на дублирани данни';

  @override
  String get duplicate_data_detected =>
      'Открити са повтарящи се данни, моля изберете начин на обработка:';

  @override
  String get skip => 'Пропусни';

  @override
  String get overwrite => 'покривам';

  @override
  String get skip_all => 'Пропусни всичко';

  @override
  String get overwrite_all => 'Пълно покритие';

  @override
  String get select_import_format_first =>
      'Моля, първо изберете формата за импортиране';

  @override
  String get confirm_import => 'Потвърждаване на импортиране';

  @override
  String get confirm_import_message =>
      'Импортирането на данни ще презапише съществуващите данни, тази операция не може да бъде отменена. Сигурни ли сте, че искате да продължите?';

  @override
  String import_success(int count) {
    return 'Данните бяха успешно импортирани, общо бяха импортирани $count елемента';
  }

  @override
  String import_failed(String error) {
    return 'Импортът не бе успешен: $error';
  }

  @override
  String get select_file => 'Изберете файл';

  @override
  String get no_data => 'Няма данни';

  @override
  String get no_data_description =>
      'В момента няма данни, кликнете върху бутона по-долу, за да добавите първия запис!';

  @override
  String get load_failed => 'Зареждането е неуспешно';

  @override
  String get load_failed_description =>
      'Неуспешно зареждане на данни, моля, проверете мрежовата връзка и опитайте отново';

  @override
  String get retry => 'Опитайте отново';

  @override
  String get network_connection_failed => 'Неуспешно свързване с мрежата';

  @override
  String get network_connection_failed_description =>
      'Моля, проверете вашата интернет връзка и опитайте отново';

  @override
  String get no_results => 'Не са намерени резултати';

  @override
  String get no_results_description =>
      'Опитайте да търсите с други ключови думи';

  @override
  String get clear_search => 'Изчистване на търсенето';

  @override
  String get insufficient_permission => 'Недостатъчни права';

  @override
  String get insufficient_permission_description =>
      'Трябва да имате съответните разрешения, за да използвате тази функция';

  @override
  String get request_permission => 'Искане на разрешение';

  @override
  String get app_info => 'Информация за приложението';

  @override
  String get version => 'версия';

  @override
  String get developer => 'Разработчик';

  @override
  String get device_info => 'Информация за устройството';

  @override
  String get device_model => 'Модел на устройството';

  @override
  String get brand => 'Марка';

  @override
  String get device_name => 'Име на устройството';

  @override
  String get product => 'продукт';

  @override
  String get hardware => 'хардуер';

  @override
  String get android_version => 'Версия на Android';

  @override
  String get sdk_version => 'Версия на SDK';

  @override
  String get system_name => 'Име на системата';

  @override
  String get operating_system => 'Операционна система';

  @override
  String get system_version => 'Версия на системата';

  @override
  String get dart_version => 'Версия на Dart';

  @override
  String get device_identifier => 'Идентификация на устройството';

  @override
  String get computer_name => 'Име на компютъра';

  @override
  String get build_number => 'Номер на версията';

  @override
  String error_getting_device_info(String error) {
    return 'Не може да се получи информация за устройството: $error';
  }

  @override
  String get features => 'Представяне на функцията';

  @override
  String get app_description =>
      'Приложение за управление на интелигентни предмети';

  @override
  String get app_description_detail =>
      'Помага ви да управлявате информация за датите на изтичане, датите на гаранция и т.н., и предоставя функция за интелигентни напомняния.';

  @override
  String get consumable => 'Консумативи';

  @override
  String get durable => 'Дълготрайни стоки';

  @override
  String get sort => 'сортиране';

  @override
  String get name_asc => 'Име по възходящ ред';

  @override
  String get name_desc => 'Име в низходящ ред';

  @override
  String get date_asc => 'По дата възходящо';

  @override
  String get date_desc => 'По дата в низходящ ред';

  @override
  String get price_asc => 'Възходящ ред на единичната цена';

  @override
  String get price_desc => 'Низходящ ред по единична цена';

  @override
  String get quantity_asc => 'По нарастващо количество';

  @override
  String get quantity_desc => 'Намаляващо по количество';

  @override
  String get total_price_asc => 'Обща цена във възходящ ред';

  @override
  String get total_price_desc => 'Обща цена в низходящ ред';

  @override
  String get clear_all_filters => 'Изчисти всички филтри';

  @override
  String get scan_barcode => 'Сканирай и вкарай в склад';

  @override
  String get search_items => 'Търсене на предмет...';

  @override
  String get no_items => 'Няма налични артикули';

  @override
  String get no_items_description =>
      'Кликнете върху бутона по-долу, за да добавите първия артикул';

  @override
  String get expired => 'Изтекъл';

  @override
  String get expiring_soon => 'Ще изтече скоро';

  @override
  String get warranty_expired => 'Гаранцията е изтекла';

  @override
  String get warranty_expiring_soon => 'Гаранцията ще изтече скоро';

  @override
  String days_remaining(int count) {
    return 'Остават $count дни';
  }

  @override
  String expired_days_ago(int count) {
    return 'Изтекъл $count дни';
  }

  @override
  String get delete_item => 'Изтриване на елемент';

  @override
  String delete_item_confirm(String name) {
    return 'Наистина ли искате да изтриете \"$name\"?';
  }

  @override
  String get item_deleted => 'Предметът е изтрит';

  @override
  String get failed_to_delete => 'Неуспешно изтриване';

  @override
  String failed_to_delete_message(String error) {
    return 'Не може да се изтрие предмет: $error';
  }

  @override
  String get date_range_filter => 'Филтър за диапазон от дати';

  @override
  String get price_range_filter => 'Филтър за ценови диапазон';

  @override
  String get my_items => 'Моите вещи';

  @override
  String get click_fab_to_add_item =>
      'Кликнете върху бутона в долния десен ъгъл, за да добавите предмети';

  @override
  String get confirm_delete => 'Потвърди изтриването';

  @override
  String get filter_options => 'Филтриране на опции';

  @override
  String get filter_by_type_category_location =>
      'Филтрирайте предметите по тип, категория и местоположение';

  @override
  String categories_count(int count) {
    return '$count категории';
  }

  @override
  String get all_categories => 'Всички категории';

  @override
  String get no_category_data => 'Няма данни за категории';

  @override
  String get storage_location => 'Място за съхранение';

  @override
  String locations_count(int count) {
    return '$count места';
  }

  @override
  String get all_locations => 'Всички места';

  @override
  String get no_location_data => 'Няма данни за местоположението';

  @override
  String get date_range => 'Период от дати';

  @override
  String get select_date_range => 'Изберете диапазон от дати';

  @override
  String get price_range => 'Ценови диапазон';

  @override
  String get unit_price_range => 'Ценови диапазон';

  @override
  String get min_unit_price => 'Най-ниска единична цена';

  @override
  String get max_unit_price => 'Най-висока единична цена';

  @override
  String get total_price_range => 'Обща ценова гама';

  @override
  String get min_total_price => 'Най-ниска обща цена';

  @override
  String get max_total_price => 'Максимална обща цена';

  @override
  String get clear_price_filter => 'Изчисти филтъра за цена';

  @override
  String get place_barcode_in_frame =>
      'Поставете баркода в рамката за сканиране';

  @override
  String get item_already_exists => 'Продуктът вече съществува';

  @override
  String barcode_with_value(String barcode) {
    return 'Баркод: $barcode';
  }

  @override
  String name_with_value(String name) {
    return 'Име: $name';
  }

  @override
  String category_with_value(String category) {
    return 'Категория: $category';
  }

  @override
  String current_quantity_with_value(String quantity, String unit) {
    return 'Текущо количество: $quantity$unit';
  }

  @override
  String get please_select_operation => 'Моля, изберете операция:';

  @override
  String get outbound => 'Изписване от склад';

  @override
  String get inbound => 'Складиране';

  @override
  String get inbound_quantity => 'Количество на склад';

  @override
  String get outbound_quantity => 'Количество на изходящи стоки';

  @override
  String get quantity => 'Количество';

  @override
  String get enter_inbound_quantity =>
      'Моля, въведете количеството за складиране';

  @override
  String get enter_outbound_quantity =>
      'Моля, въведете количеството за изписване от склада';

  @override
  String delete_item_confirm_with_irreversible(String name) {
    return 'Сигурни ли сте, че искате да изтриете „$name“? Тази операция не може да бъде отменена.';
  }

  @override
  String get database_reset =>
      'Базата данни е нулирана, таблиците ще бъдат създадени отново';

  @override
  String database_reset_error(String error) {
    return 'Грешка при нулиране на базата данни: $error';
  }

  @override
  String mock_data_init_failed(String error) {
    return 'Неуспешно инициализиране на симулирани данни: $error';
  }

  @override
  String get solution_steps => 'Решение:';

  @override
  String get solution_step_1 =>
      '1. Деинсталирайте приложението и го преинсталирайте';

  @override
  String get solution_step_2 => '2. Или изчистете данните на приложението';

  @override
  String get solution_step_3 =>
      '3. Или задайте resetDatabaseOnStart на true и след това го стартирайте отново';

  @override
  String notification_service_init_failed(String error) {
    return 'Неуспешно инициализиране на услугата за напомняне: $error';
  }

  @override
  String check_calendar_account_failed(String error) {
    return 'Неуспешна проверка на календарния акаунт: $error';
  }

  @override
  String create_calendar_failed(String error) {
    return 'Неуспешно създаване на календар: $error';
  }

  @override
  String add_calendar_event_failed(String error) {
    return 'Неуспешно добавяне на събитие в календара: $error';
  }

  @override
  String delete_calendar_event_failed(String error) {
    return 'Неуспешно изтриване на събитие от календара: $error';
  }

  @override
  String set_permission_message_failed(String error) {
    return 'Неуспешно задаване на съобщение за разрешения: $error';
  }

  @override
  String mock_data_init_success(int count) {
    return 'Успешно са инициализирани $count симулирани данни';
  }

  @override
  String database_has_data(int count) {
    return 'Базата данни вече съдържа $count записа, прескачане на инициализация на симулирани данни';
  }

  @override
  String get database_structure_mismatch =>
      'Възможно е структурата на базата данни да не съвпада, препоръчва се изчистване на данните на приложението или преинсталиране';

  @override
  String get old_database_deleted => 'Старият файл на базата данни е изтрит';

  @override
  String get backup_data_empty => 'Резервните данни са празни';

  @override
  String get backup_file_not_found => 'Файлът за резервно копие не съществува';

  @override
  String file_not_utf8(String error) {
    return 'Кодировката на файла не е валиден UTF-8 формат. Моля, уверете се, че файлът е записан с кодировка UTF-8. Подробности за грешката: $error';
  }

  @override
  String file_not_found(String filePath) {
    return 'Файлът не съществува: $filePath';
  }

  @override
  String file_empty(String filePath) {
    return 'Файлът е празен: $filePath';
  }

  @override
  String get file_content_empty =>
      'След декодиране съдържанието на файла е празно, възможно е кодирането да не съвпада';

  @override
  String field_cannot_be_empty(String fieldName) {
    return '$fieldName не може да бъде празно';
  }

  @override
  String field_min_length(String fieldName, int minLength) {
    return '$fieldName не може да бъде по-къс от $minLength символа';
  }

  @override
  String field_max_length(String fieldName, int maxLength) {
    return '$fieldName не може да надвишава $maxLength символа';
  }

  @override
  String field_invalid_email(String fieldName) {
    return 'Моля, въведете валиден адрес на $fieldName';
  }

  @override
  String field_invalid_number(String fieldName, String numberType) {
    return '$fieldName трябва да бъде $numberType';
  }

  @override
  String field_min_value(String fieldName, double min) {
    return '$fieldName не може да бъде по-малко от $min';
  }

  @override
  String field_max_value(String fieldName, double max) {
    return '$fieldName не може да бъде по-голямо от $max';
  }

  @override
  String field_positive_integer(String fieldName) {
    return '$fieldName трябва да бъде положително цяло число';
  }

  @override
  String field_greater_than_zero(String fieldName) {
    return '$fieldName трябва да бъде по-голямо от 0';
  }

  @override
  String field_positive_number(String fieldName) {
    return '$fieldName трябва да бъде положително число';
  }

  @override
  String field_invalid_date(String fieldName) {
    return 'Моля, въведете валиден $fieldName';
  }

  @override
  String field_date_not_past(String fieldName) {
    return '$fieldName не може да бъде минала дата';
  }

  @override
  String field_date_not_before(String fieldName, String minDate) {
    return '$fieldName не може да бъде по-рано от $minDate';
  }

  @override
  String field_date_not_after(String fieldName, String maxDate) {
    return '$fieldName не може да бъде по-късно от $maxDate';
  }

  @override
  String field_invalid_value(String fieldName) {
    return 'Моля, въведете валиден $fieldName';
  }

  @override
  String password_min_length(String fieldName) {
    return '$fieldName дължината не може да бъде по-малка от 8 символа';
  }

  @override
  String password_uppercase_required(String fieldName) {
    return '$fieldName трябва да съдържа поне една главна буква';
  }

  @override
  String password_lowercase_required(String fieldName) {
    return '$fieldName трябва да съдържа поне една малка буква';
  }

  @override
  String password_digit_required(String fieldName) {
    return '$fieldName трябва да съдържа поне една цифра';
  }

  @override
  String password_special_char_required(String fieldName) {
    return '$fieldName трябва да съдържа поне един специален символ';
  }

  @override
  String get passwords_not_match => 'Въведените два пъти пароли не съвпадат';

  @override
  String get item_name_cannot_be_empty =>
      'Името на артикула не може да бъде празно';

  @override
  String name_max_length(int maxLength) {
    return 'Името не може да надвишава $maxLength символа';
  }

  @override
  String quantity_min(int minQuantity) {
    return 'Количество не може да бъде по-малко от $minQuantity';
  }

  @override
  String quantity_max(int maxQuantity) {
    return 'Количество не може да надвишава $maxQuantity';
  }

  @override
  String get unit_price_not_negative =>
      'Единичната цена не може да бъде отрицателна';

  @override
  String unit_price_max(double maxUnitPrice) {
    return 'Единичната цена не може да надвишава $maxUnitPrice';
  }

  @override
  String get set_production_expiry_for_validity =>
      'Моля, задайте датата на производство и срока на годност, за да се изчисли автоматично валидността';

  @override
  String get set_purchase_warranty_for_validity =>
      'Моля, задайте дата на покупка и срок на годност, за да се изчисли автоматично гаранционният период';

  @override
  String get calendar_account_creation_failed =>
      'Не може да се създаде календарен акаунт, моля, проверете настройките на системния календар';

  @override
  String get test_notification => 'Тестово уведомление';

  @override
  String get test_notification_description =>
      'Това е тестово уведомление, използвано за проверка на функцията за локални напомняния';

  @override
  String get day_unit => 'небе';

  @override
  String days_with_value(int days) {
    return '$days дни';
  }

  @override
  String get item_saved => 'Артикулът е запазен';

  @override
  String get item_updated => 'Артикулът е обновен';

  @override
  String get item_added => 'Артикулът е добавен';

  @override
  String get save_success => 'Запазване успешно';

  @override
  String get update_success => 'Актуализацията е успешна';

  @override
  String get delete_success => 'Изтриването е успешно';

  @override
  String get save_failed => 'Запазването не успя';

  @override
  String get update_failed => 'Актуализацията е неуспешна';

  @override
  String get delete_failed => 'Неуспешно изтриване';

  @override
  String get test_calendar_event => 'Тествайте календарно събитие';

  @override
  String get test_calendar_event_description =>
      'Това е тестово събитие, използвано за проверка на функцията календар';

  @override
  String get in_app => 'в приложението';

  @override
  String get enable_alert => 'Включи напомняне за изтичане';

  @override
  String get alert_method => 'Начин на напомняне';

  @override
  String get alert_method_in_app => 'Само в приложението';

  @override
  String get alert_method_calendar => 'Само календар';

  @override
  String get alert_method_both => 'и двете';

  @override
  String get alert_days_before => 'Брой дни за предварително напомняне';

  @override
  String get use_global_setting => 'Използване на глобални настройки';

  @override
  String get barcode_label => 'Баркод';

  @override
  String get name_label => 'Име';

  @override
  String get category_label => 'Категория';

  @override
  String get current_quantity => 'Текущо количество';

  @override
  String get select_operation => 'Моля, изберете операция';

  @override
  String get unit => 'единица';

  @override
  String get custom_unit => 'Персонализирана единица';

  @override
  String get enter_unit => 'Моля, въведете единица';

  @override
  String get custom_location => 'Персонализирано местоположение';

  @override
  String get enter_storage_location => 'Моля, въведете мястото за съхранение';

  @override
  String get scan => 'Сканирай QR кода';

  @override
  String get scan_to_stock => 'Сканирай и складирай';

  @override
  String get item_categories => 'Категоризация на предметите';

  @override
  String get storage_locations => 'Място за съхранение';

  @override
  String get place_barcode_in_frame_to_scan =>
      'Поставете баркода в рамката за сканиране';

  @override
  String get barcode => 'Баркод';

  @override
  String get enter_barcode_or_scan => 'Моля, въведете баркод или сканирайте';

  @override
  String get basic_information => 'Основна информация';

  @override
  String get item_name => 'Име на предмет';

  @override
  String get enter_item_name => 'Моля, въведете името на предмета';

  @override
  String get enter_category_name => 'Моля, въведете име на категория';

  @override
  String item_increased(String itemName, String quantity, String unit) {
    return 'Вече е добавено $itemName $quantity$unit';
  }

  @override
  String item_decreased(String itemName, String quantity, String unit) {
    return 'Вече е намалено $itemName $quantity$unit';
  }

  @override
  String get unsaved_changes => 'Незапазени промени';

  @override
  String get unsaved_changes_message =>
      'Имате незапазени промени, моля изберете действие:';

  @override
  String get discard => 'Отказвам се';

  @override
  String get unit_piece => '个';

  @override
  String get unit_item => 'част';

  @override
  String get unit_box => 'кутия';

  @override
  String get unit_package => 'чанта';

  @override
  String get unit_bottle => 'бутилка';

  @override
  String get unit_carton => 'кутия';

  @override
  String get unit_set => 'комплект';

  @override
  String get unit_kg => 'кг';

  @override
  String get unit_g => 'g';

  @override
  String get unit_l => 'L';

  @override
  String get unit_ml => 'мл';

  @override
  String get unit_m => 'м';

  @override
  String get unit_cm => 'см';

  @override
  String get quantity_label => 'Количество';

  @override
  String get unit_price_label => 'Единична цена';

  @override
  String get currency_label => 'валута';

  @override
  String get total_price_label => 'Обща цена:';

  @override
  String get storage_location_label => 'Място за съхранение';

  @override
  String get item_properties => 'Свойства на предмети';

  @override
  String get expiry_date_label => 'Срок на валидност';

  @override
  String get warranty_expiry_date_label => 'Дата на изтичане на гаранцията';

  @override
  String get production_date_label => 'Дата на производство';

  @override
  String get purchase_date_label => 'Дата на покупка';

  @override
  String auto_calculated_from(String dateType) {
    return 'Автоматично изчисляване според $dateType и срока на годност';
  }

  @override
  String get auto_calculated => 'Автоматично изчисление';

  @override
  String get images_label => 'картина';

  @override
  String get notes_label => 'Бележка';

  @override
  String get add_notes_hint => 'Добавете бележка (по избор)';

  @override
  String get year_label => 'година';

  @override
  String get month_label => 'месец';

  @override
  String get day_label => 'небе';

  @override
  String selected_count(int count) {
    return 'Избрани са $count елемента';
  }

  @override
  String get select_all => 'Избери всички';

  @override
  String get deselect_all => 'Отмени избора на всичко';

  @override
  String get batch_change_location =>
      'Масово преместване на местоположението на съхранение';

  @override
  String confirm_delete_selected(int count) {
    return 'Сигурни ли сте, че искате да изтриете избраните $count артикула?';
  }

  @override
  String deleted_count_items(int count) {
    return 'Изтрити са $count артикула';
  }

  @override
  String get no_storage_location_available =>
      'Няма налични опции за място за съхранение';

  @override
  String get batch_change_location_title =>
      'Масово преместване на местоположението на съхранение';

  @override
  String moved_count_items_to_location(int count, String location) {
    return 'Преместени са $count предмета в $location';
  }

  @override
  String get operation_type_create => 'Въвеждане';

  @override
  String get operation_type_update => 'Редактиране';

  @override
  String get operation_type_delete => 'Изтриване';

  @override
  String get operation_type_inbound => 'Складиране';

  @override
  String get operation_type_outbound => 'Изписване от склад';

  @override
  String export_failed_message(String error) {
    return 'Експортът неуспешен: $error';
  }

  @override
  String get clear_logs => 'Изчистване на журнала';

  @override
  String get confirm_clear_logs =>
      'Наистина ли искате да изчистите всички операции и записи? Тази операция не може да бъде възстановена.';

  @override
  String get logs_cleared => 'Журналът е изчистен';

  @override
  String get operation_logs_title => 'Дневник на операциите';

  @override
  String get export_logs => 'Експортиране на дневници';

  @override
  String get clear_logs_tooltip => 'Изчистване на журнала';

  @override
  String get no_operation_logs => 'Няма записи на операциите';

  @override
  String get log_item_label => 'Предмет:';

  @override
  String get log_category_label => 'Категория:';

  @override
  String get log_type_label => 'Тип:';

  @override
  String get log_quantity_label => 'Количество:';

  @override
  String get log_unit_price_label => 'Единична цена:';

  @override
  String get log_total_price_label => 'Обща цена:';

  @override
  String get log_expiry_date_label => 'Годност до:';

  @override
  String get log_warranty_date_label => 'Гаранционен период:';

  @override
  String get log_purchase_date_label => 'Дата на покупка:';

  @override
  String get log_production_date_label => 'Дата на производство:';

  @override
  String get log_shelf_life_label => 'Гаранционен срок:';

  @override
  String get log_storage_location_label => 'Място за съхранение:';

  @override
  String get log_barcode_label => 'Баркод:';

  @override
  String get log_notes_label => 'Бележка:';

  @override
  String get log_alert_label => 'Предупреждение:';

  @override
  String get log_alert_days_label => 'Дни на предупреждение:';

  @override
  String get log_quantity_change_label => 'Промяна в количеството:';

  @override
  String get log_field_changes_label => 'Промяна на поле:';

  @override
  String get log_not_set => 'Не е зададено';

  @override
  String get log_empty => 'празно';

  @override
  String get log_alert_enabled => 'Включване';

  @override
  String get log_alert_disabled => 'Затвори';

  @override
  String get operation_logs_menu => 'Дневник на операциите';

  @override
  String get operation_logs_description =>
      'Преглед и възстановяване на записите на операциите';

  @override
  String operation_failed_message(String error) {
    return 'Операцията е неуспешна: $error';
  }

  @override
  String get no_date => 'Без дата';

  @override
  String get shelf_life_months_suffix => 'месец';

  @override
  String get shelf_life_days_suffix => 'небе';

  @override
  String get alert_days_suffix => 'небе';

  @override
  String get unknown => 'неизвестен';

  @override
  String get developer_name => 'Лео';

  @override
  String get log_operation_date_label => 'Дата на операцията:';

  @override
  String get uncategorized => 'Некласифициран';

  @override
  String get no_location => 'Без място';

  @override
  String get item_category_cannot_be_empty =>
      'Категорията на артикула не може да бъде празна';

  @override
  String get storage_location_cannot_be_empty =>
      'Мястото за съхранение не може да бъде празно';

  @override
  String get created_at_asc => 'Добавяне на време във възходящ ред';

  @override
  String get created_at_desc => 'Добавяне на време в низходящ ред';
}
