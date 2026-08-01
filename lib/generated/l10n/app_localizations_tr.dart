// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get app_name => 'Eşyaları küçük alanda saklamak';

  @override
  String get cancel => 'İptal';

  @override
  String get confirm => 'Tamam';

  @override
  String get save => 'Kaydet';

  @override
  String get delete => 'Sil';

  @override
  String get edit => 'Düzenle';

  @override
  String get add => 'eklemek';

  @override
  String get search => 'Ara';

  @override
  String get settings => 'Ayarlar';

  @override
  String get language_settings => 'Dil Ayarları';

  @override
  String get language_settings_description =>
      'Uygulama görüntüleme dilini ayarla';

  @override
  String get system_default => 'Sistem varsayılanı';

  @override
  String get use_system_language => 'Sistem dilini kullan';

  @override
  String get language_change_hint =>
      'Dil değişikliği, uygulama yeniden başlatıldığında geçerli olacaktır';

  @override
  String get back => 'Geri dön';

  @override
  String get next => 'Sonraki adım';

  @override
  String get done => 'Tamamlandı';

  @override
  String get loading => 'Yükleniyor...';

  @override
  String get error => 'Hata';

  @override
  String get success => 'Başarı';

  @override
  String get warning => 'Uyarı';

  @override
  String get info => 'Bilgi';

  @override
  String get select_alert_days => 'Hatırlatma günlerini seç';

  @override
  String get custom => 'Özelleştir';

  @override
  String custom_days(int days) {
    return 'Özelleştir ($days gün)';
  }

  @override
  String current_selection(int days) {
    return 'Şu anda seçilen: $days gün';
  }

  @override
  String alert_days_range(int min, int max) {
    return 'Hatırlatma gün aralığı: $min-$max gün';
  }

  @override
  String get enter_days => 'Lütfen hatırlatma günlerini girin';

  @override
  String get days => 'Gün sayısı';

  @override
  String enter_valid_days(int min, int max) {
    return 'Lütfen $min-$max arasındaki sayıyı girin';
  }

  @override
  String get alert_settings => 'Erken uyarı ayarları';

  @override
  String get calendar_settings => 'Takvim ayarları';

  @override
  String get calendar_sync => 'Takvim Senkronizasyonu';

  @override
  String get calendar_sync_desc => 'Açtıktan sonra takvim izinleri istenecek';

  @override
  String get add_test_calendar_event => 'Test takvimi etkinliği ekle';

  @override
  String get enable_calendar_sync_first =>
      'Lütfen önce \'Takvim Senkronizasyonu\' anahtarını açın';

  @override
  String get app_alert_settings => 'Uygulama Bildirim Ayarları';

  @override
  String get local_alerts => 'Yerel hatırlatma';

  @override
  String get local_alerts_desc =>
      'Açıldıktan sonra uygulama içi süresi dolmuş uyarılarını al';

  @override
  String get send_test_notification => 'Test bildirimini gönder';

  @override
  String get enable_local_alerts_first =>
      'Lütfen önce \'Yerel Bildirim\' anahtarını açın';

  @override
  String get alert_days_settings => 'Hatırlatma gün sayısı ayarı';

  @override
  String get advance_alert_days => 'Önceden hatırlatma günleri';

  @override
  String get advance_alert_days_desc =>
      'Eşyaların son kullanma tarihini veya garanti süresinin bitişini kaç gün önceden hatırlatılacağını ayarlayın';

  @override
  String get calendar_permission_request => 'Takvim izin talebi';

  @override
  String get calendar_permission_desc =>
      'Öğe hatırlatıcılarını senkronize etmek için takvim erişimine ihtiyaç vardır. İzin verilsin mi?';

  @override
  String get allow => 'izin vermek';

  @override
  String get calendar_permission_granted =>
      'Takvim izinleri verildi, takvim senkronizasyonu açıldı';

  @override
  String get calendar_permission_denied =>
      'Takvim izinleri reddedildi, takvim senkronizasyonu açılamıyor';

  @override
  String get calendar_permission_permanently_denied =>
      'İzin kalıcı olarak reddedildi';

  @override
  String get calendar_permission_permanently_denied_desc =>
      'Takvim izinleri kalıcı olarak reddedildi, lütfen sistem ayarlarından izinleri manuel olarak açın.';

  @override
  String get go_to_settings => 'Ayarlar\'a git';

  @override
  String get calendar_account_failed =>
      'Takvim izni verildi, ancak takvim hesabı oluşturulamıyor. Lütfen sistem takvim ayarlarını kontrol edin';

  @override
  String get calendar_account_created =>
      'Takvim izinleri verildi, yerel takvim hesabı oluşturuldu';

  @override
  String get calendar_account_creating =>
      'Takvim hesabı başarıyla oluşturuldu, ancak sistemin etkinleşmesi biraz zaman alabilir';

  @override
  String get test_calendar_event_added => 'Takvim etkinliği başarıyla eklendi';

  @override
  String get test_calendar_event_failed =>
      'Test takvimi etkinliği ekleme başarısız oldu, lütfen takvim ayarlarını kontrol edin';

  @override
  String get calendar_permission_required =>
      'Test etkinliği eklemek için takvim izinlerine ihtiyaç vardır';

  @override
  String get test_notification_sent => 'Test bildirimi gönderildi';

  @override
  String test_notification_failed(String error) {
    return 'Test bildirim gönderilemedi: $error';
  }

  @override
  String get notification_permission_required =>
      'Yerel hatırlatıcıyı etkinleştirmek için bildirim izni gerekir';

  @override
  String operation_failed(String error) {
    return 'İşlem başarısız: $error';
  }

  @override
  String get notification_channel_name => 'Eşya Uyarı Bildirimi';

  @override
  String get notification_channel_description =>
      'Ürün süresi doldu veya garanti süresini geçtiğinde uyarı';

  @override
  String get item_category_food => 'Gıda';

  @override
  String get item_category_daily_necessities => 'Günlük kullanım eşyaları';

  @override
  String get item_category_cosmetics => 'kozmetik';

  @override
  String get item_category_medicine => 'İlaç';

  @override
  String get item_category_electronics => 'Elektronik ürünler';

  @override
  String get item_category_furniture => 'Mobilya';

  @override
  String get item_category_clothing => 'Giyim';

  @override
  String get item_category_books => 'Kitap';

  @override
  String get item_category_other => 'Diğer';

  @override
  String get purchase_channel_online_mall => 'Çevrimiçi mağaza';

  @override
  String get purchase_channel_physical_store => 'Fiziksel mağaza';

  @override
  String get purchase_channel_supermarket => 'Süpermarket';

  @override
  String get purchase_channel_specialty_store => 'özel mağaza';

  @override
  String get purchase_channel_secondhand_market => 'İkinci el pazarı';

  @override
  String get purchase_channel_other => 'Diğer';

  @override
  String get default_category => 'Diğer';

  @override
  String get default_purchase_channel => 'Çevrimiçi mağaza';

  @override
  String get item_category => 'Eşya Sınıflandırması';

  @override
  String get custom_category => 'Özelleştirilmiş Kategori';

  @override
  String get backup_data => 'Veri yedekleme';

  @override
  String get backup_data_description =>
      'Tüm verileri (resimler dahil) ZIP dosyası olarak yedekle';

  @override
  String get backup_all_data => 'Tüm verileri yedekle';

  @override
  String get backup_success => 'Yedekleme başarılı';

  @override
  String backup_failed(String error) {
    return 'Yedekleme başarısız: $error';
  }

  @override
  String get restore_data => 'Verileri geri yükle';

  @override
  String get restore_data_description =>
      'ZIP yedekleme dosyasından tüm verileri geri yükle';

  @override
  String get export_data => 'Veri Dışa Aktarma';

  @override
  String get export_data_description => 'CSV, TXT, SQL formatında dışa aktar';

  @override
  String get import_data => 'Veri İçe Aktar';

  @override
  String get import_data_description =>
      'CSV, TXT, SQL dosyalarından veri içe aktar';

  @override
  String get alert_settings_description =>
      'Takvim hatırlatıcıları ve uygulama bildirim ayarları';

  @override
  String get about => 'hakkında';

  @override
  String get about_description => 'Uygulama Bilgisi ve Sürüm';

  @override
  String get select_backup_file_first => 'Lütfen önce yedek dosyayı seçin';

  @override
  String get confirm_restore => 'Geri yüklemeyi onayla';

  @override
  String get confirm_restore_message =>
      'Yedekten geri yüklemek, mevcut tüm verileri silecek ve yedek verilerle değiştirecektir; bu işlem geri alınamaz. Devam etmek istediğinizden emin misiniz?';

  @override
  String get confirm_again => 'Tekrar onaylamak';

  @override
  String get confirm_restore_warning =>
      'Tüm mevcut verileri silip yedeği geri yüklemek istediğinizden emin misiniz? Bu işlem geri alınamaz!';

  @override
  String get confirm_restore_button => 'Geri yüklemeyi onayla';

  @override
  String restore_success(int count) {
    return 'Geri yükleme başarılı, toplam $count öğe';
  }

  @override
  String restore_failed(String error) {
    return 'Kurtarma başarısız: $error';
  }

  @override
  String get select_backup_file => 'Yedek dosya seç';

  @override
  String get restore_backup => 'Yedekten geri yükle';

  @override
  String selected_file(String filename) {
    return 'Seçilen dosya: $filename';
  }

  @override
  String get export_success => 'Veri dışa aktarımı başarılı';

  @override
  String export_failed(String error) {
    return 'Dışa aktarma başarısız: $error';
  }

  @override
  String get format_csv => 'CSV';

  @override
  String get format_txt => 'TXT';

  @override
  String get format_sql => 'SQL';

  @override
  String get duplicate_data_handling => 'Tekrarlayan Veri İşleme';

  @override
  String get duplicate_data_detected =>
      'Tekrarlanan veriler tespit edildi, lütfen işlem yöntemini seçin:';

  @override
  String get skip => 'Atla';

  @override
  String get overwrite => 'örtmek';

  @override
  String get skip_all => 'Hepsini atla';

  @override
  String get overwrite_all => 'Tam kapsama';

  @override
  String get select_import_format_first =>
      'Lütfen önce içe aktarma formatını seçin';

  @override
  String get confirm_import => 'İçe aktarmayı onayla';

  @override
  String get confirm_import_message =>
      'Veri içe aktarma mevcut verilerin üzerine yazacaktır, bu işlem geri alınamaz. Devam etmek istiyor musunuz?';

  @override
  String import_success(int count) {
    return 'Veri başarıyla içe aktarıldı, toplam $count öğe aktarıldı';
  }

  @override
  String import_failed(String error) {
    return 'İçe aktarma başarısız: $error';
  }

  @override
  String get select_file => 'Dosya Seç';

  @override
  String get no_data => 'Veri yok';

  @override
  String get no_data_description =>
      'Şu anda veri yok, ilk kaydı eklemek için aşağıdaki düğmeye tıklayın!';

  @override
  String get load_failed => 'Yükleme başarısız';

  @override
  String get load_failed_description =>
      'Veri yüklemesi başarısız oldu, lütfen ağ bağlantınızı kontrol ettikten sonra tekrar deneyin';

  @override
  String get retry => 'Yeniden dene';

  @override
  String get network_connection_failed => 'Ağ bağlantısı başarısız';

  @override
  String get network_connection_failed_description =>
      'Lütfen internet bağlantınızı kontrol ettikten sonra tekrar deneyin';

  @override
  String get no_results => 'Sonuç bulunamadı';

  @override
  String get no_results_description =>
      'Başka anahtar kelimelerle aramayı deneyin';

  @override
  String get clear_search => 'Aramayı Temizle';

  @override
  String get insufficient_permission => 'Yetersiz izin';

  @override
  String get insufficient_permission_description =>
      'Bu özelliği kullanmak için ilgili izinlere ihtiyaç vardır';

  @override
  String get request_permission => 'İzin iste';

  @override
  String get app_info => 'Uygulama bilgileri';

  @override
  String get version => 'versiyon';

  @override
  String get developer => 'Geliştirici';

  @override
  String get device_info => 'Cihaz bilgisi';

  @override
  String get device_model => 'Cihaz Modeli';

  @override
  String get brand => 'Marka';

  @override
  String get device_name => 'Cihaz adı';

  @override
  String get product => 'Ürün';

  @override
  String get hardware => 'Donanım';

  @override
  String get android_version => 'Android sürümü';

  @override
  String get sdk_version => 'SDK sürümü';

  @override
  String get system_name => 'Sistem Adı';

  @override
  String get system_version => 'Sistem sürümü';

  @override
  String get device_identifier => 'Cihaz Tanımlayıcısı';

  @override
  String get computer_name => 'Bilgisayar Adı';

  @override
  String get build_number => 'Sürüm numarası';

  @override
  String error_getting_device_info(String error) {
    return 'Cihaz bilgileri alınamıyor: $error';
  }

  @override
  String get features => 'Fonksiyon Tanıtımı';

  @override
  String get app_description => 'Akıllı Eşya Yönetim Uygulaması';

  @override
  String get app_description_detail =>
      'Eşyalarınızın son kullanma tarihi, garanti süresi gibi bilgilerini yönetmenize yardımcı olur ve akıllı hatırlatma özelliği sunar.';

  @override
  String get consumable => 'Tüketim malzemeleri';

  @override
  String get durable => 'Dayanıklı mal';

  @override
  String get sort => 'Sıralama';

  @override
  String get name_asc => 'Ada göre artan sırayla';

  @override
  String get name_desc => 'Ada göre azalan sırayla';

  @override
  String get date_asc => 'Tarih artan sırayla';

  @override
  String get date_desc => 'Tarihe göre azalan sırayla';

  @override
  String get price_asc => 'Birim fiyatına göre artan sırada';

  @override
  String get price_desc => 'Birim fiyatına göre azalan sırada';

  @override
  String get quantity_asc => 'Miktara göre artan sıra';

  @override
  String get quantity_desc => 'Miktara göre azalan sıra';

  @override
  String get total_price_asc => 'Toplam fiyata göre artan sıra';

  @override
  String get total_price_desc => 'Toplam Fiyat Azalan Sıralama';

  @override
  String get clear_all_filters => 'Tüm filtreleri temizle';

  @override
  String get scan_barcode => 'Kod tarayarak depoya giriş';

  @override
  String get search_items => 'Öğe ara...';

  @override
  String get no_items => 'Henüz öğe yok';

  @override
  String get no_items_description =>
      'Aşağıdaki butona tıklayarak ilk öğeyi ekleyin';

  @override
  String get expired => 'Süresi dolmuş';

  @override
  String get expiring_soon => 'Yakında sona erecek';

  @override
  String get warranty_expired => 'Garanti süresi doldu';

  @override
  String get warranty_expiring_soon => 'Garanti süresi yakında sona erecek';

  @override
  String days_remaining(int count) {
    return 'Kalan $count gün';
  }

  @override
  String expired_days_ago(int count) {
    return '$count gün geçti';
  }

  @override
  String get delete_item => 'Öğeyi sil';

  @override
  String delete_item_confirm(String name) {
    return '“$name” öğesini silmek istediğinizden emin misiniz?';
  }

  @override
  String get item_deleted => 'Öğe silindi';

  @override
  String get failed_to_delete => 'Silme başarısız';

  @override
  String failed_to_delete_message(String error) {
    return 'Öğe silinemiyor: $error';
  }

  @override
  String get date_range_filter => 'Tarih aralığı filtresi';

  @override
  String get price_range_filter => 'Fiyat aralığı filtresi';

  @override
  String get my_items => 'Benim eşyalarım';

  @override
  String get click_fab_to_add_item =>
      'Sağ alt köşedeki düğmeye tıklayarak öğe ekleyin';

  @override
  String get confirm_delete => 'Silmeyi onayla';

  @override
  String get filter_options => 'Filtreleme seçenekleri';

  @override
  String get filter_by_type_category_location =>
      'Öğeleri tür, kategori ve konuma göre filtreleyin';

  @override
  String categories_count(int count) {
    return '$count kategori';
  }

  @override
  String get all_categories => 'Tüm Kategoriler';

  @override
  String get no_category_data => 'Henüz kategori verisi yok';

  @override
  String get storage_location => 'Depolama yeri';

  @override
  String locations_count(int count) {
    return '$count yer';
  }

  @override
  String get all_locations => 'Tüm yerler';

  @override
  String get no_location_data => 'Henüz konum verisi yok';

  @override
  String get date_range => 'Tarih aralığı';

  @override
  String get select_date_range => 'Tarih aralığını seç';

  @override
  String get price_range => 'Fiyat aralığı';

  @override
  String get unit_price_range => 'Birim fiyat aralığı';

  @override
  String get min_unit_price => 'En düşük birim fiyat';

  @override
  String get max_unit_price => 'En yüksek birim fiyat';

  @override
  String get total_price_range => 'Toplam fiyat aralığı';

  @override
  String get min_total_price => 'En düşük toplam fiyat';

  @override
  String get max_total_price => 'En yüksek toplam fiyat';

  @override
  String get clear_price_filter => 'Fiyat filtresini temizle';

  @override
  String get place_barcode_in_frame =>
      'Barkodu taramak için kutuya yerleştirin';

  @override
  String get item_already_exists => 'Ürün zaten mevcut';

  @override
  String barcode_with_value(String barcode) {
    return 'Barkod: $barcode';
  }

  @override
  String name_with_value(String name) {
    return 'İsim: $name';
  }

  @override
  String category_with_value(String category) {
    return 'Kategori: $category';
  }

  @override
  String current_quantity_with_value(String quantity, String unit) {
    return 'Mevcut miktar: $quantity$unit';
  }

  @override
  String get please_select_operation => 'Lütfen bir işlem seçin:';

  @override
  String get outbound => 'Depodan çıkış';

  @override
  String get inbound => 'Depoya giriş';

  @override
  String get inbound_quantity => 'Depoya giren miktar';

  @override
  String get outbound_quantity => 'Çıkış Miktarı';

  @override
  String get quantity => 'Miktar';

  @override
  String get enter_inbound_quantity => 'Lütfen stok giriş miktarını girin';

  @override
  String get enter_outbound_quantity => 'Lütfen çıkış miktarını girin';

  @override
  String item_increased(String name, String quantity, String unit) {
    return '$name $quantity$unit eklendi';
  }

  @override
  String delete_item_confirm_with_irreversible(String name) {
    return '„$name” öğesini silmek istediğinizden emin misiniz? Bu işlem geri alınamaz.';
  }

  @override
  String item_decreased(String name, String quantity, String unit) {
    return '$name $quantity$unit azaltıldı';
  }

  @override
  String get database_reset =>
      'Veritabanı sıfırlandı, tablo yapısı yeniden oluşturulacak';

  @override
  String database_reset_error(String error) {
    return 'Veritabanı sıfırlanırken hata oluştu: $error';
  }

  @override
  String mock_data_init_failed(String error) {
    return 'Simülasyon verisi başlatılamadı: $error';
  }

  @override
  String get solution_steps => 'Çözüm:';

  @override
  String get solution_step_1 => '1. Uygulamayı kaldırıp yeniden yükleyin';

  @override
  String get solution_step_2 => '2. Veya uygulama verilerini temizle';

  @override
  String get solution_step_3 =>
      '3. Veya resetDatabaseOnStart değerini true yapıp yeniden çalıştırın';

  @override
  String notification_service_init_failed(String error) {
    return 'Hatırlatma hizmeti başlatılamadı: $error';
  }

  @override
  String check_calendar_account_failed(String error) {
    return 'Takvim hesabı kontrolü başarısız oldu: $error';
  }

  @override
  String create_calendar_failed(String error) {
    return 'Takvim oluşturulamadı: $error';
  }

  @override
  String add_calendar_event_failed(String error) {
    return 'Takvim etkinliği ekleme başarısız oldu: $error';
  }

  @override
  String delete_calendar_event_failed(String error) {
    return 'Takvim etkinliği silinemedi: $error';
  }

  @override
  String set_permission_message_failed(String error) {
    return 'İzin uyarı mesajı ayarlanamadı: $error';
  }

  @override
  String mock_data_init_success(int count) {
    return '$count adet simüle edilmiş veri başarıyla başlatıldı';
  }

  @override
  String database_has_data(int count) {
    return 'Veritabanında zaten $count veri var, simülasyon veri başlatmayı atla';
  }

  @override
  String get database_structure_mismatch =>
      'Muhtemelen veritabanı yapısı uyumsuz, uygulama verilerini temizlemeniz veya yeniden yüklemeniz önerilir';

  @override
  String get old_database_deleted => 'Eski veritabanı dosyası silindi';

  @override
  String get backup_data_empty => 'Yedekleme verisi boş';

  @override
  String get backup_file_not_found => 'Yedek dosya mevcut değil';

  @override
  String file_not_utf8(String error) {
    return 'Dosya kodlaması geçerli bir UTF-8 formatında değil. Lütfen dosyanın UTF-8 kodlamasıyla kaydedildiğinden emin olun. Hata ayrıntıları: $error';
  }

  @override
  String file_not_found(String filePath) {
    return 'Dosya mevcut değil: $filePath';
  }

  @override
  String file_empty(String filePath) {
    return 'Dosya boş: $filePath';
  }

  @override
  String get file_content_empty =>
      'Dosya içeriği çözüldükten sonra boş, muhtemelen kodlama uyumsuz.';

  @override
  String field_cannot_be_empty(String fieldName) {
    return '$fieldName boş olamaz';
  }

  @override
  String field_min_length(String fieldName, int minLength) {
    return '$fieldName uzunluğu $minLength karakterden az olamaz';
  }

  @override
  String field_max_length(String fieldName, int maxLength) {
    return '$fieldName uzunluğu $maxLength karakteri geçemez';
  }

  @override
  String field_invalid_email(String fieldName) {
    return 'Lütfen geçerli bir $fieldName adresi girin';
  }

  @override
  String field_invalid_number(String fieldName, String numberType) {
    return '$fieldName, $numberType olmalıdır';
  }

  @override
  String field_min_value(String fieldName, double min) {
    return '$fieldName $min\'den küçük olamaz';
  }

  @override
  String field_max_value(String fieldName, double max) {
    return '$fieldName $max\'den büyük olamaz';
  }

  @override
  String field_positive_integer(String fieldName) {
    return '$fieldName pozitif bir tam sayı olmalıdır';
  }

  @override
  String field_greater_than_zero(String fieldName) {
    return '$fieldName 0\'dan büyük olmalı';
  }

  @override
  String field_positive_number(String fieldName) {
    return '$fieldName pozitif bir sayı olmalıdır';
  }

  @override
  String field_invalid_date(String fieldName) {
    return 'Lütfen geçerli bir $fieldName girin';
  }

  @override
  String field_date_not_past(String fieldName) {
    return '$fieldName geçmiş bir tarih olamaz';
  }

  @override
  String field_date_not_before(String fieldName, String minDate) {
    return '$fieldName $minDate\'den önce olamaz';
  }

  @override
  String field_date_not_after(String fieldName, String maxDate) {
    return '$fieldName $maxDate\'den daha geç olamaz';
  }

  @override
  String field_invalid_value(String fieldName) {
    return 'Lütfen geçerli bir $fieldName girin';
  }

  @override
  String password_min_length(String fieldName) {
    return '$fieldName uzunluğu 8 karakterden az olamaz';
  }

  @override
  String password_uppercase_required(String fieldName) {
    return '$fieldName en az bir büyük harf içermelidir';
  }

  @override
  String password_lowercase_required(String fieldName) {
    return '$fieldName en az bir küçük harf içermelidir';
  }

  @override
  String password_digit_required(String fieldName) {
    return '$fieldName en az bir rakam içermelidir';
  }

  @override
  String password_special_char_required(String fieldName) {
    return '$fieldName en az bir özel karakter içermelidir';
  }

  @override
  String get passwords_not_match => 'İki kez girilen şifre eşleşmiyor';

  @override
  String get item_name_cannot_be_empty => 'Ürün adı boş olamaz';

  @override
  String name_max_length(int maxLength) {
    return 'İsim $maxLength karakteri geçemez';
  }

  @override
  String quantity_min(int minQuantity) {
    return 'Miktar $minQuantity\'den az olamaz';
  }

  @override
  String quantity_max(int maxQuantity) {
    return 'Miktar $maxQuantity\'u geçemez';
  }

  @override
  String get unit_price_not_negative => 'Birim fiyat negatif olamaz';

  @override
  String unit_price_max(double maxUnitPrice) {
    return 'Birim fiyat $maxUnitPrice\'ı geçemez';
  }

  @override
  String get set_production_expiry_for_validity =>
      'Lütfen geçerlilik süresini otomatik olarak hesaplamak için üretim tarihini ve raf ömrünü ayarlayın';

  @override
  String get set_purchase_warranty_for_validity =>
      'Lütfen garanti süresini otomatik hesaplamak için satın alma tarihini ve raf ömrünü ayarlayın';

  @override
  String get calendar_account_creation_failed =>
      'Takvim hesabı oluşturulamıyor, lütfen sistem takvim ayarlarını kontrol edin';

  @override
  String get test_notification => 'Test bildirimi';

  @override
  String get test_notification_description =>
      'Bu bir test bildirimidir ve yerel hatırlatıcı işlevini doğrulamak için kullanılır.';

  @override
  String get day_unit => 'gökyüzü';

  @override
  String days_with_value(int days) {
    return '$days gün';
  }

  @override
  String get item_saved => 'Öğe kaydedildi';

  @override
  String get item_updated => 'Öğe güncellendi';

  @override
  String get item_added => 'Öğe eklendi';

  @override
  String get save_success => 'Kaydetme başarılı';

  @override
  String get update_success => 'Güncelleme başarılı';

  @override
  String get delete_success => 'Silme başarılı';

  @override
  String get save_failed => 'Kaydetme başarısız';

  @override
  String get update_failed => 'Güncelleme başarısız';

  @override
  String get delete_failed => 'Silme başarısız';
}
