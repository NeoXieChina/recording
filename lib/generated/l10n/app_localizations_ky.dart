// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kirghiz Kyrgyz (`ky`).
class AppLocalizationsKy extends AppLocalizations {
  AppLocalizationsKy([String locale = 'ky']) : super(locale);

  @override
  String get app_name => 'Материалды сактоого жер';

  @override
  String get cancel => 'жокко чыгаруу';

  @override
  String get confirm => 'Тастыктоо';

  @override
  String get save => 'Сактоо';

  @override
  String get delete => 'Өчүрүү';

  @override
  String get edit => 'Редакциялоо';

  @override
  String get add => 'Кошуу';

  @override
  String get edit_item => 'Элементти түзөтүү';

  @override
  String get add_item => 'Элемент кошуу';

  @override
  String get search => 'издөө';

  @override
  String get settings => 'Орнотуулар';

  @override
  String get language_settings => 'Тил орнотуулары';

  @override
  String get language_settings_description =>
      'Колдонмонун көрүү тилин орнотуңуз';

  @override
  String get system_default => 'Система боюнча демейки';

  @override
  String get use_system_language => 'Системанын тилин колдонуу';

  @override
  String get language_change_hint =>
      'Тилди өзгөртүү тиркемени кайра иштеткенден кийин күчүнө кирет';

  @override
  String get back => 'Кайтуу';

  @override
  String get next => 'Кийинки кадам';

  @override
  String get done => 'Аяктады';

  @override
  String get loading => 'Жүктөлүп жатат...';

  @override
  String get error => 'Ката';

  @override
  String get success => 'Ийгилик';

  @override
  String get warning => 'Эскертүү';

  @override
  String get info => 'маалымат';

  @override
  String get select_alert_days => 'Эскертүү күндөрүн тандаңыз';

  @override
  String get custom => 'Ыңгайлаштырылган';

  @override
  String custom_days(int days) {
    return 'Өзгөчөлөштүрүлгөн ($days күн)';
  }

  @override
  String current_selection(int days) {
    return 'Азыркы тандоо: $days күн';
  }

  @override
  String alert_days_range(int min, int max) {
    return 'Эскертип коё турган күндөрдүн диапазону: $min-$max күн';
  }

  @override
  String get enter_days => 'Эскертүү күндөрүн киргизиңиз';

  @override
  String get days => 'күндөр';

  @override
  String enter_valid_days(int min, int max) {
    return 'Сураныч, $min менен $max ортосундагы санды киргизиңиз';
  }

  @override
  String get alert_settings => 'Эскертүү настройкалары';

  @override
  String get calendar_settings => 'Жылнаама жөндөлүшү';

  @override
  String get calendar_sync => 'Жылдыз календарь синхрондоштуруу';

  @override
  String get calendar_sync_desc =>
      'Иштеткенден кийин календарга кирүү уруксатын сурайт';

  @override
  String get add_test_calendar_event => 'Сынак календардык окуясын кошуу';

  @override
  String get enable_calendar_sync_first =>
      'Өтүнөм, алды менен \"Күн тартибин синхрондоштурууну\" күйгүзүңүз';

  @override
  String get app_alert_settings => 'Приложение эскертмелерди орнотуу';

  @override
  String get local_alerts => 'Жергиликтүү эскертүү';

  @override
  String get local_alerts_desc =>
      'Ачкандан кийин тиркемедеги мөөнөтү өткөн эскертүүлөрдү кабыл алуу';

  @override
  String get send_test_notification => 'Сынак билдирүүсүн жөнөтүү';

  @override
  String get enable_local_alerts_first =>
      'Өтүнөм, алды менен \"Жергиликтүү эскертүүлөр\" колдоочу орнотууну күйгүзүңүз';

  @override
  String get alert_days_settings => 'Эскертүү күндөрүн аныктоо';

  @override
  String get advance_alert_days => 'Мурунтан эскертүү күндөрү';

  @override
  String get advance_alert_days_desc =>
      'Материалдын мөөнөтү аягына чыгарын же кепилдик мөөнөтү бүтөөрүн канча күн алдын ала эскертип коюуну орнотуу';

  @override
  String get calendar_permission_request => 'Календарга уруксат суроо';

  @override
  String get calendar_permission_desc =>
      'Элемент эскертүүлөрүн синхрондоштуруу үчүн календарга кирүү уруксат талап кылынат. Жарашат беле?';

  @override
  String get allow => 'Рөхсәт берүү';

  @override
  String get calendar_permission_granted =>
      'Күн тартиби уруксат берилди, күн тартиби синхрондоштуруу күйгүзүлгөн';

  @override
  String get calendar_permission_denied =>
      'Күн тартиби уруксат берүүдөн баш тартылды, күн тартиби синхронизациясын ачууга болбойт';

  @override
  String get calendar_permission_permanently_denied =>
      'Сырсөзүмү түбөлүккө баш тартылды';

  @override
  String get calendar_permission_permanently_denied_desc =>
      'Жылдык күнтүзмө укугу түбөлүккө баш тартылды, системанын жөндөөлөрүндө кол менен уруксатты күйгүзүңүз.';

  @override
  String get go_to_settings => 'Жөндөөлөргө өт';

  @override
  String get calendar_account_failed =>
      'Күнтүзмө укуктары берилди, бирок күнтүзмө аккаунт түзүлбөйт. Системанын күнтүзмө жөндөөлөрүн текшериңиз';

  @override
  String get calendar_account_created =>
      'Календар уруксаттары берилди, жергиликтүү календар аккаунту түзүлдү';

  @override
  String get calendar_account_creating =>
      'Календарь аккаунту ийгиликтүү түзүлдү, бирок системанын иштей баштоосу үчүн айрым убакыт керек болушу мүмкүн';

  @override
  String get test_calendar_event_added =>
      'Күн тартибиндеги окуяны кошуу ийгиликтүү болду';

  @override
  String get test_calendar_event_failed =>
      'Сынак күнтүзмө окуясын кошуу мүмкүн болбоду, күнтүзмө жөндөөлөрүн текшериңиз';

  @override
  String get calendar_permission_required =>
      'Сынак окуяларын кошуу үчүн календарга уруксат керек';

  @override
  String get test_notification_sent => 'Сынак билдирүүсү жөнөтүлдү';

  @override
  String test_notification_failed(String error) {
    return 'Тесттик билдирүүнү жөнөтүү мүмкүн болгон жок: $error';
  }

  @override
  String get notification_permission_required =>
      'Жергиликтүү эскертмени иштетүү үчүн билдирүү уруксаты керек';

  @override
  String operation_failed(String error) {
    return 'Иштөө ишке болбой калды: $error';
  }

  @override
  String get notification_channel_name =>
      'Элементтер боюнча эскертүү билдирүүсү';

  @override
  String get notification_channel_description =>
      'Эморун мөөнөтү өтүп кеткен же кепилдик мөөнөтүн эскертүү';

  @override
  String get item_category_food => 'азык-түлүк';

  @override
  String get item_category_daily_necessities =>
      'Күнүмдүк керектелүүчү товарлар';

  @override
  String get item_category_cosmetics => 'Косметика';

  @override
  String get item_category_medicine => 'Дары';

  @override
  String get item_category_electronics => 'Электрондук продуктылар';

  @override
  String get item_category_furniture => 'Мебель';

  @override
  String get item_category_clothing => 'Кийим';

  @override
  String get item_category_books => 'Китеп';

  @override
  String get item_category_other => 'Башкалар';

  @override
  String get purchase_channel_online_mall => 'Онлайн соода борбору';

  @override
  String get purchase_channel_physical_store => 'Физикалык дүкөн';

  @override
  String get purchase_channel_supermarket => 'супермаркет';

  @override
  String get purchase_channel_specialty_store => 'айрыкча дүкөн';

  @override
  String get purchase_channel_secondhand_market => 'экинчи кол базар';

  @override
  String get purchase_channel_other => 'Башкалар';

  @override
  String get default_category => 'Башкалар';

  @override
  String get default_purchase_channel => 'Онлайн соода борбору';

  @override
  String get item_category => 'Эркектерди классификациялоо';

  @override
  String get custom_category => 'Ыңгайлаштырылган классификация';

  @override
  String get backup_data => 'Маалыматты камдык сактоо';

  @override
  String get backup_data_description =>
      'Бардык маалыматтарды (сүрөттөрдү кошо) ZIP файлга топтоп камдык көчүрмөнү сактоо';

  @override
  String get backup_all_data => 'Бардык маалыматтарды резервдөө';

  @override
  String get backup_success => 'Сактоо ийгиликтүү болду';

  @override
  String backup_failed(String error) {
    return 'Сактык көчүрмө жасалбады: $error';
  }

  @override
  String get restore_data => 'Маалыматты калыбына келтирүү';

  @override
  String get restore_data_description =>
      'ZIP камдык көчүрмө файлынан бардык маалыматтарды калыбына келтирүү';

  @override
  String get export_data => 'Маалыматты экспорттоо';

  @override
  String get export_data_description => 'CSV, TXT, SQL форматында экспорттоо';

  @override
  String get import_data => 'Маалыматтарды импорттоо';

  @override
  String get import_data_description =>
      'CSV, TXT, SQL файлдарынан маалыматтарды импорттоо';

  @override
  String get alert_settings_description =>
      'Календардагы эскертмелер жана тиркеме билдирмелерин орнотуу';

  @override
  String get about => 'Туурасында';

  @override
  String get about_description => 'Колдонмо маалыматтары жана версия';

  @override
  String get select_backup_file_first =>
      'Эң алды менен камдык көчүрмө файлын тандаңыз';

  @override
  String get confirm_restore => 'Кайра калыбына келтирүүнү тастыктоо';

  @override
  String get confirm_restore_message =>
      'Сакталган көчүрмөнү калыбына келтирүү бардык учурдагы маалыматтарды өчүрүп, сакталган көчүрмө менен алмаштырат, бул операцияны кайтаруу мүмкүн эмес. Улантууну каалайсызбы?';

  @override
  String get confirm_again => 'кайра тастыктоо';

  @override
  String get confirm_restore_warning =>
      'Сиз чын эле бар болгону бардык маалыматты тазалап, камдык көчүрмөнү калыбына келтиргиңиз келеби? Бул операцияны калыбына келтирүү мүмкүн эмес!';

  @override
  String get confirm_restore_button => 'Кайра калыбына келтирүүнү тастыктоо';

  @override
  String restore_success(int count) {
    return 'Калыбына келтирүү ийгиликтүү болду, жалпы $count предмет';
  }

  @override
  String restore_failed(String error) {
    return 'Калыбына келтирүү ишке ашкан жок: $error';
  }

  @override
  String get select_backup_file => 'Көшүрмө файлын тандаңыз';

  @override
  String get restore_backup => 'Копияны калыбына келтирүү';

  @override
  String selected_file(String filename) {
    return 'Тандалган файл: $filename';
  }

  @override
  String get export_success => 'Маалыматты ийгиликтүү экспорттоо';

  @override
  String export_failed(String error) {
    return 'Экспорттоо ийгиликсиз болду: $error';
  }

  @override
  String get format_csv => 'CSV';

  @override
  String get format_txt => 'TXT';

  @override
  String get format_sql => 'SQL';

  @override
  String get duplicate_data_handling => 'Кайталоо маалыматтарын кайра иштетүү';

  @override
  String get duplicate_data_detected =>
      'Кайталанган маалымат аныкталды, иш алып баруунун ыкмасын тандаңыз:';

  @override
  String get skip => 'Өткөрүү';

  @override
  String get overwrite => 'каптоо';

  @override
  String get skip_all => 'Бардысын өткөрүп жибер';

  @override
  String get overwrite_all => 'Баарын камтуу';

  @override
  String get select_import_format_first =>
      'Эң алды менен импорттоо форматтарын тандаңыз';

  @override
  String get confirm_import => 'Импорттоону ырастоо';

  @override
  String get confirm_import_message =>
      'Маалыматты импорттоо бар болгон маалыматты алмаштырат, бул операцияны калыбына келтирүүгө болбойт. Улантууну каалайсызбы?';

  @override
  String import_success(int count) {
    return 'Маалыматтарды импорттоо ийгиликтүү болду, жалпы $count предмет импорттолду';
  }

  @override
  String import_failed(String error) {
    return 'Импорттоо ийгиликсиз болду: $error';
  }

  @override
  String get select_file => 'Файлды тандаңыз';

  @override
  String get no_data => 'Маалымат жок';

  @override
  String get no_data_description =>
      'Азыр маалымат жок, төмөнкү баскычты басып биринчи жазууну кошуңуз!';

  @override
  String get load_failed => 'Жүктөө мүмкүн болгон жок';

  @override
  String get load_failed_description =>
      'Маалыматтарды жүктөө ишке ашкан жок, тармактык байланышты текшерип кайра аракет кылыңыз';

  @override
  String get retry => 'Кайра аракет кылуу';

  @override
  String get network_connection_failed => 'Тор байланышы ийгиликсиз болду';

  @override
  String get network_connection_failed_description =>
      'Тармакка туташканыңызды текшерип, кайра аракет кылыңыз';

  @override
  String get no_results => 'Натыйжалар табылган жок';

  @override
  String get no_results_description =>
      'Башка ачкыч сөздөрдү колдонуп издөөнү аракет кылыңыз';

  @override
  String get clear_search => 'Издөөнү тазалоо';

  @override
  String get insufficient_permission => 'Жетишсиз уруксат';

  @override
  String get insufficient_permission_description =>
      'Бул функцияны колдонуу үчүн тиешелүү уруксаттар керек';

  @override
  String get request_permission => 'Рухсат сурайт';

  @override
  String get app_info => 'Колдонмо маалыматтары';

  @override
  String get version => 'Нуска';

  @override
  String get developer => 'Өнүктүрүүчү';

  @override
  String get device_info => 'Жабдыктын маалыматы';

  @override
  String get device_model => 'Жабдыктын модели';

  @override
  String get brand => 'Бренд';

  @override
  String get device_name => 'Жабдыктын аты';

  @override
  String get product => 'Продукт';

  @override
  String get hardware => 'аппараттык камсыздоо';

  @override
  String get android_version => 'Android нускасы';

  @override
  String get sdk_version => 'SDK версиясы';

  @override
  String get system_name => 'Системанын аты';

  @override
  String get operating_system => 'Иштөө тутуму';

  @override
  String get system_version => 'Система версиясы';

  @override
  String get dart_version => 'Dart нускасы';

  @override
  String get device_identifier => 'Жабдуу идентификатору';

  @override
  String get computer_name => 'Компьютердин аты';

  @override
  String get build_number => 'Нускасынын номери';

  @override
  String error_getting_device_info(String error) {
    return 'Өткөрмөчү түзмөктүн маалыматын алуу мүмкүн эмес: $error';
  }

  @override
  String get features => 'Функцияны тааныштыруу';

  @override
  String get app_description => 'Акылдуу буюмдарды башкаруу тиркемеси';

  @override
  String get app_description_detail =>
      'Сизге буюмдардын мөөнөтү өтүү датасын, кепилдик мөөнөтүн жана башка маалыматтарды башкарууга жардам берет жана акылдуу эскертүү функциясын камсыз кылат.';

  @override
  String get consumable => 'жок кылынуучу буюмдар';

  @override
  String get durable => 'Туруктуу буюмдар';

  @override
  String get sort => 'Тартуу';

  @override
  String get name_asc => 'Атын көбөйтүп иреттөө';

  @override
  String get name_desc => 'Атын азайтуу боюнча даражалоо';

  @override
  String get date_asc => 'Дата боюнча өсүп жатат';

  @override
  String get date_desc => 'Дата боюнча кыскарган тартип';

  @override
  String get price_asc => 'Бирдик баасы боюнча өскөн тартип';

  @override
  String get price_desc => 'Бирдик баасы боюнча төмөндөн жогору';

  @override
  String get quantity_asc => 'Саны боюнча өсүүчү тартип';

  @override
  String get quantity_desc => 'Саны боюнча төмөндөн жогору';

  @override
  String get total_price_asc => 'Жалпы баанын өсүүчү тартиби';

  @override
  String get total_price_desc => 'Жалпы баанын төмөндөн жогоруруу тартиби';

  @override
  String get clear_all_filters => 'Бардык фильтрлерди тазалоо';

  @override
  String get scan_barcode => 'Кодду сканерлөө менен кампага киргизүү';

  @override
  String get search_items => 'Элементтерди издөө...';

  @override
  String get no_items => 'Азырынча буюм жок';

  @override
  String get no_items_description =>
      'Төмөнкү баскычты басып биринчи нерсени кошуңуз';

  @override
  String get expired => 'Мудасы өтүп кеткен';

  @override
  String get expiring_soon => 'Мудасы өтө элек';

  @override
  String get warranty_expired => 'Кепилдик мөөнөтү бүткөн';

  @override
  String get warranty_expiring_soon => 'Кепилдик мөөнөтү жакында аяктайт';

  @override
  String days_remaining(int count) {
    return 'Калган $count күн';
  }

  @override
  String expired_days_ago(int count) {
    return '$count күн мурун эскирген';
  }

  @override
  String get delete_item => 'Элементти жок кылуу';

  @override
  String delete_item_confirm(String name) {
    return '«$name» өчүрүлүшүн каалайсызбы?';
  }

  @override
  String get item_deleted => 'Элемент өчүрүлдү';

  @override
  String get failed_to_delete => 'Өчүрүү ишке ашпай калды';

  @override
  String failed_to_delete_message(String error) {
    return 'Элементти өчүрүү мүмкүн эмес: $error';
  }

  @override
  String get date_range_filter => 'Дата диапазонун тандоо';

  @override
  String get price_range_filter => 'Баа диапазонун фильтрлөө';

  @override
  String get my_items => 'Менин буюмдарым';

  @override
  String get click_fab_to_add_item =>
      'Оң жердеги ылдыйкы бурчтагы баскычты басып, нерселерди кошуңуз';

  @override
  String get confirm_delete => 'Жок кылууну ырастоо';

  @override
  String get filter_options => 'Фильтр тандоолору';

  @override
  String get filter_by_type_category_location =>
      'Өнүмдөрдү түрү, категориясы жана жайгашкан жерине карап сүзүү';

  @override
  String categories_count(int count) {
    return '$count категория';
  }

  @override
  String get all_categories => 'Бардык категориялар';

  @override
  String get no_category_data => 'Азырынча категория боюнча маалымат жок';

  @override
  String get storage_location => 'Сактоо жери';

  @override
  String locations_count(int count) {
    return '$count жерлер';
  }

  @override
  String get all_locations => 'Бардык жерлер';

  @override
  String get no_location_data => 'Азырынча жер маалыматтары жок';

  @override
  String get date_range => 'Дата диапазону';

  @override
  String get select_date_range => 'Дата диапазонун тандаңыз';

  @override
  String get price_range => 'Баа диапазону';

  @override
  String get unit_price_range => 'Бирдик баасынын диапазону';

  @override
  String get min_unit_price => 'Эң төмөнкү бирдик баасы';

  @override
  String get max_unit_price => 'Эң жогорку бирдик баа';

  @override
  String get total_price_range => 'Жалпы баа диапазону';

  @override
  String get min_total_price => 'Эң төмөнкү жалпы баа';

  @override
  String get max_total_price => 'Эң жогорку жалпы баа';

  @override
  String get clear_price_filter => 'Баа фильтрлерин тазалоо';

  @override
  String get place_barcode_in_frame => 'Штрих-кодду кутучага салып сканердеңиз';

  @override
  String get item_already_exists => 'Продукция буга чейин бар';

  @override
  String barcode_with_value(String barcode) {
    return 'Штрихкод: $barcode';
  }

  @override
  String name_with_value(String name) {
    return 'Аты: $name';
  }

  @override
  String category_with_value(String category) {
    return 'Категория:$category';
  }

  @override
  String current_quantity_with_value(String quantity, String unit) {
    return 'Азыркы санда: $quantity$unit';
  }

  @override
  String get please_select_operation => 'Иштөө ыкмасын тандаңыз:';

  @override
  String get outbound => 'Жеткирүү';

  @override
  String get inbound => 'камдыкка киргизүү';

  @override
  String get inbound_quantity => 'Жеткирилген сандары';

  @override
  String get outbound_quantity => 'Жеткирилген сандары';

  @override
  String get quantity => 'сан';

  @override
  String get enter_inbound_quantity => 'Сактоого алынуучу санын киргизиңиз';

  @override
  String get enter_outbound_quantity => 'Сураныч, чыгаруу санын киргизиңиз';

  @override
  String delete_item_confirm_with_irreversible(String name) {
    return '«$name» өчүрүлүшүн чындап каалайсызбы? Бул аракет кайтарылгыс.';
  }

  @override
  String get database_reset =>
      'Маалымат базасы кайра орнотулду, таблицанын структурасы кайра түзүлөт';

  @override
  String database_reset_error(String error) {
    return 'Мелдеш базасын кайра орнотуу учурунда ката кетти: $error';
  }

  @override
  String mock_data_init_failed(String error) {
    return 'Симуляциялык маалыматтарды инициализациялоо ишке ашкан жок: $error';
  }

  @override
  String get solution_steps => 'Чечүү жолу:';

  @override
  String get solution_step_1 => '1. Колдонмону өчүрүп кайра орнотуу';

  @override
  String get solution_step_2 => '2. Же колдонмо маалыматтарын тазалоо';

  @override
  String get solution_step_3 =>
      '3. же resetDatabaseOnStart маанисин true кылып коюп кайра иштетүү';

  @override
  String notification_service_init_failed(String error) {
    return 'Эскертме кызматы башталбады: $error';
  }

  @override
  String check_calendar_account_failed(String error) {
    return 'Календарь эсеп жазуу катасы: $error';
  }

  @override
  String create_calendar_failed(String error) {
    return 'Күнтүзмө түзүү мүмкүн болбой калды: $error';
  }

  @override
  String add_calendar_event_failed(String error) {
    return 'Calendar окуясын кошуу мүмкүн болбой калды: $error';
  }

  @override
  String delete_calendar_event_failed(String error) {
    return 'Calendar окуясын өчүрүү мүмкүн болгон жок: $error';
  }

  @override
  String set_permission_message_failed(String error) {
    return 'Рўксат берүү эскертүү билдирүүсүн орнотуу ийгиликсиз болду: $error';
  }

  @override
  String mock_data_init_success(int count) {
    return '$count сандагы имитациялык маалымат ийгиликтүү башталды';
  }

  @override
  String database_has_data(int count) {
    return 'Маалымдар базасында $count маалыматтар бар, симуляцияланган маалыматтарды инициализациялоодон өтүп кетти';
  }

  @override
  String get database_structure_mismatch =>
      'Мүмкүн базанын түзүмү дал келбейт, колдонума байланыштуу маалыматтарды тазалоону же кайра орнотууну сунуштаймыз';

  @override
  String get old_database_deleted => 'Эски маалымат базасы файлы өчүрүлдү';

  @override
  String get backup_data_empty => 'Сакталган маалымат бош';

  @override
  String get backup_file_not_found => 'Көшүрмө файл жок';

  @override
  String file_not_utf8(String error) {
    return 'Файлдын коддолушу жарактуу UTF-8 форматында эмес. Файл UTF-8 коддолушунда сакталганына ынанууңузду суранабыз. Ката жөнүндө маалымат: $error';
  }

  @override
  String file_not_found(String filePath) {
    return 'Файл табылган жок: $filePath';
  }

  @override
  String file_empty(String filePath) {
    return 'Файл бош: $filePath';
  }

  @override
  String get file_content_empty =>
      'Файлдын мазмуну декоддоодон кийин бош, мүмкүн коддоо туура келбейт';

  @override
  String field_cannot_be_empty(String fieldName) {
    return '$fieldName бош болбошу керек';
  }

  @override
  String field_min_length(String fieldName, int minLength) {
    return '$fieldName узундугу $minLength белгиден азыраак болбошу керек';
  }

  @override
  String field_max_length(String fieldName, int maxLength) {
    return '$fieldName узундугу $maxLength белгиден ашпашы керек';
  }

  @override
  String field_invalid_email(String fieldName) {
    return 'Жарамдуу $fieldName дарегин киргизиңиз';
  }

  @override
  String field_invalid_number(String fieldName, String numberType) {
    return '$fieldName милдеттүү түрдө $numberType болушу керек';
  }

  @override
  String field_min_value(String fieldName, double min) {
    return '$fieldName $minдан аз болбошу керек';
  }

  @override
  String field_max_value(String fieldName, double max) {
    return '$fieldName $maxдан чоң болбошу керек';
  }

  @override
  String field_positive_integer(String fieldName) {
    return '$fieldName милдеттендирилгендей оң бүтүн сан болушу керек';
  }

  @override
  String field_greater_than_zero(String fieldName) {
    return '$fieldName 0дон чоң болушу керек';
  }

  @override
  String field_positive_number(String fieldName) {
    return '$fieldName оң сан болушу керек';
  }

  @override
  String field_invalid_date(String fieldName) {
    return 'Өтүнмө анын жарактуу $fieldName киргизиңиз';
  }

  @override
  String field_date_not_past(String fieldName) {
    return '$fieldName өтө мурунку дата болбойт';
  }

  @override
  String field_date_not_before(String fieldName, String minDate) {
    return '$fieldName $minDate датасынан эрте болбошу керек';
  }

  @override
  String field_date_not_after(String fieldName, String maxDate) {
    return '$fieldName $maxDateдан кеч болбошу керек';
  }

  @override
  String field_invalid_value(String fieldName) {
    return 'Өтүнмөк анын жарактуу $fieldName киргизиңиз';
  }

  @override
  String password_min_length(String fieldName) {
    return '$fieldName узундугу 8 белгиден аз болбошу керек';
  }

  @override
  String password_uppercase_required(String fieldName) {
    return '$fieldName кеминде бир баскычы чоң тамгасын камтышы керек';
  }

  @override
  String password_lowercase_required(String fieldName) {
    return '$fieldName кеминде бир кичине тамга камтышы керек';
  }

  @override
  String password_digit_required(String fieldName) {
    return '$fieldName жок дегенде бир сан камтышы керек';
  }

  @override
  String password_special_char_required(String fieldName) {
    return '$fieldName кеминде бир атайын символду камтышы керек';
  }

  @override
  String get passwords_not_match => 'Эки жолу киргизилген сырсөз дал келбейт';

  @override
  String get item_name_cannot_be_empty => 'Элементтин аты бош болбошу керек';

  @override
  String name_max_length(int maxLength) {
    return 'Аты $maxLength символдон ашып кетпеши керек';
  }

  @override
  String quantity_min(int minQuantity) {
    return 'Саны $minQuantity дан аз болбошу керек';
  }

  @override
  String quantity_max(int maxQuantity) {
    return 'Саны $maxQuantity ашпашы керек';
  }

  @override
  String get unit_price_not_negative => 'Бирдик баасы терс болушу мүмкүн эмес';

  @override
  String unit_price_max(double maxUnitPrice) {
    return 'Бирдиктик баасы $maxUnitPrice ашып кетпеши керек';
  }

  @override
  String get set_production_expiry_for_validity =>
      'Сураныч, жарактуулук мөөнөтүн автоматтык түрдө эсептөө үчүн өндүрүш датасын жана сактоо мөөнөтүн орнотуңуз';

  @override
  String get set_purchase_warranty_for_validity =>
      'Сураныч, кепилдик мөөнөтүн автоматтык түрдө эсептөө үчүн сатып алуу датасын жана сактоо мөөнөтүн орнотуңуз';

  @override
  String get calendar_account_creation_failed =>
      'Календар аккаунтын түзө албай жатат, системанын календарь жөндөмдөрүн текшериңиз';

  @override
  String get test_notification => 'Сынак Билдирүүсү';

  @override
  String get test_notification_description =>
      'Бул жергиликтүү эскертүү функциясын текшерүү үчүн тесттик билдирүү';

  @override
  String get day_unit => 'асман';

  @override
  String days_with_value(int days) {
    return '$days күн';
  }

  @override
  String get item_saved => 'Элемент сакталды';

  @override
  String get item_updated => 'Элемент жаңыртылды';

  @override
  String get item_added => 'Элемент кошулду';

  @override
  String get save_success => 'Сактоо ийгиликтүү болду';

  @override
  String get update_success => 'Жаңылоо ийгиликтүү болду';

  @override
  String get delete_success => 'Иш-аракет ийгиликтүү аткарылды';

  @override
  String get save_failed => 'Сактоо мүмкүн болгон жок';

  @override
  String get update_failed => 'Жаңыртуу ишке ашпай калды';

  @override
  String get delete_failed => 'Өчүрүү ишке болгон жок';

  @override
  String get test_calendar_event => 'Календардык окуяны сынап көрүү';

  @override
  String get test_calendar_event_description =>
      'Бул календар функциясын текшерүү үчүн тесттик окуя';

  @override
  String get in_app => 'Колдонмо ичинде';

  @override
  String get enable_alert => 'Мөөнөтү бүткөндүгүн эскертүүнү иштетүү';

  @override
  String get alert_method => 'Эскертүү ыкмасы';

  @override
  String get alert_method_in_app => 'Жөнгө салуу гана колдонулат';

  @override
  String get alert_method_calendar => 'Жөнгө салынган календарь';

  @override
  String get alert_method_both => 'экиси';

  @override
  String get alert_days_before => 'Мурунтан эскертүү күндөрү';

  @override
  String get use_global_setting => 'Глобалдык жөндөөлөрдү колдонуу';

  @override
  String get barcode_label => 'Бар код';

  @override
  String get name_label => 'Аты';

  @override
  String get category_label => 'Санаттоо';

  @override
  String get current_quantity => 'Учурдагы саны';

  @override
  String get select_operation => 'Иш-аракетти тандаңыз';

  @override
  String get unit => 'бирдик';

  @override
  String get custom_unit => 'Ыңгайлаштырылган Бирдик';

  @override
  String get enter_unit => 'Бөлүмдү киргизиңиз';

  @override
  String get custom_location => 'Ыңгайлаштырылган жер';

  @override
  String get enter_storage_location => 'Сактоочу жайды киргизиңиз';

  @override
  String get scan => 'Сканерлөө';

  @override
  String get scan_to_stock => 'Кодду сканерлөө менен кампага киргизүү';

  @override
  String get item_categories => 'Эркектерди классификациялоо';

  @override
  String get storage_locations => 'Сактоо жери';

  @override
  String get place_barcode_in_frame_to_scan =>
      'Штрих-кодду кутучага салып сканердеңиз';

  @override
  String get barcode => 'Бар код';

  @override
  String get enter_barcode_or_scan =>
      'Сураныч, штрих-кодту киргизиңиз же сканерлеңиз';

  @override
  String get basic_information => 'Негизги маалымат';

  @override
  String get item_name => 'Эркектердин аталышы';

  @override
  String get enter_item_name => 'Сураныч, буюмдун атын киргизиңиз';

  @override
  String get enter_category_name => 'Сураныч, категория атын киргизиңиз';

  @override
  String item_increased(String itemName, String quantity, String unit) {
    return '_$itemName $quantity$unit кошулду';
  }

  @override
  String item_decreased(String itemName, String quantity, String unit) {
    return 'Азайган $itemName $quantity$unit';
  }
}
