// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get app_name => 'الاحتفاظ بالأشياء الصغيرة';

  @override
  String get cancel => 'إلغاء';

  @override
  String get confirm => 'تأكيد';

  @override
  String get save => 'حفظ';

  @override
  String get delete => 'حذف';

  @override
  String get edit => 'تحرير';

  @override
  String get add => 'إضافة';

  @override
  String get edit_item => 'تحرير العناصر';

  @override
  String get add_item => 'إضافة عنصر';

  @override
  String get search => 'بحث';

  @override
  String get settings => 'إعدادات';

  @override
  String get language_settings => 'إعدادات اللغة';

  @override
  String get language_settings_description => 'تعيين لغة عرض التطبيق';

  @override
  String get system_default => 'إعدادات النظام الافتراضية';

  @override
  String get use_system_language => 'استخدام لغة النظام';

  @override
  String get language_change_hint =>
      'سيتم تطبيق تغيير اللغة بعد إعادة تشغيل التطبيق';

  @override
  String get back => 'عودة';

  @override
  String get next => 'التالي';

  @override
  String get done => 'اكتمل';

  @override
  String get loading => 'جارٍ التحميل...';

  @override
  String get error => 'خطأ';

  @override
  String get success => 'نجاح';

  @override
  String get warning => 'تحذير';

  @override
  String get info => 'معلومات';

  @override
  String get select_alert_days => 'اختر عدد أيام التذكير';

  @override
  String get custom => 'مخصص';

  @override
  String custom_days(int days) {
    return 'مخصص ($days أيام)';
  }

  @override
  String current_selection(int days) {
    return 'التحديد الحالي: $days يوم';
  }

  @override
  String alert_days_range(int min, int max) {
    return 'نطاق عدد أيام التذكير: $min-$max يوم';
  }

  @override
  String get enter_days => 'الرجاء إدخال عدد أيام التذكير';

  @override
  String get days => 'أيام';

  @override
  String enter_valid_days(int min, int max) {
    return 'يرجى إدخال رقم بين $min و$max';
  }

  @override
  String get alert_settings => 'إعداد التنبيهات';

  @override
  String get calendar_settings => 'إعدادات التقويم';

  @override
  String get calendar_sync => 'مزامنة التقويم';

  @override
  String get calendar_sync_desc => 'سيطلب إذن التقويم عند التفعيل';

  @override
  String get add_test_calendar_event => 'إضافة حدث تقويم للاختبار';

  @override
  String get enable_calendar_sync_first =>
      'يرجى أولاً تفعيل خيار \"مزامنة التقويم\"';

  @override
  String get app_alert_settings => 'إعدادات تذكير التطبيق';

  @override
  String get local_alerts => 'تذكير محلي';

  @override
  String get local_alerts_desc =>
      'بعد التفعيل، تلقي إشعارات انتهاء الصلاحية داخل التطبيق';

  @override
  String get send_test_notification => 'إرسال إشعار اختبار';

  @override
  String get enable_local_alerts_first =>
      'يرجى أولاً تشغيل مفتاح \"التنبيهات المحلية\"';

  @override
  String get alert_days_settings => 'إعداد عدد أيام التذكير';

  @override
  String get advance_alert_days => 'أيام التذكير المسبق';

  @override
  String get advance_alert_days_desc =>
      'ضبط عدد الأيام مسبقًا لتذكير بانتهاء صلاحية العنصر أو ضمانه';

  @override
  String get calendar_permission_request => 'طلب إذن التقويم';

  @override
  String get calendar_permission_desc =>
      'تتطلب هذه العملية إذن الوصول إلى التقويم لمزامنة تذكيرات العناصر. هل تسمح بذلك؟';

  @override
  String get allow => 'يسمح';

  @override
  String get calendar_permission_granted =>
      'تم منح إذن التقويم، وتم تفعيل مزامنة التقويم';

  @override
  String get calendar_permission_denied =>
      'تم رفض إذن التقويم، لا يمكن تفعيل مزامنة التقويم';

  @override
  String get calendar_permission_permanently_denied => 'تم رفض الإذن بشكل دائم';

  @override
  String get calendar_permission_permanently_denied_desc =>
      'تم رفض إذن التقويم بشكل دائم، يرجى تمكين الإذن يدويًا في إعدادات النظام.';

  @override
  String get go_to_settings => 'اذهب إلى الإعدادات';

  @override
  String get calendar_account_failed =>
      'تم منح إذن التقويم، ولكن لا يمكن إنشاء حساب التقويم. يرجى التحقق من إعدادات تقويم النظام';

  @override
  String get calendar_account_created =>
      'تم منح إذن التقويم، وتم إنشاء حساب تقويم محلي';

  @override
  String get calendar_account_creating =>
      'تم إنشاء حساب التقويم بنجاح، ولكن قد يحتاج النظام لبعض الوقت ليصبح فعالًا';

  @override
  String get test_calendar_event_added => 'تمت إضافة حدث التقويم بنجاح';

  @override
  String get test_calendar_event_failed =>
      'فشل في إضافة حدث تقويمي للاختبار، يرجى التحقق من إعدادات التقويم';

  @override
  String get calendar_permission_required =>
      'تحتاج إلى إذن التقويم لإضافة حدث تجريبي';

  @override
  String get test_notification_sent => 'تم إرسال إشعار الاختبار';

  @override
  String test_notification_failed(String error) {
    return 'فشل في إرسال إشعار الاختبار: $error';
  }

  @override
  String get notification_permission_required =>
      'يجب الحصول على إذن الإشعارات لتمكين التنبيهات المحلية';

  @override
  String operation_failed(String error) {
    return 'فشل العملية: $error';
  }

  @override
  String get notification_channel_name => 'إشعار تنبيه العناصر';

  @override
  String get notification_channel_description =>
      'تذكير بانتهاء صلاحية أو ضمان العناصر';

  @override
  String get item_category_food => 'الطعام';

  @override
  String get item_category_daily_necessities => 'المستلزمات اليومية';

  @override
  String get item_category_cosmetics => 'مستحضرات التجميل';

  @override
  String get item_category_medicine => 'دواء';

  @override
  String get item_category_electronics => 'المنتجات الإلكترونية';

  @override
  String get item_category_furniture => 'الأثاث';

  @override
  String get item_category_clothing => 'ملابس';

  @override
  String get item_category_books => 'كتب';

  @override
  String get item_category_other => 'آخر';

  @override
  String get purchase_channel_online_mall => 'المتجر الإلكتروني';

  @override
  String get purchase_channel_physical_store => 'متجر فعلي';

  @override
  String get purchase_channel_supermarket => 'سوبر ماركت';

  @override
  String get purchase_channel_specialty_store => 'متجر حصري';

  @override
  String get purchase_channel_secondhand_market => 'السوق المستعملة';

  @override
  String get purchase_channel_other => 'آخر';

  @override
  String get default_category => 'آخر';

  @override
  String get default_purchase_channel => 'المتجر الإلكتروني';

  @override
  String get item_category => 'تصنيف الأشياء';

  @override
  String get custom_category => 'تصنيف مخصص';

  @override
  String get backup_data => 'نسخ احتياطي للبيانات';

  @override
  String get backup_data_description =>
      'ضغط جميع البيانات (بما في ذلك الصور) في ملف ZIP للنسخ الاحتياطي';

  @override
  String get backup_all_data => 'نسخ جميع البيانات احتياطيًا';

  @override
  String get backup_success => 'تم النسخ الاحتياطي بنجاح';

  @override
  String backup_failed(String error) {
    return 'نسخ احتياطي فشل: $error';
  }

  @override
  String get restore_data => 'استعادة البيانات';

  @override
  String get restore_data_description =>
      'استعادة جميع البيانات من ملف النسخ الاحتياطي ZIP';

  @override
  String get export_data => 'تصدير البيانات';

  @override
  String get export_data_description => 'التصدير بصيغ CSV و TXT و SQL';

  @override
  String get import_data => 'استيراد البيانات';

  @override
  String get import_data_description =>
      'استيراد البيانات من ملفات CSV وTXT وSQL';

  @override
  String get alert_settings_description =>
      'إعداد تذكيرات التقويم وإشعارات التطبيقات';

  @override
  String get about => 'حول';

  @override
  String get about_description => 'معلومات التطبيق والإصدار';

  @override
  String get select_backup_file_first =>
      'يرجى اختيار ملف النسخة الاحتياطية أولاً';

  @override
  String get confirm_restore => 'تأكيد الاستعادة';

  @override
  String get confirm_restore_message =>
      'استعادة النسخة الاحتياطية ستؤدي إلى مسح جميع البيانات الحالية واستبدالها ببيانات النسخة الاحتياطية، ولا يمكن التراجع عن هذا الإجراء. هل تريد الاستمرار؟';

  @override
  String get confirm_again => 'تأكيد مرة أخرى';

  @override
  String get confirm_restore_warning =>
      'هل أنت متأكد من رغبتك في مسح جميع البيانات الحالية واستعادة النسخة الاحتياطية؟ لا يمكن التراجع عن هذا الإجراء!';

  @override
  String get confirm_restore_button => 'تأكيد الاستعادة';

  @override
  String restore_success(int count) {
    return 'استعادة ناجحة، إجمالي $count عناصر';
  }

  @override
  String restore_failed(String error) {
    return 'فشل الاستعادة: $error';
  }

  @override
  String get select_backup_file => 'اختر ملف النسخة الاحتياطية';

  @override
  String get restore_backup => 'استعادة النسخة الاحتياطية';

  @override
  String selected_file(String filename) {
    return 'تم اختيار الملف: $filename';
  }

  @override
  String get export_success => 'تم تصدير البيانات بنجاح';

  @override
  String export_failed(String error) {
    return 'فشل التصدير: $error';
  }

  @override
  String get format_csv => 'CSV';

  @override
  String get format_txt => 'TXT';

  @override
  String get format_sql => 'إس كيو إل';

  @override
  String get duplicate_data_handling => 'معالجة البيانات المكررة';

  @override
  String get duplicate_data_detected =>
      'تم الكشف عن بيانات مكررة، يرجى اختيار طريقة المعالجة:';

  @override
  String get skip => 'تخطي';

  @override
  String get overwrite => 'غطاء';

  @override
  String get skip_all => 'تخطي الكل';

  @override
  String get overwrite_all => 'تغطية كاملة';

  @override
  String get select_import_format_first => 'يرجى أولاً اختيار تنسيق الاستيراد';

  @override
  String get confirm_import => 'تأكيد الاستيراد';

  @override
  String get confirm_import_message =>
      'استيراد البيانات سيؤدي إلى استبدال البيانات الحالية، ولا يمكن التراجع عن هذا الإجراء. هل أنت متأكد أنك تريد المتابعة؟';

  @override
  String import_success(int count) {
    return 'تم استيراد البيانات بنجاح، تم استيراد $count عنصر';
  }

  @override
  String import_failed(String error) {
    return 'فشل الاستيراد: $error';
  }

  @override
  String get select_file => 'اختر الملف';

  @override
  String get no_data => 'لا توجد بيانات';

  @override
  String get no_data_description =>
      'لا توجد بيانات حالياً، انقر على الزر أدناه لإضافة السجل الأول!';

  @override
  String get load_failed => 'فشل التحميل';

  @override
  String get load_failed_description =>
      'فشل تحميل البيانات، يرجى التحقق من اتصال الشبكة ثم المحاولة مرة أخرى';

  @override
  String get retry => 'أعد المحاولة';

  @override
  String get network_connection_failed => 'فشل اتصال الشبكة';

  @override
  String get network_connection_failed_description =>
      'يرجى التحقق من اتصال الشبكة ثم المحاولة مرة أخرى';

  @override
  String get no_results => 'لم يتم العثور على نتائج';

  @override
  String get no_results_description => 'حاول البحث باستخدام كلمات مفتاحية أخرى';

  @override
  String get clear_search => 'مسح البحث';

  @override
  String get insufficient_permission => 'صلاحيات غير كافية';

  @override
  String get insufficient_permission_description =>
      'تحتاج إلى الأذونات ذات الصلة لاستخدام هذه الميزة';

  @override
  String get request_permission => 'طلب الإذن';

  @override
  String get app_info => 'معلومات التطبيق';

  @override
  String get version => 'الإصدار';

  @override
  String get developer => 'مطور';

  @override
  String get device_info => 'معلومات الجهاز';

  @override
  String get device_model => 'طراز الجهاز';

  @override
  String get brand => 'العلامة التجارية';

  @override
  String get device_name => 'اسم الجهاز';

  @override
  String get product => 'منتج';

  @override
  String get hardware => 'الأجهزة';

  @override
  String get android_version => 'نسخة أندرويد';

  @override
  String get sdk_version => 'إصدار SDK';

  @override
  String get system_name => 'اسم النظام';

  @override
  String get operating_system => 'نظام التشغيل';

  @override
  String get system_version => 'إصدار النظام';

  @override
  String get dart_version => 'نسخة Dart';

  @override
  String get device_identifier => 'معرّف الجهاز';

  @override
  String get computer_name => 'اسم الكمبيوتر';

  @override
  String get build_number => 'رقم الإصدار';

  @override
  String error_getting_device_info(String error) {
    return 'لا يمكن الحصول على معلومات الجهاز: $error';
  }

  @override
  String get features => 'مقدمة الوظائف';

  @override
  String get app_description => 'تطبيق إدارة الأجهزة الذكية';

  @override
  String get app_description_detail =>
      'مساعدتك في إدارة تواريخ انتهاء الصلاحية، وتواريخ الضمان، وغيرها من المعلومات المتعلقة بالأشياء، وتقديم ميزة التذكير الذكي.';

  @override
  String get consumable => 'مستهلكات';

  @override
  String get durable => 'سلع متينة';

  @override
  String get sort => 'الترتيب';

  @override
  String get name_asc => 'الترتيب التصاعدي للاسم';

  @override
  String get name_desc => 'الترتيب التنازلي حسب الاسم';

  @override
  String get date_asc => 'ترتيب تصاعدي حسب التاريخ';

  @override
  String get date_desc => 'ترتيب تنازلي حسب التاريخ';

  @override
  String get price_asc => 'ترتيب حسب سعر الوحدة تصاعديًا';

  @override
  String get price_desc => 'ترتيب السعر من الأعلى إلى الأقل';

  @override
  String get quantity_asc => 'ترتيب تصاعدي حسب الكمية';

  @override
  String get quantity_desc => 'ترتيب تنازلي حسب الكمية';

  @override
  String get total_price_asc =>
      'الترتيب حسب السعر الإجمالي من الأقل إلى الأعلى';

  @override
  String get total_price_desc =>
      'الترتيب حسب السعر الإجمالي من الأعلى إلى الأدنى';

  @override
  String get clear_all_filters => 'مسح جميع الفلاتر';

  @override
  String get scan_barcode => 'مسح الرمز لإدخال المخزون';

  @override
  String get search_items => 'بحث عن العناصر...';

  @override
  String get no_items => 'لا توجد عناصر حالياً';

  @override
  String get no_items_description => 'انقر على الزر أدناه لإضافة العنصر الأول';

  @override
  String get expired => 'منتهي الصلاحية';

  @override
  String get expiring_soon => 'على وشك الانتهاء';

  @override
  String get warranty_expired => 'انتهت فترة الضمان';

  @override
  String get warranty_expiring_soon => 'ستنتهي فترة الضمان قريبًا';

  @override
  String days_remaining(int count) {
    return 'يتبقى $count أيام';
  }

  @override
  String expired_days_ago(int count) {
    return 'لقد انتهت صلاحيته منذ $count يوم';
  }

  @override
  String get delete_item => 'حذف العنصر';

  @override
  String delete_item_confirm(String name) {
    return 'هل أنت متأكد أنك تريد حذف \"$name\"؟';
  }

  @override
  String get item_deleted => 'تم حذف العنصر';

  @override
  String get failed_to_delete => 'فشل الحذف';

  @override
  String failed_to_delete_message(String error) {
    return 'لا يمكن حذف العنصر: $error';
  }

  @override
  String get date_range_filter => 'تصفية نطاق التاريخ';

  @override
  String get price_range_filter => 'تصفية نطاق السعر';

  @override
  String get my_items => 'أشيائي';

  @override
  String get click_fab_to_add_item =>
      'انقر على الزر في الزاوية اليمنى السفلى لإضافة عنصر';

  @override
  String get confirm_delete => 'تأكيد الحذف';

  @override
  String get filter_options => 'خيارات التصفية';

  @override
  String get filter_by_type_category_location =>
      'فرز العناصر حسب النوع والفئة والموقع';

  @override
  String categories_count(int count) {
    return '$count فئة';
  }

  @override
  String get all_categories => 'جميع الفئات';

  @override
  String get no_category_data => 'لا توجد بيانات مصنفة';

  @override
  String get storage_location => 'مكان التخزين';

  @override
  String locations_count(int count) {
    return '$count مواقع';
  }

  @override
  String get all_locations => 'كل المواقع';

  @override
  String get no_location_data => 'لا توجد بيانات عن الموقع حالياً';

  @override
  String get date_range => 'نطاق التاريخ';

  @override
  String get select_date_range => 'اختر نطاق التاريخ';

  @override
  String get price_range => 'نطاق الأسعار';

  @override
  String get unit_price_range => 'نطاق السعر الفردي';

  @override
  String get min_unit_price => 'أدنى سعر';

  @override
  String get max_unit_price => 'أعلى سعر وحدة';

  @override
  String get total_price_range => 'نطاق السعر الإجمالي';

  @override
  String get min_total_price => 'أدنى سعر إجمالي';

  @override
  String get max_total_price => 'أعلى سعر إجمالي';

  @override
  String get clear_price_filter => 'مسح تصفية السعر';

  @override
  String get place_barcode_in_frame => 'ضع الرمز الشريطي داخل الإطار للمسح';

  @override
  String get item_already_exists => 'المنتج موجود بالفعل';

  @override
  String barcode_with_value(String barcode) {
    return 'رمز الاستجابة السريعة: $barcode';
  }

  @override
  String name_with_value(String name) {
    return 'الاسم: $name';
  }

  @override
  String category_with_value(String category) {
    return 'التصنيف: $category';
  }

  @override
  String current_quantity_with_value(String quantity, String unit) {
    return 'الكمية الحالية: $quantity$unit';
  }

  @override
  String get please_select_operation => 'يرجى اختيار العملية:';

  @override
  String get outbound => 'خروج المخزون';

  @override
  String get inbound => 'إدخال المخزون';

  @override
  String get inbound_quantity => 'كمية المخزون';

  @override
  String get outbound_quantity => 'كمية الخروج من المخزن';

  @override
  String get quantity => 'الكمية';

  @override
  String get enter_inbound_quantity => 'الرجاء إدخال كمية التخزين';

  @override
  String get enter_outbound_quantity => 'الرجاء إدخال كمية الخروج من المخزن';

  @override
  String delete_item_confirm_with_irreversible(String name) {
    return 'هل أنت متأكد أنك تريد حذف «$name»؟ لا يمكن التراجع عن هذا الإجراء.';
  }

  @override
  String get database_reset =>
      'تم إعادة تعيين قاعدة البيانات، وسيتم إعادة إنشاء هيكل الجداول';

  @override
  String database_reset_error(String error) {
    return 'حدث خطأ أثناء إعادة تعيين قاعدة البيانات: $error';
  }

  @override
  String mock_data_init_failed(String error) {
    return 'فشل تهيئة البيانات المحاكاة: $error';
  }

  @override
  String get solution_steps => 'الحل:';

  @override
  String get solution_step_1 => '1. إلغاء تثبيت التطبيق وإعادة تثبيته';

  @override
  String get solution_step_2 => '2. أو مسح بيانات التطبيق';

  @override
  String get solution_step_3 =>
      '3. أو إعادة التشغيل بعد تعيين resetDatabaseOnStart إلى true';

  @override
  String notification_service_init_failed(String error) {
    return 'فشل تهيئة خدمة التذكير: $error';
  }

  @override
  String check_calendar_account_failed(String error) {
    return 'فشل التحقق من حساب التقويم: $error';
  }

  @override
  String create_calendar_failed(String error) {
    return 'فشل إنشاء التقويم: $error';
  }

  @override
  String add_calendar_event_failed(String error) {
    return 'فشل في إضافة حدث التقويم: $error';
  }

  @override
  String delete_calendar_event_failed(String error) {
    return 'فشل في حذف حدث التقويم: $error';
  }

  @override
  String set_permission_message_failed(String error) {
    return 'فشل إعداد رسالة تلميح الإذن: $error';
  }

  @override
  String mock_data_init_success(int count) {
    return 'تم تهيئة $count بيانات محاكاة بنجاح';
  }

  @override
  String database_has_data(int count) {
    return 'قاعدة البيانات تحتوي بالفعل على $count سجلات، تخطى تهيئة البيانات التجريبية';
  }

  @override
  String get database_structure_mismatch =>
      'قد يكون هيكل قاعدة البيانات غير متطابق، يُنصح بمسح بيانات التطبيق أو إعادة تثبيته';

  @override
  String get old_database_deleted => 'تم حذف ملفات قاعدة البيانات القديمة';

  @override
  String get backup_data_empty => 'النسخ الاحتياطي للبيانات فارغ';

  @override
  String get backup_file_not_found => 'الملف الاحتياطي غير موجود';

  @override
  String file_not_utf8(String error) {
    return 'ترميز الملف ليس بتنسيق UTF-8 صالح. يرجى التأكد من حفظ الملف باستخدام ترميز UTF-8. تفاصيل الخطأ: $error';
  }

  @override
  String file_not_found(String filePath) {
    return 'الملف غير موجود: $filePath';
  }

  @override
  String file_empty(String filePath) {
    return 'الملف فارغ: $filePath';
  }

  @override
  String get file_content_empty =>
      'بعد فك ترميز محتوى الملف، يكون فارغًا، ومن الممكن أن يكون الترميز غير متطابق';

  @override
  String field_cannot_be_empty(String fieldName) {
    return '$fieldName لا يمكن أن يكون فارغًا';
  }

  @override
  String field_min_length(String fieldName, int minLength) {
    return 'لا يمكن أن يكون طول $fieldName أقل من $minLength حرفًا';
  }

  @override
  String field_max_length(String fieldName, int maxLength) {
    return '$fieldName لا يمكن أن يتجاوز $maxLength حرفًا';
  }

  @override
  String field_invalid_email(String fieldName) {
    return 'يرجى إدخال عنوان $fieldName صالح';
  }

  @override
  String field_invalid_number(String fieldName, String numberType) {
    return '$fieldName يجب أن يكون $numberType';
  }

  @override
  String field_min_value(String fieldName, double min) {
    return '$fieldName لا يمكن أن يكون أقل من $min';
  }

  @override
  String field_max_value(String fieldName, double max) {
    return '$fieldName لا يمكن أن يكون أكبر من $max';
  }

  @override
  String field_positive_integer(String fieldName) {
    return '$fieldName يجب أن يكون عددًا صحيحًا موجبًا';
  }

  @override
  String field_greater_than_zero(String fieldName) {
    return '$fieldName يجب أن يكون أكبر من 0';
  }

  @override
  String field_positive_number(String fieldName) {
    return '$fieldName يجب أن يكون عددًا موجبًا';
  }

  @override
  String field_invalid_date(String fieldName) {
    return 'الرجاء إدخال $fieldName صالح';
  }

  @override
  String field_date_not_past(String fieldName) {
    return '$fieldName لا يمكن أن يكون تاريخًا سابقًا';
  }

  @override
  String field_date_not_before(String fieldName, String minDate) {
    return '$fieldName لا يمكن أن يكون قبل $minDate';
  }

  @override
  String field_date_not_after(String fieldName, String maxDate) {
    return '$fieldName لا يمكن أن يكون لاحقًا عن $maxDate';
  }

  @override
  String field_invalid_value(String fieldName) {
    return 'الرجاء إدخال $fieldName صالح';
  }

  @override
  String password_min_length(String fieldName) {
    return '$fieldName لا يمكن أن يقل طوله عن 8 أحرف';
  }

  @override
  String password_uppercase_required(String fieldName) {
    return '$fieldName يجب أن يحتوي على حرف كبير واحد على الأقل';
  }

  @override
  String password_lowercase_required(String fieldName) {
    return '$fieldName يجب أن يحتوي على حرف صغير واحد على الأقل';
  }

  @override
  String password_digit_required(String fieldName) {
    return '$fieldName يجب أن يحتوي على رقم واحد على الأقل';
  }

  @override
  String password_special_char_required(String fieldName) {
    return '$fieldName يجب أن يحتوي على حرف خاص واحد على الأقل';
  }

  @override
  String get passwords_not_match => 'كلمتا المرور المدخلتان غير متطابقتين';

  @override
  String get item_name_cannot_be_empty => 'اسم العنصر لا يمكن أن يكون فارغًا';

  @override
  String name_max_length(int maxLength) {
    return 'لا يمكن أن يتجاوز الاسم $maxLength حرفًا';
  }

  @override
  String quantity_min(int minQuantity) {
    return 'لا يمكن أن يكون العدد أقل من $minQuantity';
  }

  @override
  String quantity_max(int maxQuantity) {
    return 'لا يمكن أن تتجاوز الكمية $maxQuantity';
  }

  @override
  String get unit_price_not_negative =>
      'لا يمكن أن تكون سعر الوحدة رقماً سالباً';

  @override
  String unit_price_max(double maxUnitPrice) {
    return 'لا يمكن أن يتجاوز السعر الواحد $maxUnitPrice';
  }

  @override
  String get set_production_expiry_for_validity =>
      'يرجى ضبط تاريخ الإنتاج وفترة الصلاحية لحساب مدة الصلاحية تلقائيًا';

  @override
  String get set_purchase_warranty_for_validity =>
      'يرجى تحديد تاريخ الشراء ومدة الصلاحية لحساب فترة الضمان تلقائياً';

  @override
  String get calendar_account_creation_failed =>
      'تعذر إنشاء حساب التقويم، يرجى التحقق من إعدادات تقويم النظام';

  @override
  String get test_notification => 'إشعار اختبار';

  @override
  String get test_notification_description =>
      'هذا إشعار تجريبي للتحقق من وظيفة التذكير المحلي';

  @override
  String get day_unit => 'سماء';

  @override
  String days_with_value(int days) {
    return '$days يوم';
  }

  @override
  String get item_saved => 'تم حفظ العنصر';

  @override
  String get item_updated => 'تم تحديث العنصر';

  @override
  String get item_added => 'تمت إضافة العنصر';

  @override
  String get save_success => 'تم الحفظ بنجاح';

  @override
  String get update_success => 'تم التحديث بنجاح';

  @override
  String get delete_success => 'تم الحذف بنجاح';

  @override
  String get save_failed => 'فشل الحفظ';

  @override
  String get update_failed => 'فشل التحديث';

  @override
  String get delete_failed => 'فشل الحذف';

  @override
  String get test_calendar_event => 'اختبار حدث التقويم';

  @override
  String get test_calendar_event_description =>
      'هذا حدث تجريبي للتحقق من وظيفة التقويم';

  @override
  String get in_app => 'داخل التطبيق';

  @override
  String get enable_alert => 'تمكين تذكير الانتهاء';

  @override
  String get alert_method => 'طريقة التذكير';

  @override
  String get alert_method_in_app => 'متاح داخل التطبيق فقط';

  @override
  String get alert_method_calendar => 'التقويم فقط';

  @override
  String get alert_method_both => 'كلاهما';

  @override
  String get alert_days_before => 'أيام التذكير المسبق';

  @override
  String get use_global_setting => 'استخدام الإعدادات العامة';

  @override
  String get barcode_label => 'الرمز الشريطي';

  @override
  String get name_label => 'الاسم';

  @override
  String get category_label => 'تصنيف';

  @override
  String get current_quantity => 'الكمية الحالية';

  @override
  String get select_operation => 'يرجى اختيار العملية';

  @override
  String get unit => 'وحدة';

  @override
  String get custom_unit => 'الوحدة المخصصة';

  @override
  String get enter_unit => 'يرجى إدخال الوحدة';

  @override
  String get custom_location => 'موقع مخصص';

  @override
  String get enter_storage_location => 'الرجاء إدخال موقع التخزين';

  @override
  String get scan => 'مسح الرمز';

  @override
  String get scan_to_stock => 'مسح الرمز لإدخال المخزون';

  @override
  String get item_categories => 'تصنيف الأشياء';

  @override
  String get storage_locations => 'مكان التخزين';

  @override
  String get place_barcode_in_frame_to_scan =>
      'ضع الرمز الشريطي داخل الإطار للمسح';

  @override
  String get barcode => 'الرمز الشريطي';

  @override
  String get enter_barcode_or_scan => 'يرجى إدخال الرمز الشريطي أو مسحه ضوئياً';

  @override
  String get basic_information => 'المعلومات الأساسية';

  @override
  String get item_name => 'اسم العنصر';

  @override
  String get enter_item_name => 'الرجاء إدخال اسم العنصر';

  @override
  String get enter_category_name => 'الرجاء إدخال اسم التصنيف';

  @override
  String item_increased(String itemName, String quantity, String unit) {
    return 'تمت إضافة $itemName $quantity$unit';
  }

  @override
  String item_decreased(String itemName, String quantity, String unit) {
    return 'تم تقليل $itemName $quantity$unit';
  }
}
