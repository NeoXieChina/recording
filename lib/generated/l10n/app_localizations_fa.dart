// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Persian (`fa`).
class AppLocalizationsFa extends AppLocalizations {
  AppLocalizationsFa([String locale = 'fa']) : super(locale);

  @override
  String get app_name => 'گنجینه‌ای کوچک';

  @override
  String get cancel => 'لغو';

  @override
  String get confirm => 'تأیید';

  @override
  String get save => 'ذخیره';

  @override
  String get delete => 'حذف';

  @override
  String get edit => 'ویرایش';

  @override
  String get add => 'اضافه کردن';

  @override
  String get edit_item => 'ویرایش آیتم';

  @override
  String get add_item => 'افزودن مورد';

  @override
  String get search => 'جستجو';

  @override
  String get settings => 'تنظیمات';

  @override
  String get language_settings => 'تنظیمات زبان';

  @override
  String get language_settings_description => 'تنظیم زبان نمایش برنامه';

  @override
  String get system_default => 'پیش‌فرض سیستم';

  @override
  String get use_system_language => 'استفاده از زبان سیستم';

  @override
  String get language_change_hint =>
      'تغییر زبان پس از راه‌اندازی مجدد برنامه اعمال خواهد شد';

  @override
  String get back => 'بازگشت';

  @override
  String get next => 'مرحله بعد';

  @override
  String get done => 'تکمیل';

  @override
  String get loading => 'در حال بارگذاری...';

  @override
  String get error => 'خطا';

  @override
  String get success => 'موفقیت';

  @override
  String get warning => 'هشدار';

  @override
  String get info => 'اطلاعات';

  @override
  String get select_alert_days => 'انتخاب تعداد روزهای یادآوری';

  @override
  String get custom => 'سفارشی‌سازی';

  @override
  String custom_days(int days) {
    return 'سفارشی ( $days روز)';
  }

  @override
  String current_selection(int days) {
    return 'انتخاب فعلی: $days روز';
  }

  @override
  String alert_days_range(int min, int max) {
    return 'محدوده روزهای یادآوری: $min-$max روز';
  }

  @override
  String get enter_days => 'لطفاً تعداد روزهای یادآوری را وارد کنید';

  @override
  String get days => 'تعداد روزها';

  @override
  String enter_valid_days(int min, int max) {
    return 'لطفاً عددی بین $min و $max وارد کنید';
  }

  @override
  String get alert_settings => 'تنظیم هشدار';

  @override
  String get calendar_settings => 'تنظیمات تقویم';

  @override
  String get calendar_sync => 'همگام‌سازی تقویم';

  @override
  String get calendar_sync_desc =>
      'پس از فعال کردن، دسترسی به تقویم درخواست خواهد شد';

  @override
  String get add_test_calendar_event => 'افزودن رویداد تقویم آزمایشی';

  @override
  String get enable_calendar_sync_first =>
      'لطفاً ابتدا سوئیچ \"همگام‌سازی تقویم\" را روشن کنید';

  @override
  String get app_alert_settings => 'تنظیمات یادآوری برنامه';

  @override
  String get local_alerts => 'یادآوری محلی';

  @override
  String get local_alerts_desc =>
      'پس از فعال‌سازی، یادآوری‌های انقضا درون برنامه‌ای را دریافت کنید';

  @override
  String get send_test_notification => 'ارسال اعلان تست';

  @override
  String get enable_local_alerts_first =>
      'لطفاً ابتدا سوئیچ \"یادآوری محلی\" را روشن کنید';

  @override
  String get alert_days_settings => 'تنظیم تعداد روزهای یادآوری';

  @override
  String get advance_alert_days => 'تعداد روزهای یادآوری قبلی';

  @override
  String get advance_alert_days_desc =>
      'تنظیم کنید چند روز قبل از انقضای کالا یا پایان گارانتی هشدار داده شود';

  @override
  String get calendar_permission_request => 'درخواست دسترسی به تقویم';

  @override
  String get calendar_permission_desc =>
      'برای همگام‌سازی یادآوری اقلام، نیاز به دسترسی به تقویم است. آیا اجازه می‌دهید؟';

  @override
  String get allow => 'اجازه دادن';

  @override
  String get calendar_permission_granted =>
      'دسترسی به تقویم اعطا شده است، همگام‌سازی تقویم فعال شده است';

  @override
  String get calendar_permission_denied =>
      'دسترسی به تقویم رد شد، امکان فعال‌سازی همگام‌سازی تقویم وجود ندارد';

  @override
  String get calendar_permission_permanently_denied =>
      'دسترسی به‌طور دائم رد شد';

  @override
  String get calendar_permission_permanently_denied_desc =>
      'دسترسی به تقویم به طور دائم رد شد، لطفاً به صورت دستی در تنظیمات سیستم دسترسی را فعال کنید.';

  @override
  String get go_to_settings => 'به تنظیمات برو';

  @override
  String get calendar_account_failed =>
      'دسترسی به تقویم داده شده است، اما نمی‌توان حساب تقویم ایجاد کرد. لطفاً تنظیمات تقویم سیستم را بررسی کنید';

  @override
  String get calendar_account_created =>
      'دسترسی به تقویم اعطا شد، حساب تقویم محلی ایجاد شد';

  @override
  String get calendar_account_creating =>
      'حساب تقویم با موفقیت ایجاد شد، اما ممکن است سیستم برای فعال شدن آن به کمی زمان نیاز داشته باشد';

  @override
  String get test_calendar_event_added =>
      'آزمایش افزودن رویداد به تقویم با موفقیت انجام شد';

  @override
  String get test_calendar_event_failed =>
      'افزودن رویداد آزمایشی به تقویم ناموفق بود، لطفاً تنظیمات تقویم را بررسی کنید';

  @override
  String get calendar_permission_required =>
      'برای افزودن رویداد آزمایشی نیاز به دسترسی به تقویم است';

  @override
  String get test_notification_sent => 'اطلاعیه تست ارسال شد';

  @override
  String test_notification_failed(String error) {
    return 'ارسال اعلان آزمایشی ناموفق بود: $error';
  }

  @override
  String get notification_permission_required =>
      'برای فعال کردن یادآوری‌های محلی نیاز به اجازه اعلان است';

  @override
  String operation_failed(String error) {
    return 'عملیات ناموفق بود: $error';
  }

  @override
  String get notification_channel_name => 'اطلاعیه هشدار کالا';

  @override
  String get notification_channel_description =>
      'هشدار انقضای کالا یا پایان گارانتی';

  @override
  String get item_category_food => 'غذا';

  @override
  String get item_category_daily_necessities => 'لوازم روزمره';

  @override
  String get item_category_cosmetics => 'لوازم آرایشی';

  @override
  String get item_category_medicine => 'دارو';

  @override
  String get item_category_electronics => 'محصولات الکترونیکی';

  @override
  String get item_category_furniture => 'مبلمان';

  @override
  String get item_category_clothing => 'لباس';

  @override
  String get item_category_books => 'کتاب‌ها';

  @override
  String get item_category_other => 'دیگر';

  @override
  String get purchase_channel_online_mall => 'فروشگاه آنلاین';

  @override
  String get purchase_channel_physical_store => 'فروشگاه فیزیکی';

  @override
  String get purchase_channel_supermarket => 'سوپرمارکت';

  @override
  String get purchase_channel_specialty_store => 'فروشگاه اختصاصی';

  @override
  String get purchase_channel_secondhand_market => 'بازار دست دوم';

  @override
  String get purchase_channel_other => 'سایر';

  @override
  String get default_category => 'دیگر';

  @override
  String get default_purchase_channel => 'فروشگاه آنلاین';

  @override
  String get item_category => 'دسته‌بندی اقلام';

  @override
  String get custom_category => 'دسته‌بندی سفارشی';

  @override
  String get backup_data => 'پشتیبان‌گیری از داده‌ها';

  @override
  String get backup_data_description =>
      'تمام داده‌ها (شامل تصاویر) را به‌صورت فایل ZIP برای پشتیبان‌گیری بسته‌بندی کنید';

  @override
  String get backup_all_data => 'پشتیبان‌گیری از تمام داده‌ها';

  @override
  String get backup_success => 'پشتیبان‌گیری با موفقیت انجام شد';

  @override
  String backup_failed(String error) {
    return 'پشتیبان‌گیری ناموفق: $error';
  }

  @override
  String get restore_data => 'بازیابی داده‌ها';

  @override
  String get restore_data_description =>
      'بازیابی تمام داده‌ها از فایل پشتیبان ZIP';

  @override
  String get export_data => 'صادرات داده‌ها';

  @override
  String get export_data_description =>
      'خروجی گرفتن به فرمت‌های CSV، TXT و SQL';

  @override
  String get import_data => 'وارد کردن داده‌ها';

  @override
  String get import_data_description =>
      'وارد کردن داده‌ها از فایل‌های CSV، TXT، SQL';

  @override
  String get alert_settings_description =>
      'تنظیم یادآوری‌های تقویم و یادآوری‌های پوش برنامه';

  @override
  String get about => 'درباره';

  @override
  String get about_description => 'اطلاعات و نسخه برنامه';

  @override
  String get select_backup_file_first =>
      'لطفاً ابتدا فایل پشتیبان را انتخاب کنید';

  @override
  String get confirm_restore => 'تأیید بازیابی';

  @override
  String get confirm_restore_message =>
      'بازیابی نسخه پشتیبان تمام داده‌های موجود را پاک کرده و با داده‌های پشتیبان جایگزین خواهد کرد، این عملیات قابل بازگشت نیست. آیا مطمئن هستید که می‌خواهید ادامه دهید؟';

  @override
  String get confirm_again => 'دوباره تأیید کردن';

  @override
  String get confirm_restore_warning =>
      'آیا مطمئن هستید که می‌خواهید تمام داده‌های موجود را پاک کرده و نسخه پشتیبان را بازیابی کنید؟ این عملیات غیرقابل بازگشت است!';

  @override
  String get confirm_restore_button => 'تأیید بازیابی';

  @override
  String restore_success(int count) {
    return 'بازیابی با موفقیت انجام شد، مجموع $count مورد';
  }

  @override
  String restore_failed(String error) {
    return 'بازیابی ناموفق: $error';
  }

  @override
  String get select_backup_file => 'انتخاب فایل پشتیبان';

  @override
  String get restore_backup => 'بازیابی پشتیبان';

  @override
  String selected_file(String filename) {
    return 'فایل انتخاب شده: $filename';
  }

  @override
  String get export_success => 'صادرات داده با موفقیت انجام شد';

  @override
  String export_failed(String error) {
    return 'خروجی گرفتن با شکست مواجه شد: $error';
  }

  @override
  String get format_csv => 'سی‌اس‌وی';

  @override
  String get format_txt => 'TXT';

  @override
  String get format_sql => 'SQL';

  @override
  String get duplicate_data_handling => 'پردازش داده‌های تکراری';

  @override
  String get duplicate_data_detected =>
      'شناسایی داده‌های تکراری، لطفاً روش پردازش را انتخاب کنید:';

  @override
  String get skip => 'رد کردن';

  @override
  String get overwrite => 'پوشاندن';

  @override
  String get skip_all => 'همه را رد کن';

  @override
  String get overwrite_all => 'پوشش کامل';

  @override
  String get select_import_format_first =>
      'لطفاً ابتدا فرمت وارد کردن را انتخاب کنید';

  @override
  String get confirm_import => 'تأیید وارد کردن';

  @override
  String get confirm_import_message =>
      'وارد کردن داده‌ها، داده‌های موجود را بازنویسی خواهد کرد و این عملیات قابل بازگرداندن نیست. آیا مطمئن هستید که می‌خواهید ادامه دهید؟';

  @override
  String import_success(int count) {
    return 'وارد کردن داده‌ها با موفقیت انجام شد، در مجموع $count مورد وارد شد';
  }

  @override
  String import_failed(String error) {
    return 'وارد کردن ناموفق بود: $error';
  }

  @override
  String get select_file => 'انتخاب فایل';

  @override
  String get no_data => 'بدون داده';

  @override
  String get no_data_description =>
      'در حال حاضر داده‌ای وجود ندارد، روی دکمه زیر کلیک کنید تا اولین رکورد را اضافه کنید!';

  @override
  String get load_failed => 'بارگذاری شکست خورد';

  @override
  String get load_failed_description =>
      'بارگذاری داده‌ها ناموفق بود، لطفاً پس از بررسی اتصال شبکه دوباره امتحان کنید';

  @override
  String get retry => 'دوباره امتحان کنید';

  @override
  String get network_connection_failed => 'اتصال شبکه ناموفق بود';

  @override
  String get network_connection_failed_description =>
      'لطفاً بعد از بررسی اتصال شبکه دوباره تلاش کنید';

  @override
  String get no_results => 'هیچ نتیجه‌ای یافت نشد';

  @override
  String get no_results_description =>
      'تلاش کنید با کلمات کلیدی دیگر جستجو کنید';

  @override
  String get clear_search => 'پاک کردن جستجو';

  @override
  String get insufficient_permission => 'دسترسی غیرمجاز';

  @override
  String get insufficient_permission_description =>
      'برای استفاده از این ویژگی نیاز به مجوز مربوطه است';

  @override
  String get request_permission => 'درخواست دسترسی';

  @override
  String get app_info => 'اطلاعات برنامه';

  @override
  String get version => 'نسخه';

  @override
  String get developer => 'توسعه‌دهنده';

  @override
  String get device_info => 'اطلاعات دستگاه';

  @override
  String get device_model => 'مدل دستگاه';

  @override
  String get brand => 'برند';

  @override
  String get device_name => 'نام دستگاه';

  @override
  String get product => 'محصول';

  @override
  String get hardware => 'سخت‌افزار';

  @override
  String get android_version => 'نسخه اندروید';

  @override
  String get sdk_version => 'نسخه SDK';

  @override
  String get system_name => 'نام سیستم';

  @override
  String get operating_system => 'سیستم‌عامل';

  @override
  String get system_version => 'نسخه سیستم';

  @override
  String get dart_version => 'نسخه Dart';

  @override
  String get device_identifier => 'شناسه دستگاه';

  @override
  String get computer_name => 'نام کامپیوتر';

  @override
  String get build_number => 'شماره نسخه';

  @override
  String error_getting_device_info(String error) {
    return 'نمی‌توان اطلاعات دستگاه را دریافت کرد: $error';
  }

  @override
  String get features => 'معرفی عملکرد';

  @override
  String get app_description => 'برنامه مدیریت اشیاء هوشمند';

  @override
  String get app_description_detail =>
      'کمک به شما در مدیریت تاریخ انقضا، تاریخ گارانتی و اطلاعات دیگر کالاها و ارائه قابلیت یادآوری هوشمند.';

  @override
  String get consumable => 'مصرفی';

  @override
  String get durable => 'کالای بادوام';

  @override
  String get sort => 'مرتب‌سازی';

  @override
  String get name_asc => 'ترتیب صعودی نام';

  @override
  String get name_desc => 'ترتیب نزولی نام';

  @override
  String get date_asc => 'ترتیب صعودی تاریخ';

  @override
  String get date_desc => 'ترتیب نزولی تاریخ';

  @override
  String get price_asc => 'ترتیب صعودی قیمت واحد';

  @override
  String get price_desc => 'نزولی بر اساس قیمت واحد';

  @override
  String get quantity_asc => 'ترتیب صعودی بر اساس تعداد';

  @override
  String get quantity_desc => 'ترتیب نزولی تعداد';

  @override
  String get total_price_asc => 'ترتیب صعودی قیمت کل';

  @override
  String get total_price_desc => 'کاهش قیمت کل';

  @override
  String get clear_all_filters => 'پاک کردن همه فیلترها';

  @override
  String get scan_barcode => 'اسکن کد برای ورود به انبار';

  @override
  String get search_items => 'جستجوی اقلام...';

  @override
  String get no_items => 'هنوز موردی موجود نیست';

  @override
  String get no_items_description =>
      'برای افزودن اولین مورد، روی دکمه زیر کلیک کنید';

  @override
  String get expired => 'منقضی شده';

  @override
  String get expiring_soon => 'در شرف منقضی شدن';

  @override
  String get warranty_expired => 'گارانتی منقضی شده است';

  @override
  String get warranty_expiring_soon => 'گارانتی به زودی منقضی می‌شود';

  @override
  String days_remaining(int count) {
    return 'باقی مانده $count روز';
  }

  @override
  String expired_days_ago(int count) {
    return 'منقضی شده $count روز';
  }

  @override
  String get delete_item => 'حذف کالا';

  @override
  String delete_item_confirm(String name) {
    return 'آیا می‌خواهید \"$name\" را حذف کنید؟';
  }

  @override
  String get item_deleted => 'آیتم حذف شد';

  @override
  String get failed_to_delete => 'حذف شکست خورد';

  @override
  String failed_to_delete_message(String error) {
    return 'نمی‌توان آیتم را حذف کرد: $error';
  }

  @override
  String get date_range_filter => 'فیلتر بازه تاریخی';

  @override
  String get price_range_filter => 'فیلتر محدوده قیمت';

  @override
  String get my_items => 'وسایل من';

  @override
  String get click_fab_to_add_item =>
      'برای افزودن آیتم، روی دکمه گوشه پایین سمت راست کلیک کنید';

  @override
  String get confirm_delete => 'تأیید حذف';

  @override
  String get filter_options => 'گزینه‌های فیلتر';

  @override
  String get filter_by_type_category_location =>
      'براساس نوع، دسته‌بندی و مکان اقلام را فیلتر کنید';

  @override
  String categories_count(int count) {
    return '$count دسته‌بندی';
  }

  @override
  String get all_categories => 'همه دسته‌ها';

  @override
  String get no_category_data => 'هنوز داده‌ای برای دسته‌بندی وجود ندارد';

  @override
  String get storage_location => 'محل ذخیره‌سازی';

  @override
  String locations_count(int count) {
    return '$count مکان';
  }

  @override
  String get all_locations => 'همه مکان‌ها';

  @override
  String get no_location_data => 'هنوز داده‌های مکان موجود نیست';

  @override
  String get date_range => 'محدوده تاریخ';

  @override
  String get select_date_range => 'انتخاب محدوده تاریخ';

  @override
  String get price_range => 'محدوده قیمت';

  @override
  String get unit_price_range => 'دامنه قیمت واحد';

  @override
  String get min_unit_price => 'کمترین قیمت واحد';

  @override
  String get max_unit_price => 'بیشترین قیمت واحد';

  @override
  String get total_price_range => 'محدوده قیمت کل';

  @override
  String get min_total_price => 'کمترین قیمت کل';

  @override
  String get max_total_price => 'بیشترین قیمت کل';

  @override
  String get clear_price_filter => 'پاک کردن فیلتر قیمت';

  @override
  String get place_barcode_in_frame =>
      'بارکد را داخل قاب قرار دهید تا اسکن شود';

  @override
  String get item_already_exists => 'کالا قبلاً موجود است';

  @override
  String barcode_with_value(String barcode) {
    return 'بارکد: $barcode';
  }

  @override
  String name_with_value(String name) {
    return 'نام: $name';
  }

  @override
  String category_with_value(String category) {
    return 'دسته‌بندی: $category';
  }

  @override
  String current_quantity_with_value(String quantity, String unit) {
    return 'تعداد فعلی: $quantity$unit';
  }

  @override
  String get please_select_operation => 'لطفاً عملیات را انتخاب کنید:';

  @override
  String get outbound => 'خروج از انبار';

  @override
  String get inbound => 'ورود به انبار';

  @override
  String get inbound_quantity => 'تعداد وارد شده به انبار';

  @override
  String get outbound_quantity => 'تعداد خروجی از انبار';

  @override
  String get quantity => 'تعداد';

  @override
  String get enter_inbound_quantity => 'لطفاً تعداد ورود به انبار را وارد کنید';

  @override
  String get enter_outbound_quantity =>
      'لطفاً تعداد خروج از انبار را وارد کنید';

  @override
  String delete_item_confirm_with_irreversible(String name) {
    return 'آیا مطمئن هستید که می‌خواهید «$name» را حذف کنید؟ این عملیات قابل بازگردانی نیست.';
  }

  @override
  String get database_reset =>
      'پایگاه داده بازنشانی شده است، ساختار جدول دوباره ایجاد خواهد شد';

  @override
  String database_reset_error(String error) {
    return 'خطا در بازنشانی پایگاه داده: $error';
  }

  @override
  String mock_data_init_failed(String error) {
    return 'راه‌اندازی داده‌های شبیه‌سازی شکست خورد: $error';
  }

  @override
  String get solution_steps => 'راه‌حل:';

  @override
  String get solution_step_1 => '1. برنامه را حذف نصب کرده و دوباره نصب کنید';

  @override
  String get solution_step_2 => '۲. یا پاک کردن داده‌های برنامه';

  @override
  String get solution_step_3 =>
      '3. یا پس از تنظیم resetDatabaseOnStart روی true دوباره اجرا کنید';

  @override
  String notification_service_init_failed(String error) {
    return 'راه‌اندازی سرویس یادآوری ناموفق بود: $error';
  }

  @override
  String check_calendar_account_failed(String error) {
    return 'عدم موفقیت در بررسی حساب تقویم: $error';
  }

  @override
  String create_calendar_failed(String error) {
    return 'ایجاد تقویم ناموفق بود: $error';
  }

  @override
  String add_calendar_event_failed(String error) {
    return 'افزودن رویداد به تقویم ناموفق بود: $error';
  }

  @override
  String delete_calendar_event_failed(String error) {
    return 'حذف رویداد تقویم موفقیت‌آمیز نبود: $error';
  }

  @override
  String set_permission_message_failed(String error) {
    return 'تنظیم پیام هشدار مجوز ناموفق بود: $error';
  }

  @override
  String mock_data_init_success(int count) {
    return 'موفق به مقداردهی اولیه $count داده شبیه‌سازی شده شد';
  }

  @override
  String database_has_data(int count) {
    return 'پایگاه داده از قبل شامل $count داده است، از مقداردهی اولیه داده‌های شبیه‌سازی شده صرف‌نظر کنید';
  }

  @override
  String get database_structure_mismatch =>
      'ممکن است ساختار پایگاه داده مطابقت نداشته باشد، توصیه می‌شود داده‌های برنامه را پاک کنید یا دوباره نصب کنید';

  @override
  String get old_database_deleted => 'پرونده‌های پایگاه داده قدیمی حذف شدند';

  @override
  String get backup_data_empty => 'داده‌های پشتیبان خالی است';

  @override
  String get backup_file_not_found => 'فایل پشتیبان وجود ندارد';

  @override
  String file_not_utf8(String error) {
    return 'کدگذاری فایل فرمت معتبر UTF-8 نیست. لطفاً اطمینان حاصل کنید که فایل با کدگذاری UTF-8 ذخیره شده است. جزئیات خطا: $error';
  }

  @override
  String file_not_found(String filePath) {
    return 'فایل وجود ندارد: $filePath';
  }

  @override
  String file_empty(String filePath) {
    return 'فایل خالی است: $filePath';
  }

  @override
  String get file_content_empty =>
      'بعد از رمزگشایی محتوای فایل خالی است، ممکن است انکودینگ مطابقت نداشته باشد';

  @override
  String field_cannot_be_empty(String fieldName) {
    return '$fieldName نمی‌تواند خالی باشد';
  }

  @override
  String field_min_length(String fieldName, int minLength) {
    return '$fieldName نباید کمتر از $minLength کاراکتر باشد';
  }

  @override
  String field_max_length(String fieldName, int maxLength) {
    return '$fieldName نمی‌تواند طولانی‌تر از $maxLength کاراکتر باشد';
  }

  @override
  String field_invalid_email(String fieldName) {
    return 'لطفاً یک آدرس $fieldName معتبر وارد کنید';
  }

  @override
  String field_invalid_number(String fieldName, String numberType) {
    return '$fieldName باید $numberType باشد';
  }

  @override
  String field_min_value(String fieldName, double min) {
    return '$fieldName نمی‌تواند کمتر از $min باشد';
  }

  @override
  String field_max_value(String fieldName, double max) {
    return '$fieldName نمی‌تواند بزرگتر از $max باشد';
  }

  @override
  String field_positive_integer(String fieldName) {
    return '$fieldName باید یک عدد صحیح مثبت باشد';
  }

  @override
  String field_greater_than_zero(String fieldName) {
    return '$fieldName باید بزرگتر از 0 باشد';
  }

  @override
  String field_positive_number(String fieldName) {
    return '$fieldName باید عددی مثبت باشد';
  }

  @override
  String field_invalid_date(String fieldName) {
    return 'لطفاً $fieldName معتبر وارد کنید';
  }

  @override
  String field_date_not_past(String fieldName) {
    return '$fieldName نمی‌تواند تاریخی در گذشته باشد';
  }

  @override
  String field_date_not_before(String fieldName, String minDate) {
    return '$fieldName نمی‌تواند زودتر از $minDate باشد';
  }

  @override
  String field_date_not_after(String fieldName, String maxDate) {
    return '$fieldName نباید دیرتر از $maxDate باشد';
  }

  @override
  String field_invalid_value(String fieldName) {
    return 'لطفاً $fieldName معتبر وارد کنید';
  }

  @override
  String password_min_length(String fieldName) {
    return '$fieldName نباید کمتر از ۸ کاراکتر باشد';
  }

  @override
  String password_uppercase_required(String fieldName) {
    return '$fieldName باید حداقل یک حرف بزرگ داشته باشد';
  }

  @override
  String password_lowercase_required(String fieldName) {
    return '$fieldName باید حداقل یک حرف کوچک داشته باشد';
  }

  @override
  String password_digit_required(String fieldName) {
    return '$fieldName باید حداقل یک عدد داشته باشد';
  }

  @override
  String password_special_char_required(String fieldName) {
    return '$fieldName باید حداقل یک کاراکتر ویژه داشته باشد';
  }

  @override
  String get passwords_not_match => 'رمزهای عبور وارد شده مطابقت ندارند';

  @override
  String get item_name_cannot_be_empty => 'نام کالا نمی‌تواند خالی باشد';

  @override
  String name_max_length(int maxLength) {
    return 'نام نمی‌تواند بیش از $maxLength نویسه باشد';
  }

  @override
  String quantity_min(int minQuantity) {
    return 'تعداد نمی‌تواند کمتر از $minQuantity باشد';
  }

  @override
  String quantity_max(int maxQuantity) {
    return 'تعداد نمی‌تواند بیشتر از $maxQuantity باشد';
  }

  @override
  String get unit_price_not_negative => 'قیمت واحد نمی‌تواند منفی باشد';

  @override
  String unit_price_max(double maxUnitPrice) {
    return 'قیمت واحد نباید از $maxUnitPrice تجاوز کند';
  }

  @override
  String get set_production_expiry_for_validity =>
      'لطفاً تاریخ تولید و مدت زمان نگهداری را تنظیم کنید تا مدت اعتبار به‌صورت خودکار محاسبه شود';

  @override
  String get set_purchase_warranty_for_validity =>
      'لطفاً تاریخ خرید و مدت زمان مصرف را تنظیم کنید تا دوره گارانتی به‌طور خودکار محاسبه شود';

  @override
  String get calendar_account_creation_failed =>
      'نمی‌توان حساب تقویم ایجاد کرد، لطفاً تنظیمات تقویم سیستم را بررسی کنید';

  @override
  String get test_notification => 'آزمایش اطلاعیه';

  @override
  String get test_notification_description =>
      'این یک اعلان آزمایشی است که برای تأیید عملکرد یادآوری محلی استفاده می‌شود';

  @override
  String get day_unit => 'آسمان';

  @override
  String days_with_value(int days) {
    return '$days روز';
  }

  @override
  String get item_saved => 'کالا ذخیره شد';

  @override
  String get item_updated => 'کالا به‌روزرسانی شد';

  @override
  String get item_added => 'کالا اضافه شد';

  @override
  String get save_success => 'ذخیره‌سازی با موفقیت انجام شد';

  @override
  String get update_success => 'به‌روزرسانی با موفقیت انجام شد';

  @override
  String get delete_success => 'حذف با موفقیت انجام شد';

  @override
  String get save_failed => 'ذخیره‌سازی ناموفق بود';

  @override
  String get update_failed => 'به‌روزرسانی ناموفق بود';

  @override
  String get delete_failed => 'حذف شکست خورد';

  @override
  String get test_calendar_event => 'آزمایش رویداد تقویم';

  @override
  String get test_calendar_event_description =>
      'این یک رویداد آزمایشی است که برای بررسی عملکرد تقویم استفاده می‌شود';

  @override
  String get in_app => 'درون‌برنامه‌ای';

  @override
  String get enable_alert => 'فعال‌سازی یادآوری انقضا';

  @override
  String get alert_method => 'روش یادآوری';

  @override
  String get alert_method_in_app => 'فقط درون برنامه‌ای';

  @override
  String get alert_method_calendar => 'فقط تقویم';

  @override
  String get alert_method_both => 'هر دو';

  @override
  String get alert_days_before => 'تعداد روزهای یادآوری قبلی';

  @override
  String get use_global_setting => 'استفاده از تنظیمات سراسری';

  @override
  String get barcode_label => 'بارکد';

  @override
  String get name_label => 'نام';

  @override
  String get category_label => 'دسته‌بندی';

  @override
  String get current_quantity => 'مقدار فعلی';

  @override
  String get select_operation => 'لطفاً عملیات را انتخاب کنید';

  @override
  String get unit => 'واحد';

  @override
  String get custom_unit => 'واحد سفارشی';

  @override
  String get enter_unit => 'لطفاً واحد را وارد کنید';

  @override
  String get custom_location => 'مکان سفارشی';

  @override
  String get enter_storage_location => 'لطفاً مکان ذخیره‌سازی را وارد کنید';

  @override
  String get scan => 'اسکن کد QR';

  @override
  String get scan_to_stock => 'اسکن کد برای ورود به انبار';

  @override
  String get item_categories => 'دسته‌بندی اقلام';

  @override
  String get storage_locations => 'محل ذخیره‌سازی';

  @override
  String get place_barcode_in_frame_to_scan =>
      'بارکد را داخل قاب قرار دهید تا اسکن شود';

  @override
  String get barcode => 'بارکد';

  @override
  String get enter_barcode_or_scan => 'لطفاً بارکد را وارد کنید یا اسکن کنید';

  @override
  String get basic_information => 'اطلاعات پایه';

  @override
  String get item_name => 'نام کالا';

  @override
  String get enter_item_name => 'لطفاً نام کالا را وارد کنید';

  @override
  String get enter_category_name => 'لطفاً نام دسته‌بندی را وارد کنید';

  @override
  String item_increased(String itemName, String quantity, String unit) {
    return 'تعداد $itemName $quantity$unit افزایش یافت';
  }

  @override
  String item_decreased(String itemName, String quantity, String unit) {
    return 'تعداد $itemName $quantity$unit کاهش یافته است';
  }

  @override
  String get unsaved_changes => 'تغییرات ذخیره‌نشده';

  @override
  String get unsaved_changes_message =>
      'شما تغییرات ذخیره‌نشده‌ای دارید، لطفاً عملیات را انتخاب کنید:';

  @override
  String get discard => 'رها کردن';

  @override
  String get unit_piece => 'عدد';

  @override
  String get unit_item => '件';

  @override
  String get unit_box => 'جعبه';

  @override
  String get unit_package => 'کیسه';

  @override
  String get unit_bottle => 'بطری';

  @override
  String get unit_carton => 'جعبه';

  @override
  String get unit_set => 'ست';

  @override
  String get unit_kg => 'کیلوگرم';

  @override
  String get unit_g => 'g';

  @override
  String get unit_l => 'L';

  @override
  String get unit_ml => 'میلی‌لیتر';

  @override
  String get unit_m => 'م';

  @override
  String get unit_cm => 'سانتی‌متر';

  @override
  String get quantity_label => 'تعداد';

  @override
  String get unit_price_label => 'قیمت واحد';

  @override
  String get currency_label => 'ارز';

  @override
  String get total_price_label => 'قیمت کل:';

  @override
  String get storage_location_label => 'محل ذخیره‌سازی';

  @override
  String get item_properties => 'ویژگی‌های آیتم';

  @override
  String get expiry_date_label => 'تاریخ اعتبار';

  @override
  String get warranty_expiry_date_label => 'تاریخ انقضای گارانتی';

  @override
  String get production_date_label => 'تاریخ تولید';

  @override
  String get purchase_date_label => 'تاریخ خرید';

  @override
  String auto_calculated_from(String dateType) {
    return 'به طور خودکار بر اساس $dateType و تاریخ انقضا محاسبه می‌کند';
  }

  @override
  String get auto_calculated => 'محاسبه خودکار';

  @override
  String get images_label => 'تصویر';

  @override
  String get notes_label => 'یادداشت';

  @override
  String get add_notes_hint => 'افزودن اطلاعات یادداشت (اختیاری)';

  @override
  String get year_label => 'سال';

  @override
  String get month_label => 'ماه';

  @override
  String get day_label => 'آسمان';

  @override
  String selected_count(int count) {
    return 'تعداد $count مورد انتخاب شده است';
  }

  @override
  String get select_all => 'انتخاب همه';

  @override
  String get deselect_all => 'لغو انتخاب همه';

  @override
  String get batch_change_location => 'تغییر مکان ذخیره‌سازی به صورت دسته‌ای';

  @override
  String confirm_delete_selected(int count) {
    return 'آیا مطمئن هستید که می‌خواهید $count مورد انتخاب‌شده را حذف کنید؟';
  }

  @override
  String deleted_count_items(int count) {
    return 'تعداد $count آیتم حذف شد';
  }

  @override
  String get no_storage_location_available =>
      'هیچ مکان ذخیره‌سازی قابل انتخابی وجود ندارد';

  @override
  String get batch_change_location_title =>
      'تغییر مکان ذخیره‌سازی به صورت دسته‌ای';

  @override
  String moved_count_items_to_location(int count, String location) {
    return 'تعداد $count مورد به $location منتقل شد';
  }

  @override
  String get operation_type_create => 'ثبت کردن';

  @override
  String get operation_type_update => 'ویرایش';

  @override
  String get operation_type_delete => 'حذف';

  @override
  String get operation_type_inbound => 'ورود به انبار';

  @override
  String get operation_type_outbound => 'خروج از انبار';

  @override
  String export_failed_message(String error) {
    return 'صدور خروجی ناموفق بود: $error';
  }

  @override
  String get clear_logs => 'پاک کردن سابقه';

  @override
  String get confirm_clear_logs =>
      'آیا می‌خواهید همه‌ی گزارش‌های عملیات را پاک کنید؟ این عملیات قابل بازگشت نیست.';

  @override
  String get logs_cleared => 'لاگ‌ها پاک شدند';

  @override
  String get operation_logs_title => 'گزارش عملیات';

  @override
  String get export_logs => 'صادرات لاگ';

  @override
  String get clear_logs_tooltip => 'پاک کردن سابقه';

  @override
  String get no_operation_logs => 'هنوز هیچ سابقه عملیاتی وجود ندارد';

  @override
  String get log_item_label => 'اقلام:';

  @override
  String get log_category_label => 'دسته‌بندی:';

  @override
  String get log_type_label => 'نوع:';

  @override
  String get log_quantity_label => 'تعداد:';

  @override
  String get log_unit_price_label => 'قیمت واحد:';

  @override
  String get log_total_price_label => 'قیمت کل:';

  @override
  String get log_expiry_date_label => 'تاریخ انقضا:';

  @override
  String get log_warranty_date_label => 'تاریخ گارانتی:';

  @override
  String get log_purchase_date_label => 'تاریخ خرید:';

  @override
  String get log_production_date_label => 'تاریخ تولید:';

  @override
  String get log_shelf_life_label => 'تاریخ مصرف:';

  @override
  String get log_storage_location_label => 'محل ذخیره‌سازی:';

  @override
  String get log_barcode_label => 'بارکد:';

  @override
  String get log_notes_label => 'توضیحات:';

  @override
  String get log_alert_label => 'هشدار';

  @override
  String get log_alert_days_label => 'روزهای هشدار';

  @override
  String get log_quantity_change_label => 'تغییرات کمیت:';

  @override
  String get log_field_changes_label => 'ویرایش فیلد:';

  @override
  String get log_not_set => 'تنظیم نشده';

  @override
  String get log_empty => 'خالی';

  @override
  String get log_alert_enabled => 'باز کردن';

  @override
  String get log_alert_disabled => 'بستن';

  @override
  String get operation_logs_menu => 'گزارش عملیات';

  @override
  String get operation_logs_description => 'مشاهده و بازیابی سوابق عملیات';

  @override
  String operation_failed_message(String error) {
    return 'عملیات ناموفق بود: $error';
  }

  @override
  String get no_date => 'بدون تاریخ';

  @override
  String get shelf_life_months_suffix => 'ماه';

  @override
  String get shelf_life_days_suffix => 'آسمان';

  @override
  String get alert_days_suffix => 'آسمان';

  @override
  String get unknown => 'ناشناخته';

  @override
  String get developer_name => 'لئو';

  @override
  String get log_operation_date_label => 'تاریخ عملیات:';

  @override
  String get uncategorized => 'دسته‌بندی نشده';

  @override
  String get no_location => 'بدون مکان';

  @override
  String get item_category_cannot_be_empty =>
      'دسته‌بندی کالا نمی‌تواند خالی باشد';

  @override
  String get storage_location_cannot_be_empty =>
      'محل ذخیره‌سازی نمی‌تواند خالی باشد';

  @override
  String get created_at_asc => 'اضافه کردن به ترتیب زمانی صعودی';

  @override
  String get created_at_desc => 'اضافه کردن به ترتیب زمانی نزولی';
}
