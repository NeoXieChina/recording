// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Thai (`th`).
class AppLocalizationsTh extends AppLocalizations {
  AppLocalizationsTh([String locale = 'th']) : super(locale);

  @override
  String get app_name => 'เก็บของในพื้นที่เล็กๆ';

  @override
  String get cancel => 'ยกเลิก';

  @override
  String get confirm => 'ยืนยัน';

  @override
  String get save => 'บันทึก';

  @override
  String get delete => 'ลบ';

  @override
  String get edit => 'แก้ไข';

  @override
  String get add => 'เพิ่ม';

  @override
  String get edit_item => 'แก้ไขรายการ';

  @override
  String get add_item => 'เพิ่มสิ่งของ';

  @override
  String get search => 'ค้นหา';

  @override
  String get settings => 'การตั้งค่า';

  @override
  String get language_settings => 'การตั้งค่าภาษา';

  @override
  String get language_settings_description => 'ตั้งค่าภาษาการแสดงผลของแอป';

  @override
  String get system_default => 'ค่าเริ่มต้นของระบบ';

  @override
  String get use_system_language => 'ใช้ภาษาของระบบ';

  @override
  String get language_change_hint =>
      'การเปลี่ยนภาษาจะมีผลหลังจากแอปพลิเคชันรีสตาร์ท';

  @override
  String get back => 'กลับ';

  @override
  String get next => 'ขั้นตอนถัดไป';

  @override
  String get done => 'เสร็จสิ้น';

  @override
  String get loading => 'กำลังโหลด...';

  @override
  String get error => 'ข้อผิดพลาด';

  @override
  String get success => 'ความสำเร็จ';

  @override
  String get warning => 'คำเตือน';

  @override
  String get info => 'ข้อมูล';

  @override
  String get select_alert_days => 'เลือกจำนวนวันเตือน';

  @override
  String get custom => 'ปรับแต่งเอง';

  @override
  String custom_days(int days) {
    return 'กำหนดเอง ($days วัน)';
  }

  @override
  String current_selection(int days) {
    return 'ตัวเลือกปัจจุบัน: $days วัน';
  }

  @override
  String alert_days_range(int min, int max) {
    return 'ช่วงวันเตือนความจำ: $min-$max วัน';
  }

  @override
  String get enter_days => 'กรุณาใส่จำนวนวันเตือน';

  @override
  String get days => 'จำนวนวัน';

  @override
  String enter_valid_days(int min, int max) {
    return 'กรุณาป้อนตัวเลขระหว่าง $min ถึง $max';
  }

  @override
  String get alert_settings => 'การตั้งค่าการเตือนล่วงหน้า';

  @override
  String get calendar_settings => 'การตั้งค่าปฏิทิน';

  @override
  String get calendar_sync => 'ซิงค์ปฏิทิน';

  @override
  String get calendar_sync_desc => 'เปิดใช้แล้วจะขออนุญาตเข้าถึงปฏิทิน';

  @override
  String get add_test_calendar_event => 'เพิ่มเหตุการณ์ปฏิทินทดสอบ';

  @override
  String get enable_calendar_sync_first =>
      'โปรดเปิดสวิตช์ \'ซิงค์ปฏิทิน\' ก่อน';

  @override
  String get app_alert_settings => 'การตั้งค่าการแจ้งเตือนแอป';

  @override
  String get local_alerts => 'การแจ้งเตือนในเครื่อง';

  @override
  String get local_alerts_desc =>
      'เปิดใช้งานเพื่อรับการแจ้งเตือนภายในแอปเกี่ยวกับการหมดอายุ';

  @override
  String get send_test_notification => 'ส่งการแจ้งเตือนทดสอบ';

  @override
  String get enable_local_alerts_first =>
      'โปรดเปิดสวิตช์ \'เตือนความจำท้องถิ่น\' ก่อน';

  @override
  String get alert_days_settings => 'ตั้งค่าจำนวนวันที่เตือน';

  @override
  String get advance_alert_days => 'จำนวนวันที่แจ้งล่วงหน้า';

  @override
  String get advance_alert_days_desc =>
      'ตั้งค่าการเตือนล่วงหน้ากี่วันสำหรับสินค้าที่หมดอายุหรือหมดระยะประกัน';

  @override
  String get calendar_permission_request => 'คำขอสิทธิ์ปฏิทิน';

  @override
  String get calendar_permission_desc =>
      'ต้องการการเข้าถึงปฏิทินเพื่อซิงค์การแจ้งเตือนรายการ อนุญาตหรือไม่?';

  @override
  String get allow => 'อนุญาต';

  @override
  String get calendar_permission_granted =>
      'สิทธิ์ปฏิทินได้รับการอนุญาตแล้ว การซิงค์ปฏิทินถูกเปิดใช้งานแล้ว';

  @override
  String get calendar_permission_denied =>
      'การอนุญาตปฏิทินถูกปฏิเสธ ไม่สามารถเปิดการซิงโครไนซ์ปฏิทินได้';

  @override
  String get calendar_permission_permanently_denied =>
      'การเข้าถึงถูกปฏิเสธอย่างถาวร';

  @override
  String get calendar_permission_permanently_denied_desc =>
      'สิทธิ์ปฏิทินถูกปฏิเสธอย่างถาวร โปรดเปิดสิทธิ์ด้วยตนเองในการตั้งค่าของระบบ';

  @override
  String get go_to_settings => 'ไปที่การตั้งค่า';

  @override
  String get calendar_account_failed =>
      'สิทธิ์ปฏิทินได้รับการอนุญาตแล้ว แต่ไม่สามารถสร้างบัญชีปฏิทินได้ กรุณาตรวจสอบการตั้งค่าปฏิทินของระบบ';

  @override
  String get calendar_account_created =>
      'สิทธิ์ปฏิทินได้รับการอนุมัติแล้ว บัญชีปฏิทินท้องถิ่นถูกสร้างขึ้นแล้ว';

  @override
  String get calendar_account_creating =>
      'บัญชีปฏิทินสร้างเสร็จแล้ว แต่ระบบอาจต้องใช้เวลาสักครู่ในการมีผล';

  @override
  String get test_calendar_event_added => 'ทดสอบเพิ่มเหตุการณ์ในปฏิทินสำเร็จ';

  @override
  String get test_calendar_event_failed =>
      'การเพิ่มเหตุการณ์ปฏิทินสำหรับการทดสอบล้มเหลว กรุณาตรวจสอบการตั้งค่าปฏิทิน';

  @override
  String get calendar_permission_required =>
      'ต้องการสิทธิ์ปฏิทินเพื่อเพิ่มเหตุการณ์ทดสอบ';

  @override
  String get test_notification_sent => 'การแจ้งเตือนการทดสอบถูกส่งแล้ว';

  @override
  String test_notification_failed(String error) {
    return 'ส่งการแจ้งเตือนทดสอบล้มเหลว: $error';
  }

  @override
  String get notification_permission_required =>
      'จำเป็นต้องมีสิทธิ์ในการแจ้งเตือนเพื่อเปิดใช้งานการเตือนภายในเครื่อง';

  @override
  String operation_failed(String error) {
    return 'การดำเนินการล้มเหลว: $error';
  }

  @override
  String get notification_channel_name => 'การแจ้งเตือนสินค้าล่วงหน้า';

  @override
  String get notification_channel_description =>
      'การแจ้งเตือนสินค้าหมดอายุหรือเกินระยะรับประกัน';

  @override
  String get item_category_food => 'อาหาร';

  @override
  String get item_category_daily_necessities => 'ของใช้ประจำวัน';

  @override
  String get item_category_cosmetics => 'เครื่องสำอาง';

  @override
  String get item_category_medicine => 'ยา';

  @override
  String get item_category_electronics => 'ผลิตภัณฑ์อิเล็กทรอนิกส์';

  @override
  String get item_category_furniture => 'เฟอร์นิเจอร์';

  @override
  String get item_category_clothing => 'เสื้อผ้า';

  @override
  String get item_category_books => 'หนังสือ';

  @override
  String get item_category_other => 'อื่น ๆ';

  @override
  String get purchase_channel_online_mall => 'ช็อปปิ้งออนไลน์';

  @override
  String get purchase_channel_physical_store => 'ร้านค้าปลีก';

  @override
  String get purchase_channel_supermarket => 'ซูเปอร์มาร์เก็ต';

  @override
  String get purchase_channel_specialty_store => 'ร้านค้าเฉพาะ';

  @override
  String get purchase_channel_secondhand_market => 'ตลาดมือสอง';

  @override
  String get purchase_channel_other => 'อื่น ๆ';

  @override
  String get default_category => 'อื่น ๆ';

  @override
  String get default_purchase_channel => 'ช็อปปิ้งออนไลน์';

  @override
  String get item_category => 'การจัดหมวดหมู่ของสิ่งของ';

  @override
  String get custom_category => 'การจัดหมวดหมู่ที่กำหนดเอง';

  @override
  String get backup_data => 'สำรองข้อมูล';

  @override
  String get backup_data_description =>
      'บีบอัดข้อมูลทั้งหมด (รวมถึงรูปภาพ) เป็นไฟล์ ZIP สำหรับสำรอง';

  @override
  String get backup_all_data => 'สำรองข้อมูลทั้งหมด';

  @override
  String get backup_success => 'สำรองข้อมูลสำเร็จ';

  @override
  String backup_failed(String error) {
    return 'สำรองข้อมูลล้มเหลว: $error';
  }

  @override
  String get restore_data => 'กู้คืนข้อมูล';

  @override
  String get restore_data_description => 'กู้คืนข้อมูลทั้งหมดจากไฟล์สำรอง ZIP';

  @override
  String get export_data => 'ส่งออกข้อมูล';

  @override
  String get export_data_description => 'ส่งออกเป็นรูปแบบ CSV, TXT, SQL';

  @override
  String get import_data => 'นำเข้าข้อมูล';

  @override
  String get import_data_description => 'นำเข้าข้อมูลจากไฟล์ CSV, TXT, SQL';

  @override
  String get alert_settings_description =>
      'การตั้งค่าการแจ้งเตือนปฏิทินและการแจ้งเตือนแอป';

  @override
  String get about => 'เกี่ยวกับ';

  @override
  String get about_description => 'ข้อมูลแอปและเวอร์ชัน';

  @override
  String get select_backup_file_first => 'กรุณาเลือกไฟล์สำรองก่อน';

  @override
  String get confirm_restore => 'ยืนยันการกู้คืน';

  @override
  String get confirm_restore_message =>
      'การกู้คืนสำรองข้อมูลจะลบข้อมูลทั้งหมดที่มีอยู่และแทนที่ด้วยข้อมูลสำรอง การดำเนินการนี้ไม่สามารถย้อนกลับได้ คุณแน่ใจหรือว่าต้องการดำเนินการต่อ?';

  @override
  String get confirm_again => 'ยืนยันอีกครั้ง';

  @override
  String get confirm_restore_warning =>
      'คุณแน่ใจหรือว่าต้องการล้างข้อมูลทั้งหมดที่มีอยู่และกู้คืนจากสำรอง? การดำเนินการนี้ไม่สามารถกู้คืนได้!';

  @override
  String get confirm_restore_button => 'ยืนยันการกู้คืน';

  @override
  String restore_success(int count) {
    return 'กู้คืนสำเร็จ，共$count รายการ';
  }

  @override
  String restore_failed(String error) {
    return 'กู้คืนล้มเหลว: $error';
  }

  @override
  String get select_backup_file => 'เลือกไฟล์สำรอง';

  @override
  String get restore_backup => 'กู้คืนสำรองข้อมูล';

  @override
  String selected_file(String filename) {
    return 'ไฟล์ที่เลือก: $filename';
  }

  @override
  String get export_success => 'การส่งออกข้อมูลสำเร็จ';

  @override
  String export_failed(String error) {
    return 'ส่งออกล้มเหลว: $error';
  }

  @override
  String get format_csv => 'CSV';

  @override
  String get format_txt => 'TXT';

  @override
  String get format_sql => 'SQL';

  @override
  String get duplicate_data_handling => 'การประมวลผลข้อมูลซ้ำ';

  @override
  String get duplicate_data_detected =>
      'ตรวจพบข้อมูลซ้ำ กรุณาเลือกวิธีการจัดการ:';

  @override
  String get skip => 'ข้าม';

  @override
  String get overwrite => 'คลุม';

  @override
  String get skip_all => 'ข้ามทั้งหมด';

  @override
  String get overwrite_all => 'ครอบคลุมทั้งหมด';

  @override
  String get select_import_format_first => 'กรุณาเลือกประเภทการนำเข้า';

  @override
  String get confirm_import => 'ยืนยันการนำเข้า';

  @override
  String get confirm_import_message =>
      'การนำเข้าข้อมูลจะเขียนทับข้อมูลที่มีอยู่ การดำเนินการนี้ไม่สามารถย้อนกลับได้ คุณแน่ใจหรือไม่ว่าต้องการดำเนินการต่อ?';

  @override
  String import_success(int count) {
    return 'ข้อมูลนำเข้าเรียบร้อย จำนวนรวม $count รายการสินค้า';
  }

  @override
  String import_failed(String error) {
    return 'นำเข้าล้มเหลว: $error';
  }

  @override
  String get select_file => 'เลือกไฟล์';

  @override
  String get no_data => 'ไม่มีข้อมูล';

  @override
  String get no_data_description =>
      'ตอนนี้ยังไม่มีข้อมูล คลิกปุ่มด้านล่างเพื่อเพิ่มบันทึกแรกเลย!';

  @override
  String get load_failed => 'โหลดล้มเหลว';

  @override
  String get load_failed_description =>
      'การโหลดข้อมูลล้มเหลว กรุณาตรวจสอบการเชื่อมต่อเครือข่ายแล้วลองใหม่';

  @override
  String get retry => 'ลองใหม่';

  @override
  String get network_connection_failed => 'การเชื่อมต่อเครือข่ายล้มเหลว';

  @override
  String get network_connection_failed_description =>
      'โปรดตรวจสอบการเชื่อมต่อเครือข่ายแล้วลองอีกครั้ง';

  @override
  String get no_results => 'ไม่พบผลลัพธ์';

  @override
  String get no_results_description => 'ลองใช้คำค้นหาอื่น';

  @override
  String get clear_search => 'ล้างการค้นหา';

  @override
  String get insufficient_permission => 'ไม่มีสิทธิ์เพียงพอ';

  @override
  String get insufficient_permission_description =>
      'ต้องการสิทธิ์ที่เกี่ยวข้องในการใช้ฟีเจอร์นี้';

  @override
  String get request_permission => 'ขออนุญาต';

  @override
  String get app_info => 'ข้อมูลแอปพลิเคชัน';

  @override
  String get version => 'เวอร์ชัน';

  @override
  String get developer => 'นักพัฒนา';

  @override
  String get device_info => 'ข้อมูลอุปกรณ์';

  @override
  String get device_model => 'รุ่นอุปกรณ์';

  @override
  String get brand => 'แบรนด์';

  @override
  String get device_name => 'ชื่ออุปกรณ์';

  @override
  String get product => 'ผลิตภัณฑ์';

  @override
  String get hardware => 'ฮาร์ดแวร์';

  @override
  String get android_version => 'เวอร์ชัน Android';

  @override
  String get sdk_version => 'เวอร์ชัน SDK';

  @override
  String get system_name => 'ชื่อระบบ';

  @override
  String get operating_system => 'ระบบปฏิบัติการ';

  @override
  String get system_version => 'เวอร์ชันระบบ';

  @override
  String get dart_version => 'เวอร์ชัน Dart';

  @override
  String get device_identifier => 'รหัสอุปกรณ์';

  @override
  String get computer_name => 'ชื่อคอมพิวเตอร์';

  @override
  String get build_number => 'หมายเลขเวอร์ชัน';

  @override
  String error_getting_device_info(String error) {
    return 'ไม่สามารถดึงข้อมูลอุปกรณ์ได้: $error';
  }

  @override
  String get features => 'แนะนำฟังก์ชัน';

  @override
  String get app_description => 'แอปพลิเคชันจัดการสิ่งของอัจฉริยะ';

  @override
  String get app_description_detail =>
      'ช่วยคุณจัดการวันที่หมดอายุ วันที่รับประกัน และข้อมูลอื่น ๆ ของสิ่งของ พร้อมทั้งมีฟังก์ชันการแจ้งเตือนอัจฉริยะ';

  @override
  String get consumable => 'ของใช้สิ้นเปลือง';

  @override
  String get durable => 'สินค้าคงทน';

  @override
  String get sort => 'การจัดลำดับ';

  @override
  String get name_asc => 'เรียงตามชื่อจากน้อยไปมาก';

  @override
  String get name_desc => 'เรียงตามชื่อจากมากไปน้อย';

  @override
  String get date_asc => 'วันที่เรียงตามลำดับจากน้อยไปมาก';

  @override
  String get date_desc => 'วันที่เรียงลำดับจากมากไปน้อย';

  @override
  String get price_asc => 'ราคาต่อหน่วยจากน้อยไปมาก';

  @override
  String get price_desc => 'ราคาต่อหน่วยจากสูงไปต่ำ';

  @override
  String get quantity_asc => 'เรียงตามจำนวนจากน้อยไปมาก';

  @override
  String get quantity_desc => 'เรียงตามจำนวนจากมากไปน้อย';

  @override
  String get total_price_asc => 'ราคาทั้งหมดจากน้อยไปมาก';

  @override
  String get total_price_desc => 'ราคาทั้งหมดจากมากไปน้อย';

  @override
  String get clear_all_filters => 'ล้างตัวกรองทั้งหมด';

  @override
  String get scan_barcode => 'สแกนรหัสเพื่อเข้าคลัง';

  @override
  String get search_items => 'ค้นหาสินค้า...';

  @override
  String get no_items => 'ยังไม่มีสินค้า';

  @override
  String get no_items_description => 'คลิกปุ่มด้านล่างเพื่อเพิ่มรายการแรก';

  @override
  String get expired => 'หมดอายุแล้ว';

  @override
  String get expiring_soon => 'กำลังจะหมดอายุ';

  @override
  String get warranty_expired => 'การรับประกันหมดอายุแล้ว';

  @override
  String get warranty_expiring_soon => 'การรับประกันกำลังจะหมดอายุ';

  @override
  String days_remaining(int count) {
    return 'เหลือ $count วัน';
  }

  @override
  String expired_days_ago(int count) {
    return 'หมดอายุ $count วัน';
  }

  @override
  String get delete_item => 'ลบไอเท็ม';

  @override
  String delete_item_confirm(String name) {
    return 'คุณแน่ใจหรือว่าต้องการลบ\"$name\"?';
  }

  @override
  String get item_deleted => 'รายการถูกลบแล้ว';

  @override
  String get failed_to_delete => 'ลบไม่สำเร็จ';

  @override
  String failed_to_delete_message(String error) {
    return 'ไม่สามารถลบไอเท็ม: $error';
  }

  @override
  String get date_range_filter => 'การกรองช่วงวันที่';

  @override
  String get price_range_filter => 'การกรองช่วงราคา';

  @override
  String get my_items => 'ของของฉัน';

  @override
  String get click_fab_to_add_item => 'คลิกที่ปุ่มมุมล่างขวาเพื่อเพิ่มรายการ';

  @override
  String get confirm_delete => 'ยืนยันการลบ';

  @override
  String get filter_options => 'ตัวเลือกตัวกรอง';

  @override
  String get filter_by_type_category_location =>
      'กรองสิ่งของตามประเภท หมวดหมู่ และสถานที่';

  @override
  String categories_count(int count) {
    return '$count หมวดหมู่';
  }

  @override
  String get all_categories => 'หมวดหมู่ทั้งหมด';

  @override
  String get no_category_data => 'ยังไม่มีข้อมูลประเภท';

  @override
  String get storage_location => 'สถานที่เก็บ';

  @override
  String locations_count(int count) {
    return '$count สถานที่';
  }

  @override
  String get all_locations => 'สถานที่ทั้งหมด';

  @override
  String get no_location_data => 'ยังไม่มีข้อมูลสถานที่';

  @override
  String get date_range => 'ช่วงวันที่';

  @override
  String get select_date_range => 'เลือกช่วงวันที่';

  @override
  String get price_range => 'ช่วงราค';

  @override
  String get unit_price_range => 'ช่วงราคาต่อหน่วย';

  @override
  String get min_unit_price => 'ราคาต่ำสุด';

  @override
  String get max_unit_price => 'ราคาสูงสุดต่อหน่วย';

  @override
  String get total_price_range => 'ช่วงราคาทั้งหมด';

  @override
  String get min_total_price => 'ราคาต่ำสุดรวมทั้งหมด';

  @override
  String get max_total_price => 'ราคาสูงสุดรวม';

  @override
  String get clear_price_filter => 'ล้างตัวกรองราคา';

  @override
  String get place_barcode_in_frame => 'ใส่บาร์โค้ดไว้ในกรอบเพื่อต่อการสแกน';

  @override
  String get item_already_exists => 'สินค้ามีอยู่แล้ว';

  @override
  String barcode_with_value(String barcode) {
    return 'รหัสบาร์โค้ด: $barcode';
  }

  @override
  String name_with_value(String name) {
    return 'ชื่อ: $name';
  }

  @override
  String category_with_value(String category) {
    return 'ประเภท:$category';
  }

  @override
  String current_quantity_with_value(String quantity, String unit) {
    return 'จำนวนปัจจุบัน: $quantity$unit';
  }

  @override
  String get please_select_operation => 'กรุณาเลือกการดำเนินการ:';

  @override
  String get outbound => 'เบิกสินค้าออกจากคลัง';

  @override
  String get inbound => 'เข้าคลัง';

  @override
  String get inbound_quantity => 'จำนวนที่เข้าคลัง';

  @override
  String get outbound_quantity => 'จำนวนสินค้าที่ออกจากคลัง';

  @override
  String get quantity => 'จำนวน';

  @override
  String get enter_inbound_quantity =>
      'กรุณากรอกจำนวนสินค้าที่ต้องการนำเข้าคลัง';

  @override
  String get enter_outbound_quantity =>
      'กรุณากรอกจำนวนสินค้าที่ต้องการนำออกจากคลัง';

  @override
  String delete_item_confirm_with_irreversible(String name) {
    return 'คุณแน่ใจหรือไม่ว่าต้องการลบ \'$name\'? การดำเนินการนี้ไม่สามารถย้อนกลับได้';
  }

  @override
  String get database_reset =>
      'ฐานข้อมูลถูกรีเซ็ตแล้ว กำลังสร้างโครงสร้างตารางใหม่';

  @override
  String database_reset_error(String error) {
    return 'เกิดข้อผิดพลาดในการรีเซ็ตฐานข้อมูล: $error';
  }

  @override
  String mock_data_init_failed(String error) {
    return 'การเริ่มต้นข้อมูลจำลองล้มเหลว: $error';
  }

  @override
  String get solution_steps => 'แนวทางแก้ไข:';

  @override
  String get solution_step_1 => '1. ถอนการติดตั้งแอปแล้วติดตั้งใหม่';

  @override
  String get solution_step_2 => '2. หรือล้างข้อมูลแอป';

  @override
  String get solution_step_3 =>
      '3. หรืออาจตั้งค่า resetDatabaseOnStart เป็น true แล้วเรียกใช้งานใหม่';

  @override
  String notification_service_init_failed(String error) {
    return 'การเริ่มต้นบริการแจ้งเตือนล้มเหลว: $error';
  }

  @override
  String check_calendar_account_failed(String error) {
    return 'ตรวจสอบบัญชีปฏิทินล้มเหลว: $error';
  }

  @override
  String create_calendar_failed(String error) {
    return 'สร้างปฏิทินล้มเหลว: $error';
  }

  @override
  String add_calendar_event_failed(String error) {
    return 'เพิ่มเหตุการณ์ปฏิทินล้มเหลว: $error';
  }

  @override
  String delete_calendar_event_failed(String error) {
    return 'ลบเหตุการณ์ในปฏิทินล้มเหลว: $error';
  }

  @override
  String set_permission_message_failed(String error) {
    return 'ตั้งค่าข้อความแจ้งเตือนสิทธิ์ล้มเหลว: $error';
  }

  @override
  String mock_data_init_success(int count) {
    return 'ได้ทำการเริ่มต้นข้อมูลจำลอง $count รายการเรียบร้อยแล้ว';
  }

  @override
  String database_has_data(int count) {
    return 'ฐานข้อมูลมีข้อมูล $count รายการแล้ว ข้ามการเริ่มต้นข้อมูลจำลอง';
  }

  @override
  String get database_structure_mismatch =>
      'อาจเป็นเพราะโครงสร้างฐานข้อมูลไม่ตรงกัน แนะนำให้ล้างข้อมูลแอปหรือถอนการติดตั้งแล้วติดตั้งใหม่';

  @override
  String get old_database_deleted => 'ไฟล์ฐานข้อมูลเก่าได้ถูกลบแล้ว';

  @override
  String get backup_data_empty => 'ข้อมูลสำรองว่าง';

  @override
  String get backup_file_not_found => 'แฟ้มสำรองไม่พบ';

  @override
  String file_not_utf8(String error) {
    return 'รหัสไฟล์ไม่ใช่รูปแบบ UTF-8 ที่ถูกต้อง โปรดตรวจสอบให้แน่ใจว่าไฟล์ถูกบันทึกด้วยรหัส UTF-8 รายละเอียดข้อผิดพลาด: $error';
  }

  @override
  String file_not_found(String filePath) {
    return 'ไฟล์ไม่พบ: $filePath';
  }

  @override
  String file_empty(String filePath) {
    return 'ไฟล์ว่าง: $filePath';
  }

  @override
  String get file_content_empty =>
      'เนื้อหาของไฟล์หลังจากถอดรหัสแล้วว่างเปล่า อาจเป็นไปได้ว่าโค้ดไม่ตรงกัน';

  @override
  String field_cannot_be_empty(String fieldName) {
    return '$fieldNameต้องไม่ว่าง';
  }

  @override
  String field_min_length(String fieldName, int minLength) {
    return '$fieldName ต้องมีความยาวอย่างน้อย $minLength ตัวอักษร';
  }

  @override
  String field_max_length(String fieldName, int maxLength) {
    return '$fieldName ความยาวไม่สามารถเกิน $maxLength ตัวอักษร';
  }

  @override
  String field_invalid_email(String fieldName) {
    return 'กรุณาใส่ที่อยู่ $fieldName ที่ถูกต้อง';
  }

  @override
  String field_invalid_number(String fieldName, String numberType) {
    return '$fieldNameต้องเป็น$numberType';
  }

  @override
  String field_min_value(String fieldName, double min) {
    return '$fieldName ไม่สามารถน้อยกว่า $min';
  }

  @override
  String field_max_value(String fieldName, double max) {
    return '$fieldName ไม่สามารถมากกว่า $max';
  }

  @override
  String field_positive_integer(String fieldName) {
    return '$fieldName ต้องเป็นจำนวนเต็มบวก';
  }

  @override
  String field_greater_than_zero(String fieldName) {
    return '$fieldName ต้องมากกว่า 0';
  }

  @override
  String field_positive_number(String fieldName) {
    return '$fieldName ต้องเป็นจำนวนบวก';
  }

  @override
  String field_invalid_date(String fieldName) {
    return 'กรุณาป้อน$fieldNameที่ถูกต้อง';
  }

  @override
  String field_date_not_past(String fieldName) {
    return '$fieldName ไม่สามารถเป็นวันที่ในอดีตได้';
  }

  @override
  String field_date_not_before(String fieldName, String minDate) {
    return '$fieldName ไม่สามารถก่อน $minDate';
  }

  @override
  String field_date_not_after(String fieldName, String maxDate) {
    return '$fieldName ไม่สามารถช้ากว่า $maxDate';
  }

  @override
  String field_invalid_value(String fieldName) {
    return 'โปรดกรอก$fieldNameที่ถูกต้อง';
  }

  @override
  String password_min_length(String fieldName) {
    return '$fieldName ต้องมีความยาวอย่างน้อย 8 ตัวอักษร';
  }

  @override
  String password_uppercase_required(String fieldName) {
    return '$fieldName ต้องมีตัวอักษรพิมพ์ใหญ่อย่างน้อยหนึ่งตัว';
  }

  @override
  String password_lowercase_required(String fieldName) {
    return '$fieldName ต้องมีตัวอักษรเล็กอย่างน้อยหนึ่งตัว';
  }

  @override
  String password_digit_required(String fieldName) {
    return '$fieldName ต้องมีตัวเลขอย่างน้อยหนึ่งตัว';
  }

  @override
  String password_special_char_required(String fieldName) {
    return '$fieldName ต้องมีอักขระพิเศษอย่างน้อยหนึ่งตัว';
  }

  @override
  String get passwords_not_match => 'รหัสผ่านที่ป้อนสองครั้งไม่ตรงกัน';

  @override
  String get item_name_cannot_be_empty => 'ชื่อสินค้าต้องไม่ว่าง';

  @override
  String name_max_length(int maxLength) {
    return 'ชื่อไม่สามารถเกิน $maxLength ตัวอักษร';
  }

  @override
  String quantity_min(int minQuantity) {
    return 'จำนวนต้องไม่ต่ำกว่า$minQuantity';
  }

  @override
  String quantity_max(int maxQuantity) {
    return 'จำนวนต้องไม่เกิน $maxQuantity';
  }

  @override
  String get unit_price_not_negative => 'ราคาต่อหน่วยไม่สามารถเป็นค่าลบได้';

  @override
  String unit_price_max(double maxUnitPrice) {
    return 'ราคาต่อหน่วยไม่สามารถเกิน $maxUnitPrice';
  }

  @override
  String get set_production_expiry_for_validity =>
      'กรุณาตั้งวันที่ผลิตและอายุการเก็บรักษาเพื่อคำนวณวันหมดอายุโดยอัตโนมัติ';

  @override
  String get set_purchase_warranty_for_validity =>
      'โปรดตั้งค่าวันที่ซื้อและวันหมดอายุเพื่อตรวจสอบระยะเวลาการรับประกันโดยอัตโนมัติ';

  @override
  String get calendar_account_creation_failed =>
      'ไม่สามารถสร้างบัญชีปฏิทินได้ กรุณาตรวจสอบการตั้งค่าปฏิทินของระบบ';

  @override
  String get test_notification => 'การทดสอบแจ้งเตือน';

  @override
  String get test_notification_description =>
      'นี่คือการแจ้งเตือนทดสอบ ใช้เพื่อยืนยันฟังก์ชันการเตือนในเครื่อง';

  @override
  String get day_unit => 'ฟ้า';

  @override
  String days_with_value(int days) {
    return '$days วัน';
  }

  @override
  String get item_saved => 'รายการได้ถูกบันทึกแล้ว';

  @override
  String get item_updated => 'รายการได้ถูกอัปเดตแล้ว';

  @override
  String get item_added => 'รายการได้ถูกเพิ่มแล้ว';

  @override
  String get save_success => 'บันทึกสำเร็จ';

  @override
  String get update_success => 'อัปเดตสำเร็จ';

  @override
  String get delete_success => 'ลบสำเร็จ';

  @override
  String get save_failed => 'บันทึกไม่สำเร็จ';

  @override
  String get update_failed => 'อัปเดตล้มเหลว';

  @override
  String get delete_failed => 'ลบไม่สำเร็จ';

  @override
  String get test_calendar_event => 'ทดสอบเหตุการณ์ปฏิทิน';

  @override
  String get test_calendar_event_description =>
      'นี่คือกิจกรรมทดสอบ ใช้เพื่อยืนยันฟังก์ชันปฏิทิน';

  @override
  String get in_app => 'ในแอป';

  @override
  String get enable_alert => 'เปิดแจ้งเตือนวันหมดอายุ';

  @override
  String get alert_method => 'วิธีการเตือน';

  @override
  String get alert_method_in_app => 'ใช้เฉพาะในแอป';

  @override
  String get alert_method_calendar => 'ปฏิทินเท่านั้น';

  @override
  String get alert_method_both => 'ทั้งสอง';

  @override
  String get alert_days_before => 'จำนวนวันที่แจ้งล่วงหน้า';

  @override
  String get use_global_setting => 'ใช้การตั้งค่าทั่วโลก';

  @override
  String get barcode_label => 'บาร์โค้ด';

  @override
  String get name_label => 'ชื่อ';

  @override
  String get category_label => 'การจัดประเภท';

  @override
  String get current_quantity => 'จำนวนปัจจุบัน';

  @override
  String get select_operation => 'กรุณาเลือกการดำเนินการ';

  @override
  String get unit => 'หน่วย';

  @override
  String get custom_unit => 'หน่วยกำหนดเอง';

  @override
  String get enter_unit => 'กรุณาใส่หน่วย';

  @override
  String get custom_location => 'สถานที่กำหนดเอง';

  @override
  String get enter_storage_location => 'กรุณาใส่สถานที่จัดเก็บ';

  @override
  String get scan => 'สแกนโค้ด';

  @override
  String get scan_to_stock => 'สแกนรหัสเพื่อเข้าคลัง';

  @override
  String get item_categories => 'การจัดหมวดหมู่ของสิ่งของ';

  @override
  String get storage_locations => 'สถานที่เก็บ';

  @override
  String get place_barcode_in_frame_to_scan =>
      'ใส่บาร์โค้ดไว้ในกรอบเพื่อต่อสแกน';

  @override
  String get barcode => 'บาร์โค้ด';

  @override
  String get enter_barcode_or_scan => 'โปรดป้อนรหัสบาร์โค้ดหรือสแกน';

  @override
  String get basic_information => 'ข้อมูลพื้นฐาน';

  @override
  String get item_name => 'ชื่อสิ่งของ';

  @override
  String get enter_item_name => 'กรุณากรอกชื่อสินค้า';

  @override
  String get enter_category_name => 'กรุณากรอกชื่อประเภท';

  @override
  String item_increased(String itemName, String quantity, String unit) {
    return 'ได้เพิ่ม $itemName $quantity$unit';
  }

  @override
  String item_decreased(String itemName, String quantity, String unit) {
    return 'ลดลงแล้ว $itemName $quantity$unit';
  }

  @override
  String get unsaved_changes => 'การเปลี่ยนแปลงที่ยังไม่ได้บันทึก';

  @override
  String get unsaved_changes_message =>
      'คุณมีการเปลี่ยนแปลงที่ยังไม่ได้บันทึก กรุณาเลือกการดำเนินการ:';

  @override
  String get discard => 'ยอมแพ้';

  @override
  String get unit_piece => 'อัน';

  @override
  String get unit_item => 'ชิ้น';

  @override
  String get unit_box => 'กล่อง';

  @override
  String get unit_package => 'กระเป๋า';

  @override
  String get unit_bottle => 'ขวด';

  @override
  String get unit_carton => 'กล่อง';

  @override
  String get unit_set => 'ชุด';

  @override
  String get unit_kg => 'กก.';

  @override
  String get unit_g => 'g';

  @override
  String get unit_l => 'L';

  @override
  String get unit_ml => 'มล';

  @override
  String get unit_m => 'm';

  @override
  String get unit_cm => 'เซนติเมตร';

  @override
  String get quantity_label => 'จำนวน';

  @override
  String get unit_price_label => 'ราคาต่อหน่วย';

  @override
  String get currency_label => 'สกุลเงิน';

  @override
  String get total_price_label => 'ราคารวม:';

  @override
  String get storage_location_label => 'สถานที่เก็บ';

  @override
  String get item_properties => 'คุณสมบัติของสิ่งของ';

  @override
  String get expiry_date_label => 'วันหมดอายุ';

  @override
  String get warranty_expiry_date_label => 'วันหมดประกัน';

  @override
  String get production_date_label => 'วันที่ผลิต';

  @override
  String get purchase_date_label => 'วันที่ซื้อ';

  @override
  String auto_calculated_from(String dateType) {
    return 'คำนวณโดยอัตโนมัติตาม $dateType และระยะเวลาการเก็บรักษา';
  }

  @override
  String get auto_calculated => 'คำนวณอัตโนมัติ';

  @override
  String get images_label => 'รูปภาพ';

  @override
  String get notes_label => 'หมายเหตุ';

  @override
  String get add_notes_hint => 'เพิ่มหมายเหตุ (ไม่บังคับ)';

  @override
  String get year_label => 'ปี';

  @override
  String get month_label => 'เดือน';

  @override
  String get day_label => 'ฟ้า';

  @override
  String selected_count(int count) {
    return 'ได้เลือก $count รายการแล้ว';
  }

  @override
  String get select_all => 'เลือกทั้งหมด';

  @override
  String get deselect_all => 'ยกเลิกการเลือกทั้งหมด';

  @override
  String get batch_change_location => 'สลับสถานที่จัดเก็บเป็นกลุ่ม';

  @override
  String confirm_delete_selected(int count) {
    return 'คุณแน่ใจหรือไม่ว่าต้องการลบ $count รายการที่เลือก?';
  }

  @override
  String deleted_count_items(int count) {
    return 'ได้ลบ $count ไอเท็มแล้ว';
  }

  @override
  String get no_storage_location_available => 'ยังไม่มีสถานที่จัดเก็บให้เลือก';

  @override
  String get batch_change_location_title => 'สลับสถานที่จัดเก็บเป็นกลุ่ม';

  @override
  String moved_count_items_to_location(int count, String location) {
    return 'ได้ย้าย $count รายการไปยัง $location';
  }

  @override
  String get operation_type_create => 'กรอกข้อมูล';

  @override
  String get operation_type_update => 'แก้ไข';

  @override
  String get operation_type_delete => 'ลบ';

  @override
  String get operation_type_inbound => 'เข้าคลัง';

  @override
  String get operation_type_outbound => 'เบิกสินค้าออกจากคลัง';

  @override
  String export_failed_message(String error) {
    return 'ส่งออกล้มเหลว: $error';
  }

  @override
  String get clear_logs => 'ล้างบันทึก';

  @override
  String get confirm_clear_logs =>
      'คุณแน่ใจหรือว่าต้องการลบประวัติการทำงานทั้งหมด? การกระทำนี้ไม่สามารถกู้คืนได้.';

  @override
  String get logs_cleared => 'บันทึกถูกล้างเรียบร้อยแล้ว';

  @override
  String get operation_logs_title => 'บันทึกการดำเนินการ';

  @override
  String get export_logs => 'ส่งออกบันทึก';

  @override
  String get clear_logs_tooltip => 'ล้างบันทึก';

  @override
  String get no_operation_logs => 'ยังไม่มีบันทึกการดำเนินการ';

  @override
  String get log_item_label => 'รายการสิ่งของ:';

  @override
  String get log_category_label => 'ประเภท：';

  @override
  String get log_type_label => 'ประเภท：';

  @override
  String get log_quantity_label => 'จำนวน:';

  @override
  String get log_unit_price_label => 'ราคาต่อหน่วย:';

  @override
  String get log_total_price_label => 'ราคารวม:';

  @override
  String get log_expiry_date_label => 'วันหมดอายุ:';

  @override
  String get log_warranty_date_label => 'วันที่รับประกัน:';

  @override
  String get log_purchase_date_label => 'วันที่ซื้อ:';

  @override
  String get log_production_date_label => 'วันที่ผลิต：';

  @override
  String get log_shelf_life_label => 'อายุการเก็บรักษา:';

  @override
  String get log_storage_location_label => 'สถานที่เก็บ';

  @override
  String get log_barcode_label => 'รหัสบาร์โค้ด：';

  @override
  String get log_notes_label => 'หมายเหตุ：';

  @override
  String get log_alert_label => 'เตือนล่วงหน้า:';

  @override
  String get log_alert_days_label => 'จำนวนวันเตือนภัย:';

  @override
  String get log_quantity_change_label => 'การเปลี่ยนแปลงของปริมาณ:';

  @override
  String get log_field_changes_label => 'แก้ไขฟิลด์:';

  @override
  String get log_not_set => 'ไม่ได้ตั้งค่า';

  @override
  String get log_empty => 'ว่าง';

  @override
  String get log_alert_enabled => 'เปิด';

  @override
  String get log_alert_disabled => 'ปิด';

  @override
  String get operation_logs_menu => 'บันทึกการดำเนินการ';

  @override
  String get operation_logs_description =>
      'ตรวจสอบและกู้คืนประวัติการดำเนินการ';

  @override
  String operation_failed_message(String error) {
    return 'การดำเนินการล้มเหลว: $error';
  }

  @override
  String get no_date => 'ไม่มีวันที่';

  @override
  String get shelf_life_months_suffix => 'เดือน';

  @override
  String get shelf_life_days_suffix => 'ฟ้า';

  @override
  String get alert_days_suffix => 'ฟ้า';

  @override
  String get unknown => 'ไม่ทราบ';

  @override
  String get developer_name => 'เรโอ';

  @override
  String get log_operation_date_label => 'วันที่ดำเนินการ:';

  @override
  String get uncategorized => 'ไม่ได้จัดหมวดหมู่';

  @override
  String get no_location => 'ไม่มีสถานที่';

  @override
  String get item_category_cannot_be_empty => 'ประเภทของรายการไม่สามารถว่างได้';

  @override
  String get storage_location_cannot_be_empty =>
      'สถานที่จัดเก็บไม่สามารถเว้นว่างได้';

  @override
  String get created_at_asc => 'เพิ่มเวลาเรียงลำดับจากน้อยไปมาก';

  @override
  String get created_at_desc => 'เพิ่มเวลาเรียงลำดับจากมากไปน้อย';
}
