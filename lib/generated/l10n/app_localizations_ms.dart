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
  String get search => 'Cari';

  @override
  String get settings => 'Tetapan';

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
  String get info => 'maklumat';

  @override
  String get select_alert_days => 'Pilih bilangan hari peringatan';

  @override
  String get custom => 'Tersuai';

  @override
  String custom_days(Object days) {
    return 'Tersuai ($days hari)';
  }

  @override
  String alert_days_range(Object min, Object max) {
    return 'Julat hari peringatan: $min-$max hari';
  }

  @override
  String get enter_days => 'Sila masukkan bilangan hari peringatan';

  @override
  String get days => 'Jumlah hari';

  @override
  String enter_valid_days(Object min, Object max) {
    return 'Sila masukkan nombor antara $min-$max';
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
      'Sila hidupkan terlebih dahulu suis \'Penyegerakan Kalendar\'';

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
      'Kebenaran kalendar telah diberikan, penyelarasan kalendar telah dihidupkan';

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
      'Memerlukan kebenaran kalendar untuk menambahkan acara ujian';

  @override
  String get test_notification_sent => 'Pemberitahuan ujian telah dihantar';

  @override
  String test_notification_failed(Object error) {
    return 'Gagal menghantar pemberitahuan ujian: $error';
  }

  @override
  String get notification_permission_required =>
      'Memerlukan kebenaran pemberitahuan untuk mengaktifkan peringatan tempatan';

  @override
  String operation_failed(Object error) {
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
  String backup_failed(Object error) {
    return 'Sandaran gagal: $error';
  }

  @override
  String get restore_data => 'Memulihkan data';

  @override
  String get restore_data_description =>
      'Pulihkan semua data dari fail sandaran ZIP';

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
      'Memulihkan sandaran akan mengosongkan semua data sedia ada dan menggantikannya dengan data sandaran, tindakan ini tidak dapat dibatalkan. Adakah anda pasti ingin meneruskan?';

  @override
  String get confirm_again => 'Sahkan sekali lagi';

  @override
  String get confirm_restore_warning =>
      'Adakah anda pasti mahu mengosongkan semua data sedia ada dan memulihkan sandaran? Tindakan ini tidak boleh dipulihkan!';

  @override
  String get confirm_restore_button => 'Pastikan untuk memulihkan';

  @override
  String restore_success(Object count) {
    return 'Pulihkan berjaya, sebanyak $count barang';
  }

  @override
  String restore_failed(Object error) {
    return 'Pemulihan gagal: $error';
  }

  @override
  String get select_backup_file => 'Pilih fail sandaran';

  @override
  String get restore_backup => 'Pulihkan sandaran';

  @override
  String selected_file(Object filename) {
    return 'Fail yang dipilih: $filename';
  }

  @override
  String get export_success => 'Eksport data berjaya';

  @override
  String export_failed(Object error) {
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
  String import_success(Object count) {
    return 'Import data berjaya, sebanyak $count item telah diimport';
  }

  @override
  String import_failed(Object error) {
    return 'Import gagal: $error';
  }

  @override
  String get select_file => 'Pilih fail';
}
