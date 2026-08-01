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
  String get language_settings => 'Cài đặt ngôn ngữ';

  @override
  String get language_settings_description =>
      'Thiết lập ngôn ngữ hiển thị của ứng dụng';

  @override
  String get system_default => 'Mặc định hệ thống';

  @override
  String get use_system_language => 'Sử dụng ngôn ngữ hệ thống';

  @override
  String get language_change_hint =>
      'Thay đổi ngôn ngữ sẽ có hiệu lực sau khi ứng dụng khởi động lại';

  @override
  String get back => 'Quay lại';

  @override
  String get next => 'Bước tiếp theo';

  @override
  String get done => 'hoàn thành';

  @override
  String get loading => 'Đang tải...';

  @override
  String get error => 'Lỗi';

  @override
  String get success => 'thành công';

  @override
  String get warning => 'Cảnh báo';

  @override
  String get info => 'Thông tin';

  @override
  String get select_alert_days => 'Chọn số ngày nhắc nhở';

  @override
  String get custom => 'Tùy chỉnh';

  @override
  String custom_days(int days) {
    return 'Tùy chỉnh ($days ngày)';
  }

  @override
  String current_selection(int days) {
    return 'Lựa chọn hiện tại: $days ngày';
  }

  @override
  String alert_days_range(int min, int max) {
    return 'Phạm vi số ngày nhắc nhở: $min-$max ngày';
  }

  @override
  String get enter_days => 'Vui lòng nhập số ngày nhắc nhở';

  @override
  String get days => 'Số ngày';

  @override
  String enter_valid_days(int min, int max) {
    return 'Vui lòng nhập một số giữa $min và $max';
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
      'Vui lòng bật trước công tắc \'Đồng bộ lịch\'';

  @override
  String get app_alert_settings => 'Cài đặt thông báo ứng dụng';

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
      'Thiết lập cảnh báo trước bao nhiêu ngày khi hàng hóa hết hạn hoặc bảo hành hết hạn';

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
      'Quyền truy cập lịch đã bị từ chối vĩnh viễn, vui lòng bật quyền này thủ công trong cài đặt hệ thống.';

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
      'Thêm sự kiện lịch thử nghiệm thất bại, vui lòng kiểm tra cài đặt lịch';

  @override
  String get calendar_permission_required =>
      'Cần quyền truy cập lịch để thêm sự kiện thử nghiệm';

  @override
  String get test_notification_sent => 'Thông báo kiểm tra đã được gửi';

  @override
  String test_notification_failed(String error) {
    return 'Gửi thông báo thử nghiệm thất bại: $error';
  }

  @override
  String get notification_permission_required =>
      'Cần quyền thông báo để bật nhắc nhở cục bộ';

  @override
  String operation_failed(String error) {
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
  String backup_failed(String error) {
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
      'Cài đặt nhắc nhở lịch và nhắc nhở ứng dụng';

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
  String restore_success(int count) {
    return 'Khôi phục thành công, tổng cộng $count mục';
  }

  @override
  String restore_failed(String error) {
    return 'Phục hồi thất bại: $error';
  }

  @override
  String get select_backup_file => 'Chọn tệp sao lưu';

  @override
  String get restore_backup => 'Phục hồi sao lưu';

  @override
  String selected_file(String filename) {
    return 'Tệp đã chọn: $filename';
  }

  @override
  String get export_success => 'Dữ liệu xuất thành công';

  @override
  String export_failed(String error) {
    return 'Xuất không thành công: $error';
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
  String import_success(int count) {
    return 'Dữ liệu đã nhập thành công, tổng cộng đã nhập $count mục';
  }

  @override
  String import_failed(String error) {
    return 'Nhập khẩu thất bại: $error';
  }

  @override
  String get select_file => 'Chọn tệp';

  @override
  String get no_data => 'Chưa có dữ liệu';

  @override
  String get no_data_description =>
      'Hiện tại chưa có dữ liệu, nhấn nút bên dưới để thêm bản ghi đầu tiên nhé!';

  @override
  String get load_failed => 'Tải thất bại';

  @override
  String get load_failed_description =>
      'Tải dữ liệu thất bại, vui lòng kiểm tra kết nối mạng và thử lại';

  @override
  String get retry => 'Thử lại';

  @override
  String get network_connection_failed => 'Kết nối mạng thất bại';

  @override
  String get network_connection_failed_description =>
      'Vui lòng kiểm tra kết nối mạng và thử lại';

  @override
  String get no_results => 'Không tìm thấy kết quả';

  @override
  String get no_results_description =>
      'Thử sử dụng các từ khóa khác để tìm kiếm';

  @override
  String get clear_search => 'Xóa tìm kiếm';

  @override
  String get insufficient_permission => 'Quyền hạn không đủ';

  @override
  String get insufficient_permission_description =>
      'Cần có quyền tương ứng để sử dụng chức năng này';

  @override
  String get request_permission => 'Yêu cầu quyền';

  @override
  String get app_info => 'Thông tin ứng dụng';

  @override
  String get version => 'Phiên bản';

  @override
  String get developer => 'Nhà phát triển';

  @override
  String get device_info => 'Thông tin thiết bị';

  @override
  String get device_model => 'Mẫu thiết bị';

  @override
  String get brand => 'thương hiệu';

  @override
  String get device_name => 'Tên thiết bị';

  @override
  String get product => 'sản phẩm';

  @override
  String get hardware => 'Phần cứng';

  @override
  String get android_version => 'Phiên bản Android';

  @override
  String get sdk_version => 'Phiên bản SDK';

  @override
  String get system_name => 'Tên hệ thống';

  @override
  String get system_version => 'Phiên bản hệ thống';

  @override
  String get device_identifier => 'Nhận dạng thiết bị';

  @override
  String get computer_name => 'Tên máy tính';

  @override
  String get build_number => 'Số phiên bản';

  @override
  String error_getting_device_info(String error) {
    return 'Không thể lấy thông tin thiết bị: $error';
  }

  @override
  String get features => 'Giới thiệu chức năng';

  @override
  String get app_description => 'Ứng dụng quản lý đồ vật thông minh';

  @override
  String get app_description_detail =>
      'Giúp bạn quản lý ngày hết hạn, ngày bảo hành của các vật phẩm, đồng thời cung cấp chức năng nhắc nhở thông minh.';

  @override
  String get consumable => 'Vật tư tiêu hao';

  @override
  String get durable => 'Hàng bền';

  @override
  String get sort => 'Sắp xếp';

  @override
  String get name_asc => 'Tăng dần theo tên';

  @override
  String get name_desc => 'Tên giảm dần';

  @override
  String get date_asc => 'Ngày tăng dần';

  @override
  String get date_desc => 'Ngày giảm dần';

  @override
  String get price_asc => 'Đơn giá tăng dần';

  @override
  String get price_desc => 'Giá đơn hàng giảm dần';

  @override
  String get quantity_asc => 'Tăng dần theo số lượng';

  @override
  String get quantity_desc => 'Số lượng giảm dần';

  @override
  String get total_price_asc => 'Tổng giá tăng dần';

  @override
  String get total_price_desc => 'Giá tổng giảm dần';

  @override
  String get clear_all_filters => 'Xóa tất cả bộ lọc';

  @override
  String get scan_barcode => 'Quét mã để nhập kho';

  @override
  String get search_items => 'Tìm kiếm vật phẩm...';

  @override
  String get no_items => 'Tạm thời không có vật phẩm';

  @override
  String get no_items_description => 'Nhấn nút bên dưới để thêm mục đầu tiên';

  @override
  String get expired => 'Đã hết hạn';

  @override
  String get expiring_soon => 'sắp hết hạn';

  @override
  String get warranty_expired => 'Bảo hành đã hết hạn';

  @override
  String get warranty_expiring_soon => 'Bảo hành sắp hết hạn';

  @override
  String days_remaining(int count) {
    return 'Còn lại $count ngày';
  }

  @override
  String expired_days_ago(int count) {
    return 'Đã quá hạn $count ngày';
  }

  @override
  String get delete_item => 'Xóa vật phẩm';

  @override
  String delete_item_confirm(String name) {
    return 'Bạn có chắc chắn muốn xóa \"$name\" không?';
  }

  @override
  String get item_deleted => 'Vật phẩm đã bị xóa';

  @override
  String get failed_to_delete => 'Xóa thất bại';

  @override
  String failed_to_delete_message(String error) {
    return 'Không thể xóa vật phẩm: $error';
  }

  @override
  String get date_range_filter => 'Lọc theo khoảng ngày';

  @override
  String get price_range_filter => 'Lọc theo khoảng giá';

  @override
  String get my_items => 'Đồ của tôi';

  @override
  String get click_fab_to_add_item =>
      'Nhấn nút ở góc dưới bên phải để thêm vật phẩm';

  @override
  String get confirm_delete => 'Xác nhận xóa';

  @override
  String get filter_options => 'Lọc tùy chọn';

  @override
  String get filter_by_type_category_location =>
      'Lọc vật phẩm theo loại, phân loại và địa điểm';

  @override
  String categories_count(int count) {
    return '$count danh mục';
  }

  @override
  String get all_categories => 'Tất cả danh mục';

  @override
  String get no_category_data => 'Chưa có dữ liệu phân loại';

  @override
  String get storage_location => 'Nơi lưu trữ';

  @override
  String locations_count(int count) {
    return '$count địa điểm';
  }

  @override
  String get all_locations => 'Tất cả địa điểm';

  @override
  String get no_location_data => 'Tạm thời không có dữ liệu địa điểm';

  @override
  String get date_range => 'Khoảng ngày';

  @override
  String get select_date_range => 'Chọn phạm vi ngày';

  @override
  String get price_range => 'Phạm vi giá';

  @override
  String get unit_price_range => 'Phạm vi đơn giá';

  @override
  String get min_unit_price => 'Giá thấp nhất';

  @override
  String get max_unit_price => 'Đơn giá cao nhất';

  @override
  String get total_price_range => 'Phạm vi tổng giá';

  @override
  String get min_total_price => 'Tổng giá thấp nhất';

  @override
  String get max_total_price => 'Tổng giá tối đa';

  @override
  String get clear_price_filter => 'Xóa bộ lọc giá';

  @override
  String get place_barcode_in_frame => 'Đặt mã vạch vào trong khung để quét';

  @override
  String get item_already_exists => 'Sản phẩm đã tồn tại';

  @override
  String barcode_with_value(String barcode) {
    return 'Mã vạch: $barcode';
  }

  @override
  String name_with_value(String name) {
    return 'Tên: $name';
  }

  @override
  String category_with_value(String category) {
    return 'Phân loại: $category';
  }

  @override
  String current_quantity_with_value(String quantity, String unit) {
    return 'Số lượng hiện tại: $quantity$unit';
  }

  @override
  String get please_select_operation => 'Vui lòng chọn thao tác:';

  @override
  String get outbound => 'xuất kho';

  @override
  String get inbound => 'nhập kho';

  @override
  String get inbound_quantity => 'Số lượng nhập kho';

  @override
  String get outbound_quantity => 'Số lượng xuất kho';

  @override
  String get quantity => 'Số lượng';

  @override
  String get enter_inbound_quantity => 'Vui lòng nhập số lượng nhập kho';

  @override
  String get enter_outbound_quantity => 'Vui lòng nhập số lượng xuất kho';

  @override
  String item_increased(String name, String quantity, String unit) {
    return 'Đã tăng thêm $name $quantity$unit';
  }

  @override
  String delete_item_confirm_with_irreversible(String name) {
    return 'Bạn có chắc chắn muốn xóa “$name” không? Hành động này không thể hoàn tác.';
  }

  @override
  String item_decreased(String name, String quantity, String unit) {
    return 'Đã giảm $name $quantity$unit';
  }

  @override
  String get database_reset =>
      'Cơ sở dữ liệu đã được đặt lại, sẽ tái tạo lại cấu trúc bảng';

  @override
  String database_reset_error(String error) {
    return 'Lỗi khi đặt lại cơ sở dữ liệu: $error';
  }

  @override
  String mock_data_init_failed(String error) {
    return 'Khởi tạo dữ liệu mô phỏng thất bại: $error';
  }

  @override
  String get solution_steps => 'Giải pháp:';

  @override
  String get solution_step_1 => '1. Gỡ ứng dụng và cài đặt lại';

  @override
  String get solution_step_2 => '2. Hoặc xóa dữ liệu ứng dụng';

  @override
  String get solution_step_3 =>
      '3. Hoặc có thể đặt resetDatabaseOnStart thành true rồi chạy lại';

  @override
  String notification_service_init_failed(String error) {
    return 'Khởi tạo dịch vụ nhắc nhở thất bại: $error';
  }

  @override
  String check_calendar_account_failed(String error) {
    return 'Kiểm tra tài khoản lịch thất bại: $error';
  }

  @override
  String create_calendar_failed(String error) {
    return 'Tạo lịch thất bại: $error';
  }

  @override
  String add_calendar_event_failed(String error) {
    return 'Thêm sự kiện lịch thất bại: $error';
  }

  @override
  String delete_calendar_event_failed(String error) {
    return 'Xóa sự kiện lịch thất bại: $error';
  }

  @override
  String set_permission_message_failed(String error) {
    return 'Thiết lập thông báo gợi ý quyền thất bại: $error';
  }

  @override
  String mock_data_init_success(int count) {
    return 'Đã khởi tạo thành công $count dữ liệu mô phỏng';
  }

  @override
  String database_has_data(int count) {
    return 'Cơ sở dữ liệu đã có $count dữ liệu, bỏ qua khởi tạo dữ liệu mô phỏng';
  }

  @override
  String get database_structure_mismatch =>
      'Có thể là cấu trúc cơ sở dữ liệu không khớp, đề nghị xóa dữ liệu ứng dụng hoặc cài đặt lại';

  @override
  String get old_database_deleted => 'Đã xóa tệp cơ sở dữ liệu cũ';

  @override
  String get backup_data_empty => 'Dữ liệu sao lưu trống';

  @override
  String get backup_file_not_found => 'Tệp sao lưu không tồn tại';

  @override
  String file_not_utf8(String error) {
    return 'Mã hóa tệp không phải là định dạng UTF-8 hợp lệ. Vui lòng đảm bảo tệp được lưu bằng mã hóa UTF-8. Chi tiết lỗi: $error';
  }

  @override
  String file_not_found(String filePath) {
    return 'Tệp không tồn tại: $filePath';
  }

  @override
  String file_empty(String filePath) {
    return 'Tệp trống: $filePath';
  }

  @override
  String get file_content_empty =>
      'Nội dung tệp sau khi giải mã trống, có thể là do mã hóa không khớp';

  @override
  String field_cannot_be_empty(String fieldName) {
    return '$fieldName không được để trống';
  }

  @override
  String field_min_length(String fieldName, int minLength) {
    return '$fieldName không được ít hơn $minLength ký tự';
  }

  @override
  String field_max_length(String fieldName, int maxLength) {
    return '$fieldName không được vượt quá $maxLength ký tự';
  }

  @override
  String field_invalid_email(String fieldName) {
    return 'Vui lòng nhập địa chỉ $fieldName hợp lệ';
  }

  @override
  String field_invalid_number(String fieldName, String numberType) {
    return '$fieldName phải là $numberType';
  }

  @override
  String field_min_value(String fieldName, double min) {
    return '$fieldName không thể nhỏ hơn $min';
  }

  @override
  String field_max_value(String fieldName, double max) {
    return '$fieldName không thể lớn hơn $max';
  }

  @override
  String field_positive_integer(String fieldName) {
    return '$fieldName phải là số nguyên dương';
  }

  @override
  String field_greater_than_zero(String fieldName) {
    return '$fieldName phải lớn hơn 0';
  }

  @override
  String field_positive_number(String fieldName) {
    return '$fieldName phải là số dương';
  }

  @override
  String field_invalid_date(String fieldName) {
    return 'Vui lòng nhập $fieldName hợp lệ';
  }

  @override
  String field_date_not_past(String fieldName) {
    return '$fieldName không thể là ngày trong quá khứ';
  }

  @override
  String field_date_not_before(String fieldName, String minDate) {
    return '$fieldName không thể sớm hơn $minDate';
  }

  @override
  String field_date_not_after(String fieldName, String maxDate) {
    return '$fieldName không thể muộn hơn $maxDate';
  }

  @override
  String field_invalid_value(String fieldName) {
    return 'Vui lòng nhập $fieldName hợp lệ';
  }

  @override
  String password_min_length(String fieldName) {
    return '$fieldName chiều dài không được ít hơn 8 ký tự';
  }

  @override
  String password_uppercase_required(String fieldName) {
    return '$fieldName phải chứa ít nhất một chữ cái viết hoa';
  }

  @override
  String password_lowercase_required(String fieldName) {
    return '$fieldName phải chứa ít nhất một chữ cái thường';
  }

  @override
  String password_digit_required(String fieldName) {
    return '$fieldName phải chứa ít nhất một chữ số';
  }

  @override
  String password_special_char_required(String fieldName) {
    return '$fieldName phải chứa ít nhất một ký tự đặc biệt';
  }

  @override
  String get passwords_not_match => 'Mật khẩu nhập hai lần không khớp';

  @override
  String get item_name_cannot_be_empty => 'Tên vật phẩm không được để trống';

  @override
  String name_max_length(int maxLength) {
    return 'Tên không được vượt quá $maxLength ký tự';
  }

  @override
  String quantity_min(int minQuantity) {
    return 'Số lượng không được nhỏ hơn $minQuantity';
  }

  @override
  String quantity_max(int maxQuantity) {
    return 'Số lượng không được vượt quá $maxQuantity';
  }

  @override
  String get unit_price_not_negative => 'Đơn giá không được âm';

  @override
  String unit_price_max(double maxUnitPrice) {
    return 'Đơn giá không được vượt quá $maxUnitPrice';
  }

  @override
  String get set_production_expiry_for_validity =>
      'Vui lòng đặt ngày sản xuất và thời hạn sử dụng để tự động tính toán thời gian hiệu lực';

  @override
  String get set_purchase_warranty_for_validity =>
      'Vui lòng thiết lập ngày mua và hạn sử dụng để tự động tính toán thời gian bảo hành';

  @override
  String get calendar_account_creation_failed =>
      'Không thể tạo tài khoản lịch, vui lòng kiểm tra cài đặt lịch hệ thống';

  @override
  String get test_notification => 'Thông báo thử nghiệm';

  @override
  String get test_notification_description =>
      'Đây là một thông báo thử nghiệm, dùng để xác minh chức năng nhắc nhở cục bộ';

  @override
  String get day_unit => 'trời';

  @override
  String days_with_value(int days) {
    return '$days ngày';
  }

  @override
  String get item_saved => 'Vật phẩm đã được lưu';

  @override
  String get item_updated => 'Vật phẩm đã được cập nhật';

  @override
  String get item_added => 'Đã thêm vật phẩm';

  @override
  String get save_success => 'Lưu thành công';

  @override
  String get update_success => 'Cập nhật thành công';

  @override
  String get delete_success => 'Xóa thành công';

  @override
  String get save_failed => 'Lưu thất bại';

  @override
  String get update_failed => 'Cập nhật thất bại';

  @override
  String get delete_failed => 'Xóa thất bại';
}
