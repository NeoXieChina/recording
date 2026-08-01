// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malay (`ms`).
class AppLocalizationsMs extends AppLocalizations {
  AppLocalizationsMs([String locale = 'ms']) : super(locale);

  @override
  String get app_name => 'Tempat menyimpan barang kecil';

  @override
  String get cancel => 'Batalkan';

  @override
  String get confirm => 'Sahkan';

  @override
  String get save => 'Simpan';

  @override
  String get delete => 'Padam';

  @override
  String get edit => 'Sunting';

  @override
  String get add => 'Tambah';

  @override
  String get edit_item => 'Sunting item';

  @override
  String get add_item => 'Tambah item';

  @override
  String get search => 'Cari';

  @override
  String get settings => 'Tetapan';

  @override
  String get language_settings => 'Tetapan Bahasa';

  @override
  String get language_settings_description =>
      'Tetapkan bahasa paparan aplikasi';

  @override
  String get system_default => 'Tetapan lalai sistem';

  @override
  String get use_system_language => 'Gunakan bahasa sistem';

  @override
  String get language_change_hint =>
      'Perubahan bahasa akan berlaku selepas aplikasi dimulakan semula';

  @override
  String get back => 'Kembali';

  @override
  String get next => 'Langkah seterusnya';

  @override
  String get done => 'Selesai';

  @override
  String get loading => 'Sedang memuat...';

  @override
  String get error => 'Kesilapan';

  @override
  String get success => 'kejayaan';

  @override
  String get warning => 'Amaran';

  @override
  String get info => 'Maklumat';

  @override
  String get select_alert_days => 'Pilih bilangan hari peringatan';

  @override
  String get custom => 'Tersuai';

  @override
  String custom_days(int days) {
    return 'Tersuai ($days hari)';
  }

  @override
  String current_selection(int days) {
    return 'Pilihan semasa: $days hari';
  }

  @override
  String alert_days_range(int min, int max) {
    return 'Julat bilangan hari peringatan: $min-$max hari';
  }

  @override
  String get enter_days => 'Sila masukkan bilangan hari peringatan';

  @override
  String get days => 'Jumlah hari';

  @override
  String enter_valid_days(int min, int max) {
    return 'Sila masukkan nombor antara $min dan $max';
  }

  @override
  String get alert_settings => 'Tetapan Amaran';

  @override
  String get calendar_settings => 'Tetapan kalendar';

  @override
  String get calendar_sync => 'Penyegerakan kalendar';

  @override
  String get calendar_sync_desc =>
      'Selepas dihidupkan, akan meminta kebenaran kalendar';

  @override
  String get add_test_calendar_event => 'Tambah acara kalender ujian';

  @override
  String get enable_calendar_sync_first =>
      'Sila hidupkan suis \'Penyegerakan Kalendar\' terlebih dahulu';

  @override
  String get app_alert_settings => 'Tetapan Peringatan Aplikasi';

  @override
  String get local_alerts => 'Peringatan tempatan';

  @override
  String get local_alerts_desc =>
      'Terima peringatan luput dalam aplikasi selepas diaktifkan';

  @override
  String get send_test_notification => 'Hantar notis ujian';

  @override
  String get enable_local_alerts_first =>
      'Sila hidupkan suis \'Peringatan Tempatan\' terlebih dahulu';

  @override
  String get alert_days_settings => 'Tetapan bilangan hari peringatan';

  @override
  String get advance_alert_days => 'Bilangan hari peringatan awal';

  @override
  String get advance_alert_days_desc =>
      'Tetapkan berapa hari lebih awal untuk memberitahu item yang akan tamat tempoh atau jaminan akan tamat';

  @override
  String get calendar_permission_request => 'Permintaan kebenaran kalendar';

  @override
  String get calendar_permission_desc =>
      'Perlu akses kalendar untuk menyegerakkan peringatan item. Adakah dibenarkan?';

  @override
  String get allow => 'Membenarkan';

  @override
  String get calendar_permission_granted =>
      'Kebenaran kalendar telah diberikan, penyegerakan kalendar telah dihidupkan';

  @override
  String get calendar_permission_denied =>
      'Kebenaran kalendar ditolak, tidak dapat menghidupkan penyegerakan kalendar';

  @override
  String get calendar_permission_permanently_denied =>
      'Kebenaran telah ditolak secara kekal';

  @override
  String get calendar_permission_permanently_denied_desc =>
      'Kebenaran kalendar telah ditolak secara kekal, sila buka kebenaran secara manual dalam tetapan sistem.';

  @override
  String get go_to_settings => 'Pergi ke tetapan';

  @override
  String get calendar_account_failed =>
      'Kebenaran kalendar telah diberikan, tetapi tidak dapat membuat akaun kalendar. Sila semak tetapan kalendar sistem';

  @override
  String get calendar_account_created =>
      'Kebenaran kalendar telah diberikan, akaun kalendar tempatan telah dibuat';

  @override
  String get calendar_account_creating =>
      'Akaun kalendar telah berjaya dibuat, tetapi sistem mungkin memerlukan sedikit masa untuk berkuat kuasa';

  @override
  String get test_calendar_event_added =>
      'Ujian penambahan acara kalendar berjaya';

  @override
  String get test_calendar_event_failed =>
      'Gagal menambah acara kalendar ujian, sila semak tetapan kalendar';

  @override
  String get calendar_permission_required =>
      'Perlu kebenaran kalendar untuk menambahkan acara ujian';

  @override
  String get test_notification_sent => 'Pemberitahuan ujian telah dihantar';

  @override
  String test_notification_failed(String error) {
    return 'Gagal menghantar pemberitahuan ujian: $error';
  }

  @override
  String get notification_permission_required =>
      'Memerlukan kebenaran pemberitahuan untuk mengaktifkan peringatan tempatan';

  @override
  String operation_failed(String error) {
    return 'Operasi gagal: $error';
  }

  @override
  String get notification_channel_name => 'Pemberitahuan Amaran Barang';

  @override
  String get notification_channel_description =>
      'Peringatan barang tamat tempoh atau habis jaminan';

  @override
  String get item_category_food => 'Makanan';

  @override
  String get item_category_daily_necessities => 'barangan harian';

  @override
  String get item_category_cosmetics => 'kosmetik';

  @override
  String get item_category_medicine => 'Ubat';

  @override
  String get item_category_electronics => 'Produk elektronik';

  @override
  String get item_category_furniture => 'Perabot';

  @override
  String get item_category_clothing => 'Pakaian';

  @override
  String get item_category_books => 'Buku';

  @override
  String get item_category_other => 'Lain-lain';

  @override
  String get purchase_channel_online_mall => 'Kedai dalam talian';

  @override
  String get purchase_channel_physical_store => 'Kedai fizikal';

  @override
  String get purchase_channel_supermarket => 'pasar raya';

  @override
  String get purchase_channel_specialty_store => 'Kedai khas';

  @override
  String get purchase_channel_secondhand_market => 'Pasaran barangan terpakai';

  @override
  String get purchase_channel_other => 'Lain-lain';

  @override
  String get default_category => 'Lain-lain';

  @override
  String get default_purchase_channel => 'Kedai dalam talian';

  @override
  String get item_category => 'Pengelasan Barang';

  @override
  String get custom_category => 'Kategori Tersuai';

  @override
  String get backup_data => 'Sandarkan data';

  @override
  String get backup_data_description =>
      'Membungkus semua data (termasuk gambar) ke dalam fail ZIP untuk sandaran';

  @override
  String get backup_all_data => 'Sandarkan semua data';

  @override
  String get backup_success => 'Sandaran berjaya';

  @override
  String backup_failed(String error) {
    return 'Sandaran gagal: $error';
  }

  @override
  String get restore_data => 'Memulihkan data';

  @override
  String get restore_data_description =>
      'Pulihkan semua data daripada fail sandaran ZIP';

  @override
  String get export_data => 'Eksport data';

  @override
  String get export_data_description => 'Eksport sebagai format CSV, TXT, SQL';

  @override
  String get import_data => 'Import data';

  @override
  String get import_data_description => 'Import data dari fail CSV, TXT, SQL';

  @override
  String get alert_settings_description =>
      'Tetapan peringatan kalendar dan peringatan aplikasi';

  @override
  String get about => 'Mengenai';

  @override
  String get about_description => 'Maklumat dan versi aplikasi';

  @override
  String get select_backup_file_first =>
      'Sila pilih fail sandaran terlebih dahulu';

  @override
  String get confirm_restore => 'Sahkan pemulihan';

  @override
  String get confirm_restore_message =>
      'Memulihkan sandaran akan mengosongkan semua data sedia ada dan menggantikannya dengan data sandaran, tindakan ini tidak dapat dibatalkan. Adakah anda pasti mahu meneruskan?';

  @override
  String get confirm_again => 'Sahkan sekali lagi';

  @override
  String get confirm_restore_warning =>
      'Adakah anda pasti mahu mengosongkan semua data sedia ada dan memulihkan sandaran? Tindakan ini tidak boleh dipulihkan!';

  @override
  String get confirm_restore_button => 'Pastikan untuk memulihkan';

  @override
  String restore_success(int count) {
    return 'Pemulihan berjaya, sebanyak $count item';
  }

  @override
  String restore_failed(String error) {
    return 'Pemulihan gagal: $error';
  }

  @override
  String get select_backup_file => 'Pilih fail sandaran';

  @override
  String get restore_backup => 'Pulihkan sandaran';

  @override
  String selected_file(String filename) {
    return 'Fail yang dipilih: $filename';
  }

  @override
  String get export_success => 'Eksport data berjaya';

  @override
  String export_failed(String error) {
    return 'Eksport gagal: $error';
  }

  @override
  String get format_csv => 'CSV';

  @override
  String get format_txt => 'TXT';

  @override
  String get format_sql => 'SQL';

  @override
  String get duplicate_data_handling => 'Pemprosesan data berulang';

  @override
  String get duplicate_data_detected =>
      'Data yang berulang telah dikesan, sila pilih cara pemprosesan:';

  @override
  String get skip => 'Langkau';

  @override
  String get overwrite => 'Menutupi';

  @override
  String get skip_all => 'Lompat semua';

  @override
  String get overwrite_all => 'Menutupi sepenuhnya';

  @override
  String get select_import_format_first =>
      'Sila pilih format import terlebih dahulu';

  @override
  String get confirm_import => 'Sahkan import';

  @override
  String get confirm_import_message =>
      'Import data akan menimpa data yang sedia ada, operasi ini tidak boleh dibatalkan. Adakah anda pasti mahu meneruskan?';

  @override
  String import_success(int count) {
    return 'Import data berjaya, sejumlah $count item telah diimport';
  }

  @override
  String import_failed(String error) {
    return 'Import gagal: $error';
  }

  @override
  String get select_file => 'Pilih fail';

  @override
  String get no_data => 'Tiada data';

  @override
  String get no_data_description =>
      'Tiada data pada masa ini, klik butang di bawah untuk menambah rekod pertama anda!';

  @override
  String get load_failed => 'Muat gagal';

  @override
  String get load_failed_description =>
      'Pemuatan data gagal, sila semak sambungan rangkaian dan cuba sekali lagi';

  @override
  String get retry => 'Cuba semula';

  @override
  String get network_connection_failed => 'Sambungan rangkaian gagal';

  @override
  String get network_connection_failed_description =>
      'Sila semak sambungan rangkaian dan cuba lagi';

  @override
  String get no_results => 'Tiada keputusan ditemui';

  @override
  String get no_results_description =>
      'Cuba gunakan kata kunci lain untuk mencari';

  @override
  String get clear_search => 'Kosongkan carian';

  @override
  String get insufficient_permission => 'Kebenaran tidak mencukupi';

  @override
  String get insufficient_permission_description =>
      'Memerlukan kebenaran yang berkaitan untuk menggunakan fungsi ini';

  @override
  String get request_permission => 'Meminta kebenaran';

  @override
  String get app_info => 'Maklumat Aplikasi';

  @override
  String get version => 'versi';

  @override
  String get developer => 'Pembangun';

  @override
  String get device_info => 'Maklumat peranti';

  @override
  String get device_model => 'Model peralatan';

  @override
  String get brand => 'Jenama';

  @override
  String get device_name => 'Nama Peranti';

  @override
  String get product => 'Produk';

  @override
  String get hardware => 'perkakasan';

  @override
  String get android_version => 'Versi Android';

  @override
  String get sdk_version => 'Versi SDK';

  @override
  String get system_name => 'Nama sistem';

  @override
  String get operating_system => 'Sistem operasi';

  @override
  String get system_version => 'Versi sistem';

  @override
  String get dart_version => 'Versi Dart';

  @override
  String get device_identifier => 'Pengenalan Peranti';

  @override
  String get computer_name => 'Nama komputer';

  @override
  String get build_number => 'Nombor versi';

  @override
  String error_getting_device_info(String error) {
    return 'Tidak dapat mendapatkan maklumat peranti: $error';
  }

  @override
  String get features => 'Pengenalan Fungsi';

  @override
  String get app_description => 'Aplikasi Pengurusan Barangan Pintar';

  @override
  String get app_description_detail =>
      'Membantu anda mengurus maklumat seperti tarikh luput barang, tarikh jaminan, dan menyediakan fungsi peringatan pintar.';

  @override
  String get consumable => 'Barangan pakai buang';

  @override
  String get durable => 'Barangan tahan lama';

  @override
  String get sort => 'Susun';

  @override
  String get name_asc => 'Nama mengikut urutan menaik';

  @override
  String get name_desc => 'Nama susunan menurun';

  @override
  String get date_asc => 'Tarikh menaik';

  @override
  String get date_desc => 'Tarikh susunan menurun';

  @override
  String get price_asc => 'Harga seunit menaik';

  @override
  String get price_desc => 'Harga seunit menurun';

  @override
  String get quantity_asc => 'Susunan menaik mengikut kuantiti';

  @override
  String get quantity_desc => 'Susunan menurun mengikut kuantiti';

  @override
  String get total_price_asc => 'Harga keseluruhan menaik';

  @override
  String get total_price_desc => 'Harga keseluruhan mengikut turutan menurun';

  @override
  String get clear_all_filters => 'Kosongkan semua penapis';

  @override
  String get scan_barcode => 'Imbas kod untuk masuk ke stor';

  @override
  String get search_items => 'Mencari barang...';

  @override
  String get no_items => 'Tiada barangan';

  @override
  String get no_items_description =>
      'Klik butang di bawah untuk menambah barang pertama';

  @override
  String get expired => 'Telah tamat tempoh';

  @override
  String get expiring_soon => 'Akan tamat tempoh';

  @override
  String get warranty_expired => 'Tempoh jaminan telah tamat';

  @override
  String get warranty_expiring_soon => 'Jaminan akan tamat tidak lama lagi';

  @override
  String days_remaining(int count) {
    return 'Baki $count hari';
  }

  @override
  String expired_days_ago(int count) {
    return 'Telah tamat tempoh $count hari';
  }

  @override
  String get delete_item => 'Padam item';

  @override
  String delete_item_confirm(String name) {
    return 'Adakah anda pasti mahu memadam \"$name\"?';
  }

  @override
  String get item_deleted => 'Item telah dipadam';

  @override
  String get failed_to_delete => 'Padam gagal';

  @override
  String failed_to_delete_message(String error) {
    return 'Tidak dapat memadam item: $error';
  }

  @override
  String get date_range_filter => 'Penapisan julat tarikh';

  @override
  String get price_range_filter => 'Penapisan julat harga';

  @override
  String get my_items => 'Barang saya';

  @override
  String get click_fab_to_add_item =>
      'Klik butang di sudut kanan bawah untuk menambah barang';

  @override
  String get confirm_delete => 'Sahkan untuk padam';

  @override
  String get filter_options => 'Tapis pilihan';

  @override
  String get filter_by_type_category_location =>
      'Tapis item mengikut jenis, kategori dan lokasi';

  @override
  String categories_count(int count) {
    return '$count kategori';
  }

  @override
  String get all_categories => 'Semua kategori';

  @override
  String get no_category_data => 'Tiada data kategori';

  @override
  String get storage_location => 'Lokasi penyimpanan';

  @override
  String locations_count(int count) {
    return '$count lokasi';
  }

  @override
  String get all_locations => 'Semua lokasi';

  @override
  String get no_location_data => 'Tiada data lokasi';

  @override
  String get date_range => 'Julat Tarikh';

  @override
  String get select_date_range => 'Pilih julat tarikh';

  @override
  String get price_range => 'Julat harga';

  @override
  String get unit_price_range => 'Julat harga seunit';

  @override
  String get min_unit_price => 'Harga unit terendah';

  @override
  String get max_unit_price => 'Harga tertinggi seunit';

  @override
  String get total_price_range => 'Julat harga keseluruhan';

  @override
  String get min_total_price => 'Jumlah harga terendah';

  @override
  String get max_total_price => 'Harga maksimum keseluruhan';

  @override
  String get clear_price_filter => 'Kosongkan penapis harga';

  @override
  String get place_barcode_in_frame =>
      'Letakkan kod bar dalam kotak untuk mengimbas';

  @override
  String get item_already_exists => 'Produk sudah wujud';

  @override
  String barcode_with_value(String barcode) {
    return 'Kod bar: $barcode';
  }

  @override
  String name_with_value(String name) {
    return 'Nama: $name';
  }

  @override
  String category_with_value(String category) {
    return 'Kategori: $category';
  }

  @override
  String current_quantity_with_value(String quantity, String unit) {
    return 'Jumlah semasa: $quantity$unit';
  }

  @override
  String get please_select_operation => 'Sila pilih operasi:';

  @override
  String get outbound => 'Keluaran gudang';

  @override
  String get inbound => 'Masuk gudang';

  @override
  String get inbound_quantity => 'Jumlah masuk gudang';

  @override
  String get outbound_quantity => 'Kuantiti keluar gudang';

  @override
  String get quantity => 'Jumlah';

  @override
  String get enter_inbound_quantity => 'Sila masukkan kuantiti storan';

  @override
  String get enter_outbound_quantity => 'Sila masukkan kuantiti keluar stok';

  @override
  String delete_item_confirm_with_irreversible(String name) {
    return 'Adakah anda pasti ingin memadam \"$name\"? Tindakan ini tidak boleh dibatalkan.';
  }

  @override
  String get database_reset =>
      'Pangkalan data telah diset semula, struktur jadual akan dicipta semula';

  @override
  String database_reset_error(String error) {
    return 'Ralat semasa menetapkan semula pangkalan data: $error';
  }

  @override
  String mock_data_init_failed(String error) {
    return 'Inisialisasi data simulasi gagal: $error';
  }

  @override
  String get solution_steps => 'Penyelesaian:';

  @override
  String get solution_step_1 => '1. Nyahpasang aplikasi dan pasang semula';

  @override
  String get solution_step_2 => '2. Atau bersihkan data aplikasi';

  @override
  String get solution_step_3 =>
      '3. Atau tetapkan resetDatabaseOnStart kepada true kemudian jalankan semula';

  @override
  String notification_service_init_failed(String error) {
    return 'Inisialisasi perkhidmatan peringatan gagal: $error';
  }

  @override
  String check_calendar_account_failed(String error) {
    return 'Gagal memeriksa akaun kalendar: $error';
  }

  @override
  String create_calendar_failed(String error) {
    return 'Gagal membuat kalendar: $error';
  }

  @override
  String add_calendar_event_failed(String error) {
    return 'Gagal menambah acara kalendar: $error';
  }

  @override
  String delete_calendar_event_failed(String error) {
    return 'Gagal memadam acara kalendar: $error';
  }

  @override
  String set_permission_message_failed(String error) {
    return 'Gagal menetapkan mesej pemberitahuan kebenaran: $error';
  }

  @override
  String mock_data_init_success(int count) {
    return 'Berjaya memulakan $count data simulasi';
  }

  @override
  String database_has_data(int count) {
    return 'Pangkalan data sudah mempunyai $count rekod, langkau inisialisasi data simulasi';
  }

  @override
  String get database_structure_mismatch =>
      'Mungkin struktur pangkalan data tidak sepadan, disyorkan untuk membersihkan data aplikasi atau memasang semula';

  @override
  String get old_database_deleted => 'Fail pangkalan data lama telah dipadam';

  @override
  String get backup_data_empty => 'Data sandaran kosong';

  @override
  String get backup_file_not_found => 'Fail sandaran tidak wujud';

  @override
  String file_not_utf8(String error) {
    return 'Pengekodan fail bukan format UTF-8 yang sah. Sila pastikan fail disimpan menggunakan pengekodan UTF-8. Butiran ralat: $error';
  }

  @override
  String file_not_found(String filePath) {
    return 'Fail tidak wujud: $filePath';
  }

  @override
  String file_empty(String filePath) {
    return 'Fail kosong: $filePath';
  }

  @override
  String get file_content_empty =>
      'Kandungan fail kosong selepas dinyahkod, mungkin disebabkan ketidakpadanan pengekodan';

  @override
  String field_cannot_be_empty(String fieldName) {
    return '$fieldName tidak boleh kosong';
  }

  @override
  String field_min_length(String fieldName, int minLength) {
    return 'Panjang $fieldName tidak boleh kurang daripada $minLength aksara';
  }

  @override
  String field_max_length(String fieldName, int maxLength) {
    return '$fieldName tidak boleh melebihi $maxLength aksara';
  }

  @override
  String field_invalid_email(String fieldName) {
    return 'Sila masukkan alamat $fieldName yang sah';
  }

  @override
  String field_invalid_number(String fieldName, String numberType) {
    return '$fieldName mesti $numberType';
  }

  @override
  String field_min_value(String fieldName, double min) {
    return '$fieldName tidak boleh kurang daripada $min';
  }

  @override
  String field_max_value(String fieldName, double max) {
    return '$fieldName tidak boleh lebih besar daripada $max';
  }

  @override
  String field_positive_integer(String fieldName) {
    return '$fieldName mesti merupakan nombor bulat positif';
  }

  @override
  String field_greater_than_zero(String fieldName) {
    return '$fieldName mesti lebih besar daripada 0';
  }

  @override
  String field_positive_number(String fieldName) {
    return '$fieldName mesti nombor positif';
  }

  @override
  String field_invalid_date(String fieldName) {
    return 'Sila masukkan $fieldName yang sah';
  }

  @override
  String field_date_not_past(String fieldName) {
    return '$fieldName tidak boleh menjadi tarikh yang lalu';
  }

  @override
  String field_date_not_before(String fieldName, String minDate) {
    return '$fieldName tidak boleh lebih awal daripada $minDate';
  }

  @override
  String field_date_not_after(String fieldName, String maxDate) {
    return '$fieldName tidak boleh lewat daripada $maxDate';
  }

  @override
  String field_invalid_value(String fieldName) {
    return 'Sila masukkan $fieldName yang sah';
  }

  @override
  String password_min_length(String fieldName) {
    return '$fieldName panjangnya tidak boleh kurang daripada 8 aksara';
  }

  @override
  String password_uppercase_required(String fieldName) {
    return '$fieldName mesti mengandungi sekurang-kurangnya satu huruf besar';
  }

  @override
  String password_lowercase_required(String fieldName) {
    return '$fieldName mesti mengandungi sekurang-kurangnya satu huruf kecil';
  }

  @override
  String password_digit_required(String fieldName) {
    return '$fieldName mesti mengandungi sekurang-kurangnya satu nombor';
  }

  @override
  String password_special_char_required(String fieldName) {
    return '$fieldName mesti mengandungi sekurang-kurangnya satu aksara khas';
  }

  @override
  String get passwords_not_match =>
      'Kata laluan yang dimasukkan dua kali tidak sepadan';

  @override
  String get item_name_cannot_be_empty => 'Nama barang tidak boleh kosong';

  @override
  String name_max_length(int maxLength) {
    return 'Nama tidak boleh melebihi $maxLength aksara';
  }

  @override
  String quantity_min(int minQuantity) {
    return 'Kuantiti tidak boleh kurang daripada $minQuantity';
  }

  @override
  String quantity_max(int maxQuantity) {
    return 'Kuantiti tidak boleh melebihi $maxQuantity';
  }

  @override
  String get unit_price_not_negative => 'Harga unit tidak boleh negatif';

  @override
  String unit_price_max(double maxUnitPrice) {
    return 'Harga seunit tidak boleh melebihi $maxUnitPrice';
  }

  @override
  String get set_production_expiry_for_validity =>
      'Sila tetapkan tarikh pengeluaran dan tempoh hayat untuk mengira tarikh luput secara automatik';

  @override
  String get set_purchase_warranty_for_validity =>
      'Sila tetapkan tarikh pembelian dan tempoh luput untuk mengira tempoh jaminan secara automatik';

  @override
  String get calendar_account_creation_failed =>
      'Tidak dapat membuat akaun kalendar, sila semak tetapan kalendar sistem';

  @override
  String get test_notification => 'Notis Ujian';

  @override
  String get test_notification_description =>
      'Ini adalah pemberitahuan ujian untuk mengesahkan fungsi peringatan tempatan';

  @override
  String get day_unit => 'langit';

  @override
  String days_with_value(int days) {
    return '$days hari';
  }

  @override
  String get item_saved => 'Barang telah disimpan';

  @override
  String get item_updated => 'Barang telah dikemas kini';

  @override
  String get item_added => 'Barang telah ditambahkan';

  @override
  String get save_success => 'Disimpan berjaya';

  @override
  String get update_success => 'Kemas kini berjaya';

  @override
  String get delete_success => 'Padam berjaya';

  @override
  String get save_failed => 'Gagal menyimpan';

  @override
  String get update_failed => 'Kemas kini gagal';

  @override
  String get delete_failed => 'Padam gagal';

  @override
  String get test_calendar_event => 'Uji acara kalendar';

  @override
  String get test_calendar_event_description =>
      'Ini adalah acara ujian, digunakan untuk mengesahkan fungsi kalendar';

  @override
  String get in_app => 'Dalam aplikasi';

  @override
  String get enable_alert => 'Aktifkan peringatan tamat tempoh';

  @override
  String get alert_method => 'Kaedah Peringatan';

  @override
  String get alert_method_in_app => 'Hanya dalam aplikasi';

  @override
  String get alert_method_calendar => 'Hanya kalendar';

  @override
  String get alert_method_both => 'Kedua-duanya';

  @override
  String get alert_days_before => 'Bilangan hari peringatan awal';

  @override
  String get use_global_setting => 'Gunakan tetapan global';

  @override
  String get barcode_label => 'Kod bar';

  @override
  String get name_label => 'Nama';

  @override
  String get category_label => 'Klasifikasi';

  @override
  String get current_quantity => 'Jumlah semasa';

  @override
  String get select_operation => 'Sila pilih operasi';

  @override
  String get unit => 'unit';

  @override
  String get custom_unit => 'Unit tersuai';

  @override
  String get enter_unit => 'Sila masukkan unit';

  @override
  String get custom_location => 'Lokasi Tersuai';

  @override
  String get enter_storage_location => 'Sila masukkan lokasi simpanan';

  @override
  String get scan => 'Imbas kod';

  @override
  String get scan_to_stock => 'Imbas kod untuk masuk ke stor';

  @override
  String get item_categories => 'Pengelasan Barang';

  @override
  String get storage_locations => 'Lokasi penyimpanan';

  @override
  String get place_barcode_in_frame_to_scan =>
      'Letakkan kod bar ke dalam kotak untuk mengimbas';

  @override
  String get barcode => 'Kod bar';

  @override
  String get enter_barcode_or_scan => 'Sila masukkan kod bar atau imbas kod';

  @override
  String get basic_information => 'Maklumat Asas';

  @override
  String get item_name => 'Nama barang';

  @override
  String get enter_item_name => 'Sila masukkan nama barang';

  @override
  String get enter_category_name => 'Sila masukkan nama kategori';

  @override
  String item_increased(String itemName, String quantity, String unit) {
    return 'Telah ditambah $itemName $quantity$unit';
  }

  @override
  String item_decreased(String itemName, String quantity, String unit) {
    return 'Telah berkurang $itemName $quantity$unit';
  }
}
