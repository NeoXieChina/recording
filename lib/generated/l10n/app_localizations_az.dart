// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Azerbaijani (`az`).
class AppLocalizationsAz extends AppLocalizations {
  AppLocalizationsAz([String locale = 'az']) : super(locale);

  @override
  String get app_name => 'Əşyaları bir yerdə saxlamaq';

  @override
  String get cancel => 'Ləğv et';

  @override
  String get confirm => 'Təsdiqlə';

  @override
  String get save => 'Yadda saxla';

  @override
  String get delete => 'Silmək';

  @override
  String get edit => 'Redaktə et';

  @override
  String get add => 'Əlavə et';

  @override
  String get search => 'Axtarış';

  @override
  String get settings => 'Tənzimləmələr';

  @override
  String get language_settings => 'Dil parametrləri';

  @override
  String get language_settings_description => 'Tətbiq göstərilən dili təyin et';

  @override
  String get system_default => 'Sistem defolt olaraq';

  @override
  String get use_system_language => 'Sistemin dilindən istifadə edin';

  @override
  String get language_change_hint =>
      'Dil dəyişiklikləri tətbiqi yenidən başladıqdan sonra qüvvəyə minəcək';

  @override
  String get back => 'Geri qayıt';

  @override
  String get next => 'Növbəti addım';

  @override
  String get done => 'Tamamlandı';

  @override
  String get loading => 'Yüklənir...';

  @override
  String get error => 'Səhv';

  @override
  String get success => 'Uğur';

  @override
  String get warning => 'Xəbərdarlıq';

  @override
  String get info => 'Məlumat';

  @override
  String get select_alert_days => 'Xatırlatma günlərini seçin';

  @override
  String get custom => 'Fərdiləşdirmək';

  @override
  String custom_days(int days) {
    return 'Fərdi ($days gün)';
  }

  @override
  String current_selection(int days) {
    return 'Hazırkı seçim: $days gün';
  }

  @override
  String alert_days_range(int min, int max) {
    return 'Xatırlatma günlərinin diapazonu: $min-$max gün';
  }

  @override
  String get enter_days => 'Xatırlatma günlərini daxil edin';

  @override
  String get days => 'Günlərin sayı';

  @override
  String enter_valid_days(int min, int max) {
    return 'Zəhmət olmasa $min-$max aralığında bir rəqəm daxil edin';
  }

  @override
  String get alert_settings => 'Erkən xəbərdarlıq parametrləri';

  @override
  String get calendar_settings => 'Təqvim parametrləri';

  @override
  String get calendar_sync => 'Təqvim sinxronizasiyası';

  @override
  String get calendar_sync_desc =>
      'Aktivləşdirildikdən sonra təqvim icazəsi tələb olunacaq';

  @override
  String get add_test_calendar_event => 'Test təqvim hadisəsi əlavə et';

  @override
  String get enable_calendar_sync_first =>
      'Zəhmət olmasa əvvəlcə \'Təqvim sinxronizasiyası\' açarını yandırın';

  @override
  String get app_alert_settings => 'Tətbiq bildirişlərinin tənzimlənməsi';

  @override
  String get local_alerts => 'Yerli xatırlatma';

  @override
  String get local_alerts_desc =>
      'Aktivləşdirildikdən sonra tətbiq daxilində müddəti bitmiş bildirişləri qəbul et';

  @override
  String get send_test_notification => 'Test bildirişi göndər';

  @override
  String get enable_local_alerts_first =>
      'Zəhmət olmasa əvvəlcə “yerli xatırlatmalar” düyməsini açın';

  @override
  String get alert_days_settings => 'Xatırlatma günlərinin təyini';

  @override
  String get advance_alert_days => 'Əvvəlcədən xəbərdarlıq edilməli günlər';

  @override
  String get advance_alert_days_desc =>
      'Məhsulun müddətinin bitməsi və ya zəmanətin başa çatması barədə neçə gün əvvəl bildiriş verilməsini təyin edin';

  @override
  String get calendar_permission_request => 'Təqvim icazəsi sorğusu';

  @override
  String get calendar_permission_desc =>
      'Məhsul xatırlatmalarını sinxronizasiya etmək üçün təqvim icazəsinə ehtiyac var. İcazə verilsin?';

  @override
  String get allow => 'icazə vermək';

  @override
  String get calendar_permission_granted =>
      'Təqvim icazəsi verildi, təqvim sinxronizasiyası aktiv edildi';

  @override
  String get calendar_permission_denied =>
      'Təqvim icazəsi rədd edildi, təqvim sinxronizasiyasını başlatmaq mümkün deyil';

  @override
  String get calendar_permission_permanently_denied =>
      'İcazə daimi olaraq rədd edildi';

  @override
  String get calendar_permission_permanently_denied_desc =>
      'Təqvim icazəsi daimi olaraq rədd edildi, zəhmət olmasa sistem parametrlərində icazəni əl ilə açın.';

  @override
  String get go_to_settings => 'Tənzimləmələrə get';

  @override
  String get calendar_account_failed =>
      'Təqvim icazəsi verildi, amma təqvim hesabı yaradıla bilmir. Zəhmət olmasa sistem təqvimi parametrlərini yoxlayın';

  @override
  String get calendar_account_created =>
      'Təqvim icazəsi verildi, yerli təqvim hesabı yaradıldı';

  @override
  String get calendar_account_creating =>
      'Təqvim hesabı uğurla yaradıldı, amma sistemin işləməsi üçün bir az vaxt tələb oluna bilər';

  @override
  String get test_calendar_event_added =>
      'Təqvim hadisəsinin əlavə edilməsi uğurla tamamlandı';

  @override
  String get test_calendar_event_failed =>
      'Test təqvim hadisəsi əlavə etmək alınmadı, zəhmət olmasa təqvim ayarlarını yoxlayın';

  @override
  String get calendar_permission_required =>
      'Test hadisəsi əlavə etmək üçün təqvim icazəsi tələb olunur';

  @override
  String get test_notification_sent => 'Test bildirişi göndərildi';

  @override
  String test_notification_failed(String error) {
    return 'Test bildirişini göndərmək alınmadı: $error';
  }

  @override
  String get notification_permission_required =>
      'Yerli xatırlatmanı aktivləşdirmək üçün bildiriş icazəsi tələb olunur';

  @override
  String operation_failed(String error) {
    return 'Əməliyyat uğursuz oldu: $error';
  }

  @override
  String get notification_channel_name => 'Məhsul xəbərdarlığı bildirimi';

  @override
  String get notification_channel_description =>
      'Məhsulun vaxtının keçməsi və ya zəmanət müddətinin bitməsi haqqında xəbərdarlıq';

  @override
  String get item_category_food => 'Qida';

  @override
  String get item_category_daily_necessities => 'Gündəlik əşyalar';

  @override
  String get item_category_cosmetics => 'Kosmetika';

  @override
  String get item_category_medicine => 'Dərman';

  @override
  String get item_category_electronics => 'Elektron məhsullar';

  @override
  String get item_category_furniture => 'Mebel';

  @override
  String get item_category_clothing => 'Geyim';

  @override
  String get item_category_books => 'Kitab';

  @override
  String get item_category_other => 'Digər';

  @override
  String get purchase_channel_online_mall => 'Onlayn mağaza';

  @override
  String get purchase_channel_physical_store => 'Fiziki mağaza';

  @override
  String get purchase_channel_supermarket => 'supermarket';

  @override
  String get purchase_channel_specialty_store => 'ixtisaslaşmış mağaza';

  @override
  String get purchase_channel_secondhand_market => 'ikinci əl bazar';

  @override
  String get purchase_channel_other => 'Digər';

  @override
  String get default_category => 'Digər';

  @override
  String get default_purchase_channel => 'Onlayn mağaza';

  @override
  String get item_category => 'Məhsul təsnifatı';

  @override
  String get custom_category => 'Fərdi kateqoriya';

  @override
  String get backup_data => 'Ehtiyat nüsxə məlumatları';

  @override
  String get backup_data_description =>
      'Bütün məlumatları (şəkillər daxil olmaqla) ZIP faylı kimi yedəkləyin';

  @override
  String get backup_all_data => 'Bütün məlumatları ehtiyat nüsxəyə çıxarın';

  @override
  String get backup_success => 'Ehtiyat nüsxə uğurla həyata keçirildi';

  @override
  String backup_failed(String error) {
    return 'Ehtiyat nüsxə uğursuz oldu: $error';
  }

  @override
  String get restore_data => 'Məlumatları bərpa et';

  @override
  String get restore_data_description =>
      'ZIP ehtiyat faylından bütün məlumatları bərpa edin';

  @override
  String get export_data => 'Məlumatları ixrac et';

  @override
  String get export_data_description => 'CSV, TXT, SQL formatında ixrac et';

  @override
  String get import_data => 'Məlumatları idxal et';

  @override
  String get import_data_description =>
      'CSV, TXT, SQL fayllarından məlumat idxal etmək';

  @override
  String get alert_settings_description =>
      'Təqvim xatırlatmaları və Tətbiq bildirişləri ayarları';

  @override
  String get about => 'haqqında';

  @override
  String get about_description => 'Tətbiq məlumatları və versiya';

  @override
  String get select_backup_file_first =>
      'Zəhmət olmasa əvvəlcə ehtiyat nüsxə faylını seçin';

  @override
  String get confirm_restore => 'Bərpa etməyi təsdiqlə';

  @override
  String get confirm_restore_message =>
      'Ehtiyat nüsxəni bərpa etmək bütün mövcud məlumatları siləcək və ehtiyat nüsxə məlumatları ilə əvəzləyəcək, bu əməliyyat geri alınmazdır. Davam etmək istədiyinizə əminsiniz?';

  @override
  String get confirm_again => 'Yenidən təsdiqləmək';

  @override
  String get confirm_restore_warning =>
      'Siz əminsiniz ki, bütün mövcud məlumatları silmək və ehtiyat nüsxəni bərpa etmək istəyirsiniz? Bu əməliyyat geri alına bilməz!';

  @override
  String get confirm_restore_button => 'Bərpa etməyi təsdiqlə';

  @override
  String restore_success(int count) {
    return 'Bərpa uğurla başa çatdı, ümumilikdə $count maddə';
  }

  @override
  String restore_failed(String error) {
    return 'Bərpa uğursuz oldu: $error';
  }

  @override
  String get select_backup_file => 'Ehtiyat nüsxə faylını seçin';

  @override
  String get restore_backup => 'Ehtiyat nüsxəsini bərpa et';

  @override
  String selected_file(String filename) {
    return 'Seçilmiş fayl: $filename';
  }

  @override
  String get export_success => 'Məlumat ixracı uğurla həyata keçirildi';

  @override
  String export_failed(String error) {
    return 'İxrac uğursuz oldu: $error';
  }

  @override
  String get format_csv => 'CSV';

  @override
  String get format_txt => 'TXT';

  @override
  String get format_sql => 'SQL';

  @override
  String get duplicate_data_handling => 'Təkrarlanan məlumatların emalı';

  @override
  String get duplicate_data_detected =>
      'Təkrarlanan məlumat aşkar edildi, zəhmət olmasa işləmə üsulunu seçin:';

  @override
  String get skip => 'Keçmək';

  @override
  String get overwrite => 'örtmək';

  @override
  String get skip_all => 'Hamısını keç';

  @override
  String get overwrite_all => 'Tam örtük';

  @override
  String get select_import_format_first =>
      'Zəhmət olmasa əvvəlcə idxal formatını seçin';

  @override
  String get confirm_import => 'İdxalı təsdiqlə';

  @override
  String get confirm_import_message =>
      'Məlumatların idxalı mövcud məlumatları əvəz edəcək və bu əməliyyat geri alınmazdır. Davam etmək istədiyinizə əminsiniz?';

  @override
  String import_success(int count) {
    return 'Məlumatlar uğurla idxal edildi, ümumilikdə $count maddə idxal olundu';
  }

  @override
  String import_failed(String error) {
    return 'İdxal uğursuz oldu: $error';
  }

  @override
  String get select_file => 'Fayl seçin';

  @override
  String get no_data => 'Məlumat yoxdur';

  @override
  String get no_data_description =>
      'Hazırda heç bir məlumat yoxdur, ilk qeydi əlavə etmək üçün aşağıdakı düyməni klikləyin!';

  @override
  String get load_failed => 'Yükləmə uğursuz oldu';

  @override
  String get load_failed_description =>
      'Məlumatların yüklənməsi uğursuz oldu, zəhmət olmasa şəbəkə bağlantısını yoxlayın və təkrar cəhd edin';

  @override
  String get retry => 'Təkrar cəhd et';

  @override
  String get network_connection_failed => 'Şəbəkə bağlantısı uğursuz oldu';

  @override
  String get network_connection_failed_description =>
      'Zəhmət olmasa şəbəkə bağlantısını yoxlayın və sonra yenidən cəhd edin';

  @override
  String get no_results => 'Nəticə tapılmadı';

  @override
  String get no_results_description =>
      'Başqa açar sözlərdən istifadə edərək axtarın';

  @override
  String get clear_search => 'Axtarışı təmizlə';

  @override
  String get insufficient_permission => 'İcazə çatışmır';

  @override
  String get insufficient_permission_description =>
      'Bu funksiyanı istifadə etmək üçün müvafiq icazələr tələb olunur';

  @override
  String get request_permission => 'İcazə tələb edin';

  @override
  String get app_info => 'Tətbiq məlumatları';

  @override
  String get version => 'Versiya';

  @override
  String get developer => 'Tərtibatçı';

  @override
  String get device_info => 'Cihaz məlumatları';

  @override
  String get device_model => 'Avadanlıq modeli';

  @override
  String get brand => 'Brend';

  @override
  String get device_name => 'Cihazın adı';

  @override
  String get product => 'Məhsul';

  @override
  String get hardware => 'Avadanlıq';

  @override
  String get android_version => 'Android versiyası';

  @override
  String get sdk_version => 'SDK versiyası';

  @override
  String get system_name => 'Sistem adı';

  @override
  String get system_version => 'Sistem versiyası';

  @override
  String get device_identifier => 'Cihaz identifikasiyası';

  @override
  String get computer_name => 'Kompüter adı';

  @override
  String get build_number => 'Versiya nömrəsi';

  @override
  String error_getting_device_info(String error) {
    return 'Cihaz məlumatını əldə etmək mümkün deyil: $error';
  }

  @override
  String get features => 'Funksiya təqdimatı';

  @override
  String get app_description => 'Ağıllı əşyaların idarəetmə tətbiqi';

  @override
  String get app_description_detail =>
      'Sizə əşyaların müddətinin bitmə tarixi, zəmanət tarixi və digər məlumatları idarə etməyə kömək edir və ağıllı xəbərdarlıq funksiyası təqdim edir.';

  @override
  String get consumable => 'İstehlak malları';

  @override
  String get durable => 'Davamlı məhsullar';

  @override
  String get sort => 'Sıralama';

  @override
  String get name_asc => 'Adın artan sırası';

  @override
  String get name_desc => 'Adın azalan sırası';

  @override
  String get date_asc => 'Tarixə görə artan sırada';

  @override
  String get date_desc => 'Tarix azalan sıra ilə';

  @override
  String get price_asc => 'Vahid qiymətinə görə artan sırayla';

  @override
  String get price_desc => 'Vahid qiymətinə görə azalan sırayla';

  @override
  String get quantity_asc => 'Miqdar artan sıra';

  @override
  String get quantity_desc => 'Miqdar azalan sıralama';

  @override
  String get total_price_asc => 'Ümumi qiymətə görə artan sırada';

  @override
  String get total_price_desc => 'Ümumi qiymətə görə azalan sırada';

  @override
  String get clear_all_filters => 'Bütün filtrləri təmizlə';

  @override
  String get scan_barcode => 'Kodu skan edərək anbara daxil et';

  @override
  String get search_items => 'Əşyaları axtar...';

  @override
  String get no_items => 'Hələ heç bir əşya yoxdur';

  @override
  String get no_items_description =>
      'Aşağıdakı düyməni klikləyərək ilk elementi əlavə edin';

  @override
  String get expired => 'Vaxtı keçmiş';

  @override
  String get expiring_soon => 'Tezliklə müddəti bitəcək';

  @override
  String get warranty_expired => 'Zəmanət müddəti bitib';

  @override
  String get warranty_expiring_soon => 'Zəmanət müddəti başa çatmaq üzrədir';

  @override
  String days_remaining(int count) {
    return 'Qalıb $count gün';
  }

  @override
  String expired_days_ago(int count) {
    return '$count gün keçib';
  }

  @override
  String get delete_item => 'Məhsulu sil';

  @override
  String delete_item_confirm(String name) {
    return '“$name”-u silmək istədiyinizə əminsiniz?';
  }

  @override
  String get item_deleted => 'Məhsul silindi';

  @override
  String get failed_to_delete => 'Silinmə uğursuz oldu';

  @override
  String failed_to_delete_message(String error) {
    return 'Əşyanı silmək mümkün deyil: $error';
  }

  @override
  String get date_range_filter => 'Tarix aralığı üzrə filtr';

  @override
  String get price_range_filter => 'Qiymət aralığı filtrləmə';

  @override
  String get my_items => 'Mənim əşyalarım';

  @override
  String get click_fab_to_add_item =>
      'Aşağı sağ küncdəki düyməni klikləyib əşyə əlavə edin';

  @override
  String get confirm_delete => 'Silinməsini təsdiqlə';

  @override
  String get filter_options => 'Seçimləri süzgəcdən keçirmək';

  @override
  String get filter_by_type_category_location =>
      'Məhsulları növ, kateqoriya və yerə görə süzmək';

  @override
  String categories_count(int count) {
    return '$count kateqoriya';
  }

  @override
  String get all_categories => 'Bütün kateqoriyalar';

  @override
  String get no_category_data => 'Hələ kateqoriya məlumatı yoxdur';

  @override
  String get storage_location => 'Saxlama yeri';

  @override
  String locations_count(int count) {
    return '$count yer';
  }

  @override
  String get all_locations => 'Bütün yerlər';

  @override
  String get no_location_data => 'Hələlik yer məlumatları yoxdur';

  @override
  String get date_range => 'Tarix aralığı';

  @override
  String get select_date_range => 'Tarix diapazonunu seçin';

  @override
  String get price_range => 'Qiymət diapazonu';

  @override
  String get unit_price_range => 'Vahid qiymət aralığı';

  @override
  String get min_unit_price => 'Ən aşağı vahid qiymət';

  @override
  String get max_unit_price => 'Ən yüksək vahid qiymət';

  @override
  String get total_price_range => 'Ümumi qiymət aralığı';

  @override
  String get min_total_price => 'Ən aşağı ümumi qiymət';

  @override
  String get max_total_price => 'Ən yüksək ümumi qiymət';

  @override
  String get clear_price_filter => 'Qiymət filtrini təmizlə';

  @override
  String get place_barcode_in_frame =>
      'Ştrixkodunu skan etmək üçün çərçivənin içərisinə yerləşdirin';

  @override
  String get item_already_exists => 'Məhsul artıq mövcuddur';

  @override
  String barcode_with_value(String barcode) {
    return 'Barkod: $barcode';
  }

  @override
  String name_with_value(String name) {
    return 'Ad: $name';
  }

  @override
  String category_with_value(String category) {
    return 'Kateqoriya: $category';
  }

  @override
  String current_quantity_with_value(String quantity, String unit) {
    return 'Cari miqdar: $quantity$unit';
  }

  @override
  String get please_select_operation => 'Əməliyyatı seçin:';

  @override
  String get outbound => 'Anbar çıxışı';

  @override
  String get inbound => 'Anbara daxil etmək';

  @override
  String get inbound_quantity => 'Anbara daxil olan miqdar';

  @override
  String get outbound_quantity => 'Anbar çıxışı miqdarı';

  @override
  String get quantity => 'miqdar';

  @override
  String get enter_inbound_quantity => 'Zəhmət olmasa anbar sayı daxil edin';

  @override
  String get enter_outbound_quantity =>
      'Zəhmət olmasa, çıxış miqdarını daxil edin';

  @override
  String item_increased(String name, String quantity, String unit) {
    return 'Artırıldı $name $quantity$unit';
  }

  @override
  String delete_item_confirm_with_irreversible(String name) {
    return '“$name” silmək istədiyinizə əminsiniz? Bu əməliyyat geri alınmaz.';
  }

  @override
  String item_decreased(String name, String quantity, String unit) {
    return 'Artıq $name $quantity$unit azaldılıb';
  }

  @override
  String get database_reset =>
      'Verilənlər bazası sıfırlandı, cədvəl strukturu yenidən yaradılacaq';

  @override
  String database_reset_error(String error) {
    return 'Verilənlər bazasını sıfırlayarkən xəta baş verdi: $error';
  }

  @override
  String mock_data_init_failed(String error) {
    return 'Simulyasiya məlumatlarının ilkinləşdirilməsi uğursuz oldu: $error';
  }

  @override
  String get solution_steps => 'Həll yolu:';

  @override
  String get solution_step_1 => '1. Tətbiqi silib yenidən quraşdırın';

  @override
  String get solution_step_2 => '2. Və ya tətbiq məlumatlarını təmizləyin';

  @override
  String get solution_step_3 =>
      '3. Və ya resetDatabaseOnStart-i true olaraq təyin edib yenidən işə salın';

  @override
  String notification_service_init_failed(String error) {
    return 'Xatırlatma xidməti başlatma uğursuz oldu: $error';
  }

  @override
  String check_calendar_account_failed(String error) {
    return 'Təqvim hesabını yoxlamaq alınmadı: $error';
  }

  @override
  String create_calendar_failed(String error) {
    return 'Təqvim yaratmaq alınmadı: $error';
  }

  @override
  String add_calendar_event_failed(String error) {
    return 'Təqvim hadisəsi əlavə olunmadı: $error';
  }

  @override
  String delete_calendar_event_failed(String error) {
    return 'Təqvim hadisəsini silmək uğursuz oldu: $error';
  }

  @override
  String set_permission_message_failed(String error) {
    return 'İcazə bildiriş mesajını təyin etmək uğursuz oldu: $error';
  }

  @override
  String mock_data_init_success(int count) {
    return '$count ədəd simulyasiya məlumatı uğurla ilkinləşdirildi';
  }

  @override
  String database_has_data(int count) {
    return 'Verilənlər bazasında artıq $count məlumat var, simulyasiya məlumatlarının ilkinləşdirilməsi atlanır';
  }

  @override
  String get database_structure_mismatch =>
      'Bəlkə verilənlər bazasının strukturu uyğunsuzdur, tətbiq məlumatlarını təmizləməyi və ya yenidən quraşdırmağı tövsiyə edirəm';

  @override
  String get old_database_deleted => 'Köhnə verilənlər bazası faylı silindi';

  @override
  String get backup_data_empty => 'Ehtiyat nüsxə məlumatları boşdur';

  @override
  String get backup_file_not_found => 'Ehtiyat nüsxə faylı mövcud deyil';

  @override
  String file_not_utf8(String error) {
    return 'Fayl kodlaması etibarlı UTF-8 formatında deyil. Zəhmət olmasa, faylın UTF-8 kodlaması ilə saxlanıldığından əmin olun. Xəta detalları: $error';
  }

  @override
  String file_not_found(String filePath) {
    return 'Fayl mövcud deyil: $filePath';
  }

  @override
  String file_empty(String filePath) {
    return 'Fayl boşdur: $filePath';
  }

  @override
  String get file_content_empty =>
      'Faylın məzmunu deşifrə edildikdən sonra boşdur, ola bilsin kodlaşdırma uyğun gəlmir';

  @override
  String field_cannot_be_empty(String fieldName) {
    return '$fieldName boş ola bilməz';
  }

  @override
  String field_min_length(String fieldName, int minLength) {
    return '$fieldName uzunluğu $minLength simvoldan az olmamalıdır';
  }

  @override
  String field_max_length(String fieldName, int maxLength) {
    return '$fieldName uzunluğu $maxLength simvoldan artıq ola bilməz';
  }

  @override
  String field_invalid_email(String fieldName) {
    return 'Zəhmət olmasa, etibarlı $fieldName ünvanını daxil edin';
  }

  @override
  String field_invalid_number(String fieldName, String numberType) {
    return '$fieldName mütləq $numberType olmalıdır';
  }

  @override
  String field_min_value(String fieldName, double min) {
    return '$fieldName $min-dən az ola bilməz';
  }

  @override
  String field_max_value(String fieldName, double max) {
    return '$fieldName $max-dən böyük ola bilməz';
  }

  @override
  String field_positive_integer(String fieldName) {
    return '$fieldName mütləq müsbət tam ədəd olmalıdır';
  }

  @override
  String field_greater_than_zero(String fieldName) {
    return '$fieldName sıfırdan böyük olmalıdır';
  }

  @override
  String field_positive_number(String fieldName) {
    return '$fieldName müsbət olmalıdır';
  }

  @override
  String field_invalid_date(String fieldName) {
    return 'Zəhmət olmasa etibarlı $fieldName daxil edin';
  }

  @override
  String field_date_not_past(String fieldName) {
    return '$fieldName keçmiş tarix ola bilməz';
  }

  @override
  String field_date_not_before(String fieldName, String minDate) {
    return '$fieldName $minDate tarixindən erkən ola bilməz';
  }

  @override
  String field_date_not_after(String fieldName, String maxDate) {
    return '$fieldName $maxDate-dən gec ola bilməz';
  }

  @override
  String field_invalid_value(String fieldName) {
    return 'Zəhmət olmasa etibarlı $fieldName daxil edin';
  }

  @override
  String password_min_length(String fieldName) {
    return '$fieldName uzunluğu 8 simvoldan az ola bilməz';
  }

  @override
  String password_uppercase_required(String fieldName) {
    return '$fieldName ən azı bir böyük hərf içerməlidir';
  }

  @override
  String password_lowercase_required(String fieldName) {
    return '$fieldName ən azı bir kiçik hərf içerməlidir';
  }

  @override
  String password_digit_required(String fieldName) {
    return '$fieldName ən azı bir rəqəm daxil etməlidir';
  }

  @override
  String password_special_char_required(String fieldName) {
    return '$fieldName ən azı bir xüsusi simvolu daxil etməlidir';
  }

  @override
  String get passwords_not_match => 'İki dəfə daxil edilmiş şifrə uyğun gəlmir';

  @override
  String get item_name_cannot_be_empty => 'Məhsulun adı boş ola bilməz';

  @override
  String name_max_length(int maxLength) {
    return 'Ad $maxLength simvoldan artıq ola bilməz';
  }

  @override
  String quantity_min(int minQuantity) {
    return 'Miqdar $minQuantity-dən az ola bilməz';
  }

  @override
  String quantity_max(int maxQuantity) {
    return 'Miqdar $maxQuantity-dən artıq ola bilməz';
  }

  @override
  String get unit_price_not_negative => 'Vahid qiymət mənfi ola bilməz';

  @override
  String unit_price_max(double maxUnitPrice) {
    return 'Vahid qiymət $maxUnitPrice-dan artıq ola bilməz';
  }

  @override
  String get set_production_expiry_for_validity =>
      'Zəhmət olmasa, etibarlılıq müddətini avtomatik hesablamaq üçün istehsal tarixini və saxlama müddətini təyin edin';

  @override
  String get set_purchase_warranty_for_validity =>
      'Zəhmət olmasa zəmanət müddətini avtomatik hesablamak üçün alış tarixini və saxlama müddətini təyin edin';

  @override
  String get calendar_account_creation_failed =>
      'Təqvim hesabı yaradıla bilmir, sistem təqvim ayarlarını yoxlayın';

  @override
  String get test_notification => 'Test bildirişi';

  @override
  String get test_notification_description =>
      'Bu bir test bildirişidir və yerli xatırlatma funksiyasını yoxlamaq üçün istifadə olunur';

  @override
  String get day_unit => 'göy';

  @override
  String days_with_value(int days) {
    return '$days gün';
  }

  @override
  String get item_saved => 'Məhsul saxlanıldı';

  @override
  String get item_updated => 'Məhsul yeniləndi';

  @override
  String get item_added => 'Məhsul əlavə olundu';

  @override
  String get save_success => 'Uğurla saxlanıldı';

  @override
  String get update_success => 'Yeniləmə uğurla tamamlandı';

  @override
  String get delete_success => 'Silindi';

  @override
  String get save_failed => 'Yadda saxlama uğursuz oldu';

  @override
  String get update_failed => 'Yeniləmə uğursuz oldu';

  @override
  String get delete_failed => 'Silinmə uğursuz oldu';
}
