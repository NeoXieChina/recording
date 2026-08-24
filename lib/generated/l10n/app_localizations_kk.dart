// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kazakh (`kk`).
class AppLocalizationsKk extends AppLocalizations {
  AppLocalizationsKk([String locale = 'kk']) : super(locale);

  @override
  String get app_name => 'Құнды заттарды жинау';

  @override
  String get cancel => 'Бас тарту';

  @override
  String get confirm => 'Растау';

  @override
  String get save => 'Сақтау';

  @override
  String get delete => 'Өшіру';

  @override
  String get edit => 'Өңдеу';

  @override
  String get add => 'Қосу';

  @override
  String get edit_item => 'Заттарды өңдеу';

  @override
  String get add_item => 'Зат қосу';

  @override
  String get search => 'Іздеу';

  @override
  String get settings => 'Параметрлер';

  @override
  String get language_settings => 'Тіл параметрлері';

  @override
  String get language_settings_description =>
      'Қолданба көрсетілетін тілін орнату';

  @override
  String get system_default => 'Жүйенің әдепкісі';

  @override
  String get use_system_language => 'Жүйе тілін пайдалану';

  @override
  String get language_change_hint =>
      'Тіл өзгерісі қолданбаны қайта іске қосқаннан кейін күшіне енеді';

  @override
  String get back => 'Қайту';

  @override
  String get next => 'Келесі қадам';

  @override
  String get done => 'Аяқтау';

  @override
  String get loading => 'Жүктелуде...';

  @override
  String get error => 'Қате';

  @override
  String get success => 'сәттілік';

  @override
  String get warning => 'Ескерту';

  @override
  String get info => 'ақпарат';

  @override
  String get select_alert_days => 'Еске салу күндерін таңдау';

  @override
  String get custom => 'Бейнелеу';

  @override
  String custom_days(int days) {
    return 'Баптау ($days күн)';
  }

  @override
  String current_selection(int days) {
    return 'Ағымдағы таңдау: $days күн';
  }

  @override
  String alert_days_range(int min, int max) {
    return 'Еске салу күндерінің ауқымы: $min-$max күн';
  }

  @override
  String get enter_days => 'Еске салу күндерін енгізіңіз';

  @override
  String get days => 'күндер саны';

  @override
  String enter_valid_days(int min, int max) {
    return 'Өтінемін, $min және $max арасындағы санды енгізіңіз';
  }

  @override
  String get alert_settings => 'Ескерту параметрлері';

  @override
  String get calendar_settings => 'Күнтізбе баптаулары';

  @override
  String get calendar_sync => 'Күнтізбені синхрондау';

  @override
  String get calendar_sync_desc =>
      'Қосылғаннан кейін күнтізбе рұқсатын сұрайды';

  @override
  String get add_test_calendar_event => 'Тест күнтізбе оқиғасын қосу';

  @override
  String get enable_calendar_sync_first =>
      'Алдымен «Күнтізбе синхрондау» қосқышын қосыңыз';

  @override
  String get app_alert_settings => 'Бағдарлама еске салғышын баптау';

  @override
  String get local_alerts => 'Жергілікті еске салу';

  @override
  String get local_alerts_desc =>
      'Қосымшадағы мерзімі өткен ескертулерді қосқаннан кейін қабылдау';

  @override
  String get send_test_notification => 'Тест хабарламасын жіберу';

  @override
  String get enable_local_alerts_first =>
      'Алдымен «жергілікті еске салғышты» қосыңыз';

  @override
  String get alert_days_settings => 'Еске салу күндерін орнату';

  @override
  String get advance_alert_days => 'Алдын ала еске салу күндері';

  @override
  String get advance_alert_days_desc =>
      'Заттардың жарамдылық мерзімінің немесе кепілдік мерзімінің аяқталуын қанша күн бұрын ескерту қажет екенін баптау';

  @override
  String get calendar_permission_request => 'Күнтізбе рұқсатын сұрау';

  @override
  String get calendar_permission_desc =>
      'Элементтердің ескертулерін синхрондау үшін күнтізбеге рұқсат қажет. Рұқсат бересіз бе?';

  @override
  String get allow => 'Рұқсат ету';

  @override
  String get calendar_permission_granted =>
      'Күнтізбе рұқсаты берілді, күнтізбені синхрондау қосылды';

  @override
  String get calendar_permission_denied =>
      'Күнтізбе рұқсаты бас тартылды, күнтізбені синхрондау мүмкін емес';

  @override
  String get calendar_permission_permanently_denied =>
      'Рұқсат тұрақты түрде бас тартылды';

  @override
  String get calendar_permission_permanently_denied_desc =>
      'Күнтізбе рұқсаты мәңгілікке бас тартылды, жүйе баптауларынан рұқсатты қолмен қосыңыз.';

  @override
  String get go_to_settings => 'Параметрлерге өту';

  @override
  String get calendar_account_failed =>
      'Күнтізбе рұқсаты берілді, бірақ күнтізбе есеп жазбасын жасау мүмкін емес. Жүйенің күнтізбе баптауларын тексеріңіз';

  @override
  String get calendar_account_created =>
      'Күнтізбе рұқсаты берілді, жергілікті күнтізбе есептік жазбасы құрылды';

  @override
  String get calendar_account_creating =>
      'Күнтізбе есептік жазба сәтті құрылды, бірақ жүйенің тиімді болуы үшін біраз уақыт қажет болуы мүмкін';

  @override
  String get test_calendar_event_added => 'Күнтізбе оқиғасын қосу сәтті өтті';

  @override
  String get test_calendar_event_failed =>
      'Тест күнтізбе оқиғасын қосу сәтсіз болды, күнтізбе параметрлерін тексеріңіз';

  @override
  String get calendar_permission_required =>
      'Тестілеу іс-шараларын қосу үшін күнтізбе рұқсаты қажет';

  @override
  String get test_notification_sent => 'Сынақ туралы хабарлама жіберілді';

  @override
  String test_notification_failed(String error) {
    return 'Тестілеу хабарламасын жіберу сәтсіз болды: $error';
  }

  @override
  String get notification_permission_required =>
      'Жергілікті ескертуді қосу үшін хабарландыру рұқсаты қажет';

  @override
  String operation_failed(String error) {
    return 'Операция сәтсіз аяқталды: $error';
  }

  @override
  String get notification_channel_name => 'Зат туралы ескерту хабарламасы';

  @override
  String get notification_channel_description =>
      'Тауардың мерзімі өткен немесе кепілдік мерзімі аяқталғаны туралы ескерту';

  @override
  String get item_category_food => 'азық-түлік';

  @override
  String get item_category_daily_necessities => 'күнделікті тұрмыстық заттар';

  @override
  String get item_category_cosmetics => 'Косметика';

  @override
  String get item_category_medicine => 'Дәрі';

  @override
  String get item_category_electronics => 'Электронды өнімдер';

  @override
  String get item_category_furniture => 'жабдықтау';

  @override
  String get item_category_clothing => 'киім';

  @override
  String get item_category_books => 'кітап';

  @override
  String get item_category_other => 'басқа';

  @override
  String get purchase_channel_online_mall => 'Онлайн дүкен';

  @override
  String get purchase_channel_physical_store => 'Дәстүрлі дүкен';

  @override
  String get purchase_channel_supermarket => 'супермаркет';

  @override
  String get purchase_channel_specialty_store => 'арнайы дүкен';

  @override
  String get purchase_channel_secondhand_market => 'екінші қол нарығы';

  @override
  String get purchase_channel_other => 'басқа';

  @override
  String get default_category => 'басқа';

  @override
  String get default_purchase_channel => 'Онлайн дүкен';

  @override
  String get item_category => 'Заттарды жіктеу';

  @override
  String get custom_category => 'Бапталған санат';

  @override
  String get backup_data => 'Деректерді сақтық көшірмелеу';

  @override
  String get backup_data_description =>
      'Барлық деректерді (суреттерді қоса) ZIP файл болып сақтық көшірме жасау';

  @override
  String get backup_all_data => 'Барлық деректерді сақтық көшірме жасау';

  @override
  String get backup_success => 'Сақтық көшірме сәтті жасалды';

  @override
  String backup_failed(String error) {
    return 'Сақтық көшірме сәтсіз аяқталды: $error';
  }

  @override
  String get restore_data => 'Деректерді қалпына келтіру';

  @override
  String get restore_data_description =>
      'ZIP сақтық көшірме файлын қалпына келтіріп, барлық деректерді қайтару';

  @override
  String get export_data => 'Деректерді экспорттау';

  @override
  String get export_data_description => 'CSV, TXT, SQL форматына экспорттау';

  @override
  String get import_data => 'Деректерді импорттау';

  @override
  String get import_data_description =>
      'CSV, TXT, SQL файлдарынан деректерді импорттау';

  @override
  String get alert_settings_description =>
      'Күнтізбелік еске салғыштар және қолданба хабарламаларын баптау';

  @override
  String get about => 'туралы';

  @override
  String get about_description => 'Қолданба туралы ақпарат және нұсқасы';

  @override
  String get select_backup_file_first =>
      'Алдымен сақтық көшірме файлын таңдаңыз';

  @override
  String get confirm_restore => 'Қалпына келтіруді растау';

  @override
  String get confirm_restore_message =>
      'Сақтық көшірмені қалпына келтіру барлық ағымдағы деректерді өшіреді және сақтық көшірме деректерімен ауыстырады, бұл әрекетті болдырмау мүмкін емес. Жалғастырғыңыз келе ме?';

  @override
  String get confirm_again => 'Қайтадан растау';

  @override
  String get confirm_restore_warning =>
      'Сіз барлық ағымдағы деректерді тазалап, сақтық көшірмені қалпына келтіргіңіз келе ме? Бұл әрекетті кері қайтару мүмкін емес!';

  @override
  String get confirm_restore_button => 'Қалпына келтіруді растау';

  @override
  String restore_success(int count) {
    return 'Қалпына келтіру сәтті өтті, жалпы $count заттар';
  }

  @override
  String restore_failed(String error) {
    return 'Қалпына келтіру сәтсіз аяқталды: $error';
  }

  @override
  String get select_backup_file => 'Сақтық көшірме файлын таңдаңыз';

  @override
  String get restore_backup => 'Сақтық көшірмені қалпына келтіру';

  @override
  String selected_file(String filename) {
    return 'Таңдалған файл: $filename';
  }

  @override
  String get export_success => 'Деректерді экспорттау сәтті өтті';

  @override
  String export_failed(String error) {
    return 'Экспорттау сәтсіз аяқталды: $error';
  }

  @override
  String get format_csv => 'CSV';

  @override
  String get format_txt => 'TXT';

  @override
  String get format_sql => 'SQL';

  @override
  String get duplicate_data_handling => 'Қайталанатын деректерді өңдеу';

  @override
  String get duplicate_data_detected =>
      'Қайталанған деректер анықталды, өңдеу әдісін таңдаңыз:';

  @override
  String get skip => 'Өткізу';

  @override
  String get overwrite => 'қабаттау';

  @override
  String get skip_all => 'Барлығын өткізіп жіберу';

  @override
  String get overwrite_all => 'Барлығын жабу';

  @override
  String get select_import_format_first =>
      'Алдымен импорттау форматты таңдаңыз';

  @override
  String get confirm_import => 'Импорттауды растау';

  @override
  String get confirm_import_message =>
      'Деректерді импорттау ағымдағы деректерді басып жазады, бұл әрекетті кері қайтару мүмкін емес. Жалғастырғыңыз келе ме?';

  @override
  String import_success(int count) {
    return 'Деректер сәтті импортталды, барлығы $count зат импортацияланды';
  }

  @override
  String import_failed(String error) {
    return 'Импорттау сәтсіз аяқталды: $error';
  }

  @override
  String get select_file => 'Файлды таңдау';

  @override
  String get no_data => 'Деректер жоқ';

  @override
  String get no_data_description =>
      'Қазіргі уақытта деректер жоқ, төмендегі батырманы басып бірінші жазбаны қосыңыз!';

  @override
  String get load_failed => 'Жүктеу сәтсіз аяқталды';

  @override
  String get load_failed_description =>
      'Деректерді жүктеу сәтсіз аяқталды, желі қосылымын тексеріп қайтадан көріңіз';

  @override
  String get retry => 'Қайтадан көріңіз';

  @override
  String get network_connection_failed => 'Желілік қосылым сәтсіз аяқталды';

  @override
  String get network_connection_failed_description =>
      'Желіге қосылымды тексеріп, қайтадан байқап көріңіз';

  @override
  String get no_results => 'Нәтиже табылмады';

  @override
  String get no_results_description =>
      'Басқа кілт сөздерді қолданып іздеуді байқап көріңіз';

  @override
  String get clear_search => 'Іздеуді тазалау';

  @override
  String get insufficient_permission => 'Рұқсат жетіспейді';

  @override
  String get insufficient_permission_description =>
      'Осы функцияны пайдалану үшін тиісті рұқсат қажет';

  @override
  String get request_permission => 'Рұқсат сұрау';

  @override
  String get app_info => 'Қолданба туралы ақпарат';

  @override
  String get version => 'нұсқа';

  @override
  String get developer => 'әзірлеуші';

  @override
  String get device_info => 'Құрылғы туралы ақпарат';

  @override
  String get device_model => 'Құрылғы моделі';

  @override
  String get brand => 'бренд';

  @override
  String get device_name => 'Құрылғы атауы';

  @override
  String get product => 'өнім';

  @override
  String get hardware => 'Аппараттық қамтамасыз ету';

  @override
  String get android_version => 'Android нұсқасы';

  @override
  String get sdk_version => 'SDK нұсқасы';

  @override
  String get system_name => 'Жүйенің атауы';

  @override
  String get operating_system => 'Операциялық жүйе';

  @override
  String get system_version => 'Жүйенің нұсқасы';

  @override
  String get dart_version => 'Dart нұсқасы';

  @override
  String get device_identifier => 'Құрылғының идентификаторы';

  @override
  String get computer_name => 'Компьютер атауы';

  @override
  String get build_number => 'Нұсқа нөмірі';

  @override
  String error_getting_device_info(String error) {
    return 'Құрылғы туралы ақпаратты алу мүмкін емес: $error';
  }

  @override
  String get features => 'Функцияны таныстыру';

  @override
  String get app_description => 'Ақылды заттарды басқару қосымшасы';

  @override
  String get app_description_detail =>
      'Сізге заттардың жарамдылық мерзімі, кепілдік мерзімі сияқты ақпараттарды басқаруға көмектеседі және ақылды ескерту функциясын ұсынады.';

  @override
  String get consumable => 'пайдаланылатын заттар';

  @override
  String get durable => 'Тұрақты тауарлар';

  @override
  String get sort => 'тәртіпке қою';

  @override
  String get name_asc => 'Атау бойынша өсу тәртібі';

  @override
  String get name_desc => 'Атын азаю ретімен';

  @override
  String get date_asc => 'Күнін өсу ретімен';

  @override
  String get date_desc => 'Күнін кему ретімен';

  @override
  String get price_asc => 'Бірлік бағасы бойынша өсу ретімен';

  @override
  String get price_desc => 'Бірлік бағасының кемуі';

  @override
  String get quantity_asc => 'Саны бойынша өсу тәртібі';

  @override
  String get quantity_desc => 'Саны бойынша кему реті';

  @override
  String get total_price_asc => 'Жалпы баға бойынша өсу реті';

  @override
  String get total_price_desc => 'Жалпы баға бойынша кему реті';

  @override
  String get clear_all_filters => 'Барлық сүзгілерді тазалау';

  @override
  String get scan_barcode => 'Сканерлеу арқылы қоймаға енгізу';

  @override
  String get search_items => 'Затты іздеңіз...';

  @override
  String get no_items => 'Әзірге зат жоқ';

  @override
  String get no_items_description =>
      'Төмендегі түймені басып, бірінші затты қосыңыз';

  @override
  String get expired => 'Мерзімі өтті';

  @override
  String get expiring_soon => 'Жақында мерзімі аяқталатын';

  @override
  String get warranty_expired => 'Кепілдік мерзімі аяқталды';

  @override
  String get warranty_expiring_soon => 'Кепілдік мерзімі аяқталуға жақын';

  @override
  String days_remaining(int count) {
    return 'Қалған $count күн';
  }

  @override
  String expired_days_ago(int count) {
    return '$count күннен бұрын өтіп кеткен';
  }

  @override
  String get delete_item => 'Затты жою';

  @override
  String delete_item_confirm(String name) {
    return '«$name» жойғыңыз келетініне сенесіз бе?';
  }

  @override
  String get item_deleted => 'Зат жойылды';

  @override
  String get failed_to_delete => 'Жою сәтсіз болды';

  @override
  String failed_to_delete_message(String error) {
    return 'Элементті өшіру мүмкін емес: $error';
  }

  @override
  String get date_range_filter => 'Күндер аралығын сүзу';

  @override
  String get price_range_filter => 'Баға ауқымы бойынша сүзу';

  @override
  String get my_items => 'Менің заттарым';

  @override
  String get click_fab_to_add_item =>
      'Төменгі оң жақтағы батырманы басып заттарды қосыңыз';

  @override
  String get confirm_delete => 'Жоюды растау';

  @override
  String get filter_options => 'Сүзу параметрлері';

  @override
  String get filter_by_type_category_location =>
      'Затты түрі, санаты және орны бойынша сүзу';

  @override
  String categories_count(int count) {
    return '$count санат';
  }

  @override
  String get all_categories => 'Барлық санаттар';

  @override
  String get no_category_data => 'Әзірге санатталған деректер жоқ';

  @override
  String get storage_location => 'сақтау орны';

  @override
  String locations_count(int count) {
    return '$count орын';
  }

  @override
  String get all_locations => 'Барлық орындар';

  @override
  String get no_location_data => 'Орын туралы мәлімет жоқ';

  @override
  String get date_range => 'Күндер диапазоны';

  @override
  String get select_date_range => 'Күн ауқымын таңдау';

  @override
  String get price_range => 'Баға ауқымы';

  @override
  String get unit_price_range => 'Бірлік бағасы диапазоны';

  @override
  String get min_unit_price => 'ең төменгі бірлік баға';

  @override
  String get max_unit_price => 'ең жоғары бірлік баға';

  @override
  String get total_price_range => 'Жалпы баға диапазоны';

  @override
  String get min_total_price => 'ең төменгі жалпы баға';

  @override
  String get max_total_price => 'ең жоғарғы жалпы баға';

  @override
  String get clear_price_filter => 'Баға сүзгіні тазалау';

  @override
  String get place_barcode_in_frame =>
      'Штрихкодты сканерлеу үшін қорапқа салыңыз';

  @override
  String get item_already_exists => 'Тауар 이미 бар';

  @override
  String barcode_with_value(String barcode) {
    return 'Штрих-код: $barcode';
  }

  @override
  String name_with_value(String name) {
    return 'Аты: $name';
  }

  @override
  String category_with_value(String category) {
    return 'Санат: $category';
  }

  @override
  String current_quantity_with_value(String quantity, String unit) {
    return 'Ағымдағы саны：$quantity$unit';
  }

  @override
  String get please_select_operation => 'Әрекетті таңдаңыз:';

  @override
  String get outbound => 'Шығару қоймадан';

  @override
  String get inbound => 'Қоймаға қабылдау';

  @override
  String get inbound_quantity => 'Қоймаға қабылданған саны';

  @override
  String get outbound_quantity => 'Шығарылған сан';

  @override
  String get quantity => 'саны';

  @override
  String get enter_inbound_quantity => 'Қоймаға енгізілетін санды енгізіңіз';

  @override
  String get enter_outbound_quantity => 'Шығару санын енгізіңіз';

  @override
  String delete_item_confirm_with_irreversible(String name) {
    return '«$name»-ны жойғыңыз келе ме? Бұл әрекетті кері қайтаруға болмайды.';
  }

  @override
  String get database_reset =>
      'Деректер қоры қалпына келтірілді, кесте құрылымы қайта жасалады';

  @override
  String database_reset_error(String error) {
    return 'Дерекқорды қалпына келтіру кезінде қате туындады: $error';
  }

  @override
  String mock_data_init_failed(String error) {
    return 'Еріктеу деректерін инициализациялау сәтсіз аяқталды: $error';
  }

  @override
  String get solution_steps => 'Шешу жолы:';

  @override
  String get solution_step_1 => '1. Қолданбаны өшіріп қайта орнатыңыз';

  @override
  String get solution_step_2 => '2. Немесе қолданба деректерін тазалау';

  @override
  String get solution_step_3 =>
      '3. Немесе resetDatabaseOnStart параметрін true етіп қойып, қайтадан іске қосыңыз';

  @override
  String notification_service_init_failed(String error) {
    return 'Еске салу қызметін іске қосу сәтсіз болды: $error';
  }

  @override
  String check_calendar_account_failed(String error) {
    return 'Күнтізбе есептік жазбасын тексеру сәтсіз аяқталды: $error';
  }

  @override
  String create_calendar_failed(String error) {
    return 'Күнтізбені жасау сәтсіз болды: $error';
  }

  @override
  String add_calendar_event_failed(String error) {
    return 'Күнтізбе оқиғасын қосу сәтсіз аяқталды: $error';
  }

  @override
  String delete_calendar_event_failed(String error) {
    return 'Күнтізбе оқиғасын жою сәтсіз аяқталды: $error';
  }

  @override
  String set_permission_message_failed(String error) {
    return 'Құқықтарды орнату хабарламасы қатесі: $error';
  }

  @override
  String mock_data_init_success(int count) {
    return '_${count}_ дана эмуляцияланған деректер сәтті инициализацияланды';
  }

  @override
  String database_has_data(int count) {
    return 'Дерекқорда 이미 $count деректер бар, модельдік деректерді инициализациялауды өткізеді';
  }

  @override
  String get database_structure_mismatch =>
      'Мүмкін дерекқор құрылымы сәйкес келмейді, қосымша деректерін тазалау немесе қайта орнату ұсынылады';

  @override
  String get old_database_deleted => 'Ескі дерекқор файлы жойылды';

  @override
  String get backup_data_empty => 'Сақтық көшірме деректері бос';

  @override
  String get backup_file_not_found => 'Сақтық көшірме файлы жоқ';

  @override
  String file_not_utf8(String error) {
    return 'Файл кодтауы жарамды UTF-8 форматында емес. Файлдың UTF-8 кодтауымен сақталғанына көз жеткізіңіз. Қате туралы мәлімет: $error';
  }

  @override
  String file_not_found(String filePath) {
    return 'Файл жоқ: $filePath';
  }

  @override
  String file_empty(String filePath) {
    return 'Файл бос: $filePath';
  }

  @override
  String get file_content_empty =>
      'Файлдың мазмұны декодталғаннан кейін бос, мүмкін кодтау сәйкес келмейді';

  @override
  String field_cannot_be_empty(String fieldName) {
    return '$fieldName бос болмауы керек';
  }

  @override
  String field_min_length(String fieldName, int minLength) {
    return '$fieldName ұзындығы $minLength таңбадан аз болмауы керек';
  }

  @override
  String field_max_length(String fieldName, int maxLength) {
    return '$fieldName ұзындығы $maxLength таңбадан артық болмауы керек';
  }

  @override
  String field_invalid_email(String fieldName) {
    return 'Өтінеміз, жарамды $fieldName мекенжайын енгізіңіз';
  }

  @override
  String field_invalid_number(String fieldName, String numberType) {
    return '$fieldName міндетті түрде $numberType болуы керек';
  }

  @override
  String field_min_value(String fieldName, double min) {
    return '$fieldName $min кем болмауы керек';
  }

  @override
  String field_max_value(String fieldName, double max) {
    return '$fieldName $max-ден үлкен болмауы керек';
  }

  @override
  String field_positive_integer(String fieldName) {
    return '$fieldName дұрыс бүтін сан болуы керек';
  }

  @override
  String field_greater_than_zero(String fieldName) {
    return '$fieldName нөлден үлкен болуы керек';
  }

  @override
  String field_positive_number(String fieldName) {
    return '$fieldName оң сандар болуы керек';
  }

  @override
  String field_invalid_date(String fieldName) {
    return 'Жарамды $fieldName енгізіңіз';
  }

  @override
  String field_date_not_past(String fieldName) {
    return '$fieldName өткен күн болмауы керек';
  }

  @override
  String field_date_not_before(String fieldName, String minDate) {
    return '$fieldName $minDate күнінен ерте болмауы керек';
  }

  @override
  String field_date_not_after(String fieldName, String maxDate) {
    return '$fieldName $maxDate-ден кеш болмауы керек';
  }

  @override
  String field_invalid_value(String fieldName) {
    return 'Дұрыс $fieldName енгізіңіз';
  }

  @override
  String password_min_length(String fieldName) {
    return '$fieldName ұзындығы 8 таңбадан кем болмауы керек';
  }

  @override
  String password_uppercase_required(String fieldName) {
    return '$fieldName кем дегенде бір бас әріп болуы керек';
  }

  @override
  String password_lowercase_required(String fieldName) {
    return '$fieldName кем дегенде бір кіші әріптен тұруы керек';
  }

  @override
  String password_digit_required(String fieldName) {
    return '$fieldName кем дегенде бір санды қамтуы керек';
  }

  @override
  String password_special_char_required(String fieldName) {
    return '$fieldName кем дегенде бір ерекше таңба болуы керек';
  }

  @override
  String get passwords_not_match =>
      'Екі рет енгізген құпия сөз сәйкес келмейді';

  @override
  String get item_name_cannot_be_empty => 'Заттың атауы бос болмауы керек';

  @override
  String name_max_length(int maxLength) {
    return 'Атау $maxLength таңбадан аспауы керек';
  }

  @override
  String quantity_min(int minQuantity) {
    return 'Саны $minQuantity кем болмауы керек';
  }

  @override
  String quantity_max(int maxQuantity) {
    return 'Саны $maxQuantity-дан артық болмауы керек';
  }

  @override
  String get unit_price_not_negative => 'Бірлік бағасы теріс болмауы керек';

  @override
  String unit_price_max(double maxUnitPrice) {
    return 'Бірлік бағасы $maxUnitPrice аспауы керек';
  }

  @override
  String get set_production_expiry_for_validity =>
      'Өнім шығару күнін және жарамдылық мерзімін автоматты түрде есептеу үшін орнатыңыз';

  @override
  String get set_purchase_warranty_for_validity =>
      'Сатып алу күнін және сақтау мерзімін орнатып, кепілдік мерзімін автоматты түрде есептеңіз';

  @override
  String get calendar_account_creation_failed =>
      'Күнтізбе тіркелгісін жасау мүмкін емес, жүйелік күнтізбе параметрлерін тексеріңіз';

  @override
  String get test_notification => 'Сынақ туралы хабарлама';

  @override
  String get test_notification_description =>
      'Бұл жергілікті еске салу функциясын тексеру үшін сынақ хабарламасы';

  @override
  String get day_unit => 'аспан';

  @override
  String days_with_value(int days) {
    return '$days күн';
  }

  @override
  String get item_saved => 'Зат сақталды';

  @override
  String get item_updated => 'Зат жаңартылды';

  @override
  String get item_added => 'Зат қосылды';

  @override
  String get save_success => 'Сақтау сәтті өтті';

  @override
  String get update_success => 'Жаңарту сәтті өтті';

  @override
  String get delete_success => 'Сәтті жойылды';

  @override
  String get save_failed => 'Сақтау сәтсіз болды';

  @override
  String get update_failed => 'Жаңарту сәтсіз аяқталды';

  @override
  String get delete_failed => 'Жою сәтсіз болды';

  @override
  String get test_calendar_event => 'Күнтізбе оқиғасын сынау';

  @override
  String get test_calendar_event_description =>
      'Бұл сынақ оқиға, күнтізбе функциясын тексеру үшін';

  @override
  String get in_app => 'қосымша ішіндегі';

  @override
  String get enable_alert => 'Мерзім аяқталу еске салғышын қосу';

  @override
  String get alert_method => 'Ескерту тәсілі';

  @override
  String get alert_method_in_app => 'Тек қосымша ішінде';

  @override
  String get alert_method_calendar => 'Тек күнтізбе';

  @override
  String get alert_method_both => 'екі жақ';

  @override
  String get alert_days_before => 'Алдын ала еске салу күндері';

  @override
  String get use_global_setting => 'Жаһандық баптауларды пайдалану';

  @override
  String get barcode_label => 'штрихкод';

  @override
  String get name_label => 'Атауы';

  @override
  String get category_label => 'Санаттау';

  @override
  String get current_quantity => 'Ағымдағы сан';

  @override
  String get select_operation => 'Әрекетті таңдаңыз';

  @override
  String get unit => 'бірлік';

  @override
  String get custom_unit => 'Бапталған бірлік';

  @override
  String get enter_unit => 'Бірлікті енгізіңіз';

  @override
  String get custom_location => 'Бапталған орын';

  @override
  String get enter_storage_location => 'Сақтау орнын енгізіңіз';

  @override
  String get scan => 'Сканерлеу';

  @override
  String get scan_to_stock => 'Сканерлеу арқылы қоймаға енгізу';

  @override
  String get item_categories => 'Заттарды жіктеу';

  @override
  String get storage_locations => 'сақтау орны';

  @override
  String get place_barcode_in_frame_to_scan =>
      'Штрихкодты сканерлеу үшін қорапқа салыңыз';

  @override
  String get barcode => 'штрихкод';

  @override
  String get enter_barcode_or_scan => 'Штрихкодты енгізіңіз немесе сканерлеңіз';

  @override
  String get basic_information => 'Негізгі ақпарат';

  @override
  String get item_name => 'тауар атауы';

  @override
  String get enter_item_name => 'Заттың атауын енгізіңіз';

  @override
  String get enter_category_name => 'Санат атауын енгізіңіз';

  @override
  String item_increased(String itemName, String quantity, String unit) {
    return 'Қосылды $itemName $quantity$unit';
  }

  @override
  String item_decreased(String itemName, String quantity, String unit) {
    return '_${itemName}_ _$quantity${unit}_ азайтылды';
  }

  @override
  String get unsaved_changes => 'Сақталмаған өзгерістер';

  @override
  String get unsaved_changes_message =>
      'Сізде сақталмаған өзгертулер бар, әрекетті таңдаңыз:';

  @override
  String get discard => 'бас тартады';

  @override
  String get unit_piece => 'дана';

  @override
  String get unit_item => 'дана';

  @override
  String get unit_box => 'қорап';

  @override
  String get unit_package => 'сеуiл';

  @override
  String get unit_bottle => 'лақпа';

  @override
  String get unit_carton => 'қорап';

  @override
  String get unit_set => 'топтама';

  @override
  String get unit_kg => 'кг';

  @override
  String get unit_g => 'g';

  @override
  String get unit_l => 'L';

  @override
  String get unit_ml => 'мл';

  @override
  String get unit_m => 'm';

  @override
  String get unit_cm => 'см';

  @override
  String get quantity_label => 'саны';

  @override
  String get unit_price_label => 'бірлік бағасы';

  @override
  String get currency_label => 'ақша';

  @override
  String get total_price_label => 'Жалпы баға:';

  @override
  String get storage_location_label => 'сақтау орны';

  @override
  String get item_properties => 'тауар қасиеттері';

  @override
  String get expiry_date_label => 'жарамдылық мерзімі';

  @override
  String get warranty_expiry_date_label => 'Кепілдік мерзімінің аяқталу күні';

  @override
  String get production_date_label => 'Өндіру күні';

  @override
  String get purchase_date_label => 'Сатып алу күні';

  @override
  String auto_calculated_from(String dateType) {
    return '$dateType және сақтау мерзіміне сәйкес автоматты есептеу';
  }

  @override
  String get auto_calculated => 'Автоматты есептеу';

  @override
  String get images_label => 'сурет';

  @override
  String get notes_label => 'Ескертпе';

  @override
  String get add_notes_hint => 'Ескертпе ақпарат қосу (міндетті емес)';

  @override
  String get year_label => 'жыл';

  @override
  String get month_label => 'Ай';

  @override
  String get day_label => 'күн';

  @override
  String selected_count(int count) {
    return 'Таңдалған $count элемент';
  }

  @override
  String get select_all => 'Барлығын таңдау';

  @override
  String get deselect_all => 'Барлығын таңдауды болдырмау';

  @override
  String get batch_change_location => 'Сақтау орнын жаппай ауыстыру';

  @override
  String confirm_delete_selected(int count) {
    return 'Таңдалған $count затты өшіргіңіз келе ме?';
  }

  @override
  String deleted_count_items(int count) {
    return '$count зат жойылды';
  }

  @override
  String get no_storage_location_available => 'Сақтау орны әлі таңдалмаған';

  @override
  String get batch_change_location_title => 'Сақтау орнын жаппай ауыстыру';

  @override
  String moved_count_items_to_location(int count, String location) {
    return '$count зат $location орнына шығарылды';
  }

  @override
  String get operation_type_create => 'енгізу';

  @override
  String get operation_type_update => 'Өңдеу';

  @override
  String get operation_type_delete => 'Өшіру';

  @override
  String get operation_type_inbound => 'Қоймаға қабылдау';

  @override
  String get operation_type_outbound => 'Шығару қоймадан';

  @override
  String export_failed_message(String error) {
    return 'Экспорт сәтсіз аяқталды: $error';
  }

  @override
  String get clear_logs => 'Журналды тазалау';

  @override
  String get confirm_clear_logs =>
      'Барлық операция журналдарын тазартқыңыз келе ме? Бұл әрекетті қалпына келтіру мүмкін емес.';

  @override
  String get logs_cleared => 'Журнал тазаланды';

  @override
  String get operation_logs_title => 'Операциялық журнал';

  @override
  String get export_logs => 'Журналды экспорттау';

  @override
  String get clear_logs_tooltip => 'Журналды тазалау';

  @override
  String get no_operation_logs => 'Әзірге операция журналы жоқ';

  @override
  String get log_item_label => 'Зат:';

  @override
  String get log_category_label => 'Санат:';

  @override
  String get log_type_label => 'Түрі:';

  @override
  String get log_quantity_label => 'Саны：';

  @override
  String get log_unit_price_label => 'Бірлік бағасы:';

  @override
  String get log_total_price_label => 'Жалпы баға:';

  @override
  String get log_expiry_date_label => 'Жарамдылық мерзімі:';

  @override
  String get log_warranty_date_label => 'Кепілдік мерзімі:';

  @override
  String get log_purchase_date_label => 'Сатып алынған күні:';

  @override
  String get log_production_date_label => 'Өндіріс күні：';

  @override
  String get log_shelf_life_label => 'Сақтау мерзімі:';

  @override
  String get log_storage_location_label => 'Сақтау орны:';

  @override
  String get log_barcode_label => 'Штрих-код:';

  @override
  String get log_notes_label => 'Ескертпе:';

  @override
  String get log_alert_label => 'Ескерту:';

  @override
  String get log_alert_days_label => 'Ескерту күні:';

  @override
  String get log_quantity_change_label => 'Санының өзгеруі:';

  @override
  String get log_field_changes_label => 'Өрісті өзгерту:';

  @override
  String get log_not_set => 'Орнатылмаған';

  @override
  String get log_empty => 'бос';

  @override
  String get log_alert_enabled => 'Ашу';

  @override
  String get log_alert_disabled => 'Өшіру';

  @override
  String get operation_logs_menu => 'Операция журналы';

  @override
  String get operation_logs_description =>
      'Операция жазбаларын қарау және қалпына келтіру';

  @override
  String operation_failed_message(String error) {
    return 'Операция сәтсіз аяқталды: $error';
  }

  @override
  String get no_date => 'Күні жоқ';

  @override
  String get shelf_life_months_suffix => 'ай';

  @override
  String get shelf_life_days_suffix => 'аспан';

  @override
  String get alert_days_suffix => 'күн';

  @override
  String get unknown => 'Белгісіз';

  @override
  String get developer_name => 'Лео';

  @override
  String get log_operation_date_label => 'Операция күні:';
}
