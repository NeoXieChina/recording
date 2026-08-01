// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get app_name => 'Penyimpanan benda kecil';

  @override
  String get cancel => 'Batal';

  @override
  String get confirm => 'Tentukan';

  @override
  String get save => 'Simpan';

  @override
  String get delete => 'Hapus';

  @override
  String get edit => 'Sunting';

  @override
  String get add => 'Tambah';

  @override
  String get search => 'Cari';

  @override
  String get settings => 'Pengaturan';

  @override
  String get back => 'Kembali';

  @override
  String get next => 'Langkah berikutnya';

  @override
  String get done => 'Selesai';

  @override
  String get loading => 'Memuat...';

  @override
  String get error => 'Kesalahan';

  @override
  String get success => 'Sukses';

  @override
  String get warning => 'Peringatan';

  @override
  String get info => 'informasi';

  @override
  String get select_alert_days => 'Pilih jumlah hari pengingat';

  @override
  String get custom => 'Kustomisasi';

  @override
  String custom_days(int days) {
    return 'Kustom ($days hari)';
  }

  @override
  String alert_days_range(int min, int max) {
    return 'Rentang hari pengingat: $min-$max hari';
  }

  @override
  String get enter_days => 'Silakan masukkan jumlah hari pengingat';

  @override
  String get days => 'jumlah hari';

  @override
  String enter_valid_days(int min, int max) {
    return 'Silakan masukkan angka antara $min-$max';
  }

  @override
  String get alert_settings => 'Pengaturan peringatan';

  @override
  String get calendar_settings => 'Pengaturan kalender';

  @override
  String get calendar_sync => 'Sinkronisasi kalender';

  @override
  String get calendar_sync_desc =>
      'Setelah diaktifkan akan meminta izin kalender';

  @override
  String get add_test_calendar_event => 'Tambahkan acara kalender percobaan';

  @override
  String get enable_calendar_sync_first =>
      'Silakan aktifkan sakelar \'Sinkronisasi Kalender\' terlebih dahulu';

  @override
  String get app_alert_settings => 'Pengaturan Pengingat Aplikasi';

  @override
  String get local_alerts => 'Pengingat lokal';

  @override
  String get local_alerts_desc =>
      'Hidupkan untuk menerima pengingat kedaluwarsa dalam aplikasi';

  @override
  String get send_test_notification => 'Kirim notifikasi uji';

  @override
  String get enable_local_alerts_first =>
      'Silakan aktifkan sakelar \'Pengingat Lokal\' terlebih dahulu';

  @override
  String get alert_days_settings => 'Pengaturan jumlah hari pengingat';

  @override
  String get advance_alert_days => 'Jumlah hari pemberitahuan sebelumnya';

  @override
  String get advance_alert_days_desc =>
      'Atur berapa hari sebelumnya untuk mengingatkan barang kedaluwarsa atau garansi akan berakhir';

  @override
  String get calendar_permission_request => 'Permintaan izin kalender';

  @override
  String get calendar_permission_desc =>
      'Memerlukan izin akses kalender untuk menyinkronkan pengingat item. Apakah diperbolehkan?';

  @override
  String get allow => 'mengizinkan';

  @override
  String get calendar_permission_granted =>
      'Izin kalender telah diberikan, sinkronisasi kalender telah diaktifkan';

  @override
  String get calendar_permission_denied =>
      'Izin kalender ditolak, tidak dapat mengaktifkan sinkronisasi kalender';

  @override
  String get calendar_permission_permanently_denied =>
      'Izin ditolak secara permanen';

  @override
  String get calendar_permission_permanently_denied_desc =>
      'Izin kalender ditolak secara permanen, harap aktifkan izin secara manual di pengaturan sistem.';

  @override
  String get go_to_settings => 'Pergi ke pengaturan';

  @override
  String get calendar_account_failed =>
      'Izin kalender telah diberikan, tetapi tidak dapat membuat akun kalender. Silakan periksa pengaturan kalender sistem.';

  @override
  String get calendar_account_created =>
      'Izin kalender telah diberikan, akun kalender lokal telah dibuat';

  @override
  String get calendar_account_creating =>
      'Akun kalender berhasil dibuat, tetapi sistem mungkin memerlukan beberapa waktu untuk berlaku';

  @override
  String get test_calendar_event_added =>
      'Pengujian penambahan acara kalender berhasil';

  @override
  String get test_calendar_event_failed =>
      'Gagal menambahkan acara kalender uji, silakan periksa pengaturan kalender';

  @override
  String get calendar_permission_required =>
      'Dibutuhkan izin kalender untuk menambahkan acara uji';

  @override
  String get test_notification_sent => 'Pemberitahuan uji coba telah dikirim';

  @override
  String test_notification_failed(String error) {
    return 'Gagal mengirim pemberitahuan uji: $error';
  }

  @override
  String get notification_permission_required =>
      'Perlu izin pemberitahuan untuk mengaktifkan pengingat lokal';

  @override
  String operation_failed(String error) {
    return 'Operasi gagal: $error';
  }

  @override
  String get notification_channel_name => 'Pemberitahuan Peringatan Barang';

  @override
  String get notification_channel_description =>
      'Pengingat barang kadaluarsa atau melewati garansi';

  @override
  String get item_category_food => 'Makanan';

  @override
  String get item_category_daily_necessities => 'Barang kebutuhan sehari-hari';

  @override
  String get item_category_cosmetics => 'Kosmetik';

  @override
  String get item_category_medicine => 'Obat';

  @override
  String get item_category_electronics => 'Produk elektronik';

  @override
  String get item_category_furniture => 'Perabot';

  @override
  String get item_category_clothing => 'Pakaian';

  @override
  String get item_category_books => 'Buku';

  @override
  String get item_category_other => 'Lainnya';

  @override
  String get purchase_channel_online_mall => 'Toko online';

  @override
  String get purchase_channel_physical_store => 'Toko fisik';

  @override
  String get purchase_channel_supermarket => 'supermarket';

  @override
  String get purchase_channel_specialty_store => 'toko khusus';

  @override
  String get purchase_channel_secondhand_market => 'pasar barang bekas';

  @override
  String get purchase_channel_other => 'Lainnya';

  @override
  String get default_category => 'Lainnya';

  @override
  String get default_purchase_channel => 'Toko online';

  @override
  String get item_category => 'Klasifikasi barang';

  @override
  String get custom_category => 'Klasifikasi kustom';

  @override
  String get backup_data => 'Cadangkan data';

  @override
  String get backup_data_description =>
      'Membuat cadangan semua data (termasuk gambar) dalam file ZIP';

  @override
  String get backup_all_data => 'Cadangkan semua data';

  @override
  String get backup_success => 'Cadangan berhasil';

  @override
  String backup_failed(String error) {
    return 'Cadangan gagal: $error';
  }

  @override
  String get restore_data => 'Memulihkan data';

  @override
  String get restore_data_description =>
      'Pulihkan semua data dari file cadangan ZIP';

  @override
  String get export_data => 'Ekspor data';

  @override
  String get export_data_description => 'Ekspor ke format CSV, TXT, SQL';

  @override
  String get import_data => 'Impor data';

  @override
  String get import_data_description => 'Impor data dari file CSV, TXT, SQL';

  @override
  String get alert_settings_description =>
      'Pengaturan pengingat kalender dan pengingat notifikasi aplikasi';

  @override
  String get about => 'Tentang';

  @override
  String get about_description => 'Informasi dan versi aplikasi';

  @override
  String get select_backup_file_first =>
      'Silakan pilih file cadangan terlebih dahulu';

  @override
  String get confirm_restore => 'Konfirmasi pemulihan';

  @override
  String get confirm_restore_message =>
      'Mengembalikan cadangan akan menghapus semua data yang ada dan menggantinya dengan data cadangan, tindakan ini tidak dapat dibatalkan. Apakah Anda yakin ingin melanjutkan?';

  @override
  String get confirm_again => 'Konfirmasi lagi';

  @override
  String get confirm_restore_warning =>
      'Apakah Anda yakin ingin menghapus semua data yang ada dan memulihkan cadangan? Tindakan ini tidak dapat dibatalkan!';

  @override
  String get confirm_restore_button => 'Konfirmasi pemulihan';

  @override
  String restore_success(int count) {
    return 'Pemulihan berhasil, total $count item';
  }

  @override
  String restore_failed(String error) {
    return 'Pemulihan gagal: $error';
  }

  @override
  String get select_backup_file => 'Pilih file cadangan';

  @override
  String get restore_backup => 'Pulihkan cadangan';

  @override
  String selected_file(String filename) {
    return 'File yang dipilih: $filename';
  }

  @override
  String get export_success => 'Ekspor data berhasil';

  @override
  String export_failed(String error) {
    return 'Ekspor gagal: $error';
  }

  @override
  String get format_csv => 'CSV';

  @override
  String get format_txt => 'TXT';

  @override
  String get format_sql => 'SQL';

  @override
  String get duplicate_data_handling => 'Pengolahan data duplikat';

  @override
  String get duplicate_data_detected =>
      'Terdeteksi data duplikat, silakan pilih cara penanganannya:';

  @override
  String get skip => 'Lewati';

  @override
  String get overwrite => 'menutupi';

  @override
  String get skip_all => 'Lewati semua';

  @override
  String get overwrite_all => 'Menutupi semua';

  @override
  String get select_import_format_first =>
      'Silakan pilih format impor terlebih dahulu';

  @override
  String get confirm_import => 'Konfirmasi impor';

  @override
  String get confirm_import_message =>
      'Mengimpor data akan menimpa data yang ada, tindakan ini tidak dapat dibatalkan. Apakah Anda yakin ingin melanjutkan?';

  @override
  String import_success(int count) {
    return 'Data berhasil diimpor, total $count item diimpor';
  }

  @override
  String import_failed(String error) {
    return 'Impor gagal: $error';
  }

  @override
  String get select_file => 'Pilih file';

  @override
  String get no_data => '暂无数据';

  @override
  String get no_data_description => '当前没有数据，点击下方按钮添加第一条记录吧！';

  @override
  String get load_failed => '加载失败';

  @override
  String get load_failed_description => '数据加载失败，请检查网络连接后重试';

  @override
  String get retry => '重试';

  @override
  String get network_connection_failed => '网络连接失败';

  @override
  String get network_connection_failed_description => '请检查网络连接后重试';

  @override
  String get no_results => '未找到结果';

  @override
  String get no_results_description => '尝试使用其他关键词搜索';

  @override
  String get clear_search => '清除搜索';

  @override
  String get insufficient_permission => '权限不足';

  @override
  String get insufficient_permission_description => '需要相关权限才能使用此功能';

  @override
  String get request_permission => '请求权限';

  @override
  String get app_info => '应用信息';

  @override
  String get version => '版本';

  @override
  String get developer => '开发者';

  @override
  String get device_info => '设备信息';

  @override
  String get device_model => '设备型号';

  @override
  String get brand => '品牌';

  @override
  String get device_name => '设备名称';

  @override
  String get product => '产品';

  @override
  String get hardware => '硬件';

  @override
  String get android_version => 'Android版本';

  @override
  String get sdk_version => 'SDK版本';

  @override
  String get system_name => '系统名称';

  @override
  String get system_version => '系统版本';

  @override
  String get device_identifier => '设备标识';

  @override
  String get computer_name => '计算机名';

  @override
  String get build_number => '版本号';

  @override
  String error_getting_device_info(String error) {
    return '无法获取设备信息: $error';
  }

  @override
  String get features => '功能介绍';

  @override
  String get app_description => '智能物品管理应用';

  @override
  String get app_description_detail => '帮助您管理物品的过期日期、保修日期等信息，并提供智能提醒功能。';

  @override
  String get consumable => '消耗品';

  @override
  String get durable => '耐用品';

  @override
  String get sort => '排序';

  @override
  String get name_asc => '名称升序';

  @override
  String get name_desc => '名称降序';

  @override
  String get date_asc => '日期升序';

  @override
  String get date_desc => '日期降序';

  @override
  String get price_asc => '单价升序';

  @override
  String get price_desc => '单价降序';

  @override
  String get quantity_asc => '数量升序';

  @override
  String get quantity_desc => '数量降序';

  @override
  String get total_price_asc => '总价升序';

  @override
  String get total_price_desc => '总价降序';

  @override
  String get clear_all_filters => '清除所有筛选';

  @override
  String get scan_barcode => '扫码入库';

  @override
  String get search_items => '搜索物品...';

  @override
  String get no_items => '暂无物品';

  @override
  String get no_items_description => '点击下方按钮添加第一个物品';

  @override
  String get expired => '已过期';

  @override
  String get expiring_soon => '即将过期';

  @override
  String get warranty_expired => '保修已过期';

  @override
  String get warranty_expiring_soon => '保修即将到期';

  @override
  String days_remaining(int count) {
    return '剩余$count天';
  }

  @override
  String expired_days_ago(int count) {
    return '已过期$count天';
  }

  @override
  String get delete_item => '删除物品';

  @override
  String delete_item_confirm(String name) {
    return '确定要删除\"$name\"吗？';
  }

  @override
  String get item_deleted => '物品已删除';

  @override
  String get failed_to_delete => '删除失败';

  @override
  String failed_to_delete_message(String error) {
    return '无法删除物品: $error';
  }

  @override
  String get date_range_filter => '日期范围筛选';

  @override
  String get price_range_filter => '价格范围筛选';

  @override
  String get my_items => '我的物品';

  @override
  String get click_fab_to_add_item => '点击右下角按钮添加物品';

  @override
  String get confirm_delete => '确认删除';

  @override
  String get filter_options => '筛选选项';

  @override
  String get filter_by_type_category_location => '按类型、分类和地点筛选物品';

  @override
  String categories_count(int count) {
    return '$count 个分类';
  }

  @override
  String get all_categories => '全部分类';

  @override
  String get no_category_data => '暂无分类数据';

  @override
  String get storage_location => '存储地点';

  @override
  String locations_count(int count) {
    return '$count 个地点';
  }

  @override
  String get all_locations => '全部地点';

  @override
  String get no_location_data => '暂无地点数据';

  @override
  String get date_range => '日期范围';

  @override
  String get select_date_range => '选择日期范围';

  @override
  String get price_range => '价格范围';

  @override
  String get unit_price_range => '单价范围';

  @override
  String get min_unit_price => '最低单价';

  @override
  String get max_unit_price => '最高单价';

  @override
  String get total_price_range => '总价范围';

  @override
  String get min_total_price => '最低总价';

  @override
  String get max_total_price => '最高总价';

  @override
  String get clear_price_filter => '清除价格筛选';

  @override
  String get place_barcode_in_frame => '将条码放入框内扫描';

  @override
  String get item_already_exists => '商品已存在';

  @override
  String barcode_with_value(String barcode) {
    return '条码：$barcode';
  }

  @override
  String name_with_value(String name) {
    return '名称：$name';
  }

  @override
  String category_with_value(String category) {
    return '分类：$category';
  }

  @override
  String current_quantity_with_value(String quantity, String unit) {
    return '当前数量：$quantity$unit';
  }

  @override
  String get please_select_operation => '请选择操作：';

  @override
  String get outbound => '出库';

  @override
  String get inbound => '入库';

  @override
  String get inbound_quantity => '入库数量';

  @override
  String get outbound_quantity => '出库数量';

  @override
  String get quantity => '数量';

  @override
  String get enter_inbound_quantity => '请输入入库数量';

  @override
  String get enter_outbound_quantity => '请输入出库数量';

  @override
  String item_increased(String name, String quantity, String unit) {
    return '已增加 $name $quantity$unit';
  }

  @override
  String delete_item_confirm_with_irreversible(String name) {
    return '确定要删除「$name」吗？此操作不可撤销。';
  }

  @override
  String item_decreased(String name, String quantity, String unit) {
    return '已减少 $name $quantity$unit';
  }

  @override
  String get database_reset => '数据库已重置，将重新创建表结构';

  @override
  String database_reset_error(String error) {
    return '重置数据库时出错: $error';
  }

  @override
  String mock_data_init_failed(String error) {
    return '模拟数据初始化失败: $error';
  }

  @override
  String get solution_steps => '解决方案：';

  @override
  String get solution_step_1 => '1. 卸载应用重新安装';

  @override
  String get solution_step_2 => '2. 或清除应用数据';

  @override
  String get solution_step_3 => '3. 或将 resetDatabaseOnStart 设为 true 后重新运行';

  @override
  String notification_service_init_failed(String error) {
    return '提醒服务初始化失败: $error';
  }

  @override
  String check_calendar_account_failed(String error) {
    return '检查日历账户失败: $error';
  }

  @override
  String create_calendar_failed(String error) {
    return '创建日历失败: $error';
  }

  @override
  String add_calendar_event_failed(String error) {
    return '添加日历事件失败: $error';
  }

  @override
  String delete_calendar_event_failed(String error) {
    return '删除日历事件失败: $error';
  }

  @override
  String set_permission_message_failed(String error) {
    return '设置权限提示消息失败: $error';
  }

  @override
  String mock_data_init_success(int count) {
    return '已成功初始化 $count 条模拟数据';
  }

  @override
  String database_has_data(int count) {
    return '数据库已有 $count 条数据，跳过模拟数据初始化';
  }

  @override
  String get database_structure_mismatch => '可能是数据库结构不匹配，建议清除应用数据或重新安装';

  @override
  String get old_database_deleted => '已删除旧数据库文件';

  @override
  String get backup_data_empty => '备份数据为空';

  @override
  String get backup_file_not_found => '备份文件不存在';

  @override
  String file_not_utf8(String error) {
    return '文件编码不是有效的UTF-8格式。请确保文件使用UTF-8编码保存。错误详情: $error';
  }

  @override
  String file_not_found(String filePath) {
    return '文件不存在: $filePath';
  }

  @override
  String file_empty(String filePath) {
    return '文件为空: $filePath';
  }

  @override
  String get file_content_empty => '文件内容解码后为空，可能是编码不匹配';

  @override
  String field_cannot_be_empty(String fieldName) {
    return '$fieldName不能为空';
  }

  @override
  String field_min_length(String fieldName, int minLength) {
    return '$fieldName长度不能少于$minLength个字符';
  }

  @override
  String field_max_length(String fieldName, int maxLength) {
    return '$fieldName长度不能超过$maxLength个字符';
  }

  @override
  String field_invalid_email(String fieldName) {
    return '请输入有效的$fieldName地址';
  }

  @override
  String field_invalid_number(String fieldName, String numberType) {
    return '$fieldName必须是$numberType';
  }

  @override
  String field_min_value(String fieldName, double min) {
    return '$fieldName不能小于$min';
  }

  @override
  String field_max_value(String fieldName, double max) {
    return '$fieldName不能大于$max';
  }

  @override
  String field_positive_integer(String fieldName) {
    return '$fieldName必须是正整数';
  }

  @override
  String field_greater_than_zero(String fieldName) {
    return '$fieldName必须大于0';
  }

  @override
  String field_positive_number(String fieldName) {
    return '$fieldName必须是正数';
  }

  @override
  String field_invalid_date(String fieldName) {
    return '请输入有效的$fieldName';
  }

  @override
  String field_date_not_past(String fieldName) {
    return '$fieldName不能是过去日期';
  }

  @override
  String field_date_not_before(String fieldName, String minDate) {
    return '$fieldName不能早于$minDate';
  }

  @override
  String field_date_not_after(String fieldName, String maxDate) {
    return '$fieldName不能晚于$maxDate';
  }

  @override
  String field_invalid_value(String fieldName) {
    return '请输入有效的$fieldName';
  }

  @override
  String password_min_length(String fieldName) {
    return '$fieldName长度不能少于8个字符';
  }

  @override
  String password_uppercase_required(String fieldName) {
    return '$fieldName必须包含至少一个大写字母';
  }

  @override
  String password_lowercase_required(String fieldName) {
    return '$fieldName必须包含至少一个小写字母';
  }

  @override
  String password_digit_required(String fieldName) {
    return '$fieldName必须包含至少一个数字';
  }

  @override
  String password_special_char_required(String fieldName) {
    return '$fieldName必须包含至少一个特殊字符';
  }

  @override
  String get passwords_not_match => '两次输入的密码不一致';

  @override
  String get item_name_cannot_be_empty => '物品名称不能为空';

  @override
  String name_max_length(int maxLength) {
    return '名称不能超过$maxLength个字符';
  }

  @override
  String quantity_min(int minQuantity) {
    return '数量不能小于$minQuantity';
  }

  @override
  String quantity_max(int maxQuantity) {
    return '数量不能超过$maxQuantity';
  }

  @override
  String get unit_price_not_negative => '单价不能为负数';

  @override
  String unit_price_max(double maxUnitPrice) {
    return '单价不能超过$maxUnitPrice';
  }

  @override
  String get set_production_expiry_for_validity => '请设置生产日期和保质期来自动计算有效期';

  @override
  String get set_purchase_warranty_for_validity => '请设置购买日期和保质期来自动计算保修期';

  @override
  String get calendar_account_creation_failed => '无法创建日历账户，请检查系统日历设置';

  @override
  String get test_notification => '测试通知';

  @override
  String get test_notification_description => '这是一个测试通知，用于验证本地提醒功能';

  @override
  String get day_unit => '天';

  @override
  String days_with_value(int days) {
    return '$days天';
  }

  @override
  String get item_saved => '物品已保存';

  @override
  String get item_updated => '物品已更新';

  @override
  String get item_added => '物品已添加';

  @override
  String get save_success => '保存成功';

  @override
  String get update_success => '更新成功';

  @override
  String get delete_success => '删除成功';

  @override
  String get save_failed => '保存失败';

  @override
  String get update_failed => '更新失败';

  @override
  String get delete_failed => '删除失败';
}
