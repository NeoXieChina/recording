// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hebrew (`he`).
class AppLocalizationsHe extends AppLocalizations {
  AppLocalizationsHe([String locale = 'he']) : super(locale);

  @override
  String get app_name => 'חדר קטן לאחסון חפצים';

  @override
  String get cancel => 'בטל';

  @override
  String get confirm => 'אישור';

  @override
  String get save => 'שמירה';

  @override
  String get delete => 'מחק';

  @override
  String get edit => 'ערוך';

  @override
  String get add => 'להוסיף';

  @override
  String get edit_item => 'ערוך פריט';

  @override
  String get add_item => 'הוסף פריט';

  @override
  String get search => 'חיפוש';

  @override
  String get settings => 'הגדרות';

  @override
  String get language_settings => 'הגדרות שפה';

  @override
  String get language_settings_description => 'הגדר את שפת התצוגה של האפליקציה';

  @override
  String get system_default => 'ברירת המחדל של המערכת';

  @override
  String get use_system_language => 'השתמש בשפת המערכת';

  @override
  String get language_change_hint => 'השפה תשתנה לאחר הפעלת האפליקציה מחדש';

  @override
  String get back => 'חזור';

  @override
  String get next => 'הצעד הבא';

  @override
  String get done => 'להשלים';

  @override
  String get loading => 'טוען...';

  @override
  String get error => 'שגיאה';

  @override
  String get success => 'הצלחה';

  @override
  String get warning => 'אזהרה';

  @override
  String get info => 'מידע';

  @override
  String get select_alert_days => 'בחר מספר ימי התראה';

  @override
  String get custom => 'מותאם אישית';

  @override
  String custom_days(int days) {
    return 'מותאם אישית ($days ימים)';
  }

  @override
  String current_selection(int days) {
    return 'הבחירה הנוכחית: $days ימים';
  }

  @override
  String alert_days_range(int min, int max) {
    return 'טווח ימי התראה: $min-$max ימים';
  }

  @override
  String get enter_days => 'אנא הזן את מספר הימים להכנה לתזכורת';

  @override
  String get days => 'ימים';

  @override
  String enter_valid_days(int min, int max) {
    return 'אנא הזן מספר בין $min ל-$max';
  }

  @override
  String get alert_settings => 'הגדרות התרעה מוקדמת';

  @override
  String get calendar_settings => 'הגדרות לוח שנה';

  @override
  String get calendar_sync => 'סנכרון לוח שנה';

  @override
  String get calendar_sync_desc => 'לאחר הפתיחה תתבקש הרשאת גישה ליומן';

  @override
  String get add_test_calendar_event => 'הוספת אירוע לוח שנה לבדיקה';

  @override
  String get enable_calendar_sync_first =>
      'אנא הפעל תחילה את מתג \'סנכרון לוח שנה\'';

  @override
  String get app_alert_settings => 'הגדרות התראות של אפליקציה';

  @override
  String get local_alerts => 'תזכורת מקומית';

  @override
  String get local_alerts_desc =>
      'לאחר הפעלה, קבל התראות על פג תוקף בתוך האפליקציה';

  @override
  String get send_test_notification => 'שלח הודעת בדיקה';

  @override
  String get enable_local_alerts_first =>
      'אנא הפעל תחילה את המתג \'התראות מקומיות\'';

  @override
  String get alert_days_settings => 'הגדרת ימי תזכורת';

  @override
  String get advance_alert_days => 'מספר הימים להתרעה מראש';

  @override
  String get advance_alert_days_desc =>
      'הגדר עד כמה ימים מראש להתריע על פקיעת תוקף המוצר או האחריות';

  @override
  String get calendar_permission_request => 'בקשת הרשאה ללוח שנה';

  @override
  String get calendar_permission_desc =>
      'נדרש גישה ליומן על מנת לסנכרן תזכורות פריטים. האם לאשר?';

  @override
  String get allow => 'להרשות';

  @override
  String get calendar_permission_granted =>
      'הרשאת הלוח שנה ניתנה, סינכרון הלוח שנה הופעל';

  @override
  String get calendar_permission_denied =>
      'ההרשאה ללוח השנה נדחתה, לא ניתן להפעיל סנכרון לוח שנה';

  @override
  String get calendar_permission_permanently_denied => 'הזכויות נדחו לצמיתות';

  @override
  String get calendar_permission_permanently_denied_desc =>
      'הרשאת היומן נדחתה לצמיתות, בבקשה הפעל את ההרשאה באופן ידני בהגדרות המערכת.';

  @override
  String get go_to_settings => 'לך להגדרות';

  @override
  String get calendar_account_failed =>
      'הרשאות היומן ניתנו, אך לא ניתן ליצור חשבון יומן. אנא בדוק את הגדרות היומן במערכת';

  @override
  String get calendar_account_created =>
      'הרשאת היומן ניתנה, חשבון יומן מקומי נוצר';

  @override
  String get calendar_account_creating =>
      'חשבון הלוח נוצר בהצלחה, אך ייתכן שהמערכת תצטרך קצת זמן כדי להיות פעילה';

  @override
  String get test_calendar_event_added => 'בדיקת הוספת אירוע ללוח שנה הצליחה';

  @override
  String get test_calendar_event_failed =>
      'הוספת אירוע לוח השנה נכשלה, בבקשה בדוק את הגדרות לוח השנה';

  @override
  String get calendar_permission_required =>
      'נדרשת גישה ליומן כדי להוסיף אירוע בדיקה';

  @override
  String get test_notification_sent => 'הודעת הבדיקה נשלחה';

  @override
  String test_notification_failed(String error) {
    return 'שליחת הודעת הבדיקה נכשלה: $error';
  }

  @override
  String get notification_permission_required =>
      'יש צורך בהרשאת התראות כדי להפעיל תזכורות מקומיות';

  @override
  String operation_failed(String error) {
    return 'הפעולה נכשלה: $error';
  }

  @override
  String get notification_channel_name => 'התראה על פריט';

  @override
  String get notification_channel_description =>
      'התראה על פג תוקף או אחריות של מוצרים';

  @override
  String get item_category_food => 'מזון';

  @override
  String get item_category_daily_necessities => 'מוצרי בית יומיים';

  @override
  String get item_category_cosmetics => 'קוסמטיקה';

  @override
  String get item_category_medicine => 'תרופות';

  @override
  String get item_category_electronics => 'מוצרי אלקטרוניקה';

  @override
  String get item_category_furniture => 'ריהוט';

  @override
  String get item_category_clothing => 'ביגוד';

  @override
  String get item_category_books => 'ספרים';

  @override
  String get item_category_other => 'אחר';

  @override
  String get purchase_channel_online_mall => 'חנות מקוונת';

  @override
  String get purchase_channel_physical_store => 'חנות פיזית';

  @override
  String get purchase_channel_supermarket => 'סופרמרקט';

  @override
  String get purchase_channel_specialty_store => 'חנות בלעדית';

  @override
  String get purchase_channel_secondhand_market => 'שוק יד שנייה';

  @override
  String get purchase_channel_other => 'אחר';

  @override
  String get default_category => 'אחר';

  @override
  String get default_purchase_channel => 'חנות מקוונת';

  @override
  String get item_category => 'מיון פריטים';

  @override
  String get custom_category => 'קטגוריה מותאמת אישית';

  @override
  String get backup_data => 'גיבוי נתונים';

  @override
  String get backup_data_description =>
      'לארוז את כל הנתונים (כולל תמונות) כקובץ ZIP לגיבוי';

  @override
  String get backup_all_data => 'גיבוי כל הנתונים';

  @override
  String get backup_success => 'גיבוי הצליח';

  @override
  String backup_failed(String error) {
    return 'גיבוי נכשל: $error';
  }

  @override
  String get restore_data => 'שחזור נתונים';

  @override
  String get restore_data_description => 'שחזר את כל הנתונים מקובץ הגיבוי ZIP';

  @override
  String get export_data => 'ייצוא נתונים';

  @override
  String get export_data_description => 'ייצוא לפורמטים CSV, TXT, SQL';

  @override
  String get import_data => 'ייבוא נתונים';

  @override
  String get import_data_description => 'ייבוא נתונים מקבצי CSV, TXT, SQL';

  @override
  String get alert_settings_description => 'הגדרות תזכורות בלוח שנה ובאפליקציה';

  @override
  String get about => 'על';

  @override
  String get about_description => 'מידע על יישום וגרסה';

  @override
  String get select_backup_file_first => 'אנא בחר תחילה את קובץ הגיבוי';

  @override
  String get confirm_restore => 'אשר שחזור';

  @override
  String get confirm_restore_message =>
      'שחזור הגיבוי ימחוק את כל הנתונים הקיימים ויחליף אותם בנתוני הגיבוי, פעולה זו אינה ניתנת לביטול. האם אתה בטוח שברצונך להמשיך?';

  @override
  String get confirm_again => 'לאשר שוב';

  @override
  String get confirm_restore_warning =>
      'האם אתה בטוח שברצונך למחוק את כל הנתונים הקיימים ולשחזר את הגיבוי? פעולה זו לא ניתנת לשחזור!';

  @override
  String get confirm_restore_button => 'אשר כדי לשחזר';

  @override
  String restore_success(int count) {
    return 'שחזור הצליח, סך הכל $count פריטים';
  }

  @override
  String restore_failed(String error) {
    return 'השחזור נכשל: $error';
  }

  @override
  String get select_backup_file => 'בחר קובץ גיבוי';

  @override
  String get restore_backup => 'שחזור גיבוי';

  @override
  String selected_file(String filename) {
    return 'הקובץ שנבחר: $filename';
  }

  @override
  String get export_success => 'ייצוא הנתונים הצליח';

  @override
  String export_failed(String error) {
    return 'הייצוא נכשל: $error';
  }

  @override
  String get format_csv => 'CSV';

  @override
  String get format_txt => 'TXT';

  @override
  String get format_sql => 'SQL';

  @override
  String get duplicate_data_handling => 'טיפול בנתונים כפולים';

  @override
  String get duplicate_data_detected =>
      'זוהו נתונים כפולים, אנא בחרו את אופן הטיפול:';

  @override
  String get skip => 'דלג';

  @override
  String get overwrite => 'לכסות';

  @override
  String get skip_all => 'דלג על הכל';

  @override
  String get overwrite_all => 'כיסוי מלא';

  @override
  String get select_import_format_first => 'אנא בחר תחילה את פורמט הייבוא';

  @override
  String get confirm_import => 'אשר ייבוא';

  @override
  String get confirm_import_message =>
      'ייבוא הנתונים ידרוס את הנתונים הקיימים, פעולה זו אינה ניתנת לביטול. האם אתה בטוח שברצונך להמשיך?';

  @override
  String import_success(int count) {
    return 'ייבוא הנתונים הצליח, סך הכל יובאו $count פריטים';
  }

  @override
  String import_failed(String error) {
    return 'הייבוא נכשל: $error';
  }

  @override
  String get select_file => 'בחר קובץ';

  @override
  String get no_data => 'אין נתונים זמינים';

  @override
  String get no_data_description =>
      'כרגע אין נתונים, הקש על הכפתור למטה להוספת הרשומה הראשונה!';

  @override
  String get load_failed => 'טעינה נכשלה';

  @override
  String get load_failed_description =>
      'טעינת הנתונים נכשלה, אנא בדוק את חיבור הרשת ונסה שוב';

  @override
  String get retry => 'נסה שוב';

  @override
  String get network_connection_failed => 'כשל בחיבור לרשת';

  @override
  String get network_connection_failed_description =>
      'אנא בדוק את חיבור האינטרנט ונסה שוב';

  @override
  String get no_results => 'לא נמצאו תוצאות';

  @override
  String get no_results_description => 'נסה לחפש במילות מפתח אחרות';

  @override
  String get clear_search => 'נקה חיפוש';

  @override
  String get insufficient_permission => 'הרשאות לא מספיקות';

  @override
  String get insufficient_permission_description =>
      'יש צורך בהרשאות מתאימות כדי להשתמש בתכונה זו';

  @override
  String get request_permission => 'בקשת הרשאה';

  @override
  String get app_info => 'מידע על האפליקציה';

  @override
  String get version => 'גרסה';

  @override
  String get developer => 'מפתח';

  @override
  String get device_info => 'מידע על המכשיר';

  @override
  String get device_model => 'דגם הציוד';

  @override
  String get brand => 'מותג';

  @override
  String get device_name => 'שם המכשיר';

  @override
  String get product => 'מוצר';

  @override
  String get hardware => 'חומרה';

  @override
  String get android_version => 'גרסת אנדרואיד';

  @override
  String get sdk_version => 'גרסת SDK';

  @override
  String get system_name => 'שם המערכת';

  @override
  String get operating_system => 'מערכת הפעלה';

  @override
  String get system_version => 'גרסת מערכת';

  @override
  String get dart_version => 'גרסת Dart';

  @override
  String get device_identifier => 'זיהוי מכשיר';

  @override
  String get computer_name => 'שם מחשב';

  @override
  String get build_number => 'גרסת מספר';

  @override
  String error_getting_device_info(String error) {
    return 'לא ניתן לקבל מידע על המכשיר: $error';
  }

  @override
  String get features => 'מבוא לתפקוד';

  @override
  String get app_description => 'יישום לניהול חפצים חכמים';

  @override
  String get app_description_detail =>
      'לעזור לך לנהל את תאריכי התפוגה, תאריכי האחריות וכו\' של הפריטים, ולספק פונקציית תזכורת חכמה.';

  @override
  String get consumable => 'ציוד מתכלה';

  @override
  String get durable => 'מוצר עמיד';

  @override
  String get sort => 'מיון';

  @override
  String get name_asc => 'מיון לפי שם בסדר עולה';

  @override
  String get name_desc => 'מיון לפי שם בסדר יורד';

  @override
  String get date_asc => 'סדר עולה לפי תאריך';

  @override
  String get date_desc => 'סדר יורד לפי תאריך';

  @override
  String get price_asc => 'מיון לפי מחיר יחידה בסדר עולה';

  @override
  String get price_desc => 'מיון לפי מחיר יחידה בסדר יורד';

  @override
  String get quantity_asc => 'סדר עולה לפי כמות';

  @override
  String get quantity_desc => 'סדר יורד לפי כמות';

  @override
  String get total_price_asc => 'מחיר כולל בסדר עולה';

  @override
  String get total_price_desc => 'מיון לפי מחיר כולל מהגבוה לנמוך';

  @override
  String get clear_all_filters => 'נקה את כל המסננים';

  @override
  String get scan_barcode => 'סרוק כדי להכניס למלאי';

  @override
  String get search_items => 'חיפוש פריטים...';

  @override
  String get no_items => 'אין פריטים זמינים';

  @override
  String get no_items_description =>
      'לחץ על הכפתור למטה כדי להוסיף את הפריט הראשון';

  @override
  String get expired => 'פג תוקף';

  @override
  String get expiring_soon => 'עוד מעט פג תוקף';

  @override
  String get warranty_expired => 'הזמן לשירות תחזוקה כבר פג';

  @override
  String get warranty_expiring_soon => 'אחריות עומדת לפוג';

  @override
  String days_remaining(int count) {
    return 'נותרו $count ימים';
  }

  @override
  String expired_days_ago(int count) {
    return 'פג תוקף $count ימים';
  }

  @override
  String get delete_item => 'מחק פריט';

  @override
  String delete_item_confirm(String name) {
    return 'האם אתה בטוח שברצונך למחוק את \"$name\"?';
  }

  @override
  String get item_deleted => 'הפריט נמחק';

  @override
  String get failed_to_delete => 'המחיקה נכשלה';

  @override
  String failed_to_delete_message(String error) {
    return 'לא ניתן למחוק את הפריט: $error';
  }

  @override
  String get date_range_filter => 'סינון לפי טווח תאריכים';

  @override
  String get price_range_filter => 'סינון לפי טווח מחירים';

  @override
  String get my_items => 'החפצים שלי';

  @override
  String get click_fab_to_add_item =>
      'לחץ על הכפתור בפינה הימנית התחתונה כדי להוסיף פריט';

  @override
  String get confirm_delete => 'אשר מחיקה';

  @override
  String get filter_options => 'אפשרויות סינון';

  @override
  String get filter_by_type_category_location =>
      'לסנן פריטים לפי סוג, קטגוריה ומיקום';

  @override
  String categories_count(int count) {
    return '$count קטגוריות';
  }

  @override
  String get all_categories => 'כל הקטגוריות';

  @override
  String get no_category_data => 'אין נתונים לפי קטגוריה';

  @override
  String get storage_location => 'מקום אחסון';

  @override
  String locations_count(int count) {
    return '$count מקומות';
  }

  @override
  String get all_locations => 'כל המקומות';

  @override
  String get no_location_data => 'אין נתוני מיקום זמינים';

  @override
  String get date_range => 'טווח תאריכים';

  @override
  String get select_date_range => 'בחר טווח תאריכים';

  @override
  String get price_range => 'טווח מחירים';

  @override
  String get unit_price_range => 'טווח מחירים ליחידה';

  @override
  String get min_unit_price => 'מחיר ליחידה המינימלי';

  @override
  String get max_unit_price => 'מחיר ליחידה הגבוה ביותר';

  @override
  String get total_price_range => 'טווח המחיר הכולל';

  @override
  String get min_total_price => 'מחיר כולל מינימלי';

  @override
  String get max_total_price => 'מחיר כולל מקסימלי';

  @override
  String get clear_price_filter => 'נקה את מסנן המחיר';

  @override
  String get place_barcode_in_frame => 'הכנס את הברקוד למסגרת כדי לסרוק';

  @override
  String get item_already_exists => 'המוצר כבר קיים';

  @override
  String barcode_with_value(String barcode) {
    return 'קוד בר: $barcode';
  }

  @override
  String name_with_value(String name) {
    return 'שם: $name';
  }

  @override
  String category_with_value(String category) {
    return 'קטגוריה: $category';
  }

  @override
  String current_quantity_with_value(String quantity, String unit) {
    return 'כמות נוכחית: $quantity$unit';
  }

  @override
  String get please_select_operation => 'אנא בחר פעולה:';

  @override
  String get outbound => 'יציאה מהמלאי';

  @override
  String get inbound => 'כניסה למחסן';

  @override
  String get inbound_quantity => 'כמות שנכנסה למלאי';

  @override
  String get outbound_quantity => 'כמות יצוא מהמלאי';

  @override
  String get quantity => 'כמות';

  @override
  String get enter_inbound_quantity => 'אנא הזן את כמות הכניסה למלאי';

  @override
  String get enter_outbound_quantity => 'אנא הזן את כמות היצוא מהמלאי';

  @override
  String delete_item_confirm_with_irreversible(String name) {
    return 'האם אתה בטוח שברצונך למחוק את \"$name\"? פעולה זו אינה ניתנת לביטול.';
  }

  @override
  String get database_reset => 'מאגר הנתונים אופס, הטבלאות ייבנו מחדש';

  @override
  String database_reset_error(String error) {
    return 'שגיאה בעת איפוס מסד הנתונים: $error';
  }

  @override
  String mock_data_init_failed(String error) {
    return 'אתחול נתוני הדמיה נכשל: $error';
  }

  @override
  String get solution_steps => 'פתרון:';

  @override
  String get solution_step_1 => '1. הסר את ההתקנה של האפליקציה והתקן אותה מחדש';

  @override
  String get solution_step_2 => '2. או לנקות נתוני אפליקציה';

  @override
  String get solution_step_3 =>
      '3. או להגדיר את resetDatabaseOnStart ל-true ואז להפעיל מחדש';

  @override
  String notification_service_init_failed(String error) {
    return 'נכשל אתחול שירות התזכורות: $error';
  }

  @override
  String check_calendar_account_failed(String error) {
    return 'נכשל בבדיקת חשבון הלוח: $error';
  }

  @override
  String create_calendar_failed(String error) {
    return 'יצירת לוח שנה נכשלה: $error';
  }

  @override
  String add_calendar_event_failed(String error) {
    return 'הוספת אירוע ללוח השנה נכשלה: $error';
  }

  @override
  String delete_calendar_event_failed(String error) {
    return 'נכשל במחיקת אירוע לוח שנה: $error';
  }

  @override
  String set_permission_message_failed(String error) {
    return 'נכשל בהגדרת הודעת רשות: $error';
  }

  @override
  String mock_data_init_success(int count) {
    return 'הצליח לאתחל $count פריטי נתונים מדומים';
  }

  @override
  String database_has_data(int count) {
    return 'בבסיס הנתונים קיימים $count רשומות, דילוג על אתחול נתוני הדמיה';
  }

  @override
  String get database_structure_mismatch =>
      'יכול להיות שמבנה מסד הנתונים אינו תואם, מומלץ לנקות את נתוני האפליקציה או להתקין מחדש';

  @override
  String get old_database_deleted => 'קובץ מסד הנתונים הישן נמחק';

  @override
  String get backup_data_empty => 'הגיבוי של הנתונים ריק';

  @override
  String get backup_file_not_found => 'קובץ הגיבוי לא קיים';

  @override
  String file_not_utf8(String error) {
    return 'קידוד הקובץ אינו בפורמט UTF-8 חוקי. ודא שהקובץ נשמר בקידוד UTF-8. פרטי השגיאה: $error';
  }

  @override
  String file_not_found(String filePath) {
    return 'הקובץ לא קיים: $filePath';
  }

  @override
  String file_empty(String filePath) {
    return 'הקובץ ריק: $filePath';
  }

  @override
  String get file_content_empty =>
      'התוכן של הקובץ ריק לאחר הפענוח, ייתכן שאין התאמה בקידוד';

  @override
  String field_cannot_be_empty(String fieldName) {
    return '$fieldName לא יכול להיות ריק';
  }

  @override
  String field_min_length(String fieldName, int minLength) {
    return '$fieldName אורך לא יכול להיות פחות מ-$minLength תווים';
  }

  @override
  String field_max_length(String fieldName, int maxLength) {
    return '$fieldName לא יכול להיות ארוך מ-$maxLength תווים';
  }

  @override
  String field_invalid_email(String fieldName) {
    return 'אנא הזן כתובת $fieldName חוקית';
  }

  @override
  String field_invalid_number(String fieldName, String numberType) {
    return '$fieldName חייב להיות $numberType';
  }

  @override
  String field_min_value(String fieldName, double min) {
    return '$fieldName לא יכול להיות פחות מ-$min';
  }

  @override
  String field_max_value(String fieldName, double max) {
    return '$fieldName לא יכול להיות גדול מ-$max';
  }

  @override
  String field_positive_integer(String fieldName) {
    return '$fieldName חייב להיות מספר שלם חיובי';
  }

  @override
  String field_greater_than_zero(String fieldName) {
    return '$fieldName חייב להיות גדול מ-0';
  }

  @override
  String field_positive_number(String fieldName) {
    return '$fieldName חייב להיות מספר חיובי';
  }

  @override
  String field_invalid_date(String fieldName) {
    return 'אנא הזן $fieldName תקף';
  }

  @override
  String field_date_not_past(String fieldName) {
    return '$fieldName לא יכול להיות תאריך מהעבר';
  }

  @override
  String field_date_not_before(String fieldName, String minDate) {
    return '$fieldName לא יכול להיות מוקדם מ-$minDate';
  }

  @override
  String field_date_not_after(String fieldName, String maxDate) {
    return '$fieldName לא יכול להיות מאוחר מ-$maxDate';
  }

  @override
  String field_invalid_value(String fieldName) {
    return 'אנא הזן $fieldName תקף';
  }

  @override
  String password_min_length(String fieldName) {
    return '$fieldName האורך לא יכול להיות פחות מ-8 תווים';
  }

  @override
  String password_uppercase_required(String fieldName) {
    return '$fieldName חייב לכלול לפחות אות אחת גדולה';
  }

  @override
  String password_lowercase_required(String fieldName) {
    return '$fieldName חייב לכלול לפחות אות קטנה אחת';
  }

  @override
  String password_digit_required(String fieldName) {
    return '$fieldName חייב לכלול לפחות מספר אחד';
  }

  @override
  String password_special_char_required(String fieldName) {
    return '$fieldName חייב לכלול לפחות תו מיוחד אחד';
  }

  @override
  String get passwords_not_match => 'סיסמאות שהוזנו פעמיים אינן זהות';

  @override
  String get item_name_cannot_be_empty => 'שם הפריט לא יכול להיות ריק';

  @override
  String name_max_length(int maxLength) {
    return 'השֵם לא יכול לעלות על $maxLength תווים';
  }

  @override
  String quantity_min(int minQuantity) {
    return 'הכמות לא יכולה להיות פחות מ$minQuantity';
  }

  @override
  String quantity_max(int maxQuantity) {
    return 'הכמות לא יכולה להיות יותר מ־$maxQuantity';
  }

  @override
  String get unit_price_not_negative => 'המחיר ליחידה לא יכול להיות מספר שלילי';

  @override
  String unit_price_max(double maxUnitPrice) {
    return 'המחיר ליחידה לא יכול לעלות על $maxUnitPrice';
  }

  @override
  String get set_production_expiry_for_validity =>
      'אנא קבע את תאריך הייצור ותוקף כדי לחשב אוטומטית את תקופת התוקף';

  @override
  String get set_purchase_warranty_for_validity =>
      'אנא הגדר את תאריך הרכישה ותוקף המוצר כדי לחשב אוטומטית את תקופת האחריות';

  @override
  String get calendar_account_creation_failed =>
      'לא ניתן ליצור חשבון לוח שנה, אנא בדוק את הגדרות לוח השנה של המערכת';

  @override
  String get test_notification => 'התראה לבדיקת';

  @override
  String get test_notification_description =>
      'זוהי הודעת בדיקה, לשם אימות פונקציית התזכורות המקומיות';

  @override
  String get day_unit => 'שמיים';

  @override
  String days_with_value(int days) {
    return '$days ימים';
  }

  @override
  String get item_saved => 'הפריט נשמר';

  @override
  String get item_updated => 'הפריט עודכן';

  @override
  String get item_added => 'הפריט נוסף';

  @override
  String get save_success => 'שמירה הצליחה';

  @override
  String get update_success => 'העדכון הצליח';

  @override
  String get delete_success => 'נמחק בהצלחה';

  @override
  String get save_failed => 'שמירה נכשלה';

  @override
  String get update_failed => 'העדכון נכשל';

  @override
  String get delete_failed => 'המחיקה נכשלה';

  @override
  String get test_calendar_event => 'בדיקת אירוע לוח שנה';

  @override
  String get test_calendar_event_description =>
      'זהו אירוע בדיקה, המשמש לאימות פונקציית היומן';

  @override
  String get in_app => 'בתוך האפליקציה';

  @override
  String get enable_alert => 'הפעל תזכורת פקיעה';

  @override
  String get alert_method => 'דרך התראה';

  @override
  String get alert_method_in_app => 'ביישום בלבד';

  @override
  String get alert_method_calendar => 'לוח שנה בלבד';

  @override
  String get alert_method_both => 'שניהם';

  @override
  String get alert_days_before => 'מספר הימים להודעה מוקדמת';

  @override
  String get use_global_setting => 'השתמש בהגדרות הגלובליות';

  @override
  String get barcode_label => 'קוד בר';

  @override
  String get name_label => 'שם';

  @override
  String get category_label => 'סיווג';

  @override
  String get current_quantity => 'כמות נוכחית';

  @override
  String get select_operation => 'אנא בחר פעולה';

  @override
  String get unit => 'יחידה';

  @override
  String get custom_unit => 'יחידה מותאמת אישית';

  @override
  String get enter_unit => 'אנא הזן יחידה';

  @override
  String get custom_location => 'מקום מותאם אישית';

  @override
  String get enter_storage_location => 'אנא הזן את מיקום האחסון';

  @override
  String get scan => 'סרוק את הקוד';

  @override
  String get scan_to_stock => 'סרוק כדי להכניס למלאי';

  @override
  String get item_categories => 'מיון פריטים';

  @override
  String get storage_locations => 'מקום אחסון';

  @override
  String get place_barcode_in_frame_to_scan =>
      'הכנס את הברקוד למסגרת כדי לסרוק';

  @override
  String get barcode => 'קוד בר';

  @override
  String get enter_barcode_or_scan => 'אנא הזן את הברקוד או סרוק אותו';

  @override
  String get basic_information => 'מידע בסיסי';

  @override
  String get item_name => 'שם הפריט';

  @override
  String get enter_item_name => 'אנא הזן את שם הפריט';

  @override
  String get enter_category_name => 'אנא הזן את שם הסיווג';

  @override
  String item_increased(String itemName, String quantity, String unit) {
    return 'נוסף $itemName $quantity$unit';
  }

  @override
  String item_decreased(String itemName, String quantity, String unit) {
    return 'צומצם ב-$itemName $quantity$unit';
  }

  @override
  String get unsaved_changes => 'שינויים שלא נשמרו';

  @override
  String get unsaved_changes_message =>
      'יש לכם שינויים שלא נשמרו, אנא בחרו פעולה:';

  @override
  String get discard => 'ויתר';

  @override
  String get unit_piece => 'יחידה';

  @override
  String get unit_item => 'פריט';

  @override
  String get unit_box => 'קופסה';

  @override
  String get unit_package => 'תיק';

  @override
  String get unit_bottle => 'בקבוק';

  @override
  String get unit_carton => 'קופסה';

  @override
  String get unit_set => 'סט';

  @override
  String get unit_kg => 'ק\"ג';

  @override
  String get unit_g => 'ג';

  @override
  String get unit_l => 'L';

  @override
  String get unit_ml => 'טחנה';

  @override
  String get unit_m => 'מ';

  @override
  String get unit_cm => 'סימ';

  @override
  String get quantity_label => 'כמות';

  @override
  String get unit_price_label => 'מחיר יחידה';

  @override
  String get currency_label => 'מטבע';

  @override
  String get total_price_label => 'מחיר כולל:';

  @override
  String get storage_location_label => 'מקום אחסון';

  @override
  String get item_properties => 'מאפייני פריט';

  @override
  String get expiry_date_label => 'תוקף';

  @override
  String get warranty_expiry_date_label => 'תאריך תפוגת האחריות';

  @override
  String get production_date_label => 'תאריך ייצור';

  @override
  String get purchase_date_label => 'תאריך הקנייה';

  @override
  String auto_calculated_from(String dateType) {
    return 'חישוב אוטומטי בהתאם ל$dateType ולתוקף';
  }

  @override
  String get auto_calculated => 'חישוב אוטומטי';

  @override
  String get images_label => 'תמונה';

  @override
  String get notes_label => 'הערה';

  @override
  String get add_notes_hint => 'הוסף הערות (לא חובה)';

  @override
  String get year_label => 'שנה';

  @override
  String get month_label => 'ירח';

  @override
  String get day_label => 'שמיים';

  @override
  String selected_count(int count) {
    return 'נבחרו $count פריטים';
  }

  @override
  String get select_all => 'בחר הכל';

  @override
  String get deselect_all => 'בטל בחירה הכול';

  @override
  String get batch_change_location => 'החלפת מיקום אחסון בכמות גדולה';

  @override
  String confirm_delete_selected(int count) {
    return 'האם למחוק את ה-$count פריטים שנבחרו?';
  }

  @override
  String deleted_count_items(int count) {
    return 'נמחקו $count פריטים';
  }

  @override
  String get no_storage_location_available => 'אין מיקום אחסון זמין';

  @override
  String get batch_change_location_title => 'החלפת מיקום אחסון בכמות גדולה';

  @override
  String moved_count_items_to_location(int count, String location) {
    return 'כבר הועברו $count פריטים אל $location';
  }

  @override
  String get operation_type_create => 'הזנה';

  @override
  String get operation_type_update => 'ערוך';

  @override
  String get operation_type_delete => 'מחק';

  @override
  String get operation_type_inbound => 'כניסה למחסן';

  @override
  String get operation_type_outbound => 'יציאה מהמלאי';

  @override
  String export_failed_message(String error) {
    return 'ייצוא נכשל: $error';
  }

  @override
  String get clear_logs => 'נקה יומנים';

  @override
  String get confirm_clear_logs =>
      'האם אתה בטוח שברצונך למחוק את כל יומני הפעולות? פעולה זו אינה ניתנת לשחזור.';

  @override
  String get logs_cleared => 'יומן נמחק';

  @override
  String get operation_logs_title => 'יומן פעולות';

  @override
  String get export_logs => 'ייצוא יומן';

  @override
  String get clear_logs_tooltip => 'נקה יומנים';

  @override
  String get no_operation_logs => 'אין יומן פעולות זמני';

  @override
  String get log_item_label => 'פריטים:';

  @override
  String get log_category_label => 'קטגוריה:';

  @override
  String get log_type_label => 'סוג:';

  @override
  String get log_quantity_label => 'כמות:';

  @override
  String get log_unit_price_label => 'מחיר ליחידה:';

  @override
  String get log_total_price_label => 'מחיר כולל:';

  @override
  String get log_expiry_date_label => 'תאריך תפוגה:';

  @override
  String get log_warranty_date_label => 'תאריך אחריות:';

  @override
  String get log_purchase_date_label => 'תאריך רכישה:';

  @override
  String get log_production_date_label => 'תאריך ייצור:';

  @override
  String get log_shelf_life_label => 'תאריך תפוגה:';

  @override
  String get log_storage_location_label => 'מקום אחסון:';

  @override
  String get log_barcode_label => 'ברקוד:';

  @override
  String get log_notes_label => 'הערה:';

  @override
  String get log_alert_label => 'אזהרה מוקדמת:';

  @override
  String get log_alert_days_label => 'מספר ימי האזהרה:';

  @override
  String get log_quantity_change_label => 'שינוי בכמות:';

  @override
  String get log_field_changes_label => 'ערוך שדה:';

  @override
  String get log_not_set => 'לא הוגדר';

  @override
  String get log_empty => 'ריק';

  @override
  String get log_alert_enabled => 'להפעיל';

  @override
  String get log_alert_disabled => 'סגור';

  @override
  String get operation_logs_menu => 'יומן פעולות';

  @override
  String get operation_logs_description => 'צפה ושחזר את רשומות הפעולה';

  @override
  String operation_failed_message(String error) {
    return 'הפעולה נכשלה: $error';
  }

  @override
  String get no_date => 'ללא תאריך';

  @override
  String get shelf_life_months_suffix => 'חודשים';

  @override
  String get shelf_life_days_suffix => 'שמיים';

  @override
  String get alert_days_suffix => 'שמיים';

  @override
  String get unknown => 'לא נודע';

  @override
  String get developer_name => 'ליאו';

  @override
  String get log_operation_date_label => 'תאריך הפעלה:';

  @override
  String get uncategorized => 'לא מסווג';

  @override
  String get no_location => 'ללא מקום';

  @override
  String get item_category_cannot_be_empty => 'סיווג הפריטים לא יכול להיות ריק';

  @override
  String get storage_location_cannot_be_empty =>
      'מיקום האחסון לא יכול להיות ריק';

  @override
  String get created_at_asc => 'הוסף לפי סדר עלייה של זמן';

  @override
  String get created_at_desc => 'הוסף לפי סדר זמן יורד';

  @override
  String get location_management => 'ניהול מחסן';

  @override
  String get private_warehouses => 'מאגר פרטי';

  @override
  String get public_warehouses => 'ספרייה ציבורית';

  @override
  String get is_public_warehouse => 'ספרייה ציבורית';

  @override
  String get public_warehouse_desc =>
      'בספרייה הציבורית אין מנהל, ביציאת או כניסת מוצרים יש למלא את שם המפעיל';

  @override
  String get manager => 'מנהל';

  @override
  String get not_set => 'לא הוגדר';

  @override
  String get edit_location => 'ספריית עורך';

  @override
  String get location_name => 'שם הספרייה';

  @override
  String get manager_name => 'שם המנהל';

  @override
  String get enter_manager_name => 'אנא הזן את שם המנהל';

  @override
  String get manager_name_required => 'שם המנהל לא יכול להיות ריק';

  @override
  String delete_location_confirm(String name) {
    return 'האם אתה בטוח שברצונך למחוק את הספרייה «$name»?';
  }

  @override
  String get delete_location_has_items =>
      'בספרייה זו עדיין יש פריטים, אי אפשר למחוק';

  @override
  String get default_manager => 'מנהלה ברירת מחדל';

  @override
  String get default_manager_desc =>
      'המנהל המוגדר כברירת מחדל בעת יצירת מאגר פרטי חדש';

  @override
  String get enter_default_manager => 'אנא הזן את שם מנהל ברירת המחדל';

  @override
  String get operator_name => 'שם המפעיל';

  @override
  String get enter_operator_name => 'אנא הזן את שם המפעיל';

  @override
  String get operator_name_required => 'שם המפעיל לא יכול להיות ריק';

  @override
  String get no_manager => 'ללא מנהל';

  @override
  String get log_operator_label => 'מפעיל:';

  @override
  String get outbound_quantity_exceeds_current =>
      'כמות היציאה מהמלאי לא יכולה לעלות על המלאי הנוכחי';
}
