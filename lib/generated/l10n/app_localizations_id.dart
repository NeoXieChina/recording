// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get app_name => 'Menyimpan benda di ruang kecil';

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
  String get language_settings => 'Pengaturan bahasa';

  @override
  String get language_settings_description => 'Atur bahasa tampilan aplikasi';

  @override
  String get system_default => 'Default sistem';

  @override
  String get use_system_language => 'Gunakan bahasa sistem';

  @override
  String get language_change_hint =>
      'Perubahan bahasa akan berlaku setelah aplikasi di-restart';

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
  String current_selection(int days) {
    return 'Pilihan saat ini: $days hari';
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
  String get add_test_calendar_event => 'Tambahkan acara kalender uji';

  @override
  String get enable_calendar_sync_first =>
      'Silakan aktifkan sakelar \'Sinkronisasi Kalender\' terlebih dahulu';

  @override
  String get app_alert_settings => 'Pengaturan Pengingat Aplikasi';

  @override
  String get local_alerts => 'Pengingat lokal';

  @override
  String get local_alerts_desc =>
      'Terima pengingat kedaluwarsa dalam aplikasi setelah diaktifkan';

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
      'Akses ditolak secara permanen';

  @override
  String get calendar_permission_permanently_denied_desc =>
      'Izin kalender ditolak secara permanen, harap aktifkan izin secara manual di pengaturan sistem.';

  @override
  String get go_to_settings => 'Pergi ke pengaturan';

  @override
  String get calendar_account_failed =>
      'Izin kalender telah diberikan, tetapi tidak dapat membuat akun kalender. Harap periksa pengaturan kalender sistem.';

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
      'Diperlukan izin kalender untuk menambahkan acara uji';

  @override
  String get test_notification_sent => 'Pemberitahuan uji coba telah dikirim';

  @override
  String test_notification_failed(String error) {
    return 'Gagal mengirim notifikasi uji: $error';
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
    return 'Impor data berhasil, total $count item diimpor';
  }

  @override
  String import_failed(String error) {
    return 'Impor gagal: $error';
  }

  @override
  String get select_file => 'Pilih file';

  @override
  String get no_data => 'Tidak ada data';

  @override
  String get no_data_description =>
      'Tidak ada data saat ini, klik tombol di bawah untuk menambahkan catatan pertama!';

  @override
  String get load_failed => 'Gagal memuat';

  @override
  String get load_failed_description =>
      'Gagal memuat data, harap periksa koneksi jaringan dan coba lagi';

  @override
  String get retry => 'Coba lagi';

  @override
  String get network_connection_failed => 'Koneksi jaringan gagal';

  @override
  String get network_connection_failed_description =>
      'Silakan periksa koneksi jaringan dan coba lagi';

  @override
  String get no_results => 'Tidak ditemukan hasil';

  @override
  String get no_results_description =>
      'Cobalah menggunakan kata kunci lain untuk mencari';

  @override
  String get clear_search => 'Hapus pencarian';

  @override
  String get insufficient_permission => 'Hak akses tidak cukup';

  @override
  String get insufficient_permission_description =>
      'Memerlukan izin terkait untuk menggunakan fitur ini';

  @override
  String get request_permission => 'Meminta izin';

  @override
  String get app_info => 'Informasi Aplikasi';

  @override
  String get version => 'versi';

  @override
  String get developer => 'Pengembang';

  @override
  String get device_info => 'Informasi Perangkat';

  @override
  String get device_model => 'Model perangkat';

  @override
  String get brand => 'Merek';

  @override
  String get device_name => 'Nama Perangkat';

  @override
  String get product => 'Produk';

  @override
  String get hardware => 'Perangkat keras';

  @override
  String get android_version => 'Versi Android';

  @override
  String get sdk_version => 'Versi SDK';

  @override
  String get system_name => 'Nama sistem';

  @override
  String get system_version => 'Versi sistem';

  @override
  String get device_identifier => 'Identifikasi perangkat';

  @override
  String get computer_name => 'Nama komputer';

  @override
  String get build_number => 'Nomor versi';

  @override
  String error_getting_device_info(String error) {
    return 'Gagal mendapatkan informasi perangkat: $error';
  }

  @override
  String get features => 'Perkenalan Fungsi';

  @override
  String get app_description => 'Aplikasi Manajemen Barang Pintar';

  @override
  String get app_description_detail =>
      'Membantu Anda mengelola tanggal kedaluwarsa barang, tanggal garansi, dan informasi lainnya, serta menyediakan fitur pengingat cerdas.';

  @override
  String get consumable => 'Barang habis pakai';

  @override
  String get durable => 'Barang tahan lama';

  @override
  String get sort => 'Urutkan';

  @override
  String get name_asc => 'Urutan nama menaik';

  @override
  String get name_desc => 'Nama urut menurun';

  @override
  String get date_asc => 'Tanggal naik';

  @override
  String get date_desc => 'Urutkan tanggal secara menurun';

  @override
  String get price_asc => 'Harga per unit naik';

  @override
  String get price_desc => 'Harga per unit menurun';

  @override
  String get quantity_asc => 'Urutan menaik berdasarkan jumlah';

  @override
  String get quantity_desc => 'Urutan jumlah menurun';

  @override
  String get total_price_asc => 'Harga total dari rendah ke tinggi';

  @override
  String get total_price_desc => 'Harga total menurun';

  @override
  String get clear_all_filters => 'Hapus semua filter';

  @override
  String get scan_barcode => 'Pindai kode untuk masuk ke gudang';

  @override
  String get search_items => 'Mencari barang...';

  @override
  String get no_items => 'Belum ada barang';

  @override
  String get no_items_description =>
      'Klik tombol di bawah untuk menambahkan barang pertama';

  @override
  String get expired => 'Kedaluwarsa';

  @override
  String get expiring_soon => 'Akan segera kedaluwarsa';

  @override
  String get warranty_expired => 'Garansi telah kedaluwarsa';

  @override
  String get warranty_expiring_soon => 'Garansi akan segera berakhir';

  @override
  String days_remaining(int count) {
    return 'Tersisa $count hari';
  }

  @override
  String expired_days_ago(int count) {
    return 'Sudah kedaluwarsa $count hari';
  }

  @override
  String get delete_item => 'Hapus barang';

  @override
  String delete_item_confirm(String name) {
    return 'Apakah Anda yakin ingin menghapus \"$name\"?';
  }

  @override
  String get item_deleted => 'Barang telah dihapus';

  @override
  String get failed_to_delete => 'Penghapusan gagal';

  @override
  String failed_to_delete_message(String error) {
    return 'Tidak dapat menghapus barang: $error';
  }

  @override
  String get date_range_filter => 'Penyaringan rentang tanggal';

  @override
  String get price_range_filter => 'Penyaringan Rentang Harga';

  @override
  String get my_items => 'Barang saya';

  @override
  String get click_fab_to_add_item =>
      'Klik tombol di kanan bawah untuk menambahkan barang';

  @override
  String get confirm_delete => 'Konfirmasi hapus';

  @override
  String get filter_options => 'Opsi Penyaringan';

  @override
  String get filter_by_type_category_location =>
      'Filter barang berdasarkan jenis, kategori, dan lokasi';

  @override
  String categories_count(int count) {
    return '$count kategori';
  }

  @override
  String get all_categories => 'Semua Kategori';

  @override
  String get no_category_data => 'Belum ada data kategori';

  @override
  String get storage_location => 'Tempat penyimpanan';

  @override
  String locations_count(int count) {
    return '$count lokasi';
  }

  @override
  String get all_locations => 'Semua tempat';

  @override
  String get no_location_data => 'Belum ada data lokasi';

  @override
  String get date_range => 'Rentang tanggal';

  @override
  String get select_date_range => 'Pilih rentang tanggal';

  @override
  String get price_range => 'Rentang harga';

  @override
  String get unit_price_range => 'Rentang harga per unit';

  @override
  String get min_unit_price => 'Harga satuan terendah';

  @override
  String get max_unit_price => 'Harga satuan tertinggi';

  @override
  String get total_price_range => 'Rentang harga total';

  @override
  String get min_total_price => 'Harga total terendah';

  @override
  String get max_total_price => 'Harga total tertinggi';

  @override
  String get clear_price_filter => 'Hapus filter harga';

  @override
  String get place_barcode_in_frame =>
      'Letakkan barcode di dalam kotak untuk dipindai';

  @override
  String get item_already_exists => 'Produk sudah ada';

  @override
  String barcode_with_value(String barcode) {
    return 'Kode batang: $barcode';
  }

  @override
  String name_with_value(String name) {
    return 'Nama: $name';
  }

  @override
  String category_with_value(String category) {
    return 'Klasifikasi: $category';
  }

  @override
  String current_quantity_with_value(String quantity, String unit) {
    return 'Jumlah saat ini: $quantity$unit';
  }

  @override
  String get please_select_operation => 'Silakan pilih operasi:';

  @override
  String get outbound => 'Keluarkan dari Gudang';

  @override
  String get inbound => 'Masuk gudang';

  @override
  String get inbound_quantity => 'Jumlah masuk gudang';

  @override
  String get outbound_quantity => 'Jumlah keluar gudang';

  @override
  String get quantity => 'jumlah';

  @override
  String get enter_inbound_quantity => 'Silakan masukkan jumlah masuk gudang';

  @override
  String get enter_outbound_quantity => 'Silakan masukkan jumlah keluar gudang';

  @override
  String item_increased(String name, String quantity, String unit) {
    return 'Telah ditambahkan $name $quantity$unit';
  }

  @override
  String delete_item_confirm_with_irreversible(String name) {
    return 'Apakah Anda yakin ingin menghapus \"$name\"? Tindakan ini tidak bisa dibatalkan.';
  }

  @override
  String item_decreased(String name, String quantity, String unit) {
    return 'Telah dikurangi $name $quantity$unit';
  }

  @override
  String get database_reset =>
      'Database telah direset, tabel akan dibuat ulang';

  @override
  String database_reset_error(String error) {
    return 'Terjadi kesalahan saat mengatur ulang basis data: $error';
  }

  @override
  String mock_data_init_failed(String error) {
    return 'Inisialisasi data simulasi gagal: $error';
  }

  @override
  String get solution_steps => 'Solusi:';

  @override
  String get solution_step_1 => '1. Copot pemasangan aplikasi dan instal ulang';

  @override
  String get solution_step_2 => '2. Atau hapus data aplikasi';

  @override
  String get solution_step_3 =>
      '3. Atau jalankan kembali setelah mengatur resetDatabaseOnStart ke true';

  @override
  String notification_service_init_failed(String error) {
    return 'Gagal menginisialisasi layanan pengingat: $error';
  }

  @override
  String check_calendar_account_failed(String error) {
    return 'Gagal memeriksa akun kalender: $error';
  }

  @override
  String create_calendar_failed(String error) {
    return 'Gagal membuat kalender: $error';
  }

  @override
  String add_calendar_event_failed(String error) {
    return 'Gagal menambahkan acara kalender: $error';
  }

  @override
  String delete_calendar_event_failed(String error) {
    return 'Gagal menghapus acara kalender: $error';
  }

  @override
  String set_permission_message_failed(String error) {
    return 'Gagal mengatur pesan prompt izin: $error';
  }

  @override
  String mock_data_init_success(int count) {
    return 'Berhasil menginisialisasi $count data simulasi';
  }

  @override
  String database_has_data(int count) {
    return 'Database sudah memiliki $count data, lewati inisialisasi data simulasi';
  }

  @override
  String get database_structure_mismatch =>
      'Mungkin karena struktur basis data tidak cocok, disarankan untuk membersihkan data aplikasi atau menginstal ulang';

  @override
  String get old_database_deleted => 'File database lama telah dihapus';

  @override
  String get backup_data_empty => 'Data cadangan kosong';

  @override
  String get backup_file_not_found => 'File cadangan tidak ada';

  @override
  String file_not_utf8(String error) {
    return 'File encoding bukan format UTF-8 yang valid. Harap pastikan file disimpan menggunakan encoding UTF-8. Detail kesalahan: $error';
  }

  @override
  String file_not_found(String filePath) {
    return 'File tidak ada: $filePath';
  }

  @override
  String file_empty(String filePath) {
    return 'File kosong: $filePath';
  }

  @override
  String get file_content_empty =>
      'Setelah dekode konten file menjadi kosong, mungkin karena encoding tidak cocok';

  @override
  String field_cannot_be_empty(String fieldName) {
    return '$fieldName tidak boleh kosong';
  }

  @override
  String field_min_length(String fieldName, int minLength) {
    return '$fieldName panjangnya tidak boleh kurang dari $minLength karakter';
  }

  @override
  String field_max_length(String fieldName, int maxLength) {
    return '$fieldName tidak boleh lebih dari $maxLength karakter';
  }

  @override
  String field_invalid_email(String fieldName) {
    return 'Silakan masukkan alamat $fieldName yang valid';
  }

  @override
  String field_invalid_number(String fieldName, String numberType) {
    return '$fieldName harus $numberType';
  }

  @override
  String field_min_value(String fieldName, double min) {
    return '$fieldName tidak boleh kurang dari $min';
  }

  @override
  String field_max_value(String fieldName, double max) {
    return '$fieldName tidak boleh lebih besar dari $max';
  }

  @override
  String field_positive_integer(String fieldName) {
    return '$fieldName harus berupa bilangan bulat positif';
  }

  @override
  String field_greater_than_zero(String fieldName) {
    return '$fieldName harus lebih besar dari 0';
  }

  @override
  String field_positive_number(String fieldName) {
    return '$fieldName harus berupa angka positif';
  }

  @override
  String field_invalid_date(String fieldName) {
    return 'Silakan masukkan $fieldName yang valid';
  }

  @override
  String field_date_not_past(String fieldName) {
    return '$fieldName tidak boleh berupa tanggal di masa lalu';
  }

  @override
  String field_date_not_before(String fieldName, String minDate) {
    return '$fieldName tidak boleh lebih awal dari $minDate';
  }

  @override
  String field_date_not_after(String fieldName, String maxDate) {
    return '$fieldName tidak boleh lebih lambat dari $maxDate';
  }

  @override
  String field_invalid_value(String fieldName) {
    return 'Silakan masukkan $fieldName yang valid';
  }

  @override
  String password_min_length(String fieldName) {
    return '$fieldName panjangnya tidak boleh kurang dari 8 karakter';
  }

  @override
  String password_uppercase_required(String fieldName) {
    return '$fieldName harus berisi setidaknya satu huruf kapital';
  }

  @override
  String password_lowercase_required(String fieldName) {
    return '$fieldName harus berisi setidaknya satu huruf kecil';
  }

  @override
  String password_digit_required(String fieldName) {
    return '$fieldName harus berisi setidaknya satu angka';
  }

  @override
  String password_special_char_required(String fieldName) {
    return '$fieldName harus mengandung setidaknya satu karakter khusus';
  }

  @override
  String get passwords_not_match =>
      'Kata sandi yang dimasukkan dua kali tidak cocok';

  @override
  String get item_name_cannot_be_empty => 'Nama barang tidak boleh kosong';

  @override
  String name_max_length(int maxLength) {
    return 'Nama tidak boleh lebih dari $maxLength karakter';
  }

  @override
  String quantity_min(int minQuantity) {
    return 'Jumlah tidak boleh kurang dari $minQuantity';
  }

  @override
  String quantity_max(int maxQuantity) {
    return 'Jumlah tidak boleh melebihi $maxQuantity';
  }

  @override
  String get unit_price_not_negative => 'Harga satuan tidak boleh negatif';

  @override
  String unit_price_max(double maxUnitPrice) {
    return 'Harga satuan tidak boleh melebihi $maxUnitPrice';
  }

  @override
  String get set_production_expiry_for_validity =>
      'Silakan atur tanggal produksi dan masa simpan untuk menghitung masa berlaku secara otomatis';

  @override
  String get set_purchase_warranty_for_validity =>
      'Silakan atur tanggal pembelian dan masa kedaluwarsa untuk menghitung garansi secara otomatis';

  @override
  String get calendar_account_creation_failed =>
      'Tidak dapat membuat akun kalender, silakan periksa pengaturan kalender sistem';

  @override
  String get test_notification => 'Pemberitahuan uji';

  @override
  String get test_notification_description =>
      'Ini adalah notifikasi uji, digunakan untuk memverifikasi fungsi pengingat lokal';

  @override
  String get day_unit => 'langit';

  @override
  String days_with_value(int days) {
    return '$days hari';
  }

  @override
  String get item_saved => 'Barang telah disimpan';

  @override
  String get item_updated => 'Barang telah diperbarui';

  @override
  String get item_added => 'Barang telah ditambahkan';

  @override
  String get save_success => 'Berhasil disimpan';

  @override
  String get update_success => 'Pembaruan berhasil';

  @override
  String get delete_success => 'Penghapusan berhasil';

  @override
  String get save_failed => 'Gagal menyimpan';

  @override
  String get update_failed => 'Pembaruan gagal';

  @override
  String get delete_failed => 'Penghapusan gagal';
}
