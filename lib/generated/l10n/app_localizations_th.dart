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
  String get search => 'ค้นหา';

  @override
  String get settings => 'การตั้งค่า';

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
  String get select_alert_days => 'เลือกจำนวนวันที่แจ้งเตือน';

  @override
  String get custom => 'ปรับแต่งเอง';

  @override
  String custom_days(Object days) {
    return 'กำหนดเอง ($days วัน)';
  }

  @override
  String alert_days_range(Object min, Object max) {
    return 'ช่วงจำนวนวันที่แจ้งเตือน: $min-$max วัน';
  }

  @override
  String get enter_days => 'กรุณาใส่จำนวนวันเตือน';

  @override
  String get days => 'จำนวนวัน';

  @override
  String enter_valid_days(Object min, Object max) {
    return 'กรุณาป้อนตัวเลขระหว่าง $min-$max';
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
  String get advance_alert_days => 'จำนวนวันที่แจ้งเตือนล่วงหน้า';

  @override
  String get advance_alert_days_desc =>
      'ตั้งค่าการเตือนล่วงหน้ากี่วันสำหรับสินค้าที่หมดอายุหรือหมดระยะประกัน';

  @override
  String get calendar_permission_request => 'คำขอสิทธิ์ปฏิทิน';

  @override
  String get calendar_permission_desc =>
      'ต้องการสิทธิ์ในการเข้าถึงปฏิทินเพื่อซิงโครไนซ์การเตือนรายการ ต้องการอนุญาตหรือไม่?';

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
  String test_notification_failed(Object error) {
    return 'ส่งการแจ้งเตือนทดสอบล้มเหลว: $error';
  }

  @override
  String get notification_permission_required =>
      'จำเป็นต้องมีสิทธิ์ในการแจ้งเตือนเพื่อเปิดใช้งานการเตือนท้องถิ่น';

  @override
  String operation_failed(Object error) {
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
  String backup_failed(Object error) {
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
  String restore_success(Object count) {
    return 'กู้คืนสำเร็จ รวม $count รายการ';
  }

  @override
  String restore_failed(Object error) {
    return 'กู้คืนล้มเหลว: $error';
  }

  @override
  String get select_backup_file => 'เลือกไฟล์สำรอง';

  @override
  String get restore_backup => 'กู้คืนสำรองข้อมูล';

  @override
  String selected_file(Object filename) {
    return 'ไฟล์ที่เลือกแล้ว: $filename';
  }

  @override
  String get export_success => 'การส่งออกข้อมูลสำเร็จ';

  @override
  String export_failed(Object error) {
    return 'ส่งออกไม่สำเร็จ: $error';
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
      'การนำเข้าข้อมูลจะเขียนทับข้อมูลที่มีอยู่ การดำเนินการนี้ไม่สามารถย้อนกลับได้ คุณแน่ใจว่าต้องการดำเนินการต่อหรือไม่?';

  @override
  String import_success(Object count) {
    return 'นำเข้าข้อมูลสำเร็จ นำเข้าสินค้าทั้งหมด $count รายการ';
  }

  @override
  String import_failed(Object error) {
    return 'นำเข้าไม่สำเร็จ: $error';
  }

  @override
  String get select_file => 'เลือกไฟล์';
}
