// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ukrainian (`uk`).
class AppLocalizationsUk extends AppLocalizations {
  AppLocalizationsUk([String locale = 'uk']) : super(locale);

  @override
  String get app_name => 'Куточок для зберігання речей';

  @override
  String get cancel => 'Скасувати';

  @override
  String get confirm => 'Підтвердити';

  @override
  String get save => 'Зберегти';

  @override
  String get delete => 'видалити';

  @override
  String get edit => 'Редагувати';

  @override
  String get add => 'додати';

  @override
  String get edit_item => 'Редагувати предмет';

  @override
  String get add_item => 'Додати предмет';

  @override
  String get search => 'Пошук';

  @override
  String get settings => 'Налаштування';

  @override
  String get language_settings => 'Налаштування мови';

  @override
  String get language_settings_description =>
      'Встановити мову відображення додатка';

  @override
  String get system_default => 'Системний за замовчуванням';

  @override
  String get use_system_language => 'Використовувати системну мову';

  @override
  String get language_change_hint =>
      'Зміна мови набере чинності після перезапуску додатку';

  @override
  String get back => 'Повернутися';

  @override
  String get next => 'Наступний крок';

  @override
  String get done => 'Завершити';

  @override
  String get loading => 'Завантаження...';

  @override
  String get error => 'помилка';

  @override
  String get success => 'успіх';

  @override
  String get warning => 'Попередження';

  @override
  String get info => 'інформація';

  @override
  String get select_alert_days => 'Вибрати кількість днів для нагадування';

  @override
  String get custom => 'Налаштування користувача';

  @override
  String custom_days(int days) {
    return 'Налаштування ($days днів)';
  }

  @override
  String current_selection(int days) {
    return 'Поточний вибір: $days днів';
  }

  @override
  String alert_days_range(int min, int max) {
    return 'Діапазон днів нагадування: $min-$max днів';
  }

  @override
  String get enter_days => 'Введіть кількість днів для нагадування';

  @override
  String get days => 'дні';

  @override
  String enter_valid_days(int min, int max) {
    return 'Будь ласка, введіть число між $min і $max';
  }

  @override
  String get alert_settings => 'Налаштування попередження';

  @override
  String get calendar_settings => 'Налаштування календаря';

  @override
  String get calendar_sync => 'Синхронізація календаря';

  @override
  String get calendar_sync_desc =>
      'Після увімкнення буде запитано доступ до календаря';

  @override
  String get add_test_calendar_event => 'Додати тестову подію календаря';

  @override
  String get enable_calendar_sync_first =>
      'Будь ласка, спершу увімкніть перемикач «Синхронізація календаря»';

  @override
  String get app_alert_settings => 'Налаштування нагадувань додатку';

  @override
  String get local_alerts => 'Місцеве нагадування';

  @override
  String get local_alerts_desc =>
      'Після увімкнення отримувати нагадування про закінчення терміну дії у додатку';

  @override
  String get send_test_notification => 'Відправити тестове повідомлення';

  @override
  String get enable_local_alerts_first =>
      'Будь ласка, спершу увімкніть перемикач «Місцеві нагадування»';

  @override
  String get alert_days_settings => 'Налаштування кількості днів нагадування';

  @override
  String get advance_alert_days => 'Кількість днів попередження';

  @override
  String get advance_alert_days_desc =>
      'Встановити за скільки днів заздалегідь нагадувати про закінчення терміну придатності або гарантії предмета';

  @override
  String get calendar_permission_request =>
      'Запит на дозвіл доступу до календаря';

  @override
  String get calendar_permission_desc =>
      'Потрібен доступ до календаря для синхронізації нагадувань про предмети. Дозволити?';

  @override
  String get allow => 'дозволяти';

  @override
  String get calendar_permission_granted =>
      'Дозвіл на календар надано, синхронізація календаря увімкнена';

  @override
  String get calendar_permission_denied =>
      'Доступ до календаря відхилено, неможливо ввімкнути синхронізацію календаря';

  @override
  String get calendar_permission_permanently_denied =>
      'Доступ назавжди заборонено';

  @override
  String get calendar_permission_permanently_denied_desc =>
      'Доступ до календаря був остаточно відхилений, будь ласка, увімкніть доступ вручну в системних налаштуваннях.';

  @override
  String get go_to_settings => 'Перейти до налаштувань';

  @override
  String get calendar_account_failed =>
      'Дозвіл на календар вже надано, але створити обліковий запис календаря не вдається. Будь ласка, перевірте налаштування системного календаря';

  @override
  String get calendar_account_created =>
      'Дозвіл на календар надано, локальний обліковий запис календаря створено';

  @override
  String get calendar_account_creating =>
      'Обліковий запис календаря успішно створено, але системі може знадобитися деякий час, щоб почати діяти';

  @override
  String get test_calendar_event_added =>
      'Тестове додавання події в календар успішне';

  @override
  String get test_calendar_event_failed =>
      'Не вдалося додати тестовий захід у календар, будь ласка, перевірте налаштування календаря';

  @override
  String get calendar_permission_required =>
      'Потрібен доступ до календаря, щоб додати тестову подію';

  @override
  String get test_notification_sent => 'Повідомлення про тест надіслано';

  @override
  String test_notification_failed(String error) {
    return 'Помилка надсилання тестового повідомлення: $error';
  }

  @override
  String get notification_permission_required =>
      'Потрібен дозвіл на сповіщення, щоб увімкнути локальні нагадування';

  @override
  String operation_failed(String error) {
    return 'Операція не вдалася: $error';
  }

  @override
  String get notification_channel_name =>
      'Сповіщення про попередження щодо предметів';

  @override
  String get notification_channel_description =>
      'Нагадування про прострочені або гарантійні товари';

  @override
  String get item_category_food => 'продукти харчування';

  @override
  String get item_category_daily_necessities => 'побутові товари';

  @override
  String get item_category_cosmetics => 'Косметика';

  @override
  String get item_category_medicine => 'ліки';

  @override
  String get item_category_electronics => 'електронні продукти';

  @override
  String get item_category_furniture => 'Меблі';

  @override
  String get item_category_clothing => 'одяг';

  @override
  String get item_category_books => 'книги';

  @override
  String get item_category_other => 'інші';

  @override
  String get purchase_channel_online_mall => 'онлайн-магазин';

  @override
  String get purchase_channel_physical_store => 'фізичний магазин';

  @override
  String get purchase_channel_supermarket => 'супермаркет';

  @override
  String get purchase_channel_specialty_store => 'фірмовий магазин';

  @override
  String get purchase_channel_secondhand_market => 'ринок уживаних товарів';

  @override
  String get purchase_channel_other => 'інші';

  @override
  String get default_category => 'інші';

  @override
  String get default_purchase_channel => 'онлайн-магазин';

  @override
  String get item_category => 'Категоризація предметів';

  @override
  String get custom_category => 'Користувацька категорія';

  @override
  String get backup_data => 'Резервне копіювання даних';

  @override
  String get backup_data_description =>
      'Упакувати всі дані (включно з зображеннями) у ZIP-файл для резервного копіювання';

  @override
  String get backup_all_data => 'Створити резервну копію всіх даних';

  @override
  String get backup_success => 'Резервне копіювання успішне';

  @override
  String backup_failed(String error) {
    return 'Резервне копіювання не вдалося: $error';
  }

  @override
  String get restore_data => 'Відновити дані';

  @override
  String get restore_data_description =>
      'Відновити всі дані з ZIP-резервної копії';

  @override
  String get export_data => 'Експорт даних';

  @override
  String get export_data_description => 'Експортувати у форматах CSV, TXT, SQL';

  @override
  String get import_data => 'Імпортувати дані';

  @override
  String get import_data_description => 'Імпорт даних з файлів CSV, TXT, SQL';

  @override
  String get alert_settings_description =>
      'Налаштування нагадувань календаря та push-повідомлень додатка';

  @override
  String get about => 'Про';

  @override
  String get about_description => 'Інформація про застосунок та версія';

  @override
  String get select_backup_file_first =>
      'Будь ласка, спочатку виберіть файл резервної копії';

  @override
  String get confirm_restore => 'Підтвердити відновлення';

  @override
  String get confirm_restore_message =>
      'Відновлення резервної копії очистить усі наявні дані та замінить їх даними з резервної копії. Цю операцію не можна скасувати. Ви впевнені, що хочете продовжити?';

  @override
  String get confirm_again => 'Ще раз підтвердити';

  @override
  String get confirm_restore_warning =>
      'Ви впевнені, що хочете очистити всі наявні дані та відновити резервну копію? Цю операцію не можна буде скасувати!';

  @override
  String get confirm_restore_button => 'Підтвердити відновлення';

  @override
  String restore_success(int count) {
    return 'Відновлення успішне, всього $count предметів';
  }

  @override
  String restore_failed(String error) {
    return 'Відновлення не вдалося: $error';
  }

  @override
  String get select_backup_file => 'Вибрати файл резервної копії';

  @override
  String get restore_backup => 'Відновити резервну копію';

  @override
  String selected_file(String filename) {
    return 'Вибраний файл: $filename';
  }

  @override
  String get export_success => 'Дані успішно експортовано';

  @override
  String export_failed(String error) {
    return 'Експорт не вдався: $error';
  }

  @override
  String get format_csv => 'CSV';

  @override
  String get format_txt => 'TXT';

  @override
  String get format_sql => 'SQL';

  @override
  String get duplicate_data_handling => 'Обробка повторюваних даних';

  @override
  String get duplicate_data_detected =>
      'Виявлено повторювані дані, будь ласка, оберіть спосіб обробки:';

  @override
  String get skip => 'Пропустити';

  @override
  String get overwrite => 'покривати';

  @override
  String get skip_all => 'Пропустити все';

  @override
  String get overwrite_all => 'повне покриття';

  @override
  String get select_import_format_first =>
      'Будь ласка, спочатку виберіть формат імпорту';

  @override
  String get confirm_import => 'Підтвердити імпорт';

  @override
  String get confirm_import_message =>
      'Імпорт даних перезапише існуючі дані, ця операція незворотна. Ви впевнені, що хочете продовжити?';

  @override
  String import_success(int count) {
    return 'Дані успішно імпортовано, всього імпортовано $count предметів';
  }

  @override
  String import_failed(String error) {
    return 'Імпорт не вдався: $error';
  }

  @override
  String get select_file => 'Вибрати файл';

  @override
  String get no_data => 'Немає даних';

  @override
  String get no_data_description =>
      'На даний момент даних немає, натисніть кнопку нижче, щоб додати перший запис!';

  @override
  String get load_failed => 'Завантаження не вдалося';

  @override
  String get load_failed_description =>
      'Не вдалося завантажити дані, будь ласка, перевірте підключення до мережі та спробуйте ще раз';

  @override
  String get retry => 'Спробувати ще раз';

  @override
  String get network_connection_failed => 'Помилка підключення до мережі';

  @override
  String get network_connection_failed_description =>
      'Будь ласка, перевірте підключення до мережі та спробуйте знову';

  @override
  String get no_results => 'Результатів не знайдено';

  @override
  String get no_results_description =>
      'Спробуйте шукати за іншими ключовими словами';

  @override
  String get clear_search => 'Очистити пошук';

  @override
  String get insufficient_permission => 'Недостатньо прав';

  @override
  String get insufficient_permission_description =>
      'Потрібні відповідні дозволи для використання цієї функції';

  @override
  String get request_permission => 'Запит дозволу';

  @override
  String get app_info => 'Інформація про застосунок';

  @override
  String get version => 'версія';

  @override
  String get developer => 'Розробник';

  @override
  String get device_info => 'Інформація про пристрій';

  @override
  String get device_model => 'Модель пристрою';

  @override
  String get brand => 'бренд';

  @override
  String get device_name => 'Назва пристрою';

  @override
  String get product => 'продукт';

  @override
  String get hardware => 'апаратне забезпечення';

  @override
  String get android_version => 'Версія Android';

  @override
  String get sdk_version => 'Версія SDK';

  @override
  String get system_name => 'Назва системи';

  @override
  String get operating_system => 'Операційна система';

  @override
  String get system_version => 'Версія системи';

  @override
  String get dart_version => 'Версія Dart';

  @override
  String get device_identifier => 'Ідентифікатор обладнання';

  @override
  String get computer_name => 'ім\'я комп’ютера';

  @override
  String get build_number => 'Номер версії';

  @override
  String error_getting_device_info(String error) {
    return 'Не вдається отримати інформацію про пристрій: $error';
  }

  @override
  String get features => 'Огляд функцій';

  @override
  String get app_description => 'Додаток для управління розумними предметами';

  @override
  String get app_description_detail =>
      'Допомагає вам керувати інформацією про терміни придатності предметів, дати гарантії тощо, а також забезпечує функцію розумних нагадувань.';

  @override
  String get consumable => 'Витратні матеріали';

  @override
  String get durable => 'товари тривалого користування';

  @override
  String get sort => 'сортування';

  @override
  String get name_asc => 'Назва за зростанням';

  @override
  String get name_desc => 'Назва за спаданням';

  @override
  String get date_asc => 'За зростанням дати';

  @override
  String get date_desc => 'За спаданням дати';

  @override
  String get price_asc => 'Ціна за одиницю за зростанням';

  @override
  String get price_desc => 'Ціна за одиницю за спаданням';

  @override
  String get quantity_asc => 'За зростанням кількості';

  @override
  String get quantity_desc => 'За спаданням кількості';

  @override
  String get total_price_asc => 'Загальна ціна за зростанням';

  @override
  String get total_price_desc => 'Загальна ціна за спаданням';

  @override
  String get clear_all_filters => 'Очистити всі фільтри';

  @override
  String get scan_barcode => 'Сканувати для зберігання у складі';

  @override
  String get search_items => 'Пошук предметів...';

  @override
  String get no_items => 'Немає предметів';

  @override
  String get no_items_description =>
      'Натисніть кнопку нижче, щоб додати перший предмет';

  @override
  String get expired => 'Термін дії минув';

  @override
  String get expiring_soon => 'Наближається термін придатності';

  @override
  String get warranty_expired => 'Гарантія закінчилася';

  @override
  String get warranty_expiring_soon => 'Гарантія скоро закінчиться';

  @override
  String days_remaining(int count) {
    return 'Залишилося $count днів';
  }

  @override
  String expired_days_ago(int count) {
    return 'Пройшло $count днів';
  }

  @override
  String get delete_item => 'Видалити предмет';

  @override
  String delete_item_confirm(String name) {
    return 'Ви дійсно хочете видалити \"$name\"?';
  }

  @override
  String get item_deleted => 'Предмет видалено';

  @override
  String get failed_to_delete => 'Видалення не вдалося';

  @override
  String failed_to_delete_message(String error) {
    return 'Не вдається видалити предмет: $error';
  }

  @override
  String get date_range_filter => 'Фільтр за діапазоном дат';

  @override
  String get price_range_filter => 'Фільтр за діапазоном цін';

  @override
  String get my_items => 'Мої речі';

  @override
  String get click_fab_to_add_item =>
      'Натисніть кнопку в правому нижньому куті, щоб додати предмет';

  @override
  String get confirm_delete => 'Підтвердити видалення';

  @override
  String get filter_options => 'Фільтрувати опції';

  @override
  String get filter_by_type_category_location =>
      'Фільтрувати предмети за типом, категорією та місцем';

  @override
  String categories_count(int count) {
    return '$count категорій';
  }

  @override
  String get all_categories => 'Всі категорії';

  @override
  String get no_category_data => 'Поки що немає даних категорії';

  @override
  String get storage_location => 'Місце зберігання';

  @override
  String locations_count(int count) {
    return '$count місць';
  }

  @override
  String get all_locations => 'Всі місця';

  @override
  String get no_location_data => 'Поки що дані про місце відсутні';

  @override
  String get date_range => 'Діапазон дат';

  @override
  String get select_date_range => 'Виберіть діапазон дат';

  @override
  String get price_range => 'Діапазон цін';

  @override
  String get unit_price_range => 'Діапазон одиничної ціни';

  @override
  String get min_unit_price => 'Мінімальна ціна за одиницю';

  @override
  String get max_unit_price => 'максимальна ціна за одиницю';

  @override
  String get total_price_range => 'Діапазон загальної ціни';

  @override
  String get min_total_price => 'Мінімальна загальна ціна';

  @override
  String get max_total_price => 'максимальна загальна ціна';

  @override
  String get clear_price_filter => 'Очистити фільтр за ціною';

  @override
  String get place_barcode_in_frame =>
      'Розмістіть штрих-код у рамці для сканування';

  @override
  String get item_already_exists => 'Товар уже існує';

  @override
  String barcode_with_value(String barcode) {
    return 'Штрихкод: $barcode';
  }

  @override
  String name_with_value(String name) {
    return 'Назва: $name';
  }

  @override
  String category_with_value(String category) {
    return 'Категорія: $category';
  }

  @override
  String current_quantity_with_value(String quantity, String unit) {
    return 'Поточна кількість: $quantity$unit';
  }

  @override
  String get please_select_operation => 'Будь ласка, оберіть дію:';

  @override
  String get outbound => 'Вивезення зі складу';

  @override
  String get inbound => 'Введення на склад';

  @override
  String get inbound_quantity => 'Кількість на складі';

  @override
  String get outbound_quantity => 'Кількість відвантаженого';

  @override
  String get quantity => 'кількість';

  @override
  String get enter_inbound_quantity => 'Введіть кількість на складі';

  @override
  String get enter_outbound_quantity => 'Введіть кількість на складі';

  @override
  String delete_item_confirm_with_irreversible(String name) {
    return 'Ви впевнені, що хочете видалити «$name»? Цю дію не можна скасувати.';
  }

  @override
  String get database_reset =>
      'База даних була скинута, структура таблиці буде створена заново';

  @override
  String database_reset_error(String error) {
    return 'Помилка при скиданні бази даних: $error';
  }

  @override
  String mock_data_init_failed(String error) {
    return 'Помилку ініціалізації імітаційних даних: $error';
  }

  @override
  String get solution_steps => 'Рішення:';

  @override
  String get solution_step_1 => '1. Видалити застосунок та встановити заново';

  @override
  String get solution_step_2 => '2. Або очистити дані застосунку';

  @override
  String get solution_step_3 =>
      '3. Або після встановлення resetDatabaseOnStart у true запустіть знову';

  @override
  String notification_service_init_failed(String error) {
    return 'Помилка ініціалізації служби нагадувань: $error';
  }

  @override
  String check_calendar_account_failed(String error) {
    return 'Не вдалося перевірити обліковий запис календаря: $error';
  }

  @override
  String create_calendar_failed(String error) {
    return 'Помилка створення календаря: $error';
  }

  @override
  String add_calendar_event_failed(String error) {
    return 'Не вдалося додати подію до календаря: $error';
  }

  @override
  String delete_calendar_event_failed(String error) {
    return 'Не вдалося видалити подію календаря: $error';
  }

  @override
  String set_permission_message_failed(String error) {
    return 'Не вдалося встановити повідомлення про права доступу: $error';
  }

  @override
  String mock_data_init_success(int count) {
    return 'Успішно ініціалізовано $count тестових даних';
  }

  @override
  String database_has_data(int count) {
    return 'У базі даних вже є $count записів, пропустіть ініціалізацію симуляційних даних';
  }

  @override
  String get database_structure_mismatch =>
      'Можливо, структура бази даних не збігається, рекомендується очистити дані додатка або перевстановити його';

  @override
  String get old_database_deleted => 'Старі файли бази даних видалено';

  @override
  String get backup_data_empty => 'Резервні дані порожні';

  @override
  String get backup_file_not_found => 'Файл резервної копії не існує';

  @override
  String file_not_utf8(String error) {
    return 'Кодування файлу не є дійсним форматом UTF-8. Будь ласка, переконайтеся, що файл збережено з кодуванням UTF-8. Деталі помилки: $error';
  }

  @override
  String file_not_found(String filePath) {
    return 'Файл не існує: $filePath';
  }

  @override
  String file_empty(String filePath) {
    return 'Файл порожній: $filePath';
  }

  @override
  String get file_content_empty =>
      'Після декодування вміст файлу порожній, можливо, кодування не збігається';

  @override
  String field_cannot_be_empty(String fieldName) {
    return '$fieldName не може бути порожнім';
  }

  @override
  String field_min_length(String fieldName, int minLength) {
    return '$fieldName довжина не може бути менше ніж $minLength символів';
  }

  @override
  String field_max_length(String fieldName, int maxLength) {
    return '$fieldName не може перевищувати $maxLength символів';
  }

  @override
  String field_invalid_email(String fieldName) {
    return 'Будь ласка, введіть дійсну адресу $fieldName';
  }

  @override
  String field_invalid_number(String fieldName, String numberType) {
    return '$fieldName має бути $numberType';
  }

  @override
  String field_min_value(String fieldName, double min) {
    return '$fieldName не може бути менше за $min';
  }

  @override
  String field_max_value(String fieldName, double max) {
    return '$fieldName не може бути більшим за $max';
  }

  @override
  String field_positive_integer(String fieldName) {
    return '$fieldName повинен бути додатнім цілим числом';
  }

  @override
  String field_greater_than_zero(String fieldName) {
    return '$fieldName повинен бути більшим за 0';
  }

  @override
  String field_positive_number(String fieldName) {
    return '$fieldName повинен бути додатнім числом';
  }

  @override
  String field_invalid_date(String fieldName) {
    return 'Будь ласка, введіть дійсний $fieldName';
  }

  @override
  String field_date_not_past(String fieldName) {
    return '$fieldName не може бути минулою датою';
  }

  @override
  String field_date_not_before(String fieldName, String minDate) {
    return '$fieldName не може бути раніше ніж $minDate';
  }

  @override
  String field_date_not_after(String fieldName, String maxDate) {
    return '$fieldName не може бути пізніше за $maxDate';
  }

  @override
  String field_invalid_value(String fieldName) {
    return 'Будь ласка, введіть дійсний $fieldName';
  }

  @override
  String password_min_length(String fieldName) {
    return '$fieldName довжина не може бути менше 8 символів';
  }

  @override
  String password_uppercase_required(String fieldName) {
    return '$fieldName повинен містити принаймні одну велику літеру';
  }

  @override
  String password_lowercase_required(String fieldName) {
    return '$fieldName повинен містити принаймні одну малу літеру';
  }

  @override
  String password_digit_required(String fieldName) {
    return '$fieldName повинен містити принаймні одну цифру';
  }

  @override
  String password_special_char_required(String fieldName) {
    return '$fieldName повинен містити щонайменше один спеціальний символ';
  }

  @override
  String get passwords_not_match => 'Два введені паролі не збігаються';

  @override
  String get item_name_cannot_be_empty =>
      'Назва предмета не може бути порожньою';

  @override
  String name_max_length(int maxLength) {
    return 'Назва не може перевищувати $maxLength символів';
  }

  @override
  String quantity_min(int minQuantity) {
    return 'Кількість не може бути меншою ніж $minQuantity';
  }

  @override
  String quantity_max(int maxQuantity) {
    return 'Кількість не може перевищувати $maxQuantity';
  }

  @override
  String get unit_price_not_negative => 'Одинична ціна не може бути від’ємною';

  @override
  String unit_price_max(double maxUnitPrice) {
    return 'Ціна за одиницю не може перевищувати $maxUnitPrice';
  }

  @override
  String get set_production_expiry_for_validity =>
      'Будь ласка, встановіть дату виробництва та термін придатності для автоматичного розрахунку терміну дії';

  @override
  String get set_purchase_warranty_for_validity =>
      'Будь ласка, встановіть дату покупки та термін придатності для автоматичного обчислення гарантійного терміну';

  @override
  String get calendar_account_creation_failed =>
      'Не вдалося створити обліковий запис календаря, перевірте налаштування системного календаря';

  @override
  String get test_notification => 'Тестове повідомлення';

  @override
  String get test_notification_description =>
      'Це тестове повідомлення для перевірки функції локальних нагадувань';

  @override
  String get day_unit => 'небо';

  @override
  String days_with_value(int days) {
    return '$days днів';
  }

  @override
  String get item_saved => 'Предмет збережено';

  @override
  String get item_updated => 'Предмет оновлено';

  @override
  String get item_added => 'Предмет додано';

  @override
  String get save_success => 'Збережено успішно';

  @override
  String get update_success => 'Оновлення успішне';

  @override
  String get delete_success => 'Видалення успішне';

  @override
  String get save_failed => 'Збереження не вдалося';

  @override
  String get update_failed => 'Оновлення не вдалося';

  @override
  String get delete_failed => 'Видалення не вдалося';

  @override
  String get test_calendar_event => 'Тест події календаря';

  @override
  String get test_calendar_event_description =>
      'Це тестова подія, призначена для перевірки функції календаря';

  @override
  String get in_app => 'у застосунку';

  @override
  String get enable_alert => 'Увімкнути нагадування про закінчення терміну';

  @override
  String get alert_method => 'спосіб нагадування';

  @override
  String get alert_method_in_app => 'Лише в додатку';

  @override
  String get alert_method_calendar => 'Лише календар';

  @override
  String get alert_method_both => 'обидва';

  @override
  String get alert_days_before => 'Кількість днів попередження';

  @override
  String get use_global_setting => 'Використовувати глобальні налаштування';

  @override
  String get barcode_label => 'штрих-код';

  @override
  String get name_label => 'Назва';

  @override
  String get category_label => 'Категорія';

  @override
  String get current_quantity => 'Поточна кількість';

  @override
  String get select_operation => 'Будь ласка, виберіть дію';

  @override
  String get unit => 'одиниця';

  @override
  String get custom_unit => 'Користувацька одиниця';

  @override
  String get enter_unit => 'Будь ласка, введіть одиницю';

  @override
  String get custom_location => 'Налаштоване місце';

  @override
  String get enter_storage_location => 'Будь ласка, введіть місце зберігання';

  @override
  String get scan => 'Сканувати код';

  @override
  String get scan_to_stock => 'Сканувати для зберігання у складі';

  @override
  String get item_categories => 'Категоризація предметів';

  @override
  String get storage_locations => 'Місце зберігання';

  @override
  String get place_barcode_in_frame_to_scan =>
      'Розмістіть штрих-код у рамці для сканування';

  @override
  String get barcode => 'штрих-код';

  @override
  String get enter_barcode_or_scan =>
      'Будь ласка, введіть штрих-код або відскануйте його';

  @override
  String get basic_information => 'Базова інформація';

  @override
  String get item_name => 'Назва предмета';

  @override
  String get enter_item_name => 'Будь ласка, введіть назву предмета';

  @override
  String get enter_category_name => 'Будь ласка, введіть назву категорії';

  @override
  String item_increased(String itemName, String quantity, String unit) {
    return 'Вже додано $itemName $quantity$unit';
  }

  @override
  String item_decreased(String itemName, String quantity, String unit) {
    return 'Вже зменшено $itemName $quantity$unit';
  }

  @override
  String get unsaved_changes => 'Незбережені зміни';

  @override
  String get unsaved_changes_message =>
      'У вас є незбережені зміни, будь ласка, виберіть дію:';

  @override
  String get discard => 'відмовитися';

  @override
  String get unit_piece => 'шт.';

  @override
  String get unit_item => 'шт';

  @override
  String get unit_box => 'ящик';

  @override
  String get unit_package => 'пакет';

  @override
  String get unit_bottle => 'пляшка';

  @override
  String get unit_carton => 'коробка';

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
  String get quantity_label => 'кількість';

  @override
  String get unit_price_label => 'Ціна за одиницю';

  @override
  String get currency_label => 'валюта';

  @override
  String get total_price_label => 'Загальна ціна:';

  @override
  String get storage_location_label => 'Місце зберігання';

  @override
  String get item_properties => 'Властивості предмета';

  @override
  String get expiry_date_label => 'термін дії';

  @override
  String get warranty_expiry_date_label => 'Дата закінчення гарантії';

  @override
  String get production_date_label => 'Дата виробництва';

  @override
  String get purchase_date_label => 'Дата покупки';

  @override
  String auto_calculated_from(String dateType) {
    return 'Автоматичний розрахунок на основі $dateType та терміну придатності';
  }

  @override
  String get auto_calculated => 'Автоматичний розрахунок';

  @override
  String get images_label => 'зображення';

  @override
  String get notes_label => 'Примітка';

  @override
  String get add_notes_hint => 'Додати примітку (необов\'язково)';

  @override
  String get year_label => 'рік';

  @override
  String get month_label => 'місяць';

  @override
  String get day_label => 'небо';

  @override
  String selected_count(int count) {
    return 'Вибрано $count пунктів';
  }

  @override
  String get select_all => 'Вибрати все';

  @override
  String get deselect_all => 'Скасувати виділення всього';

  @override
  String get batch_change_location => 'масове переміщення місць зберігання';

  @override
  String confirm_delete_selected(int count) {
    return 'Ви впевнені, що хочете видалити вибрані $count предмети?';
  }

  @override
  String deleted_count_items(int count) {
    return 'Видалено $count предметів';
  }

  @override
  String get no_storage_location_available =>
      'Немає доступних місць для збереження';

  @override
  String get batch_change_location_title =>
      'масове переміщення місць зберігання';

  @override
  String moved_count_items_to_location(int count, String location) {
    return '已將 $count 個物品移動到 $location';
  }

  @override
  String get operation_type_create => 'Введення';

  @override
  String get operation_type_update => 'Редагувати';

  @override
  String get operation_type_delete => 'видалити';

  @override
  String get operation_type_inbound => 'Введення на склад';

  @override
  String get operation_type_outbound => 'Вивезення зі складу';

  @override
  String export_failed_message(String error) {
    return 'Експорт не вдався: $error';
  }

  @override
  String get clear_logs => 'Очистити журнал';

  @override
  String get confirm_clear_logs =>
      'Ви впевнені, що хочете очистити всі журнали операцій? Цю дію неможливо скасувати.';

  @override
  String get logs_cleared => 'Журнал очищено';

  @override
  String get operation_logs_title => 'Журнал операцій';

  @override
  String get export_logs => 'Експорт журналу';

  @override
  String get clear_logs_tooltip => 'Очистити журнал';

  @override
  String get no_operation_logs => 'Поки що немає журналу операцій';

  @override
  String get log_item_label => 'Предмет:';

  @override
  String get log_category_label => 'Категорія:';

  @override
  String get log_type_label => 'Тип:';

  @override
  String get log_quantity_label => 'Кількість:';

  @override
  String get log_unit_price_label => 'Ціна за одиницю:';

  @override
  String get log_total_price_label => 'Загальна ціна:';

  @override
  String get log_expiry_date_label => 'Термін придатності:';

  @override
  String get log_warranty_date_label => 'Дата гарантії:';

  @override
  String get log_purchase_date_label => 'Дата покупки:';

  @override
  String get log_production_date_label => 'Дата виробництва:';

  @override
  String get log_shelf_life_label => 'Термін придатності:';

  @override
  String get log_storage_location_label => 'Місце зберігання:';

  @override
  String get log_barcode_label => 'Штрих-код:';

  @override
  String get log_notes_label => 'Примітка:';

  @override
  String get log_alert_label => 'Попередження:';

  @override
  String get log_alert_days_label => 'Дні попередження:';

  @override
  String get log_quantity_change_label => 'Зміна кількості:';

  @override
  String get log_field_changes_label => 'Змінити поле:';

  @override
  String get log_not_set => 'Не встановлено';

  @override
  String get log_empty => 'порожній';

  @override
  String get log_alert_enabled => 'увімкнути';

  @override
  String get log_alert_disabled => 'Закрити';

  @override
  String get operation_logs_menu => 'Журнал операцій';

  @override
  String get operation_logs_description =>
      'Перегляд та відновлення записів операцій';

  @override
  String operation_failed_message(String error) {
    return 'Операція не вдалася: $error';
  }

  @override
  String get no_date => 'Без дати';

  @override
  String get shelf_life_months_suffix => 'місяць';

  @override
  String get shelf_life_days_suffix => 'небо';

  @override
  String get alert_days_suffix => 'небо';

  @override
  String get unknown => 'невідомо';

  @override
  String get developer_name => 'Лео';

  @override
  String get log_operation_date_label => 'Дата операції:';

  @override
  String get uncategorized => 'Невідсортовано';

  @override
  String get no_location => 'Без місця';

  @override
  String get item_category_cannot_be_empty =>
      'Категорія предмета не може бути порожньою';

  @override
  String get storage_location_cannot_be_empty =>
      'Місце зберігання не може бути порожнім';

  @override
  String get created_at_asc => 'Додати за зростанням часу';

  @override
  String get created_at_desc => 'Додати сортування за спаданням часу';

  @override
  String get location_management => 'Управління складом';

  @override
  String get private_warehouses => 'Приватний репозиторій';

  @override
  String get public_warehouses => 'публічна бібліотека';

  @override
  String get is_public_warehouse => 'публічна бібліотека';

  @override
  String get public_warehouse_desc =>
      'У публічному сховищі немає адміністратора, при видачі та прийомі потрібно заповнювати виконавця операції';

  @override
  String get manager => 'Адміністратор';

  @override
  String get not_set => 'Не встановлено';

  @override
  String get edit_location => 'Редагувати бібліотеку';

  @override
  String get location_name => 'Назва бібліотеки';

  @override
  String get manager_name => 'Ім\'я адміністратора';

  @override
  String get enter_manager_name => 'Будь ласка, введіть ім’я адміністратора';

  @override
  String get manager_name_required =>
      'Ім\'я адміністратора не може бути порожнім';

  @override
  String delete_location_confirm(String name) {
    return 'Ви впевнені, що хочете видалити бібліотеку «$name»?';
  }

  @override
  String get delete_location_has_items =>
      'У цій бібліотеці ще є предмети, неможливо видалити';

  @override
  String get default_manager => 'Адміністратор за замовчуванням';

  @override
  String get default_manager_desc =>
      'Адміністратор за замовчуванням при створенні приватного репозиторію';

  @override
  String get enter_default_manager =>
      'Введіть ім\'я адміністратора за замовчуванням';

  @override
  String get operator_name => 'Ім\'я оператора';

  @override
  String get enter_operator_name => 'Будь ласка, введіть ім\'я оператора';

  @override
  String get operator_name_required => 'Ім\'я оператора не може бути порожнім';

  @override
  String get no_manager => 'Без адміністратора';

  @override
  String get log_operator_label => 'Оператор:';

  @override
  String get outbound_quantity_exceeds_current =>
      'Кількість для відвантаження не може перевищувати поточний запас';
}
