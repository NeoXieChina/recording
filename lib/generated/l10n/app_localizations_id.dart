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
  String custom_days(Object days) {
    return 'Kustom ($days hari)';
  }

  @override
  String alert_days_range(Object min, Object max) {
    return 'Rentang hari pengingat: $min-$max hari';
  }

  @override
  String get enter_days => 'Silakan masukkan jumlah hari pengingat';

  @override
  String get days => 'jumlah hari';

  @override
  String enter_valid_days(Object min, Object max) {
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
  String test_notification_failed(Object error) {
    return 'Gagal mengirim pemberitahuan uji: $error';
  }

  @override
  String get notification_permission_required =>
      'Perlu izin pemberitahuan untuk mengaktifkan pengingat lokal';

  @override
  String operation_failed(Object error) {
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
  String backup_failed(Object error) {
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
  String restore_success(Object count) {
    return 'Pemulihan berhasil, total $count item';
  }

  @override
  String restore_failed(Object error) {
    return 'Pemulihan gagal: $error';
  }

  @override
  String get select_backup_file => 'Pilih file cadangan';

  @override
  String get restore_backup => 'Pulihkan cadangan';

  @override
  String selected_file(Object filename) {
    return 'File yang dipilih: $filename';
  }

  @override
  String get export_success => 'Ekspor data berhasil';

  @override
  String export_failed(Object error) {
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
  String import_success(Object count) {
    return 'Data berhasil diimpor, total $count item diimpor';
  }

  @override
  String import_failed(Object error) {
    return 'Impor gagal: $error';
  }

  @override
  String get select_file => 'Pilih file';
}
