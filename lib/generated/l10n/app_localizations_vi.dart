// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get app_name => 'Kho báu trong lòng bàn tay';

  @override
  String get cancel => 'Hủy';

  @override
  String get confirm => 'Xác nhận';

  @override
  String get save => 'Lưu';

  @override
  String get delete => 'Xóa';

  @override
  String get edit => 'Chỉnh sửa';

  @override
  String get add => 'Thêm';

  @override
  String get search => 'Tìm kiếm';

  @override
  String get settings => 'Cài đặt';

  @override
  String get back => 'Quay lại';

  @override
  String get next => 'Bước tiếp theo';

  @override
  String get done => 'Hoàn thành';

  @override
  String get loading => 'Đang tải...';

  @override
  String get error => 'Lỗi';

  @override
  String get success => 'thành công';

  @override
  String get warning => 'Cảnh báo';

  @override
  String get info => 'thông tin';

  @override
  String get select_alert_days => 'Chọn số ngày nhắc nhở';

  @override
  String get custom => 'Tùy chỉnh';

  @override
  String custom_days(Object days) {
    return 'Tùy chỉnh ($days ngày)';
  }

  @override
  String alert_days_range(Object min, Object max) {
    return 'Phạm vi ngày nhắc nhở: $min-$max ngày';
  }

  @override
  String get enter_days => 'Vui lòng nhập số ngày nhắc nhở';

  @override
  String get days => 'Số ngày';

  @override
  String enter_valid_days(Object min, Object max) {
    return 'Vui lòng nhập số trong khoảng $min-$max';
  }

  @override
  String get alert_settings => 'Cài đặt cảnh báo';

  @override
  String get calendar_settings => 'Cài đặt lịch';

  @override
  String get calendar_sync => 'Đồng bộ lịch';

  @override
  String get calendar_sync_desc => 'Khi bật sẽ yêu cầu quyền truy cập lịch';

  @override
  String get add_test_calendar_event => 'Thêm sự kiện lịch thử nghiệm';

  @override
  String get enable_calendar_sync_first =>
      'Vui lòng bật công tắc \'Đồng bộ lịch\' trước';

  @override
  String get app_alert_settings => 'Cài đặt thông báo của ứng dụng';

  @override
  String get local_alerts => 'Nhắc nhở địa phương';

  @override
  String get local_alerts_desc =>
      'Bật để nhận thông báo hết hạn trong ứng dụng';

  @override
  String get send_test_notification => 'Gửi thông báo kiểm tra';

  @override
  String get enable_local_alerts_first =>
      'Vui lòng bật trước công tắc \'Nhắc nhở tại chỗ\'';

  @override
  String get alert_days_settings => 'Cài đặt số ngày nhắc nhở';

  @override
  String get advance_alert_days => 'Số ngày nhắc trước';

  @override
  String get advance_alert_days_desc =>
      'Thiết lập cảnh báo trước bao nhiêu ngày về việc vật phẩm hết hạn hoặc hết hạn bảo hành';

  @override
  String get calendar_permission_request => 'Yêu cầu quyền truy cập lịch';

  @override
  String get calendar_permission_desc =>
      'Cần quyền truy cập lịch để đồng bộ nhắc nhở mục. Có cho phép không?';

  @override
  String get allow => 'Cho phép';

  @override
  String get calendar_permission_granted =>
      'Quyền truy cập lịch đã được cấp, đồng bộ lịch đã được bật';

  @override
  String get calendar_permission_denied =>
      'Quyền truy cập lịch bị từ chối, không thể bật đồng bộ lịch';

  @override
  String get calendar_permission_permanently_denied =>
      'Quyền bị từ chối vĩnh viễn';

  @override
  String get calendar_permission_permanently_denied_desc =>
      'Quyền truy cập lịch đã bị từ chối vĩnh viễn, vui lòng bật quyền trong cài đặt hệ thống một cách thủ công.';

  @override
  String get go_to_settings => 'Đi đến cài đặt';

  @override
  String get calendar_account_failed =>
      'Quyền truy cập lịch đã được cấp, nhưng không thể tạo tài khoản lịch. Vui lòng kiểm tra cài đặt lịch hệ thống';

  @override
  String get calendar_account_created =>
      'Quyền lịch đã được cấp, tài khoản lịch cục bộ đã được tạo';

  @override
  String get calendar_account_creating =>
      'Tài khoản lịch đã được tạo thành công, nhưng hệ thống có thể cần một thời gian để có hiệu lực';

  @override
  String get test_calendar_event_added =>
      'Kiểm tra sự kiện lịch thêm thành công';

  @override
  String get test_calendar_event_failed =>
      'Thêm sự kiện kiểm tra lịch thất bại, vui lòng kiểm tra cài đặt lịch';

  @override
  String get calendar_permission_required =>
      'Cần quyền truy cập lịch để thêm sự kiện thử nghiệm';

  @override
  String get test_notification_sent => 'Thông báo kiểm tra đã được gửi';

  @override
  String test_notification_failed(Object error) {
    return 'Gửi thông báo thử nghiệm thất bại: $error';
  }

  @override
  String get notification_permission_required =>
      'Cần quyền thông báo để bật nhắc nhở cục bộ';

  @override
  String operation_failed(Object error) {
    return 'Thao tác thất bại: $error';
  }

  @override
  String get notification_channel_name => 'Thông báo cảnh báo vật phẩm';

  @override
  String get notification_channel_description =>
      'Nhắc nhở khi hàng hóa hết hạn hoặc quá bảo hành';

  @override
  String get item_category_food => 'thực phẩm';

  @override
  String get item_category_daily_necessities => 'Đồ dùng hàng ngày';

  @override
  String get item_category_cosmetics => 'Mỹ phẩm';

  @override
  String get item_category_medicine => 'Thuốc';

  @override
  String get item_category_electronics => 'Sản phẩm điện tử';

  @override
  String get item_category_furniture => 'Đồ nội thất';

  @override
  String get item_category_clothing => 'Trang phục';

  @override
  String get item_category_books => 'Sách';

  @override
  String get item_category_other => 'Khác';

  @override
  String get purchase_channel_online_mall => 'Cửa hàng trực tuyến';

  @override
  String get purchase_channel_physical_store => 'Cửa hàng thực thể';

  @override
  String get purchase_channel_supermarket => 'siêu thị';

  @override
  String get purchase_channel_specialty_store => 'cửa hàng độc quyền';

  @override
  String get purchase_channel_secondhand_market => 'thị trường đồ cũ';

  @override
  String get purchase_channel_other => 'Khác';

  @override
  String get default_category => 'Khác';

  @override
  String get default_purchase_channel => 'Cửa hàng trực tuyến';

  @override
  String get item_category => 'Phân loại vật phẩm';

  @override
  String get custom_category => 'Phân loại tùy chỉnh';

  @override
  String get backup_data => 'Sao lưu dữ liệu';

  @override
  String get backup_data_description =>
      'Đóng gói tất cả dữ liệu (bao gồm hình ảnh) thành tệp ZIP để sao lưu';

  @override
  String get backup_all_data => 'Sao lưu tất cả dữ liệu';

  @override
  String get backup_success => 'Sao lưu thành công';

  @override
  String backup_failed(Object error) {
    return 'Sao lưu thất bại: $error';
  }

  @override
  String get restore_data => 'Khôi phục dữ liệu';

  @override
  String get restore_data_description =>
      'Phục hồi toàn bộ dữ liệu từ tệp sao lưu ZIP';

  @override
  String get export_data => 'Xuất dữ liệu';

  @override
  String get export_data_description => 'Xuất ra định dạng CSV, TXT, SQL';

  @override
  String get import_data => 'Nhập dữ liệu';

  @override
  String get import_data_description => 'Nhập dữ liệu từ tệp CSV, TXT, SQL';

  @override
  String get alert_settings_description =>
      'Cài đặt nhắc nhở lịch và nhắc nhở đẩy ứng dụng';

  @override
  String get about => 'Về';

  @override
  String get about_description => 'Thông tin ứng dụng và phiên bản';

  @override
  String get select_backup_file_first => 'Vui lòng chọn tệp sao lưu trước';

  @override
  String get confirm_restore => 'Xác nhận khôi phục';

  @override
  String get confirm_restore_message =>
      'Phục hồi bản sao lưu sẽ xóa tất cả dữ liệu hiện có và thay thế bằng dữ liệu sao lưu, thao tác này không thể hoàn tác. Bạn có chắc muốn tiếp tục không?';

  @override
  String get confirm_again => 'Xác nhận lại';

  @override
  String get confirm_restore_warning =>
      'Bạn có chắc chắn muốn xóa tất cả dữ liệu hiện có và khôi phục bản sao lưu không? Hành động này sẽ không thể phục hồi!';

  @override
  String get confirm_restore_button => 'Xác nhận khôi phục';

  @override
  String restore_success(Object count) {
    return 'Phục hồi thành công, tổng cộng $count món đồ';
  }

  @override
  String restore_failed(Object error) {
    return 'Phục hồi thất bại: $error';
  }

  @override
  String get select_backup_file => 'Chọn tệp sao lưu';

  @override
  String get restore_backup => 'Phục hồi sao lưu';

  @override
  String selected_file(Object filename) {
    return 'Tệp đã chọn: $filename';
  }

  @override
  String get export_success => 'Dữ liệu xuất thành công';

  @override
  String export_failed(Object error) {
    return 'Xuất khẩu thất bại: $error';
  }

  @override
  String get format_csv => 'CSV';

  @override
  String get format_txt => 'TXT';

  @override
  String get format_sql => 'SQL';

  @override
  String get duplicate_data_handling => 'Xử lý dữ liệu trùng lặp';

  @override
  String get duplicate_data_detected =>
      'Phát hiện dữ liệu trùng lặp, vui lòng chọn cách xử lý:';

  @override
  String get skip => 'Bỏ qua';

  @override
  String get overwrite => 'bao phủ';

  @override
  String get skip_all => 'Bỏ qua tất cả';

  @override
  String get overwrite_all => 'Bao phủ toàn bộ';

  @override
  String get select_import_format_first => 'Vui lòng chọn định dạng nhập trước';

  @override
  String get confirm_import => 'Xác nhận nhập khẩu';

  @override
  String get confirm_import_message =>
      'Nhập dữ liệu sẽ ghi đè dữ liệu hiện có, thao tác này không thể hoàn tác. Bạn có chắc muốn tiếp tục không?';

  @override
  String import_success(Object count) {
    return 'Dữ liệu đã nhập thành công, tổng cộng đã nhập $count mục';
  }

  @override
  String import_failed(Object error) {
    return 'Nhập khẩu thất bại: $error';
  }

  @override
  String get select_file => 'Chọn tệp';
}
