// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hungarian (`hu`).
class AppLocalizationsHu extends AppLocalizations {
  AppLocalizationsHu([String locale = 'hu']) : super(locale);

  @override
  String get app_name => 'Kincsek tárolása a tenyérben';

  @override
  String get cancel => 'Mégse';

  @override
  String get confirm => 'Megerősít';

  @override
  String get save => 'Mentés';

  @override
  String get delete => 'Törlés';

  @override
  String get edit => 'Szerkesztés';

  @override
  String get add => 'Hozzáad';

  @override
  String get edit_item => 'Elem szerkesztése';

  @override
  String get add_item => 'Elem hozzáadása';

  @override
  String get search => 'Keresés';

  @override
  String get settings => 'Beállítás';

  @override
  String get language_settings => 'Nyelvi beállítások';

  @override
  String get language_settings_description =>
      'Alkalmazás megjelenítési nyelvének beállítása';

  @override
  String get system_default => 'Rendszer alapértelmezett';

  @override
  String get use_system_language => 'Rendszer nyelvének használata';

  @override
  String get language_change_hint =>
      'A nyelvváltoztatás az alkalmazás újraindítása után lép érvénybe';

  @override
  String get back => 'Vissza';

  @override
  String get next => 'Következő lépés';

  @override
  String get done => 'Befejezett';

  @override
  String get loading => 'Betöltés...';

  @override
  String get error => 'hiba';

  @override
  String get success => 'siker';

  @override
  String get warning => 'Figyelmeztetés';

  @override
  String get info => 'információ';

  @override
  String get select_alert_days => 'Értesítési napok kiválasztása';

  @override
  String get custom => 'Egyéni beállítás';

  @override
  String custom_days(int days) {
    return 'Egyéni ($days nap)';
  }

  @override
  String current_selection(int days) {
    return 'Jelenlegi választás: $days nap';
  }

  @override
  String alert_days_range(int min, int max) {
    return 'Emlékeztetési napok tartománya: $min-$max nap';
  }

  @override
  String get enter_days => 'Kérjük, adja meg az emlékeztető napjainak számát';

  @override
  String get days => 'napok száma';

  @override
  String enter_valid_days(int min, int max) {
    return 'Kérjük, adjon meg egy számot a $min és $max között';
  }

  @override
  String get alert_settings => 'Riasztás beállításai';

  @override
  String get calendar_settings => 'Naptár beállításai';

  @override
  String get calendar_sync => 'Naptár szinkronizálás';

  @override
  String get calendar_sync_desc => 'Bekapcsolás után engedélyt kér naptárhoz';

  @override
  String get add_test_calendar_event => 'Teszt naptári esemény hozzáadása';

  @override
  String get enable_calendar_sync_first =>
      'Kérjük, először kapcsolja be a „Naptár szinkronizálás” kapcsolót';

  @override
  String get app_alert_settings => 'App értesítési beállítások';

  @override
  String get local_alerts => 'Helyi emlékeztető';

  @override
  String get local_alerts_desc =>
      'Bekapcsolás után fogadja az alkalmazáson belüli lejárati értesítéseket';

  @override
  String get send_test_notification => 'Tesztértesítés küldése';

  @override
  String get enable_local_alerts_first =>
      'Kérjük, először kapcsolja be a „Helyi értesítések” kapcsolót';

  @override
  String get alert_days_settings => 'Értesítési napok beállítása';

  @override
  String get advance_alert_days => 'Előzetes értesítés napjai';

  @override
  String get advance_alert_days_desc =>
      'Beállítani, hány nappal előre emlékeztessen a termék lejáratára vagy a garancia lejártára';

  @override
  String get calendar_permission_request => 'Naptár engedélykérés';

  @override
  String get calendar_permission_desc =>
      'Naptárhoz való hozzáférés szükséges a tételek emlékeztetőinek szinkronizálásához. Engedélyezi?';

  @override
  String get allow => 'engedélyez';

  @override
  String get calendar_permission_granted =>
      'A naptárhoz való hozzáférés engedélyezve lett, a naptár szinkronizálása be van kapcsolva';

  @override
  String get calendar_permission_denied =>
      'A naptárhoz való hozzáférést megtagadták, nem lehet bekapcsolni a naptár szinkronizálást';

  @override
  String get calendar_permission_permanently_denied =>
      'A jogosultságot véglegesen megtagadták';

  @override
  String get calendar_permission_permanently_denied_desc =>
      'A naptár engedélyét véglegesen megtagadták, kérjük, engedélyezze manuálisan a rendszerbeállításokban.';

  @override
  String get go_to_settings => 'Menj a beállításokhoz';

  @override
  String get calendar_account_failed =>
      'A naptárhoz való hozzáférés engedélyezve van, de nem lehet naptárfiókot létrehozni. Kérjük, ellenőrizze a rendszer naptárbeállításait';

  @override
  String get calendar_account_created =>
      'Naptárhoz való hozzáférés engedélyezve, helyi naptárfiók létrehozva';

  @override
  String get calendar_account_creating =>
      'A naptár fiók létrehozása sikeres volt, de a rendszernek eltarthat egy ideig, amíg érvénybe lép.';

  @override
  String get test_calendar_event_added =>
      'A naptári esemény sikeresen hozzáadva';

  @override
  String get test_calendar_event_failed =>
      'A teszt naptáresemény hozzáadása sikertelen, kérjük, ellenőrizze a naptárbeállításokat';

  @override
  String get calendar_permission_required =>
      'A tesztesemény hozzáadásához szükség van a naptár engedélyére';

  @override
  String get test_notification_sent => 'A teszt értesítés elküldve';

  @override
  String test_notification_failed(String error) {
    return 'A tesztértesítés küldése sikertelen: $error';
  }

  @override
  String get notification_permission_required =>
      'Engedély szükséges az értesítésekhez a helyi emlékeztetők engedélyezéséhez';

  @override
  String operation_failed(String error) {
    return 'Művelet sikertelen: $error';
  }

  @override
  String get notification_channel_name => 'Tárgyriasztás értesítés';

  @override
  String get notification_channel_description =>
      'Figyelmeztetés a lejárt vagy szavatosságon túli termékekről';

  @override
  String get item_category_food => 'Élelmiszer';

  @override
  String get item_category_daily_necessities => 'mindennapi használati cikkek';

  @override
  String get item_category_cosmetics => 'kozmetikum';

  @override
  String get item_category_medicine => 'gyógyszer';

  @override
  String get item_category_electronics => 'elektronikai termékek';

  @override
  String get item_category_furniture => 'bútor';

  @override
  String get item_category_clothing => 'ruházat';

  @override
  String get item_category_books => 'könyv';

  @override
  String get item_category_other => 'Egyéb';

  @override
  String get purchase_channel_online_mall => 'Online áruház';

  @override
  String get purchase_channel_physical_store => 'fizikai üzlet';

  @override
  String get purchase_channel_supermarket => 'szupermarket';

  @override
  String get purchase_channel_specialty_store => 'szaküzlet';

  @override
  String get purchase_channel_secondhand_market => 'használt piac';

  @override
  String get purchase_channel_other => 'Egyéb';

  @override
  String get default_category => 'Egyéb';

  @override
  String get default_purchase_channel => 'Online áruház';

  @override
  String get item_category => 'Tárgyak kategorizálása';

  @override
  String get custom_category => 'Egyéni kategória';

  @override
  String get backup_data => 'Adatok biztonsági mentése';

  @override
  String get backup_data_description =>
      'Az összes adat (beleértve a képeket is) ZIP fájlba csomagolása biztonsági mentés céljából';

  @override
  String get backup_all_data => 'Minden adat biztonsági mentése';

  @override
  String get backup_success => 'Biztonsági mentés sikeres';

  @override
  String backup_failed(String error) {
    return 'Biztonsági mentés sikertelen: $error';
  }

  @override
  String get restore_data => 'Adatok helyreállítása';

  @override
  String get restore_data_description =>
      'Az összes adat visszaállítása ZIP biztonsági mentési fájlból';

  @override
  String get export_data => 'Adatok exportálása';

  @override
  String get export_data_description => 'Exportálás CSV, TXT, SQL formátumban';

  @override
  String get import_data => 'Adatok importálása';

  @override
  String get import_data_description =>
      'Adatok importálása CSV, TXT, SQL fájlokból';

  @override
  String get alert_settings_description =>
      'Naptár értesítések és alkalmazás push értesítések beállítása';

  @override
  String get about => 'ról/ről';

  @override
  String get about_description => 'Alkalmazásinformációk és verzió';

  @override
  String get select_backup_file_first =>
      'Kérjük, először válassza ki a biztonsági mentési fájlt';

  @override
  String get confirm_restore => 'Visszaállítás megerősítése';

  @override
  String get confirm_restore_message =>
      'A biztonsági mentés visszaállítása törli az összes meglévő adatot, és helyette a biztonsági mentés adatait helyezi el, ez a művelet nem visszavonható. Biztosan folytatni szeretné?';

  @override
  String get confirm_again => 'Ismét megerősít';

  @override
  String get confirm_restore_warning =>
      'Biztosan törölni szeretné az összes meglévő adatot és visszaállítani a biztonsági másolatot? Ezt a műveletet nem lehet visszavonni!';

  @override
  String get confirm_restore_button => 'Megerősíti a visszaállítást';

  @override
  String restore_success(int count) {
    return 'Visszaállítás sikeres, összesen $count tétel';
  }

  @override
  String restore_failed(String error) {
    return 'Helyreállítás sikertelen: $error';
  }

  @override
  String get select_backup_file => 'Válassza ki a biztonsági másolat fájlt';

  @override
  String get restore_backup => 'Biztonsági mentés visszaállítása';

  @override
  String selected_file(String filename) {
    return 'Kiválasztott fájl: $filename';
  }

  @override
  String get export_success => 'Adatok exportálása sikeres';

  @override
  String export_failed(String error) {
    return 'Exportálás sikertelen: $error';
  }

  @override
  String get format_csv => 'CSV';

  @override
  String get format_txt => 'TXT';

  @override
  String get format_sql => 'SQL';

  @override
  String get duplicate_data_handling => 'Ismétlődő adatok kezelése';

  @override
  String get duplicate_data_detected =>
      'Ismétlődő adat észlelve, kérjük, válassza ki a feldolgozási módot:';

  @override
  String get skip => 'Átugrani';

  @override
  String get overwrite => 'fedés';

  @override
  String get skip_all => 'Mindet kihagy';

  @override
  String get overwrite_all => 'Teljes lefedettség';

  @override
  String get select_import_format_first =>
      'Kérjük, először válassza ki az importálási formátumot';

  @override
  String get confirm_import => 'Importálás megerősítése';

  @override
  String get confirm_import_message =>
      'Az adatok importálása felülírja a meglévő adatokat, ez a művelet nem vonható vissza. Biztosan folytatni szeretné?';

  @override
  String import_success(int count) {
    return 'Adatok importálása sikeres, összesen $count tétel importálva';
  }

  @override
  String import_failed(String error) {
    return 'Importálás sikertelen: $error';
  }

  @override
  String get select_file => 'Fájl kiválasztása';

  @override
  String get no_data => 'Nincs adat';

  @override
  String get no_data_description =>
      'Jelenleg nincsenek adatok, kattints az alábbi gombra az első rekord hozzáadásához!';

  @override
  String get load_failed => 'Betöltés sikertelen';

  @override
  String get load_failed_description =>
      'Adatok betöltése sikertelen, kérjük, ellenőrizze a hálózati kapcsolatot, majd próbálja újra';

  @override
  String get retry => 'Újrapróbálkozás';

  @override
  String get network_connection_failed => 'Hálózati kapcsolat sikertelen';

  @override
  String get network_connection_failed_description =>
      'Kérjük, ellenőrizze a hálózati kapcsolatot, majd próbálja újra';

  @override
  String get no_results => 'Nem található eredmény';

  @override
  String get no_results_description => 'Próbáljon más kulcsszavakkal keresni';

  @override
  String get clear_search => 'Keresés törlése';

  @override
  String get insufficient_permission => 'Nincs elegendő jogosultság';

  @override
  String get insufficient_permission_description =>
      'Ehhez a funkcióhoz szükséges a megfelelő jogosultság.';

  @override
  String get request_permission => 'Engedély kérése';

  @override
  String get app_info => 'Alkalmazásinformáció';

  @override
  String get version => 'verzió';

  @override
  String get developer => 'Fejlesztő';

  @override
  String get device_info => 'Eszközinformáció';

  @override
  String get device_model => 'Eszközmodell';

  @override
  String get brand => 'Márka';

  @override
  String get device_name => 'Eszköz neve';

  @override
  String get product => 'termék';

  @override
  String get hardware => 'hardver';

  @override
  String get android_version => 'Android verzió';

  @override
  String get sdk_version => 'SDK verzió';

  @override
  String get system_name => 'Rendszer neve';

  @override
  String get operating_system => 'Operációs rendszer';

  @override
  String get system_version => 'Rendszerverzió';

  @override
  String get dart_version => 'Dart verzió';

  @override
  String get device_identifier => 'Eszközazonosító';

  @override
  String get computer_name => 'Számítógép neve';

  @override
  String get build_number => 'Verziószám';

  @override
  String error_getting_device_info(String error) {
    return 'Nem lehet lekérni az eszközinformációkat: $error';
  }

  @override
  String get features => 'Funkció bemutatása';

  @override
  String get app_description => 'Intelligens tárgykezelő alkalmazás';

  @override
  String get app_description_detail =>
      'Segít kezelni a tárgyak lejárati dátumát, garanciális dátumát és más információkat, valamint intelligens emlékeztető funkciót kínál.';

  @override
  String get consumable => 'Fogyóeszköz';

  @override
  String get durable => 'Tartós fogyasztási cikk';

  @override
  String get sort => 'Rendezés';

  @override
  String get name_asc => 'Név szerint növekvő sorrend';

  @override
  String get name_desc => 'Név szerint csökkenő sorrend';

  @override
  String get date_asc => 'Dátum szerint növekvő sorrend';

  @override
  String get date_desc => 'Dátum csökkenő sorrendben';

  @override
  String get price_asc => 'Egységár növekvő sorrendben';

  @override
  String get price_desc => 'Egységár csökkenő sorrendben';

  @override
  String get quantity_asc => 'Mennyiség növekvő sorrendben';

  @override
  String get quantity_desc => 'Mennyiség csökkenő sorrend';

  @override
  String get total_price_asc => 'Teljes ár növekvő sorrend';

  @override
  String get total_price_desc => 'Összár szerinti csökkenő sorrend';

  @override
  String get clear_all_filters => 'Az összes szűrő törlése';

  @override
  String get scan_barcode => 'Beolvasás a raktárba';

  @override
  String get search_items => 'Keresés tárgyak között...';

  @override
  String get no_items => 'Nincs elem';

  @override
  String get no_items_description =>
      'Kattintson az alábbi gombra az első tétel hozzáadásához';

  @override
  String get expired => 'Lejárt';

  @override
  String get expiring_soon => 'Hamarosan lejár';

  @override
  String get warranty_expired => 'A garancia lejárt';

  @override
  String get warranty_expiring_soon => 'A garancia hamarosan lejár';

  @override
  String days_remaining(int count) {
    return 'Már csak $count nap van hátra';
  }

  @override
  String expired_days_ago(int count) {
    return 'Már $count napja lejárt';
  }

  @override
  String get delete_item => 'Tárgy törlése';

  @override
  String delete_item_confirm(String name) {
    return 'Biztosan törölni szeretné \"$name\"?';
  }

  @override
  String get item_deleted => 'A tárgy törölve lett';

  @override
  String get failed_to_delete => 'Törlés sikertelen';

  @override
  String failed_to_delete_message(String error) {
    return 'Nem lehet törölni az elemet: $error';
  }

  @override
  String get date_range_filter => 'Dátumtartomány szűrés';

  @override
  String get price_range_filter => 'Ártartomány szűrés';

  @override
  String get my_items => 'Az én dolgaim';

  @override
  String get click_fab_to_add_item =>
      'Kattintson a jobb alsó sarok gombjára az elem hozzáadásához';

  @override
  String get confirm_delete => 'Törlés megerősítése';

  @override
  String get filter_options => 'Szűrőopciók';

  @override
  String get filter_by_type_category_location =>
      'Tárgyak szűrése típus, kategória és hely szerint';

  @override
  String categories_count(int count) {
    return '$count kategória';
  }

  @override
  String get all_categories => 'Összes kategória';

  @override
  String get no_category_data => 'Nincs kategorizált adat';

  @override
  String get storage_location => 'Tárolási hely';

  @override
  String locations_count(int count) {
    return '$count hely';
  }

  @override
  String get all_locations => 'Összes hely';

  @override
  String get no_location_data => 'Jelenleg nincs helyadat';

  @override
  String get date_range => 'Dátumtartomány';

  @override
  String get select_date_range => 'Dátumtartomány kiválasztása';

  @override
  String get price_range => 'Ártartomány';

  @override
  String get unit_price_range => 'Egységár-tartomány';

  @override
  String get min_unit_price => '最低单价';

  @override
  String get max_unit_price => 'Legmagasabb egységár';

  @override
  String get total_price_range => 'Ártartomány';

  @override
  String get min_total_price => 'Legkisebb teljes ár';

  @override
  String get max_total_price => 'Legmagasabb teljes ár';

  @override
  String get clear_price_filter => 'Ár szűrés törlése';

  @override
  String get place_barcode_in_frame =>
      'Helyezze a vonalkódot a keretbe a beolvasáshoz';

  @override
  String get item_already_exists => 'A termék már létezik';

  @override
  String barcode_with_value(String barcode) {
    return 'Vonalkód: $barcode';
  }

  @override
  String name_with_value(String name) {
    return 'Név: $name';
  }

  @override
  String category_with_value(String category) {
    return 'Kategória: $category';
  }

  @override
  String current_quantity_with_value(String quantity, String unit) {
    return 'Jelenlegi mennyiség: $quantity$unit';
  }

  @override
  String get please_select_operation => 'Kérjük, válasszon műveletet:';

  @override
  String get outbound => 'Kiszerelés';

  @override
  String get inbound => 'Raktárba vétel';

  @override
  String get inbound_quantity => 'Raktárba bevitt mennyiség';

  @override
  String get outbound_quantity => 'Kiadott mennyiség';

  @override
  String get quantity => 'Mennyiség';

  @override
  String get enter_inbound_quantity => 'Kérjük, adja meg a bevitel mennyiségét';

  @override
  String get enter_outbound_quantity =>
      'Kérjük, adja meg a kiszállított mennyiséget';

  @override
  String delete_item_confirm_with_irreversible(String name) {
    return 'Biztosan törölni szeretné a „$name” elemet? Ez a művelet nem vonható vissza.';
  }

  @override
  String get database_reset =>
      'Az adatbázis vissza lett állítva, az adatbázis tábla szerkezetét újra létre fogjuk hozni';

  @override
  String database_reset_error(String error) {
    return 'Hiba történt az adatbázis visszaállításakor: $error';
  }

  @override
  String mock_data_init_failed(String error) {
    return 'Szimulált adatok inicializálása sikertelen: $error';
  }

  @override
  String get solution_steps => 'Megoldás:';

  @override
  String get solution_step_1 =>
      '1. Távolítsa el az alkalmazást, majd telepítse újra';

  @override
  String get solution_step_2 => '2. Vagy törölje az alkalmazás adatait';

  @override
  String get solution_step_3 =>
      '3. Vagy állítsa a resetDatabaseOnStart értékét true-ra, majd futtassa újra';

  @override
  String notification_service_init_failed(String error) {
    return 'Értesítő szolgáltatás inicializálása sikertelen: $error';
  }

  @override
  String check_calendar_account_failed(String error) {
    return 'Naptárfiók ellenőrzése sikertelen: $error';
  }

  @override
  String create_calendar_failed(String error) {
    return 'Naptár létrehozása sikertelen: $error';
  }

  @override
  String add_calendar_event_failed(String error) {
    return 'Naptár esemény hozzáadása sikertelen: $error';
  }

  @override
  String delete_calendar_event_failed(String error) {
    return 'Naptáresemény törlése sikertelen: $error';
  }

  @override
  String set_permission_message_failed(String error) {
    return 'A jogosultsági üzenet beállítása sikertelen: $error';
  }

  @override
  String mock_data_init_success(int count) {
    return 'Sikeresen inicializálták a $count darab szimulált adatot';
  }

  @override
  String database_has_data(int count) {
    return 'Az adatbázisban már $count adat található, a szimulált adat inicializálása kihagyva';
  }

  @override
  String get database_structure_mismatch =>
      'Lehet, hogy az adatbázis szerkezete nem egyezik, javasolt az alkalmazás adatainak törlése vagy újratelepítése';

  @override
  String get old_database_deleted => 'A régi adatbázisfájl törölve lett';

  @override
  String get backup_data_empty => 'A biztonsági mentés adatai üresek';

  @override
  String get backup_file_not_found => 'A biztonsági másolat fájl nem létezik';

  @override
  String file_not_utf8(String error) {
    return 'A fájl kódolása nem érvényes UTF-8 formátum. Kérjük, győződjön meg róla, hogy a fájl UTF-8 kódolással van mentve. Hiba részletei: $error';
  }

  @override
  String file_not_found(String filePath) {
    return 'A fájl nem létezik: $filePath';
  }

  @override
  String file_empty(String filePath) {
    return 'A fájl üres: $filePath';
  }

  @override
  String get file_content_empty =>
      'A fájl tartalmának dekódolása után üres lett, valószínűleg az kódolás nem egyezik';

  @override
  String field_cannot_be_empty(String fieldName) {
    return '$fieldName nem lehet üres';
  }

  @override
  String field_min_length(String fieldName, int minLength) {
    return '$fieldName hossza nem lehet kevesebb, mint $minLength karakter';
  }

  @override
  String field_max_length(String fieldName, int maxLength) {
    return '$fieldName hossza nem haladhatja meg a $maxLength karaktert';
  }

  @override
  String field_invalid_email(String fieldName) {
    return 'Kérjük, adjon meg egy érvényes $fieldName címet';
  }

  @override
  String field_invalid_number(String fieldName, String numberType) {
    return '$fieldName-nak $numberType-nak kell lennie';
  }

  @override
  String field_min_value(String fieldName, double min) {
    return '$fieldName nem lehet kisebb, mint $min';
  }

  @override
  String field_max_value(String fieldName, double max) {
    return '$fieldName nem lehet nagyobb, mint $max';
  }

  @override
  String field_positive_integer(String fieldName) {
    return '$fieldName-nak pozitív egész számnak kell lennie';
  }

  @override
  String field_greater_than_zero(String fieldName) {
    return '$fieldName-nak nagyobbnak kell lennie, mint 0';
  }

  @override
  String field_positive_number(String fieldName) {
    return '$fieldName-nak pozitív számnak kell lennie';
  }

  @override
  String field_invalid_date(String fieldName) {
    return 'Kérjük, adjon meg egy érvényes $fieldName';
  }

  @override
  String field_date_not_past(String fieldName) {
    return '$fieldName nem lehet múltbeli dátum';
  }

  @override
  String field_date_not_before(String fieldName, String minDate) {
    return '$fieldName nem lehet korábbi, mint $minDate';
  }

  @override
  String field_date_not_after(String fieldName, String maxDate) {
    return '$fieldName nem lehet később, mint $maxDate';
  }

  @override
  String field_invalid_value(String fieldName) {
    return 'Kérjük, adjon meg egy érvényes $fieldName';
  }

  @override
  String password_min_length(String fieldName) {
    return '$fieldName hossza nem lehet kevesebb, mint 8 karakter';
  }

  @override
  String password_uppercase_required(String fieldName) {
    return '$fieldName-nak tartalmaznia kell legalább egy nagybetűt';
  }

  @override
  String password_lowercase_required(String fieldName) {
    return '$fieldName-nak tartalmaznia kell legalább egy kisbetűt';
  }

  @override
  String password_digit_required(String fieldName) {
    return '$fieldName-nak tartalmaznia kell legalább egy számot';
  }

  @override
  String password_special_char_required(String fieldName) {
    return '$fieldName-nak tartalmaznia kell legalább egy speciális karaktert';
  }

  @override
  String get passwords_not_match => 'A kétszer megadott jelszó nem egyezik';

  @override
  String get item_name_cannot_be_empty => 'Az árucikk neve nem lehet üres';

  @override
  String name_max_length(int maxLength) {
    return 'A név nem haladhatja meg a $maxLength karaktert';
  }

  @override
  String quantity_min(int minQuantity) {
    return 'A mennyiség nem lehet kevesebb, mint $minQuantity';
  }

  @override
  String quantity_max(int maxQuantity) {
    return 'A mennyiség nem haladhatja meg a $maxQuantity-t';
  }

  @override
  String get unit_price_not_negative => 'Az egységár nem lehet negatív';

  @override
  String unit_price_max(double maxUnitPrice) {
    return 'Egységár nem haladhatja meg a $maxUnitPrice-t';
  }

  @override
  String get set_production_expiry_for_validity =>
      'Kérjük, állítsa be a gyártási dátumot és a szavatossági időt a lejárati idő automatikus kiszámításához';

  @override
  String get set_purchase_warranty_for_validity =>
      'Kérjük, állítsa be a vásárlás dátumát és a szavatossági időt, hogy automatikusan kiszámítsa a jótállási időt';

  @override
  String get calendar_account_creation_failed =>
      'Nem lehet naptárfiókot létrehozni, kérjük, ellenőrizze a rendszer naptárbeállításait';

  @override
  String get test_notification => 'Teszt értesítés';

  @override
  String get test_notification_description =>
      'Ez egy tesztértesítés a helyi emlékeztető funkció ellenőrzéséhez';

  @override
  String get day_unit => 'ég';

  @override
  String days_with_value(int days) {
    return '$days nap';
  }

  @override
  String get item_saved => 'A tárgy elmentve';

  @override
  String get item_updated => 'A tárgy frissítve lett';

  @override
  String get item_added => 'A tárgy hozzáadva';

  @override
  String get save_success => 'Sikeres mentés';

  @override
  String get update_success => 'Frissítés sikeres';

  @override
  String get delete_success => 'Törlés sikeres';

  @override
  String get save_failed => 'Mentés sikertelen';

  @override
  String get update_failed => 'Frissítés sikertelen';

  @override
  String get delete_failed => 'Törlés sikertelen';

  @override
  String get test_calendar_event => 'Naptáresemény tesztelése';

  @override
  String get test_calendar_event_description =>
      'Ez egy tesztesemény a naptár funkciójának ellenőrzésére';

  @override
  String get in_app => 'alkalmazáson belüli';

  @override
  String get enable_alert => 'Engedélyezze a lejárati emlékeztetőt';

  @override
  String get alert_method => 'Emlékeztetési mód';

  @override
  String get alert_method_in_app => 'Csak alkalmazáson belül';

  @override
  String get alert_method_calendar => 'Csak naptár';

  @override
  String get alert_method_both => 'mindkettő';

  @override
  String get alert_days_before => 'Előzetes értesítés napjai';

  @override
  String get use_global_setting => 'Globális beállítások használata';

  @override
  String get barcode_label => 'Vonalkód';

  @override
  String get name_label => 'Név';

  @override
  String get category_label => 'Kategorizálás';

  @override
  String get current_quantity => 'Jelenlegi mennyiség';

  @override
  String get select_operation => 'Kérjük, válasszon műveletet';

  @override
  String get unit => 'egység';

  @override
  String get custom_unit => 'Egyéni egység';

  @override
  String get enter_unit => 'Kérjük, adja meg az egységet';

  @override
  String get custom_location => 'Egyéni hely';

  @override
  String get enter_storage_location => 'Kérjük, adja meg a tárolási helyet';

  @override
  String get scan => 'Kód beolvasása';

  @override
  String get scan_to_stock => 'Beolvasás a raktárba';

  @override
  String get item_categories => 'Árukategória';

  @override
  String get storage_locations => 'Tárolási hely';

  @override
  String get place_barcode_in_frame_to_scan =>
      'Helyezze a vonalkódot a keretbe a beolvasáshoz';

  @override
  String get barcode => 'Vonalkód';

  @override
  String get enter_barcode_or_scan =>
      'Kérjük, adja meg a vonalkódot vagy olvassa be a QR-kódot';

  @override
  String get basic_information => 'Alapinformáció';

  @override
  String get item_name => 'Áru neve';

  @override
  String get enter_item_name => 'Kérjük, adja meg a tárgy nevét';

  @override
  String get enter_category_name => 'Kérjük, adja meg a kategória nevét';

  @override
  String item_increased(String itemName, String quantity, String unit) {
    return 'Hozzáadva $itemName $quantity$unit';
  }

  @override
  String item_decreased(String itemName, String quantity, String unit) {
    return 'Már csökkent $itemName $quantity$unit';
  }
}
