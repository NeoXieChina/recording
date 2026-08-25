// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Czech (`cs`).
class AppLocalizationsCs extends AppLocalizations {
  AppLocalizationsCs([String locale = 'cs']) : super(locale);

  @override
  String get app_name => 'Skladování předmětů';

  @override
  String get cancel => 'Zrušit';

  @override
  String get confirm => 'Potvrdit';

  @override
  String get save => 'Uložit';

  @override
  String get delete => 'Odstranit';

  @override
  String get edit => 'Upravit';

  @override
  String get add => 'Přidat';

  @override
  String get edit_item => 'Upravit předmět';

  @override
  String get add_item => 'Přidat položku';

  @override
  String get search => 'Hledat';

  @override
  String get settings => 'Nastavení';

  @override
  String get language_settings => 'Nastavení jazyka';

  @override
  String get language_settings_description =>
      'Nastavit jazyk zobrazení aplikace';

  @override
  String get system_default => 'Výchozí systém';

  @override
  String get use_system_language => 'Použít jazyk systému';

  @override
  String get language_change_hint =>
      'Změna jazyka začne platit po restartu aplikace';

  @override
  String get back => 'Zpět';

  @override
  String get next => 'Další';

  @override
  String get done => 'Dokončit';

  @override
  String get loading => 'Načítání...';

  @override
  String get error => 'Chyba';

  @override
  String get success => 'Úspěch';

  @override
  String get warning => 'Varování';

  @override
  String get info => 'Informace';

  @override
  String get select_alert_days => 'Vybrat počet připomenutí dní';

  @override
  String get custom => 'Vlastní';

  @override
  String custom_days(int days) {
    return 'Vlastní ($days dní)';
  }

  @override
  String current_selection(int days) {
    return 'Aktuální výběr: $days dní';
  }

  @override
  String alert_days_range(int min, int max) {
    return 'Rozsah dnů připomenutí: $min-$max dní';
  }

  @override
  String get enter_days => 'Zadejte počet dnů připomenutí';

  @override
  String get days => 'Počet dnů';

  @override
  String enter_valid_days(int min, int max) {
    return 'Prosím zadejte číslo mezi $min a $max';
  }

  @override
  String get alert_settings => 'Nastavení upozornění';

  @override
  String get calendar_settings => 'Nastavení kalendáře';

  @override
  String get calendar_sync => 'Synchronizace kalendáře';

  @override
  String get calendar_sync_desc =>
      'Po zapnutí bude požadováno oprávnění ke kalendáři';

  @override
  String get add_test_calendar_event => 'Přidat zkušební událost do kalendáře';

  @override
  String get enable_calendar_sync_first =>
      'Nejprve zapněte přepínač „Synchronizace kalendáře“';

  @override
  String get app_alert_settings => 'Nastavení upozornění aplikace';

  @override
  String get local_alerts => 'Místní připomenutí';

  @override
  String get local_alerts_desc =>
      'Po zapnutí obdržíte upozornění na expiraci v aplikaci';

  @override
  String get send_test_notification => 'Odeslat testovací oznámení';

  @override
  String get enable_local_alerts_first =>
      'Nejprve zapněte přepínač \"Místní připomenutí\"';

  @override
  String get alert_days_settings => 'Nastavení počtu dní upozornění';

  @override
  String get advance_alert_days => 'Počet dní předem k upozornění';

  @override
  String get advance_alert_days_desc =>
      'Nastavit, kolik dní předem upozornit na vypršení platnosti položky nebo záruku';

  @override
  String get calendar_permission_request => 'Žádost o přístup k kalendáři';

  @override
  String get calendar_permission_desc =>
      'Je nutné mít přístup k kalendáři pro synchronizaci připomenutí položek. Povolit?';

  @override
  String get allow => 'Povolit';

  @override
  String get calendar_permission_granted =>
      'Přístup k kalendáři byl udělen, synchronizace kalendáře je zapnuta';

  @override
  String get calendar_permission_denied =>
      'Přístup k kalendáři byl odepřen, nelze povolit synchronizaci kalendáře';

  @override
  String get calendar_permission_permanently_denied =>
      'Přístup byl trvale odepřen';

  @override
  String get calendar_permission_permanently_denied_desc =>
      'Oprávnění k kalendáři bylo trvale zamítnuto, prosím povolte oprávnění ručně v nastavení systému.';

  @override
  String get go_to_settings => 'Jít do nastavení';

  @override
  String get calendar_account_failed =>
      'Oprávnění k přístupu k kalendáři bylo uděleno, ale nelze vytvořit účet kalendáře. Zkontrolujte nastavení systémového kalendáře';

  @override
  String get calendar_account_created =>
      'Oprávnění k přístupu k kalendáři bylo uděleno, byl vytvořen lokální účet kalendáře';

  @override
  String get calendar_account_creating =>
      'Účet kalendáře byl úspěšně vytvořen, ale systém může potřebovat nějaký čas, než začne fungovat';

  @override
  String get test_calendar_event_added =>
      'Testovací událost kalendáře byla úspěšně přidána';

  @override
  String get test_calendar_event_failed =>
      'Přidání testovací události do kalendáře selhalo, zkontrolujte nastavení kalendáře';

  @override
  String get calendar_permission_required =>
      'K přidání testovací události je třeba oprávnění k kalendáři';

  @override
  String get test_notification_sent => 'Testovací oznámení bylo odesláno';

  @override
  String test_notification_failed(String error) {
    return 'Odeslání testovacího oznámení selhalo: $error';
  }

  @override
  String get notification_permission_required =>
      'Lokální připomenutí vyžaduje oprávnění k oznámením';

  @override
  String operation_failed(String error) {
    return 'Operace selhala: $error';
  }

  @override
  String get notification_channel_name => 'Upozornění na položku';

  @override
  String get notification_channel_description =>
      'Připomenutí vypršení platnosti nebo záruky položky';

  @override
  String get item_category_food => 'Potraviny';

  @override
  String get item_category_daily_necessities => 'Každodenní potřeby';

  @override
  String get item_category_cosmetics => 'Kosmetika';

  @override
  String get item_category_medicine => 'Lékárenské výrobky';

  @override
  String get item_category_electronics => 'Elektronika';

  @override
  String get item_category_furniture => 'Nábytek';

  @override
  String get item_category_clothing => 'Oblečení';

  @override
  String get item_category_books => 'Knihy';

  @override
  String get item_category_other => 'Ostatní';

  @override
  String get purchase_channel_online_mall => 'Online obchod';

  @override
  String get purchase_channel_physical_store => 'Kamenný obchod';

  @override
  String get purchase_channel_supermarket => 'Supermarket';

  @override
  String get purchase_channel_specialty_store => 'Specializovaný obchod';

  @override
  String get purchase_channel_secondhand_market => 'Second-hand trh';

  @override
  String get purchase_channel_other => 'Ostatní';

  @override
  String get default_category => 'Ostatní';

  @override
  String get default_purchase_channel => 'Online obchod';

  @override
  String get item_category => 'Kategorie položek';

  @override
  String get custom_category => 'Vlastní kategorie';

  @override
  String get backup_data => 'Zálohovat data';

  @override
  String get backup_data_description =>
      'Zabalit všechna data (včetně obrázků) do souboru ZIP pro zálohování';

  @override
  String get backup_all_data => 'Zálohovat všechna data';

  @override
  String get backup_success => 'Zálohování bylo úspěšné';

  @override
  String backup_failed(String error) {
    return 'Zálohování selhalo: $error';
  }

  @override
  String get restore_data => 'Obnovit data';

  @override
  String get restore_data_description =>
      'Obnovit všechna data ze záložního souboru ZIP';

  @override
  String get export_data => 'Exportovat data';

  @override
  String get export_data_description => 'Exportovat do formátu CSV, TXT, SQL';

  @override
  String get import_data => 'Importovat data';

  @override
  String get import_data_description =>
      'Importovat data z CSV, TXT, SQL souborů';

  @override
  String get alert_settings_description =>
      'Nastavení upozornění v kalendáři a upozornění v aplikaci';

  @override
  String get about => 'O';

  @override
  String get about_description => 'Aplikace informace a verze';

  @override
  String get select_backup_file_first => 'Nejprve vyberte záložní soubor';

  @override
  String get confirm_restore => 'Potvrdit obnovení';

  @override
  String get confirm_restore_message =>
      'Obnova zálohy vymaže všechna stávající data a nahradí je zálohovanými daty, tato akce je nevratná. Opravdu chcete pokračovat?';

  @override
  String get confirm_again => 'Potvrďte znovu';

  @override
  String get confirm_restore_warning =>
      'Opravdu chcete vymazat všechna existující data a obnovit zálohu? Tato operace nebude vratná!';

  @override
  String get confirm_restore_button => 'Potvrdit obnovení';

  @override
  String restore_success(int count) {
    return 'Obnovení bylo úspěšné, celkem $count položek';
  }

  @override
  String restore_failed(String error) {
    return 'Obnovení selhalo: $error';
  }

  @override
  String get select_backup_file => 'Vybrat záložní soubor';

  @override
  String get restore_backup => 'Obnovit zálohu';

  @override
  String selected_file(String filename) {
    return 'Vybraný soubor: $filename';
  }

  @override
  String get export_success => 'Data byla úspěšně exportována';

  @override
  String export_failed(String error) {
    return 'Export selhal: $error';
  }

  @override
  String get format_csv => 'CSV';

  @override
  String get format_txt => 'TXT';

  @override
  String get format_sql => 'SQL';

  @override
  String get duplicate_data_handling => 'Zpracování duplicitních dat';

  @override
  String get duplicate_data_detected =>
      'Byly zjištěny duplicitní údaje, vyberte způsob zpracování:';

  @override
  String get skip => 'Přeskočit';

  @override
  String get overwrite => 'Přepsat';

  @override
  String get skip_all => 'Přeskočit vše';

  @override
  String get overwrite_all => 'Celé pokrytí';

  @override
  String get select_import_format_first => 'Nejprve vyberte formát importu';

  @override
  String get confirm_import => 'Potvrdit import';

  @override
  String get confirm_import_message =>
      'Importování dat přepíše existující data, této operace nelze vrátit zpět. Opravdu chcete pokračovat?';

  @override
  String import_success(int count) {
    return 'Data byla úspěšně importována, celkem bylo importováno $count položek';
  }

  @override
  String import_failed(String error) {
    return 'Import selhal: $error';
  }

  @override
  String get select_file => 'Vybrat soubor';

  @override
  String get no_data => 'Žádná data';

  @override
  String get no_data_description =>
      'Momentálně nejsou žádná data, klikněte na tlačítko níže a přidejte první záznam!';

  @override
  String get load_failed => 'Selhání načítání';

  @override
  String get load_failed_description =>
      'Načítání dat se nezdařilo, zkontrolujte připojení k síti a zkuste to znovu';

  @override
  String get retry => 'Zkuste znovu';

  @override
  String get network_connection_failed => 'Připojení k síti selhalo';

  @override
  String get network_connection_failed_description =>
      'Zkontrolujte připojení k síti a zkuste to znovu';

  @override
  String get no_results => 'Nenalezen žádný výsledek';

  @override
  String get no_results_description =>
      'Zkuste hledat pomocí jiných klíčových slov';

  @override
  String get clear_search => 'Vymazat hledání';

  @override
  String get insufficient_permission => 'Nedostatečná oprávnění';

  @override
  String get insufficient_permission_description =>
      'K používání této funkce jsou vyžadována příslušná oprávnění';

  @override
  String get request_permission => 'Požádat o oprávnění';

  @override
  String get app_info => 'Informace o aplikaci';

  @override
  String get version => 'Verze';

  @override
  String get developer => 'Vývojář';

  @override
  String get device_info => 'Informace o zařízení';

  @override
  String get device_model => 'Model zařízení';

  @override
  String get brand => 'Značka';

  @override
  String get device_name => 'Název zařízení';

  @override
  String get product => 'Produkt';

  @override
  String get hardware => 'Hardware';

  @override
  String get android_version => 'Verze Androidu';

  @override
  String get sdk_version => 'Verze SDK';

  @override
  String get system_name => 'Název systému';

  @override
  String get operating_system => 'operační systém';

  @override
  String get system_version => 'Verze systému';

  @override
  String get dart_version => 'Verze Dart';

  @override
  String get device_identifier => 'Identifikace zařízení';

  @override
  String get computer_name => 'Název počítače';

  @override
  String get build_number => 'Číslo verze';

  @override
  String error_getting_device_info(String error) {
    return 'Nelze získat informace o zařízení: $error';
  }

  @override
  String get features => 'Představení funkcí';

  @override
  String get app_description => 'Aplikace pro inteligentní správu předmětů';

  @override
  String get app_description_detail =>
      'Pomáhá vám spravovat dobu expirace položek, záruční lhůty a další informace a poskytuje funkci inteligentního připomenutí.';

  @override
  String get consumable => 'Spotřební materiál';

  @override
  String get durable => 'Trvanlivé zboží';

  @override
  String get sort => 'Seřadit';

  @override
  String get name_asc => 'Název vzestupně';

  @override
  String get name_desc => 'Název sestupně';

  @override
  String get date_asc => 'Datum vzestupně';

  @override
  String get date_desc => 'Datum sestupně';

  @override
  String get price_asc => 'Jednotková cena vzestupně';

  @override
  String get price_desc => 'Jednotková cena sestupně';

  @override
  String get quantity_asc => 'Množství vzestupně';

  @override
  String get quantity_desc => 'Množství sestupně';

  @override
  String get total_price_asc => 'Celková cena vzestupně';

  @override
  String get total_price_desc => 'Celková cena sestupně';

  @override
  String get clear_all_filters => 'Vymazat všechny filtry';

  @override
  String get scan_barcode => 'Naskenovat kód pro naskladnění';

  @override
  String get search_items => 'Hledat položky...';

  @override
  String get no_items => 'Žádné položky';

  @override
  String get no_items_description =>
      'Klikněte níže na tlačítko pro přidání první položky';

  @override
  String get expired => 'Expirovalo';

  @override
  String get expiring_soon => 'Brzy vyprší';

  @override
  String get warranty_expired => 'Záruka vypršela';

  @override
  String get warranty_expiring_soon => 'Záruka brzy vyprší';

  @override
  String days_remaining(int count) {
    return 'Zbývá $count dní';
  }

  @override
  String expired_days_ago(int count) {
    return 'Expirovalo $count dní';
  }

  @override
  String get delete_item => 'Odstranit položku';

  @override
  String delete_item_confirm(String name) {
    return 'Opravdu chcete smazat \"$name\"?';
  }

  @override
  String get item_deleted => 'Položka byla smazána';

  @override
  String get failed_to_delete => 'Smazání selhalo';

  @override
  String failed_to_delete_message(String error) {
    return 'Nelze odstranit položku: $error';
  }

  @override
  String get date_range_filter => 'Filtr podle rozsahu dat';

  @override
  String get price_range_filter => 'Filtr podle rozsahu cen';

  @override
  String get my_items => 'Mé předměty';

  @override
  String get click_fab_to_add_item =>
      'Klikněte na tlačítko v pravém dolním rohu pro přidání předmětu';

  @override
  String get confirm_delete => 'Potvrdit smazání';

  @override
  String get filter_options => 'Filtrační možnosti';

  @override
  String get filter_by_type_category_location =>
      'Filtrovat položky podle typu, kategorie a místa';

  @override
  String categories_count(int count) {
    return '$count kategorií';
  }

  @override
  String get all_categories => 'Všechny kategorie';

  @override
  String get no_category_data => 'Žádná klasifikovaná data';

  @override
  String get storage_location => 'Místo uložení';

  @override
  String locations_count(int count) {
    return '$count míst';
  }

  @override
  String get all_locations => 'Všechna místa';

  @override
  String get no_location_data => 'Žádná data o místech';

  @override
  String get date_range => 'Rozsah dat';

  @override
  String get select_date_range => 'Vyberte rozsah dat';

  @override
  String get price_range => 'Cenový rozsah';

  @override
  String get unit_price_range => 'Rozsah jednotkové ceny';

  @override
  String get min_unit_price => 'Nejnižší jednotková cena';

  @override
  String get max_unit_price => 'Nejvyšší jednotková cena';

  @override
  String get total_price_range => 'Rozsah celkové ceny';

  @override
  String get min_total_price => 'Nejnižší celková cena';

  @override
  String get max_total_price => 'Nejvyšší celková cena';

  @override
  String get clear_price_filter => 'Vymazat filtr cen';

  @override
  String get place_barcode_in_frame =>
      'Umístěte čárový kód do rámu pro skenování';

  @override
  String get item_already_exists => 'Produkt již existuje';

  @override
  String barcode_with_value(String barcode) {
    return 'Čárový kód: $barcode';
  }

  @override
  String name_with_value(String name) {
    return 'Název: $name';
  }

  @override
  String category_with_value(String category) {
    return 'Kategorie: $category';
  }

  @override
  String current_quantity_with_value(String quantity, String unit) {
    return 'Aktuální množství: $quantity$unit';
  }

  @override
  String get please_select_operation => 'Vyberte akci:';

  @override
  String get outbound => 'Výdej';

  @override
  String get inbound => 'Příjem';

  @override
  String get inbound_quantity => 'Množství příjmu';

  @override
  String get outbound_quantity => 'Množství výdeje';

  @override
  String get quantity => 'Množství';

  @override
  String get enter_inbound_quantity => 'Zadejte množství příjmu';

  @override
  String get enter_outbound_quantity => 'Zadejte množství k výdeji';

  @override
  String delete_item_confirm_with_irreversible(String name) {
    return 'Opravdu chcete smazat „$name“? Tuto akci nelze vrátit zpět.';
  }

  @override
  String get database_reset =>
      'Databáze byla resetována, tabulky budou znovu vytvořeny';

  @override
  String database_reset_error(String error) {
    return 'Došlo k chybě při resetování databáze: $error';
  }

  @override
  String mock_data_init_failed(String error) {
    return 'Iniciace simulovaných dat selhala: $error';
  }

  @override
  String get solution_steps => 'Řešení:';

  @override
  String get solution_step_1 =>
      '1. Odinstalujte aplikaci a znovu ji nainstalujte';

  @override
  String get solution_step_2 => '2. Nebo vymažte data aplikace';

  @override
  String get solution_step_3 =>
      '3. Nebo nastavte resetDatabaseOnStart na true a spusťte znovu';

  @override
  String notification_service_init_failed(String error) {
    return 'Inicializace služby připomenutí selhala: $error';
  }

  @override
  String check_calendar_account_failed(String error) {
    return 'Selhání při kontrole účtu kalendáře: $error';
  }

  @override
  String create_calendar_failed(String error) {
    return 'Vytvoření kalendáře selhalo: $error';
  }

  @override
  String add_calendar_event_failed(String error) {
    return 'Nepodařilo se přidat událost do kalendáře: $error';
  }

  @override
  String delete_calendar_event_failed(String error) {
    return 'Nepodařilo se smazat událost v kalendáři: $error';
  }

  @override
  String set_permission_message_failed(String error) {
    return 'Nepodařilo se nastavit zprávu s výzvou k oprávněním: $error';
  }

  @override
  String mock_data_init_success(int count) {
    return 'Bylo úspěšně inicializováno $count simulovaných dat';
  }

  @override
  String database_has_data(int count) {
    return 'Databáze již obsahuje $count záznamů, přeskočit inicializaci simulačních dat';
  }

  @override
  String get database_structure_mismatch =>
      'Mohlo by to být kvůli nekompatibilní struktuře databáze, doporučuje se vymazat data aplikace nebo ji přeinstalovat';

  @override
  String get old_database_deleted => 'Staré databázové soubory byly smazány';

  @override
  String get backup_data_empty => 'Zálohovaná data jsou prázdná';

  @override
  String get backup_file_not_found => 'Soubor zálohy neexistuje';

  @override
  String file_not_utf8(String error) {
    return 'Kódování souboru není platný formát UTF-8. Ujistěte se, že soubor je uložen s kódováním UTF-8. Podrobnosti o chybě: $error';
  }

  @override
  String file_not_found(String filePath) {
    return 'Soubor neexistuje: $filePath';
  }

  @override
  String file_empty(String filePath) {
    return 'Soubor je prázdný: $filePath';
  }

  @override
  String get file_content_empty =>
      'Po dekódování obsahu souboru je prázdný, pravděpodobně se kódování neshoduje';

  @override
  String field_cannot_be_empty(String fieldName) {
    return '$fieldName nesmí být prázdný';
  }

  @override
  String field_min_length(String fieldName, int minLength) {
    return '$fieldName nesmí mít méně než $minLength znaků';
  }

  @override
  String field_max_length(String fieldName, int maxLength) {
    return '$fieldName nesmí překročit $maxLength znaků';
  }

  @override
  String field_invalid_email(String fieldName) {
    return 'Zadejte platnou adresu $fieldName';
  }

  @override
  String field_invalid_number(String fieldName, String numberType) {
    return '$fieldName musí být $numberType';
  }

  @override
  String field_min_value(String fieldName, double min) {
    return '$fieldName nesmí být menší než $min';
  }

  @override
  String field_max_value(String fieldName, double max) {
    return '$fieldName nesmí být větší než $max';
  }

  @override
  String field_positive_integer(String fieldName) {
    return '$fieldName musí být kladné celé číslo';
  }

  @override
  String field_greater_than_zero(String fieldName) {
    return '$fieldName musí být větší než 0';
  }

  @override
  String field_positive_number(String fieldName) {
    return '$fieldName musí být kladné číslo';
  }

  @override
  String field_invalid_date(String fieldName) {
    return 'Zadejte platné $fieldName';
  }

  @override
  String field_date_not_past(String fieldName) {
    return '$fieldName nemůže být minulým datem';
  }

  @override
  String field_date_not_before(String fieldName, String minDate) {
    return '$fieldName nemůže být dříve než $minDate';
  }

  @override
  String field_date_not_after(String fieldName, String maxDate) {
    return '$fieldName nesmí být pozdější než $maxDate';
  }

  @override
  String field_invalid_value(String fieldName) {
    return 'Prosím zadejte platný $fieldName';
  }

  @override
  String password_min_length(String fieldName) {
    return '$fieldName délka nemůže být kratší než 8 znaků';
  }

  @override
  String password_uppercase_required(String fieldName) {
    return '$fieldName musí obsahovat alespoň jedno velké písmeno';
  }

  @override
  String password_lowercase_required(String fieldName) {
    return '$fieldName musí obsahovat alespoň jedno malé písmeno';
  }

  @override
  String password_digit_required(String fieldName) {
    return '$fieldName musí obsahovat alespoň jedno číslo';
  }

  @override
  String password_special_char_required(String fieldName) {
    return '$fieldName musí obsahovat alespoň jeden speciální znak';
  }

  @override
  String get passwords_not_match => 'Zadaná hesla se neshodují';

  @override
  String get item_name_cannot_be_empty => 'Název položky nesmí být prázdný';

  @override
  String name_max_length(int maxLength) {
    return 'Název nesmí přesáhnout $maxLength znaků';
  }

  @override
  String quantity_min(int minQuantity) {
    return 'Množství nemůže být menší než $minQuantity';
  }

  @override
  String quantity_max(int maxQuantity) {
    return 'Množství nesmí překročit $maxQuantity';
  }

  @override
  String get unit_price_not_negative => 'Jednotková cena nesmí být záporná';

  @override
  String unit_price_max(double maxUnitPrice) {
    return 'Jednotková cena nesmí překročit $maxUnitPrice';
  }

  @override
  String get set_production_expiry_for_validity =>
      'Nastavte prosím datum výroby a trvanlivost pro automatické vypočítání platnosti';

  @override
  String get set_purchase_warranty_for_validity =>
      'Prosím nastavte datum nákupu a dobu trvanlivosti pro automatický výpočet záruční doby';

  @override
  String get calendar_account_creation_failed =>
      'Nelze vytvořit účet kalendáře, zkontrolujte nastavení systémového kalendáře';

  @override
  String get test_notification => 'Testovací oznámení';

  @override
  String get test_notification_description =>
      'Toto je testovací oznámení k ověření funkce místního připomenutí';

  @override
  String get day_unit => 'den';

  @override
  String days_with_value(int days) {
    return '$days dní';
  }

  @override
  String get item_saved => 'Položka byla uložena';

  @override
  String get item_updated => 'Položka byla aktualizována';

  @override
  String get item_added => 'Položka byla přidána';

  @override
  String get save_success => 'Uloženo úspěšně';

  @override
  String get update_success => 'Aktualizováno úspěšně';

  @override
  String get delete_success => 'Odstraněno úspěšně';

  @override
  String get save_failed => 'Uložení selhalo';

  @override
  String get update_failed => 'Aktualizace selhala';

  @override
  String get delete_failed => 'Odstranění selhalo';

  @override
  String get test_calendar_event => 'Testovací událost kalendáře';

  @override
  String get test_calendar_event_description =>
      'Toto je testovací událost pro ověření funkce kalendáře';

  @override
  String get in_app => 'v aplikaci';

  @override
  String get enable_alert => 'Povolit upozornění na vypršení platnosti';

  @override
  String get alert_method => 'způsob připomenutí';

  @override
  String get alert_method_in_app => 'Pouze v aplikaci';

  @override
  String get alert_method_calendar => 'Pouze kalendář';

  @override
  String get alert_method_both => 'oba';

  @override
  String get alert_days_before => 'Počet dnů předem pro připomenutí';

  @override
  String get use_global_setting => 'Použít globální nastavení';

  @override
  String get barcode_label => 'Čárový kód';

  @override
  String get name_label => 'název';

  @override
  String get category_label => 'kategorizace';

  @override
  String get current_quantity => 'Aktuální množství';

  @override
  String get select_operation => 'Vyberte akci';

  @override
  String get unit => 'jednotka';

  @override
  String get custom_unit => 'Vlastní jednotka';

  @override
  String get enter_unit => 'Prosím, zadejte jednotku';

  @override
  String get custom_location => 'Vlastní místo';

  @override
  String get enter_storage_location => 'Prosím zadejte místo uložení';

  @override
  String get scan => 'Skenovat QR kód';

  @override
  String get scan_to_stock => 'Naskenujte k přijetí do skladu';

  @override
  String get item_categories => 'Kategorizace položek';

  @override
  String get storage_locations => 'Místo úložiště';

  @override
  String get place_barcode_in_frame_to_scan =>
      'Umístěte čárový kód do rámečku pro skenování';

  @override
  String get barcode => 'Čárový kód';

  @override
  String get enter_barcode_or_scan => 'Zadejte čárový kód nebo naskenujte kód';

  @override
  String get basic_information => 'Základní informace';

  @override
  String get item_name => 'Název položky';

  @override
  String get enter_item_name => 'Prosím zadejte název položky';

  @override
  String get enter_category_name => 'Prosím, zadejte název kategorie';

  @override
  String item_increased(String itemName, String quantity, String unit) {
    return 'Bylo přidáno $itemName $quantity$unit';
  }

  @override
  String item_decreased(String itemName, String quantity, String unit) {
    return 'Bylo sníženo $itemName $quantity$unit';
  }

  @override
  String get unsaved_changes => 'Neuložené změny';

  @override
  String get unsaved_changes_message =>
      'Máte neuložené změny, vyberte možnost:';

  @override
  String get discard => 'vzdát se';

  @override
  String get unit_piece => 'kus';

  @override
  String get unit_item => 'kus';

  @override
  String get unit_box => 'krabice';

  @override
  String get unit_package => 'balíček';

  @override
  String get unit_bottle => 'láhev';

  @override
  String get unit_carton => 'krabička';

  @override
  String get unit_set => 'souprava';

  @override
  String get unit_kg => 'kg';

  @override
  String get unit_g => 'g';

  @override
  String get unit_l => 'L';

  @override
  String get unit_ml => 'ml';

  @override
  String get unit_m => 'm';

  @override
  String get unit_cm => 'cm';

  @override
  String get quantity_label => 'množství';

  @override
  String get unit_price_label => 'Jednotková cena';

  @override
  String get currency_label => 'měna';

  @override
  String get total_price_label => 'Celková cena:';

  @override
  String get storage_location_label => 'Místo úložiště';

  @override
  String get item_properties => 'Vlastnosti předmětu';

  @override
  String get expiry_date_label => 'Platnost';

  @override
  String get warranty_expiry_date_label => 'Datum ukončení záruky';

  @override
  String get production_date_label => 'Datum výroby';

  @override
  String get purchase_date_label => 'Datum nákupu';

  @override
  String auto_calculated_from(String dateType) {
    return 'Automatický výpočet podle $dateType a doby trvanlivosti';
  }

  @override
  String get auto_calculated => 'Automatické výpočty';

  @override
  String get images_label => 'obrázek';

  @override
  String get notes_label => 'Poznámka';

  @override
  String get add_notes_hint => 'Přidat poznámky (volitelné)';

  @override
  String get year_label => 'rok';

  @override
  String get month_label => 'měsíc';

  @override
  String get day_label => 'nebe';

  @override
  String selected_count(int count) {
    return 'Vybráno $count položek';
  }

  @override
  String get select_all => 'Vybrat vše';

  @override
  String get deselect_all => 'Zrušit vše';

  @override
  String get batch_change_location => 'Hromadná výměna místa uložení';

  @override
  String confirm_delete_selected(int count) {
    return 'Opravdu chcete smazat vybrané $count položky?';
  }

  @override
  String deleted_count_items(int count) {
    return 'Bylo odstraněno $count položek';
  }

  @override
  String get no_storage_location_available =>
      'Žádné dostupné místo pro uložení';

  @override
  String get batch_change_location_title => 'Hromadná výměna místa uložení';

  @override
  String moved_count_items_to_location(int count, String location) {
    return '$count položek bylo přesunuto do $location';
  }

  @override
  String get operation_type_create => 'zadat';

  @override
  String get operation_type_update => 'Upravit';

  @override
  String get operation_type_delete => 'Smazat';

  @override
  String get operation_type_inbound => 'skladování';

  @override
  String get operation_type_outbound => 'výdej z skladu';

  @override
  String export_failed_message(String error) {
    return 'Export selhal: $error';
  }

  @override
  String get clear_logs => 'Vyprázdnit protokol';

  @override
  String get confirm_clear_logs =>
      'Opravdu chcete vymazat všechny záznamy operací? Tuto akci nelze vrátit zpět.';

  @override
  String get logs_cleared => 'Protokol byl vymazán';

  @override
  String get operation_logs_title => 'Protokol operací';

  @override
  String get export_logs => 'Exportovat protokol';

  @override
  String get clear_logs_tooltip => 'Vyprázdnit protokol';

  @override
  String get no_operation_logs => 'Žádné záznamy operací';

  @override
  String get log_item_label => 'Položka:';

  @override
  String get log_category_label => 'Kategorie:';

  @override
  String get log_type_label => 'Typ:';

  @override
  String get log_quantity_label => 'Množství:';

  @override
  String get log_unit_price_label => 'Jednotková cena:';

  @override
  String get log_total_price_label => 'Celková cena:';

  @override
  String get log_expiry_date_label => 'Datum expirace:';

  @override
  String get log_warranty_date_label => 'Datum záruky:';

  @override
  String get log_purchase_date_label => 'Datum nákupu:';

  @override
  String get log_production_date_label => 'Datum výroby:';

  @override
  String get log_shelf_life_label => 'Doba trvanlivosti:';

  @override
  String get log_storage_location_label => 'Místo uložení:';

  @override
  String get log_barcode_label => 'Čárový kód:';

  @override
  String get log_notes_label => 'Poznámka:';

  @override
  String get log_alert_label => 'Varování:';

  @override
  String get log_alert_days_label => 'Počet dní varování:';

  @override
  String get log_quantity_change_label => 'Změna množství:';

  @override
  String get log_field_changes_label => 'Upravit pole:';

  @override
  String get log_not_set => 'Není nastaveno';

  @override
  String get log_empty => 'prázdný';

  @override
  String get log_alert_enabled => 'Otevřít';

  @override
  String get log_alert_disabled => 'Zavřít';

  @override
  String get operation_logs_menu => 'Protokol operací';

  @override
  String get operation_logs_description => 'Zobrazit a obnovit záznamy operací';

  @override
  String operation_failed_message(String error) {
    return 'Operace selhala: $error';
  }

  @override
  String get no_date => 'Bez data';

  @override
  String get shelf_life_months_suffix => 'měsíc';

  @override
  String get shelf_life_days_suffix => 'nebe';

  @override
  String get alert_days_suffix => 'nebe';

  @override
  String get unknown => 'Neznámý';

  @override
  String get developer_name => 'Leo';

  @override
  String get log_operation_date_label => 'Datum operace:';

  @override
  String get uncategorized => 'Nezařazeno';

  @override
  String get no_location => 'Bez místa';

  @override
  String get item_category_cannot_be_empty =>
      'Kategorie položky nesmí být prázdná';

  @override
  String get storage_location_cannot_be_empty =>
      'Místo uložení nesmí být prázdné';

  @override
  String get created_at_asc => 'Přidat podle času vzestupně';

  @override
  String get created_at_desc => 'Přidat podle času sestupně';
}
