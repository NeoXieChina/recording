// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Mongolian (`mn`).
class AppLocalizationsMn extends AppLocalizations {
  AppLocalizationsMn([String locale = 'mn']) : super(locale);

  @override
  String get app_name => 'Эд зүйлсийг багтаах орон зай';

  @override
  String get cancel => 'Цуцлах';

  @override
  String get confirm => 'Баталгаажуулах';

  @override
  String get save => 'хадгалах';

  @override
  String get delete => 'Устгах';

  @override
  String get edit => 'Засах';

  @override
  String get add => 'нэмэх';

  @override
  String get edit_item => 'Барааг засварлах';

  @override
  String get add_item => 'Бараа нэмэх';

  @override
  String get search => 'Хайх';

  @override
  String get settings => 'Тохиргоо';

  @override
  String get language_settings => 'Хэлний тохиргоо';

  @override
  String get language_settings_description =>
      'Программын дэлгэцийн хэл тохируулах';

  @override
  String get system_default => 'системийн анхны тохиргоо';

  @override
  String get use_system_language => 'Системийн хэлийг ашиглах';

  @override
  String get language_change_hint =>
      'Хэлийг өөрчлөх нь програмыг дахин ачаалах үед хүчинтэй болно';

  @override
  String get back => 'Буцах';

  @override
  String get next => 'Дараагийн алхам';

  @override
  String get done => 'Бүрдсэн';

  @override
  String get loading => 'Уншиж байна...';

  @override
  String get error => 'Алдаа';

  @override
  String get success => 'амжилт';

  @override
  String get warning => 'Анхааруулах';

  @override
  String get info => 'мэдээлэл';

  @override
  String get select_alert_days => 'Сэрэмжлүүлэх өдрүүдийг сонгох';

  @override
  String get custom => 'Өөрийн хүссэнээр тохируулах';

  @override
  String custom_days(int days) {
    return 'Өөрийн тохируулга ($days өдөр)';
  }

  @override
  String current_selection(int days) {
    return 'Одоогийн сонголт: $days өдөр';
  }

  @override
  String alert_days_range(int min, int max) {
    return 'Сэрэмжлүүлэх өдрийн хүрээ: $min-$max өдөр';
  }

  @override
  String get enter_days => 'Сэрэмжлүүлэх өдрүүдийг оруулаарай';

  @override
  String get days => 'өдөрүүд';

  @override
  String enter_valid_days(int min, int max) {
    return 'Дорно$min-$max хоорондын тоо оруулна уу';
  }

  @override
  String get alert_settings => 'Анхааруулах тохиргоо';

  @override
  String get calendar_settings => 'Календарийн тохиргоо';

  @override
  String get calendar_sync => 'Хўрьцоны хуанли';

  @override
  String get calendar_sync_desc => 'Идэвхжүүлснээр хуанлид хандах эрхийг хүснэ';

  @override
  String get add_test_calendar_event => 'Туршилтын хуанлид үйл явдал нэмэх';

  @override
  String get enable_calendar_sync_first =>
      'Эхлээд \"Хуанлигийн синк\" асаалтын товчийг асаана уу';

  @override
  String get app_alert_settings => 'Апп сануулах тохиргоо';

  @override
  String get local_alerts => 'Орон нутгийн сануулга';

  @override
  String get local_alerts_desc =>
      'Идэвхжүүлэхэд програм доторх хугацаа дуусах сануулгыг хүлээн авах';

  @override
  String get send_test_notification => 'Туршилтын мэдэгдэл илгээх';

  @override
  String get enable_local_alerts_first =>
      'Эхлээд \"Орон нутгийн сануулах\" унтраалгыг асаана уу';

  @override
  String get alert_days_settings => 'Сэрэмжлүүлэг өдрүүдийн тохиргоо';

  @override
  String get advance_alert_days => 'урьдчилан сануулах өдрүүд';

  @override
  String get advance_alert_days_desc =>
      'Барааны хугацаа дуусах эсвэл баталгаат хугацаа дуусахаас хэд хоногийн өмнө сануулга өгөхийг тохируулах';

  @override
  String get calendar_permission_request =>
      'Мөнгөн дэвтэрт хандах эрхийн хүсэлт';

  @override
  String get calendar_permission_desc =>
      'Объектийн сануулагыг синхрончлоход хуанлийн эрхийг ашиглах шаардлагатай. Зөвшөөрөх үү?';

  @override
  String get allow => 'Зөвшөөрөх';

  @override
  String get calendar_permission_granted =>
      'Мөрийн хуанлийн эрх олгогдсон, мөрийн хуанлийн синк идэвхжсэн';

  @override
  String get calendar_permission_denied =>
      'Календарийн эрх зөвшөөрөгдөөгүй тул календарын синк хийх боломжгүй';

  @override
  String get calendar_permission_permanently_denied =>
      'Зөвшөөрөл байнга татгалзав';

  @override
  String get calendar_permission_permanently_denied_desc =>
      'Хувийн хуанлийн эрхийг байнгын болгохоос татгалзсан байна, системийн тохиргооноос гараар эрхийг асаана уу.';

  @override
  String get go_to_settings => 'Тохиргоонд очих';

  @override
  String get calendar_account_failed =>
      'Төгрөгийн эрх олгогдсон боловч төгрөгийн данс үүсгэж чадахгүй байна. Системийн төгрөгийн тохиргоог шалгана уу';

  @override
  String get calendar_account_created =>
      'Өдөрлөгийн эрх олгогдсон, орон нутгийн өдөрлөгийн данс үүсгэсэн';

  @override
  String get calendar_account_creating =>
      'Өдрийн тэмдэглэлийн данс амжилттай үүслээ, гэхдээ системд нөлөө хэрэгжихэд зарим хугацаа шаардлагатай байж магадгүй';

  @override
  String get test_calendar_event_added =>
      'Туршилтын хуанлийн үйл явдлыг амжилттай нэмлээ';

  @override
  String get test_calendar_event_failed =>
      'Туршилтын хуанлид үүслэл нэмэх амжилтгүй боллоо, хуанлийн тохиргоог шалгана уу';

  @override
  String get calendar_permission_required =>
      'Туршилтын үйл явдлыг нэмэхийн тулд хуанли эрх шаардагдана';

  @override
  String get test_notification_sent => 'Туршилтын мэдэгдэл илгээгдсэн';

  @override
  String test_notification_failed(String error) {
    return 'Тест мэдэгдэл илгээх амжилтгүй боллоо: $error';
  }

  @override
  String get notification_permission_required =>
      'Орон нутгийн сэрэмжлүүлгийг идэвхжүүлэхийн тулд мэдэгдлийн зөвшөөрөл хэрэгтэй';

  @override
  String operation_failed(String error) {
    return 'Үйлдэл амжилтгүй боллоо: $error';
  }

  @override
  String get notification_channel_name =>
      'Бараа урьдчилсан анхааруулах мэдэгдэл';

  @override
  String get notification_channel_description =>
      'Бараа дууссан эсвэл баталгаат хугацаа дуусахыг сануулах';

  @override
  String get item_category_food => 'хоол хүнс';

  @override
  String get item_category_daily_necessities => 'Өдөр тутмын хэрэглээний зүйлс';

  @override
  String get item_category_cosmetics => 'Гоо сайхны бүтээгдэхүүн';

  @override
  String get item_category_medicine => 'Эм';

  @override
  String get item_category_electronics => 'цахилгаан бүтээгдэхүүн';

  @override
  String get item_category_furniture => 'тавилга';

  @override
  String get item_category_clothing => 'Хувцас';

  @override
  String get item_category_books => 'ном';

  @override
  String get item_category_other => 'Бусад';

  @override
  String get purchase_channel_online_mall =>
      'Онлайнаар худалдаа эрхлэх дэлгүүр';

  @override
  String get purchase_channel_physical_store => 'бодит дэлгүүр';

  @override
  String get purchase_channel_supermarket => 'бөөний дэлгүүр';

  @override
  String get purchase_channel_specialty_store => 'дэлгүүр';

  @override
  String get purchase_channel_secondhand_market => 'хоёрдогч зах зээл';

  @override
  String get purchase_channel_other => 'Бусад';

  @override
  String get default_category => 'Бусад';

  @override
  String get default_purchase_channel => 'Онлайнаар худалдаа эрхлэх дэлгүүр';

  @override
  String get item_category => 'Барааны ангилал';

  @override
  String get custom_category => 'Өөрийн зохион бүтээсэн ангилал';

  @override
  String get backup_data => 'Өгөгдлийг нөөцлөх';

  @override
  String get backup_data_description =>
      'Бүх өгөгдлийг (зурагуудыг оркуулаад) ZIP файлаар багцлаад нөөцлөх';

  @override
  String get backup_all_data => 'Бүх мэдээллийг нөөцлөх';

  @override
  String get backup_success => 'Нөөцлөлт амжилттай боллоо';

  @override
  String backup_failed(String error) {
    return 'Нөөцлөлт амжилтгүй боллоо: $error';
  }

  @override
  String get restore_data => 'Өгөгдлийг сэргээх';

  @override
  String get restore_data_description =>
      'ZIP нөөцлөх файлаас бүх өгөгдлийг сэргээх';

  @override
  String get export_data => 'Өгөгдлийг экспортлох';

  @override
  String get export_data_description => 'CSV, TXT, SQL форматаар экспортлах';

  @override
  String get import_data => 'Өгөгдөл оруулах';

  @override
  String get import_data_description =>
      'CSV, TXT, SQL файлуудаас өгөгдлийг импортлох';

  @override
  String get alert_settings_description =>
      'Хугацааны хуанлийн сэрэмжлүүлэг ба апп-ын мэдэгдлийн тохиргоо';

  @override
  String get about => 'тухай';

  @override
  String get about_description => 'Програмын мэдээлэл ба хувилбар';

  @override
  String get select_backup_file_first => 'Эхлээд нөөц файлыг сонгоно уу';

  @override
  String get confirm_restore => 'Сэргээхийг баталгаажуулах';

  @override
  String get confirm_restore_message =>
      'Нөөцлөлт сэргээх нь бүх одоогийн өгөгдлийг устгаж, нөөц өгөгдлөөр сольно, энэ үйлдэл буцаах боломжгүй. Үлдэхэд итгэлтэй байна уу?';

  @override
  String get confirm_again => 'Дахин баталгаажуулах';

  @override
  String get confirm_restore_warning =>
      'Та бүх одоогийн өгөгдлийг устгаж, нөөцөөс сэргээхийг үнэхээр хүсч байна уу? Энэхүү үйлдлийг сэргээх боломжгүй!';

  @override
  String get confirm_restore_button => 'Сэргээхийг баталгаажуулах';

  @override
  String restore_success(int count) {
    return 'Амжилттай сэргээсэн, нийт $count ширхэг зүйл';
  }

  @override
  String restore_failed(String error) {
    return 'Сэргээх амжилтгүй боллоо: $error';
  }

  @override
  String get select_backup_file => 'Нөөцлөлтийн файлыг сонгох';

  @override
  String get restore_backup => 'Нөөцлөлт сэргээх';

  @override
  String selected_file(String filename) {
    return 'Сонгогдсон файл: $filename';
  }

  @override
  String get export_success => 'Мэдээлэл амжилттай экспортлогдлоо';

  @override
  String export_failed(String error) {
    return 'Экспорт амжилтгүй боллоо: $error';
  }

  @override
  String get format_csv => 'CSV';

  @override
  String get format_txt => 'TXT';

  @override
  String get format_sql => 'SQL';

  @override
  String get duplicate_data_handling => 'Давтагдсан өгөгдлийг боловсруулах';

  @override
  String get duplicate_data_detected =>
      'Давхардсан өгөгдлийг илрүүлсэн, боловсруулах аргаа сонгоно уу:';

  @override
  String get skip => 'Үлээх';

  @override
  String get overwrite => 'хуурах';

  @override
  String get skip_all => 'Бүгдийг алгасаарай';

  @override
  String get overwrite_all => 'бүгдийг хамарсан';

  @override
  String get select_import_format_first =>
      'Эхлээд импортлох форматыг сонгоно уу';

  @override
  String get confirm_import => 'Импорт хийхийг баталгаажуулах';

  @override
  String get confirm_import_message =>
      'Өгөгдлийг импортолвол одоогийн өгөгдлийг устгана, энэ үйлдлийг буцааж болдоггүй. Үргэлжлүүлэхийг хүсэж байна уу?';

  @override
  String import_success(int count) {
    return 'Өгөгдлийг амжилттай импортлолоо, нийт $count ширхэг зүйлсийг импортолжээ';
  }

  @override
  String import_failed(String error) {
    return 'Импорт амжилтгүй боллоо: $error';
  }

  @override
  String get select_file => 'Файл сонгох';

  @override
  String get no_data => 'Өгөгдөл одоогоор байхгүй';

  @override
  String get no_data_description =>
      'Одоогоор өгөгдөл байхгүй байна, доорх товчийг дарж анхны бичлэгийг нэмээрэй!';

  @override
  String get load_failed => 'Ачааллахад амжилтгүй боллоо';

  @override
  String get load_failed_description =>
      'Өгөгдлийг ачааллахад амжилтгүй боллоо, сүлжээний холболтоо шалгаад дахин оролдоно уу';

  @override
  String get retry => 'Дахин оролдох';

  @override
  String get network_connection_failed => 'Сүлжээ холболт амжилтгүй боллоо';

  @override
  String get network_connection_failed_description =>
      'Сүлжээний холболтыг шалгаад дахин оролдоно уу';

  @override
  String get no_results => 'Үр дүн олдсонгүй';

  @override
  String get no_results_description => 'Бусад түлхүүр үгээр хайж үзээрэй';

  @override
  String get clear_search => 'Хайлтыг цэвэрлэх';

  @override
  String get insufficient_permission => 'Хүртэх эрх дутагдалтай';

  @override
  String get insufficient_permission_description =>
      'Энэ функцийг ашиглахын тулд холбогдох эрх хэрэгтэй';

  @override
  String get request_permission => 'Зөвшөөрөл хүсэх';

  @override
  String get app_info => 'Программын мэдээлэл';

  @override
  String get version => 'хугацаа';

  @override
  String get developer => 'Хөгжүүлэгч';

  @override
  String get device_info => 'Төхөөрөмжийн мэдээлэл';

  @override
  String get device_model => 'Төхөөрөмжийн загвар';

  @override
  String get brand => 'брэнд';

  @override
  String get device_name => 'Төхөөрөмжийн нэр';

  @override
  String get product => 'бүтээгдэхүүн';

  @override
  String get hardware => 'Тоног төхөөрөмж';

  @override
  String get android_version => 'Android хувилбар';

  @override
  String get sdk_version => 'SDK хувилбар';

  @override
  String get system_name => 'Тогтолцооны нэр';

  @override
  String get operating_system => 'Үйлдлийн систем';

  @override
  String get system_version => 'Системийн хувилбар';

  @override
  String get dart_version => 'Dart хувилбар';

  @override
  String get device_identifier => 'Төхөөрөмжийн таних тэмдэг';

  @override
  String get computer_name => 'Компьютерийн нэр';

  @override
  String get build_number => 'Хувилбарын дугаар';

  @override
  String error_getting_device_info(String error) {
    return 'Төхөөрөмжийн мэдээллийг авах боломжгүй: $error';
  }

  @override
  String get features => 'Үйлдлийн танилцуулга';

  @override
  String get app_description => 'Ухаалаг зүйлсийн удирдлагын аппликейшн';

  @override
  String get app_description_detail =>
      'Танд эд зүйлсийн дуусах хугацаа, баталгаат хугацаа гэх мэт мэдээллийг удирдахад тусалж, ухаалаг сэрэмжлүүлгийн функцийг өгнө.';

  @override
  String get consumable => 'зарцуулдаг материал';

  @override
  String get durable => 'урт эдэлгээтэй бүтээгдэхүүн';

  @override
  String get sort => 'Эрэмбэлэх';

  @override
  String get name_asc => 'Нэрээр өсөх дараалал';

  @override
  String get name_desc => 'Нэрийг бууруулах дарааллаар';

  @override
  String get date_asc => 'Огноо өсөх дарааллаар';

  @override
  String get date_desc => 'Огноогоор буурах дараалал';

  @override
  String get price_asc => 'Нэгж үнэ өсөлтийн дарааллаар';

  @override
  String get price_desc => 'Нэгж үнэ буурах дарааллаар';

  @override
  String get quantity_asc => 'Тооны өсөх дараалал';

  @override
  String get quantity_desc => 'Тооны буурах дараалал';

  @override
  String get total_price_asc => 'Нийт үнэ өсөх дарааллаар';

  @override
  String get total_price_desc => 'Нийт үнэ буурах дарааллаар';

  @override
  String get clear_all_filters => 'Бүх шүүлтүүрийг арилгах';

  @override
  String get scan_barcode => 'Код уншуулж агуулахад оруулах';

  @override
  String get search_items => 'Бараа хайх...';

  @override
  String get no_items => 'Бараа байхгүй';

  @override
  String get no_items_description => 'Доорх товчийг дарж анхны зүйлээ нэмнэ үү';

  @override
  String get expired => 'Хуучирсан';

  @override
  String get expiring_soon => 'Мудах дөхсөн';

  @override
  String get warranty_expired => 'Үйлчилгээний баталгаа дууссан';

  @override
  String get warranty_expiring_soon =>
      'Гэрээний баталгааны хугацаа дуусах гэж байна';

  @override
  String days_remaining(int count) {
    return 'Үлдсэн $count өдөр';
  }

  @override
  String expired_days_ago(int count) {
    return 'Хугацаа нь дууссан$countөдөр';
  }

  @override
  String get delete_item => 'Барааг устгах';

  @override
  String delete_item_confirm(String name) {
    return 'Чи үнэхээр \"$name\"-г устгахыг хүсэж байна уу?';
  }

  @override
  String get item_deleted => 'Бараа устгалаа';

  @override
  String get failed_to_delete => 'Устгах амжилтгүй боллоо';

  @override
  String failed_to_delete_message(String error) {
    return 'Барааг устгах боломжгүй: $error';
  }

  @override
  String get date_range_filter => 'Огнооны хүрээгээр шүүлт хийх';

  @override
  String get price_range_filter => 'Үнэний хүрээгээр шүүх';

  @override
  String get my_items => 'Миний эд зүйлс';

  @override
  String get click_fab_to_add_item =>
      'Баруун доод булангийн товчийг дарж зүйл нэмнэ үү';

  @override
  String get confirm_delete => 'Устгахыг баталгаажуулах';

  @override
  String get filter_options => 'Шүүлтүүрийн сонголтууд';

  @override
  String get filter_by_type_category_location =>
      'Төрөл, ангилал ба байршлаар эд зүйлсийг шүүх';

  @override
  String categories_count(int count) {
    return '$count ангилал';
  }

  @override
  String get all_categories => 'Бүх ангилал';

  @override
  String get no_category_data => 'Ангилагдаагүй мэдээлэл одоогоор байхгүй';

  @override
  String get storage_location => 'хадгалах газар';

  @override
  String locations_count(int count) {
    return '$count газар';
  }

  @override
  String get all_locations => 'бүх газар';

  @override
  String get no_location_data => 'Одоогоор газрын өгөгдөл алга';

  @override
  String get date_range => 'Огнооны хүрээ';

  @override
  String get select_date_range => 'Огнооны хүрээг сонгох';

  @override
  String get price_range => 'Үнийн хүрээ';

  @override
  String get unit_price_range => 'Нэгж үнэ хүрээ';

  @override
  String get min_unit_price => 'хамгийн бага нэгж үнэ';

  @override
  String get max_unit_price => 'хамгийн өндөр нэгж үнэ';

  @override
  String get total_price_range => 'Нийт үнэ диапазон';

  @override
  String get min_total_price => 'хамгийн бага нийт үнэ';

  @override
  String get max_total_price => 'хамгийн их нийт үнэ';

  @override
  String get clear_price_filter => 'Үнэ шүүлтүүрийг арилгах';

  @override
  String get place_barcode_in_frame =>
      'Баркодыг хүрээний дотор тавьж сканнердаарай';

  @override
  String get item_already_exists => 'Бараа аль хэдийн байгаа';

  @override
  String barcode_with_value(String barcode) {
    return 'Баркод: $barcode';
  }

  @override
  String name_with_value(String name) {
    return 'Нэр: $name';
  }

  @override
  String category_with_value(String category) {
    return 'Ангилал: $category';
  }

  @override
  String current_quantity_with_value(String quantity, String unit) {
    return 'Одоогийн тоо: $quantity$unit';
  }

  @override
  String get please_select_operation => 'Үйлдлийг сонгоно уу:';

  @override
  String get outbound => 'бараа гаргах';

  @override
  String get inbound => 'Агуулахад оруулах';

  @override
  String get inbound_quantity => 'Агуулахад орсон тоо хэмжээ';

  @override
  String get outbound_quantity => 'Агуулахнаас гаргасан тоо хэмжээ';

  @override
  String get quantity => 'Тоо хэмжээ';

  @override
  String get enter_inbound_quantity =>
      'Агуулахад оруулах тоо ширхэгийг оруулна уу';

  @override
  String get enter_outbound_quantity => 'Гарах нөөцийн тоог оруулаарай';

  @override
  String delete_item_confirm_with_irreversible(String name) {
    return 'Та \"$name\"-ыг устгахдаа итгэлтэй байна уу? Энэ үйлдлийг буцаах боломжгүй.';
  }

  @override
  String get database_reset =>
      'Мэдээллийн санг дахин тохируулав, хүснэгтийн бүтцийг дахин үүсгэнэ';

  @override
  String database_reset_error(String error) {
    return 'Өгөгдлийн санг дахин тохируулахад алдаа гарлаа: $error';
  }

  @override
  String mock_data_init_failed(String error) {
    return 'Симуляцийн өгөгдлийг эхлүүлэхэд амжилтгүй боллоо: $error';
  }

  @override
  String get solution_steps => 'Шийдлийн арга:';

  @override
  String get solution_step_1 => '1. Программыг устгаж дахин суулгана';

  @override
  String get solution_step_2 => '2. Эсвэл аппликешны өгөгдлийг устгах';

  @override
  String get solution_step_3 =>
      '3. Эсвэл resetDatabaseOnStart-г true болгон тохируулсны дараа дахин ажиллуулна';

  @override
  String notification_service_init_failed(String error) {
    return 'Сэрэмжлүүлгийн үйлчилгээ эхлэхэд амжилтгүй боллоо: $error';
  }

  @override
  String check_calendar_account_failed(String error) {
    return 'Календарийн дансыг шалгахад бүтэлгүйтлээ: $error';
  }

  @override
  String create_calendar_failed(String error) {
    return 'Мөрийн дэвтэр үүсгэж чадсангүй: $error';
  }

  @override
  String add_calendar_event_failed(String error) {
    return 'Календарийн үйл явдлыг нэмэх амжилтгүй боллоо: $error';
  }

  @override
  String delete_calendar_event_failed(String error) {
    return 'Календарийн үйл явдлыг устгах амжилтгүй боллоо: $error';
  }

  @override
  String set_permission_message_failed(String error) {
    return 'Зурвас эрх тавих тохиргоо амжилтгүй боллоо: $error';
  }

  @override
  String mock_data_init_success(int count) {
    return '$count ширхэг дууриамлын өгөгдлийг амжилттай анхлуулсан';
  }

  @override
  String database_has_data(int count) {
    return 'Мэдээллийн сан аль хэдийн $count мөр өгөгдөлтэй байна, дуурайлган өгөгдөл үүсгэх процессыг алгасана';
  }

  @override
  String get database_structure_mismatch =>
      'Магадгүй өгөгдлийн сангийн бүтэц тохирохгүй байна, апп-ны өгөгдлийг цэвэрлэх эсвэл дахин суулгахийг зөвлөж байна';

  @override
  String get old_database_deleted => 'Хуучин өгөгдлийн баазыг устгасан';

  @override
  String get backup_data_empty => 'Нөөцлөх өгөгдөл хоосон байна';

  @override
  String get backup_file_not_found => 'Нөөцлөлтийн файл байхгүй';

  @override
  String file_not_utf8(String error) {
    return 'Файлын кодчлол хүчинтэй UTF-8 форматаар биш байна. Файлыг UTF-8 кодчилолоор хадгалсан эсэхийг шалгана уу. Алдааны дэлгэрэнгүй мэдээлэл: $error';
  }

  @override
  String file_not_found(String filePath) {
    return 'Файл олдсонгүй: $filePath';
  }

  @override
  String file_empty(String filePath) {
    return 'Файл хоосон байна: $filePath';
  }

  @override
  String get file_content_empty =>
      'Файлын агуулгыг задлаад үзэхэд хоосон гарчээ, магадгүй кодчилол таарахгүй байна';

  @override
  String field_cannot_be_empty(String fieldName) {
    return '$fieldName хоосон байж болохгүй';
  }

  @override
  String field_min_length(String fieldName, int minLength) {
    return '$fieldName урт нь $minLength тэмдэгтээс бага байж болохгүй';
  }

  @override
  String field_max_length(String fieldName, int maxLength) {
    return '$fieldName урт нь $maxLength тэмдэгтээс хэтрэх ёсгүй';
  }

  @override
  String field_invalid_email(String fieldName) {
    return 'Буруугүй $fieldName хаягийг оруулна уу';
  }

  @override
  String field_invalid_number(String fieldName, String numberType) {
    return '$fieldName заавал $numberType байх ёстой';
  }

  @override
  String field_min_value(String fieldName, double min) {
    return '$fieldName нь $min-ээс бага байж болохгүй';
  }

  @override
  String field_max_value(String fieldName, double max) {
    return '$fieldName нь $max-ээс их байж болохгүй';
  }

  @override
  String field_positive_integer(String fieldName) {
    return '$fieldName нь эерэг бүхэл тоо байх ёстой';
  }

  @override
  String field_greater_than_zero(String fieldName) {
    return '$fieldName нь 0-оос их байх ёстой';
  }

  @override
  String field_positive_number(String fieldName) {
    return '$fieldName нь эерэг тоо байх ёстой';
  }

  @override
  String field_invalid_date(String fieldName) {
    return 'Нэмэх хүчин төгөлдөр $fieldName';
  }

  @override
  String field_date_not_past(String fieldName) {
    return '$fieldName нь өнгөрсөн өдрийн огноо байж болохгүй';
  }

  @override
  String field_date_not_before(String fieldName, String minDate) {
    return '$fieldName нь $minDate-ээс эрт байж болохгүй';
  }

  @override
  String field_date_not_after(String fieldName, String maxDate) {
    return '$fieldName нь $maxDate-ээс хоцрох ёсгүй';
  }

  @override
  String field_invalid_value(String fieldName) {
    return 'Бүх хүчин төгөлдөр $fieldName-г оруулна уу';
  }

  @override
  String password_min_length(String fieldName) {
    return '$fieldName урт нь 8 тэмдэгтээс богино байж болохгүй';
  }

  @override
  String password_uppercase_required(String fieldName) {
    return '$fieldName дор至少 нэг том үсэг агуулсан байх шаардлагатай';
  }

  @override
  String password_lowercase_required(String fieldName) {
    return '$fieldName дор хаяж нэг жижиг үсэг агуулах шаардлагатай';
  }

  @override
  String password_digit_required(String fieldName) {
    return '$fieldName дор хаяж нэг тоо агуулах ёстой';
  }

  @override
  String password_special_char_required(String fieldName) {
    return '$fieldName дор хаяж нэг тусгай тэмдэгт оруулах ёстой';
  }

  @override
  String get passwords_not_match =>
      'Хоёр удаа оруулсан нууц үг тохирохгүй байна';

  @override
  String get item_name_cannot_be_empty => 'Барааны нэр хоосон байж болохгүй';

  @override
  String name_max_length(int maxLength) {
    return 'Нэр нь $maxLength тэмдэгтээс хэтрэхгүй байх ёстой';
  }

  @override
  String quantity_min(int minQuantity) {
    return 'Тоо хэмжээ нь $minQuantity-аас бага байж болохгүй';
  }

  @override
  String quantity_max(int maxQuantity) {
    return 'Тоо ширхэг нь $maxQuantity-аас хэтрэхгүй байх ёстой';
  }

  @override
  String get unit_price_not_negative => 'Нэгж үнэ сөрөг байж болохгүй';

  @override
  String unit_price_max(double maxUnitPrice) {
    return 'Нэгжийн үнэ $maxUnitPrice-ээс хэтрэх ёсгүй';
  }

  @override
  String get set_production_expiry_for_validity =>
      'Бүтээсэн огноо ба хадгалах хугацааг тохируулж хүчинтэй хугацааг автоматаар тооцоолно уу';

  @override
  String get set_purchase_warranty_for_validity =>
      'Автоматаар баталгааны хугацааг тооцоолохын тулд худалдан авах өдөр болон хадгалах хугацааг тохируулна уу';

  @override
  String get calendar_account_creation_failed =>
      'Өдөрлөгийн данс үүсгэж чадсангүй, системийн өдөрлөгийн тохиргоог шалгаарай';

  @override
  String get test_notification => 'Шалгах мэдэгдэл';

  @override
  String get test_notification_description =>
      'Энэ бол орон нутгийн сануулагчийн функцийг баталгаажуулах туршилтын мэдэгдэл юм';

  @override
  String get day_unit => 'тэнгэр';

  @override
  String days_with_value(int days) {
    return '$days өдөр';
  }

  @override
  String get item_saved => 'Бараа хадгалагдсан';

  @override
  String get item_updated => 'Бараа шинэчлэгдсэн';

  @override
  String get item_added => 'Бараа нэмэгдсэн';

  @override
  String get save_success => 'Амжилттай хадгалагдсан';

  @override
  String get update_success => 'Шинэчлэлт амжилттай боллоо';

  @override
  String get delete_success => 'Амжилттай устгалаа';

  @override
  String get save_failed => 'Хадгалах амжилтгүй боллоо';

  @override
  String get update_failed => 'Шинэчлэлт амжилтгүй боллоо';

  @override
  String get delete_failed => 'Устгах амжилтгүй боллоо';

  @override
  String get test_calendar_event => 'Туршилтын хуанлийн үйл явдал';

  @override
  String get test_calendar_event_description =>
      'Энэ нь хуанлийн функцийг баталгаажуулахад зориулсан туршилтын үйл явдал юм';

  @override
  String get in_app => 'програм дотор';

  @override
  String get enable_alert => 'Дуусахыг сануулахыг идэвхжүүлэх';

  @override
  String get alert_method => 'сануулгын арга';

  @override
  String get alert_method_in_app => 'Зөвхөн апп-д дотроо';

  @override
  String get alert_method_calendar => 'Зөвхөн календараар';

  @override
  String get alert_method_both => 'хоёул';

  @override
  String get alert_days_before => 'урьдчилан сануулах өдрүүд';

  @override
  String get use_global_setting => 'Дэлхийн тохиргоог ашиглах';

  @override
  String get barcode_label => 'Шугаман код';

  @override
  String get name_label => 'нэр';

  @override
  String get category_label => 'Ангилал';

  @override
  String get current_quantity => 'Одоогийн тоо хэмжээ';

  @override
  String get select_operation => 'Үйлдлээ сонгоно уу';

  @override
  String get unit => 'нэгж';

  @override
  String get custom_unit => 'Өөрчлөн тохируулсан нэгж';

  @override
  String get enter_unit => 'Нэгжийг оруулна уу';

  @override
  String get custom_location => 'Өөрийн тохируулсан газар';

  @override
  String get enter_storage_location => 'Хадгалах газрыг оруулна уу';

  @override
  String get scan => 'Шугамын кодыг унших';

  @override
  String get scan_to_stock => 'Код уншуулж агуулахад оруулах';

  @override
  String get item_categories => 'Барааны ангилал';

  @override
  String get storage_locations => 'хадгалах газар';

  @override
  String get place_barcode_in_frame_to_scan =>
      'Баркодыг хүрээний дотор тавьж сканнердаарай';

  @override
  String get barcode => 'Шошгоны код';

  @override
  String get enter_barcode_or_scan =>
      'Баркодыг оруулж эсвэл сканнердаж уншина уу';

  @override
  String get basic_information => 'Үндсэн мэдээлэл';

  @override
  String get item_name => 'Барааны нэр';

  @override
  String get enter_item_name => 'Барааны нэрийг оруулна уу';

  @override
  String get enter_category_name => 'Ангиллын нэрийг оруулна уу';

  @override
  String item_increased(String itemName, String quantity, String unit) {
    return 'Илүү нэмэгдсэн $itemName $quantity$unit';
  }

  @override
  String item_decreased(String itemName, String quantity, String unit) {
    return 'багассан $itemName $quantity$unit';
  }
}
