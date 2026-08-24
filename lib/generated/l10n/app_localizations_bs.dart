// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bosnian (`bs`).
class AppLocalizationsBs extends AppLocalizations {
  AppLocalizationsBs([String locale = 'bs']) : super(locale);

  @override
  String get app_name => 'Skladište vrijednih stvari';

  @override
  String get cancel => 'Otkaži';

  @override
  String get confirm => 'Potvrdi';

  @override
  String get save => 'Sačuvati';

  @override
  String get delete => 'Izbriši';

  @override
  String get edit => 'Uredi';

  @override
  String get add => 'Dodati';

  @override
  String get edit_item => 'Uredi predmet';

  @override
  String get add_item => 'Dodaj predmet';

  @override
  String get search => 'Pretraži';

  @override
  String get settings => 'Postavke';

  @override
  String get language_settings => 'Postavke jezika';

  @override
  String get language_settings_description => 'Podesi jezik prikaza aplikacije';

  @override
  String get system_default => 'Sistemski zadano';

  @override
  String get use_system_language => 'Koristi jezik sistema';

  @override
  String get language_change_hint =>
      'Promjena jezika će stupiti na snagu nakon ponovnog pokretanja aplikacije';

  @override
  String get back => 'Povratak';

  @override
  String get next => 'Sljedeći korak';

  @override
  String get done => 'Završeno';

  @override
  String get loading => 'Učitavanje...';

  @override
  String get error => 'Greška';

  @override
  String get success => 'Uspjeh';

  @override
  String get warning => 'Upozorenje';

  @override
  String get info => 'informacija';

  @override
  String get select_alert_days => 'Odaberite broj dana za podsjetnik';

  @override
  String get custom => 'Prilagođeno';

  @override
  String custom_days(int days) {
    return 'Prilagođeno ($days dana)';
  }

  @override
  String current_selection(int days) {
    return 'Trenutni izbor: $days dana';
  }

  @override
  String alert_days_range(int min, int max) {
    return 'Raspon dana za podsjetnik: $min-$max dana';
  }

  @override
  String get enter_days => 'Unesite broj dana za podsjetnik';

  @override
  String get days => 'dani';

  @override
  String enter_valid_days(int min, int max) {
    return 'Unesite broj između $min i $max';
  }

  @override
  String get alert_settings => 'Postavke upozorenja';

  @override
  String get calendar_settings => 'Postavke kalendara';

  @override
  String get calendar_sync => 'Sinhronizacija kalendara';

  @override
  String get calendar_sync_desc =>
      'Nakon uključivanja bit će zatražena dozvola za pristup kalendaru';

  @override
  String get add_test_calendar_event => 'Dodaj test događaj u kalendar';

  @override
  String get enable_calendar_sync_first =>
      'Molimo prvo uključite prekidač \'sinhronizacija kalendara\'';

  @override
  String get app_alert_settings => 'Postavke obavijesti aplikacije';

  @override
  String get local_alerts => 'Lokalni podsjetnik';

  @override
  String get local_alerts_desc =>
      'Uključivanjem primajte podsjetnike za isteke unutar aplikacije';

  @override
  String get send_test_notification => 'Pošaljite testnu obavijest';

  @override
  String get enable_local_alerts_first =>
      'Molimo prvo uključite prekidač \'Lokalni podsjetnik\'';

  @override
  String get alert_days_settings => 'Postavljanje broja dana podsjetnika';

  @override
  String get advance_alert_days => 'Broj dana unaprijed za podsjetnik';

  @override
  String get advance_alert_days_desc =>
      'Postavite koliko dana unaprijed podsjetnik za istekanje roka trajanja ili garancije proizvoda';

  @override
  String get calendar_permission_request => 'Zahtjev za dopuštenje kalendara';

  @override
  String get calendar_permission_desc =>
      'Potrebna je dozvola za pristup kalendaru kako bi se sinhronizovali podsjetnici za stavke. Da li dozvoljavate?';

  @override
  String get allow => 'dozvoliti';

  @override
  String get calendar_permission_granted =>
      'Pristup kalendaru je odobren, sinhronizacija kalendara je uključena';

  @override
  String get calendar_permission_denied =>
      'Pristup kalendaru je odbijen, nije moguće omogućiti sinhronizaciju kalendara';

  @override
  String get calendar_permission_permanently_denied =>
      'Dozvola je trajno odbijena';

  @override
  String get calendar_permission_permanently_denied_desc =>
      'Pristup kalendaru je trajno odbijen, molimo ručno omogućite dozvole u podešavanjima sistema.';

  @override
  String get go_to_settings => 'Idi na postavke';

  @override
  String get calendar_account_failed =>
      'Dozvola za kalendar je odobrena, ali nije moguće kreirati kalendarski račun. Molimo provjerite postavke kalendara u sistemu.';

  @override
  String get calendar_account_created =>
      'Dozvola za kalendar je odobrena, lokalni kalendarski račun je kreiran';

  @override
  String get calendar_account_creating =>
      'Kalendar nalog je uspješno kreiran, ali sistemu može trebati neko vrijeme da stupi na snagu';

  @override
  String get test_calendar_event_added =>
      'Testiranje dodavanja događaja u kalendar uspješno';

  @override
  String get test_calendar_event_failed =>
      'Neuspjelo dodavanje testnog kalendarskog događaja, provjerite postavke kalendara';

  @override
  String get calendar_permission_required =>
      'Potrebna su dozvola za kalendar da bi se dodao testni događaj';

  @override
  String get test_notification_sent => 'Testna obavijest je poslana';

  @override
  String test_notification_failed(String error) {
    return 'Slanje testne obavijesti nije uspjelo: $error';
  }

  @override
  String get notification_permission_required =>
      'Potrebna su dozvola za obavještenja da bi se omogućila lokalna podsjetnika';

  @override
  String operation_failed(String error) {
    return 'Operacija nije uspjela: $error';
  }

  @override
  String get notification_channel_name =>
      'Obavještenje o upozorenju za predmet';

  @override
  String get notification_channel_description =>
      'Podsjetnik za istekao ili istekao rok trajanja proizvoda';

  @override
  String get item_category_food => 'Hrana';

  @override
  String get item_category_daily_necessities => 'Dnevni proizvodi';

  @override
  String get item_category_cosmetics => 'kozmetika';

  @override
  String get item_category_medicine => 'Lijekovi';

  @override
  String get item_category_electronics => 'Elektronski proizvodi';

  @override
  String get item_category_furniture => 'Namještaj';

  @override
  String get item_category_clothing => 'Odjeća';

  @override
  String get item_category_books => 'Knjige';

  @override
  String get item_category_other => 'Ostalo';

  @override
  String get purchase_channel_online_mall => 'Online trgovina';

  @override
  String get purchase_channel_physical_store => 'Fizička prodavnica';

  @override
  String get purchase_channel_supermarket => 'supermarket';

  @override
  String get purchase_channel_specialty_store => 'prodavnica';

  @override
  String get purchase_channel_secondhand_market => 'tržište polovnih stvari';

  @override
  String get purchase_channel_other => 'Ostalo';

  @override
  String get default_category => 'Ostalo';

  @override
  String get default_purchase_channel => 'Online trgovina';

  @override
  String get item_category => 'Klasifikacija predmeta';

  @override
  String get custom_category => 'Prilagođena kategorija';

  @override
  String get backup_data => 'Backup podataka';

  @override
  String get backup_data_description =>
      'Spakujte sve podatke (uključujući slike) u ZIP datoteku za sigurnosnu kopiju';

  @override
  String get backup_all_data => 'Napraviti rezervnu kopiju svih podataka';

  @override
  String get backup_success => 'Sigurnosna kopija uspješna';

  @override
  String backup_failed(String error) {
    return 'Sigurnosna kopija nije uspjela: $error';
  }

  @override
  String get restore_data => 'Obnova podataka';

  @override
  String get restore_data_description =>
      'Vratiti sve podatke iz ZIP sigurnosne kopije';

  @override
  String get export_data => 'Izvezi podatke';

  @override
  String get export_data_description => 'Izvezi kao CSV, TXT, SQL format';

  @override
  String get import_data => 'Uvezi podatke';

  @override
  String get import_data_description =>
      'Uvoz podataka iz CSV, TXT, SQL datoteka';

  @override
  String get alert_settings_description =>
      'Postavke podsjetnika u kalendaru i podsjetnika putem aplikacija';

  @override
  String get about => 'O';

  @override
  String get about_description => 'Informacije o aplikaciji i verzija';

  @override
  String get select_backup_file_first =>
      'Molimo prvo odaberite datoteku za rezervnu kopiju';

  @override
  String get confirm_restore => 'Potvrdi vraćanje';

  @override
  String get confirm_restore_message =>
      'Vraćanje sigurnosne kopije će izbrisati sve postojeće podatke i zamijeniti ih podacima iz kopije, ova radnja se ne može opozvati. Da li ste sigurni da želite nastaviti?';

  @override
  String get confirm_again => 'Ponovno potvrditi';

  @override
  String get confirm_restore_warning =>
      'Da li ste sigurni da želite obrisati sve postojeće podatke i obnoviti sigurnosnu kopiju? Ova radnja se ne može opozvati!';

  @override
  String get confirm_restore_button => 'Potvrdi vraćanje';

  @override
  String restore_success(int count) {
    return 'Obnova uspješna, ukupno $count stavki';
  }

  @override
  String restore_failed(String error) {
    return 'Obnova nije uspjela: $error';
  }

  @override
  String get select_backup_file => 'Odaberite rezervnu datoteku';

  @override
  String get restore_backup => 'Vrati sigurnosnu kopiju';

  @override
  String selected_file(String filename) {
    return 'Odabrana datoteka: $filename';
  }

  @override
  String get export_success => 'Podaci su uspješno izvezeni';

  @override
  String export_failed(String error) {
    return 'Izvoz neuspio: $error';
  }

  @override
  String get format_csv => 'CSV';

  @override
  String get format_txt => 'TXT';

  @override
  String get format_sql => 'SQL';

  @override
  String get duplicate_data_handling => 'Obrada dupliranih podataka';

  @override
  String get duplicate_data_detected =>
      'Otkriveni su duplikati podataka, molimo odaberite način obrade:';

  @override
  String get skip => 'Preskoči';

  @override
  String get overwrite => 'pokriti';

  @override
  String get skip_all => 'Preskoči sve';

  @override
  String get overwrite_all => 'Potpuno pokriti';

  @override
  String get select_import_format_first => 'Molimo prvo odaberite format uvoza';

  @override
  String get confirm_import => 'Potvrdi uvoz';

  @override
  String get confirm_import_message =>
      'Uvoz podataka će prebrisati postojeće podatke, ova radnja se ne može opozvati. Da li ste sigurni da želite nastaviti?';

  @override
  String import_success(int count) {
    return 'Podaci su uspješno uvezeni, ukupno je uvezeno $count predmeta';
  }

  @override
  String import_failed(String error) {
    return 'Uvoz nije uspio: $error';
  }

  @override
  String get select_file => 'Odaberite datoteku';

  @override
  String get no_data => 'Trenutno nema podataka';

  @override
  String get no_data_description =>
      'Trenutno nema podataka, kliknite na dugme ispod da dodate prvi zapis!';

  @override
  String get load_failed => 'Učitavanje nije uspjelo';

  @override
  String get load_failed_description =>
      'Učitavanje podataka nije uspjelo, provjerite mrežnu vezu i pokušajte ponovo';

  @override
  String get retry => 'Pokušaj ponovo';

  @override
  String get network_connection_failed => 'Povezivanje na mrežu nije uspjelo';

  @override
  String get network_connection_failed_description =>
      'Molimo provjerite mrežnu vezu i pokušajte ponovo';

  @override
  String get no_results => 'Nema rezultata';

  @override
  String get no_results_description =>
      'Pokušajte pretraživati koristeći druge ključne riječi';

  @override
  String get clear_search => 'Očisti pretragu';

  @override
  String get insufficient_permission => 'Nedovoljna ovlaštenja';

  @override
  String get insufficient_permission_description =>
      'Potrebne su odgovarajuće dozvole za korištenje ove funkcije';

  @override
  String get request_permission => 'Zatraži dozvolu';

  @override
  String get app_info => 'Informacije o aplikaciji';

  @override
  String get version => 'Verzija';

  @override
  String get developer => 'Programer';

  @override
  String get device_info => 'Informacije o uređaju';

  @override
  String get device_model => 'Model uređaja';

  @override
  String get brand => 'Brend';

  @override
  String get device_name => 'Naziv uređaja';

  @override
  String get product => 'Proizvod';

  @override
  String get hardware => 'Hardver';

  @override
  String get android_version => 'Android verzija';

  @override
  String get sdk_version => 'SDK verzija';

  @override
  String get system_name => 'Naziv sistema';

  @override
  String get operating_system => 'Operativni sistem';

  @override
  String get system_version => 'Verzija sistema';

  @override
  String get dart_version => 'Dart verzija';

  @override
  String get device_identifier => 'Oznaka uređaja';

  @override
  String get computer_name => 'Ime računara';

  @override
  String get build_number => 'Broj verzije';

  @override
  String error_getting_device_info(String error) {
    return 'Nije moguće dobiti informacije o uređaju: $error';
  }

  @override
  String get features => 'Uvod u funkcije';

  @override
  String get app_description => 'Aplikacija za upravljanje pametnim uređajima';

  @override
  String get app_description_detail =>
      'Pomaže vam u upravljanju informacijama o datumu isteka, garantnom roku i drugim podacima o predmetima, te pruža funkciju pametnog podsjećanja.';

  @override
  String get consumable => 'Potrosni materijal';

  @override
  String get durable => 'trajna roba';

  @override
  String get sort => 'Sortiranje';

  @override
  String get name_asc => 'Rastući redoslijed po nazivu';

  @override
  String get name_desc => 'Naziv opadajućim redoslijedom';

  @override
  String get date_asc => 'Rastući datum';

  @override
  String get date_desc => 'Opadajući redoslijed datuma';

  @override
  String get price_asc => 'Rastuća cijena po jedinici';

  @override
  String get price_desc => 'Cijena po jedinici opadajuće';

  @override
  String get quantity_asc => 'Rastući redoslijed količine';

  @override
  String get quantity_desc => 'Opadajući redoslijed po količini';

  @override
  String get total_price_asc => 'Ukupna cijena uzlazno';

  @override
  String get total_price_desc => 'Ukupna cijena opadajuće';

  @override
  String get clear_all_filters => 'Očisti sve filtere';

  @override
  String get scan_barcode => 'Skenirajte kod za unos u skladište';

  @override
  String get search_items => 'Pretraži predmete...';

  @override
  String get no_items => 'Trenutno nema predmeta';

  @override
  String get no_items_description =>
      'Kliknite na dugme ispod da dodate prvi predmet';

  @override
  String get expired => 'Isteklo';

  @override
  String get expiring_soon => 'Ističe';

  @override
  String get warranty_expired => 'Garancija je istekla';

  @override
  String get warranty_expiring_soon => 'Garancija uskoro ističe';

  @override
  String days_remaining(int count) {
    return 'Preostalo $count dana';
  }

  @override
  String expired_days_ago(int count) {
    return 'Isteklo je $count dana';
  }

  @override
  String get delete_item => 'Obriši predmet';

  @override
  String delete_item_confirm(String name) {
    return 'Da li ste sigurni da želite izbrisati \"$name\"?';
  }

  @override
  String get item_deleted => 'Stavka je obrisana';

  @override
  String get failed_to_delete => 'Brisanje nije uspjelo';

  @override
  String failed_to_delete_message(String error) {
    return 'Ne mogu izbrisati predmet: $error';
  }

  @override
  String get date_range_filter => 'Filtriranje po rasponu datuma';

  @override
  String get price_range_filter => 'Filtriranje po rasponu cijena';

  @override
  String get my_items => 'Moje stvari';

  @override
  String get click_fab_to_add_item =>
      'Kliknite dugme u donjem desnom uglu da dodate predmet';

  @override
  String get confirm_delete => 'Potvrdi brisanje';

  @override
  String get filter_options => 'Opcije filtriranja';

  @override
  String get filter_by_type_category_location =>
      'Filtriraj stavke po tipu, kategoriji i lokaciji';

  @override
  String categories_count(int count) {
    return '$count kategorija';
  }

  @override
  String get all_categories => 'Sve kategorije';

  @override
  String get no_category_data => 'Nema podataka o kategoriji';

  @override
  String get storage_location => 'Mjesto skladištenja';

  @override
  String locations_count(int count) {
    return '$count lokacija';
  }

  @override
  String get all_locations => 'Sva mjesta';

  @override
  String get no_location_data => 'Trenutno nema podataka o lokaciji';

  @override
  String get date_range => 'Raspon datuma';

  @override
  String get select_date_range => 'Odaberite vremenski raspon';

  @override
  String get price_range => 'Raspon cijena';

  @override
  String get unit_price_range => 'Opseg cijena po jedinici';

  @override
  String get min_unit_price => 'Najniža cijena po jedinici';

  @override
  String get max_unit_price => 'Najviša cijena po jedinici';

  @override
  String get total_price_range => 'Opseg ukupne cijene';

  @override
  String get min_total_price => 'Najniža ukupna cijena';

  @override
  String get max_total_price => 'Najveća ukupna cijena';

  @override
  String get clear_price_filter => 'Očisti filter cijena';

  @override
  String get place_barcode_in_frame =>
      'Stavite barkod unutar okvira za skeniranje';

  @override
  String get item_already_exists => 'Proizvod već postoji';

  @override
  String barcode_with_value(String barcode) {
    return 'Barkod: $barcode';
  }

  @override
  String name_with_value(String name) {
    return 'Naziv: $name';
  }

  @override
  String category_with_value(String category) {
    return 'Kategorija: $category';
  }

  @override
  String current_quantity_with_value(String quantity, String unit) {
    return 'Trenutna količina: $quantity$unit';
  }

  @override
  String get please_select_operation => 'Molimo odaberite operaciju:';

  @override
  String get outbound => 'Izdavanje iz skladišta';

  @override
  String get inbound => 'Unos u magacin';

  @override
  String get inbound_quantity => 'Količina u skladištu';

  @override
  String get outbound_quantity => 'Količina izlaska iz skladišta';

  @override
  String get quantity => 'količina';

  @override
  String get enter_inbound_quantity => 'Unesite količinu za skladištenje';

  @override
  String get enter_outbound_quantity =>
      'Unesite količinu za izlaz iz skladišta';

  @override
  String delete_item_confirm_with_irreversible(String name) {
    return 'Da li ste sigurni da želite obrisati „$name“? Ova radnja se ne može poništiti.';
  }

  @override
  String get database_reset =>
      'Baza podataka je resetovana, tabela struktura će biti ponovo kreirana';

  @override
  String database_reset_error(String error) {
    return 'Greška pri resetovanju baze podataka: $error';
  }

  @override
  String mock_data_init_failed(String error) {
    return 'Neuspjela inicijalizacija simuliranih podataka: $error';
  }

  @override
  String get solution_steps => 'Rješenje:';

  @override
  String get solution_step_1 =>
      '1. Deinstalirajte aplikaciju i ponovo je instalirajte';

  @override
  String get solution_step_2 => '2. Ili očistite podatke aplikacije';

  @override
  String get solution_step_3 =>
      '3. Ili postavite resetDatabaseOnStart na true, a zatim ponovno pokrenite';

  @override
  String notification_service_init_failed(String error) {
    return 'Inicijalizacija podsjetničke usluge nije uspjela: $error';
  }

  @override
  String check_calendar_account_failed(String error) {
    return 'Neuspjelo provjeravanje kalendarskog računa: $error';
  }

  @override
  String create_calendar_failed(String error) {
    return 'Neuspjelo kreiranje kalendara: $error';
  }

  @override
  String add_calendar_event_failed(String error) {
    return 'Neuspjelo dodavanje događaja u kalendar: $error';
  }

  @override
  String delete_calendar_event_failed(String error) {
    return 'Brisanje događaja iz kalendara nije uspjelo: $error';
  }

  @override
  String set_permission_message_failed(String error) {
    return 'Neuspjelo postavljanje poruke o dozvoli: $error';
  }

  @override
  String mock_data_init_success(int count) {
    return 'Uspješno inicijalizirano $count simuliranih podataka';
  }

  @override
  String database_has_data(int count) {
    return 'Baza podataka već sadrži $count zapisa, preskočite inicijalizaciju simuliranih podataka';
  }

  @override
  String get database_structure_mismatch =>
      'Moguće je da struktura baze podataka ne odgovara, preporučuje se čišćenje podataka aplikacije ili ponovna instalacija';

  @override
  String get old_database_deleted =>
      'Stare datoteke baze podataka su izbrisane';

  @override
  String get backup_data_empty => 'Podaci za rezervnu kopiju su prazni';

  @override
  String get backup_file_not_found => 'Datoteka rezervne kopije ne postoji';

  @override
  String file_not_utf8(String error) {
    return 'Kodiranje datoteke nije važeći UTF-8 format. Molimo osigurajte da je datoteka sačuvana koristeći UTF-8 kodiranje. Detalji greške: $error';
  }

  @override
  String file_not_found(String filePath) {
    return 'Datoteka ne postoji: $filePath';
  }

  @override
  String file_empty(String filePath) {
    return 'Datoteka je prazna: $filePath';
  }

  @override
  String get file_content_empty =>
      'Nakon dekodiranja sadržaja datoteke, on je prazan, moguće je da kodiranje ne odgovara';

  @override
  String field_cannot_be_empty(String fieldName) {
    return '$fieldName ne može biti prazno';
  }

  @override
  String field_min_length(String fieldName, int minLength) {
    return '$fieldName ne smije biti kraći od $minLength karaktera';
  }

  @override
  String field_max_length(String fieldName, int maxLength) {
    return '$fieldName ne može imati više od $maxLength znakova';
  }

  @override
  String field_invalid_email(String fieldName) {
    return 'Molimo unesite važeću $fieldName adresu';
  }

  @override
  String field_invalid_number(String fieldName, String numberType) {
    return '$fieldName mora biti $numberType';
  }

  @override
  String field_min_value(String fieldName, double min) {
    return '$fieldName ne može biti manje od $min';
  }

  @override
  String field_max_value(String fieldName, double max) {
    return '$fieldName ne može biti veće od $max';
  }

  @override
  String field_positive_integer(String fieldName) {
    return '$fieldName mora biti pozitivan cijeli broj';
  }

  @override
  String field_greater_than_zero(String fieldName) {
    return '$fieldName mora biti veće od 0';
  }

  @override
  String field_positive_number(String fieldName) {
    return '$fieldName mora biti pozitivan broj';
  }

  @override
  String field_invalid_date(String fieldName) {
    return 'Molimo unesite važeći $fieldName';
  }

  @override
  String field_date_not_past(String fieldName) {
    return '$fieldName ne smije biti prošli datum';
  }

  @override
  String field_date_not_before(String fieldName, String minDate) {
    return '$fieldName ne može biti prije $minDate';
  }

  @override
  String field_date_not_after(String fieldName, String maxDate) {
    return '$fieldName ne može biti kasnije od $maxDate';
  }

  @override
  String field_invalid_value(String fieldName) {
    return 'Molimo unesite važeći $fieldName';
  }

  @override
  String password_min_length(String fieldName) {
    return '$fieldName duljina ne smije biti manja od 8 karaktera';
  }

  @override
  String password_uppercase_required(String fieldName) {
    return '$fieldName mora sadržavati barem jedno veliko slovo';
  }

  @override
  String password_lowercase_required(String fieldName) {
    return '$fieldName mora sadržavati barem jedno malo slovo';
  }

  @override
  String password_digit_required(String fieldName) {
    return '$fieldName mora sadržavati barem jednu cifru';
  }

  @override
  String password_special_char_required(String fieldName) {
    return '$fieldName mora sadržavati najmanje jedan specijalni znak';
  }

  @override
  String get passwords_not_match => 'Unesene lozinke se ne poklapaju';

  @override
  String get item_name_cannot_be_empty => 'Naziv predmeta ne smije biti prazan';

  @override
  String name_max_length(int maxLength) {
    return 'Naziv ne smije prelaziti $maxLength znakova';
  }

  @override
  String quantity_min(int minQuantity) {
    return 'Količina ne smije biti manja od $minQuantity';
  }

  @override
  String quantity_max(int maxQuantity) {
    return 'Količina ne može prelaziti $maxQuantity';
  }

  @override
  String get unit_price_not_negative =>
      'Jedinična cijena ne može biti negativna';

  @override
  String unit_price_max(double maxUnitPrice) {
    return 'Jedinična cijena ne smije premašiti $maxUnitPrice';
  }

  @override
  String get set_production_expiry_for_validity =>
      'Molimo postavite datum proizvodnje i rok trajanja kako bi se automatski izračunao važeći period';

  @override
  String get set_purchase_warranty_for_validity =>
      'Molimo postavite datum kupovine i rok trajanja kako biste automatski izračunali garanciju';

  @override
  String get calendar_account_creation_failed =>
      'Ne mogu se kreirati kalendarski račun, provjerite postavke sistemskog kalendara';

  @override
  String get test_notification => 'Test obavijest';

  @override
  String get test_notification_description =>
      'Ovo je testna obavijest za provjeru funkcije lokalnog podsjećanja';

  @override
  String get day_unit => 'nebo';

  @override
  String days_with_value(int days) {
    return '$days dana';
  }

  @override
  String get item_saved => 'Predmet je sačuvan';

  @override
  String get item_updated => 'Predmet je ažuriran';

  @override
  String get item_added => 'Stavka je dodana';

  @override
  String get save_success => 'Spremanje uspješno';

  @override
  String get update_success => 'Ažuriranje uspješno';

  @override
  String get delete_success => 'Uklanjanje uspješno';

  @override
  String get save_failed => 'Spremanje nije uspjelo';

  @override
  String get update_failed => 'Ažuriranje nije uspjelo';

  @override
  String get delete_failed => 'Brisanje nije uspjelo';

  @override
  String get test_calendar_event => 'Testiranje kalendarskih događaja';

  @override
  String get test_calendar_event_description =>
      'Ovo je testni događaj koji se koristi za provjeru funkcija kalendara';

  @override
  String get in_app => 'Unutar aplikacije';

  @override
  String get enable_alert => 'Omogući podsjetnik o isteku';

  @override
  String get alert_method => 'Način podsjećanja';

  @override
  String get alert_method_in_app => 'Samo u aplikaciji';

  @override
  String get alert_method_calendar => 'Samo kalendar';

  @override
  String get alert_method_both => 'Oboje';

  @override
  String get alert_days_before => 'Broj dana unaprijed za podsjetnik';

  @override
  String get use_global_setting => 'Koristi globalne postavke';

  @override
  String get barcode_label => 'Barkod';

  @override
  String get name_label => 'Naziv';

  @override
  String get category_label => 'Klasifikacija';

  @override
  String get current_quantity => 'Trenutna količina';

  @override
  String get select_operation => 'Molimo odaberite operaciju';

  @override
  String get unit => 'jedinica';

  @override
  String get custom_unit => 'Prilagođena jedinica';

  @override
  String get enter_unit => 'Unesite jedinicu';

  @override
  String get custom_location => 'Prilagođena lokacija';

  @override
  String get enter_storage_location => 'Unesite mjesto pohrane';

  @override
  String get scan => 'Skeniraj kod';

  @override
  String get scan_to_stock => 'Skeniraj kod za unos u skladište';

  @override
  String get item_categories => 'Klasifikacija predmeta';

  @override
  String get storage_locations => 'Mjesto skladištenja';

  @override
  String get place_barcode_in_frame_to_scan =>
      'Stavite barkod unutar okvira za skeniranje';

  @override
  String get barcode => 'Barkod';

  @override
  String get enter_barcode_or_scan => 'Unesite barkod ili skenirajte kod';

  @override
  String get basic_information => 'Osnovne informacije';

  @override
  String get item_name => 'Naziv predmeta';

  @override
  String get enter_item_name => 'Unesite naziv predmeta';

  @override
  String get enter_category_name => 'Molimo unesite naziv kategorije';

  @override
  String item_increased(String itemName, String quantity, String unit) {
    return 'Dodano je $itemName $quantity$unit';
  }

  @override
  String item_decreased(String itemName, String quantity, String unit) {
    return 'Smanjeno je $itemName $quantity$unit';
  }

  @override
  String get unsaved_changes => 'Nespremljene promjene';

  @override
  String get unsaved_changes_message =>
      'Imate nespremljene promjene, molimo odaberite radnju:';

  @override
  String get discard => 'Odustati';

  @override
  String get unit_piece => 'jedan';

  @override
  String get unit_item => 'komad';

  @override
  String get unit_box => 'kutija';

  @override
  String get unit_package => 'torba';

  @override
  String get unit_bottle => 'boca';

  @override
  String get unit_carton => 'kutija';

  @override
  String get unit_set => 'set';

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
  String get quantity_label => 'količina';

  @override
  String get unit_price_label => 'Jedinična cijena';

  @override
  String get currency_label => 'Valuta';

  @override
  String get total_price_label => 'Ukupna cijena:';

  @override
  String get storage_location_label => 'Mjesto skladištenja';

  @override
  String get item_properties => 'Svojstva predmeta';

  @override
  String get expiry_date_label => 'Rok trajanja';

  @override
  String get warranty_expiry_date_label => 'Datum isteka garancije';

  @override
  String get production_date_label => 'Datum proizvodnje';

  @override
  String get purchase_date_label => 'Datum kupovine';

  @override
  String auto_calculated_from(String dateType) {
    return 'Automatski izračunava prema $dateType i roku trajanja';
  }

  @override
  String get auto_calculated => 'Automatski izračun';

  @override
  String get images_label => 'Slika';

  @override
  String get notes_label => 'Napomena';

  @override
  String get add_notes_hint => 'Dodajte bilješke (opciono)';

  @override
  String get year_label => 'godina';

  @override
  String get month_label => 'mjesec';

  @override
  String get day_label => 'nebo';

  @override
  String selected_count(int count) {
    return 'Odabrano $count stavki';
  }

  @override
  String get select_all => 'Odaberi sve';

  @override
  String get deselect_all => 'Poništi sve odabire';

  @override
  String get batch_change_location => 'Masovna promjena lokacije skladištenja';

  @override
  String confirm_delete_selected(int count) {
    return 'Da li ste sigurni da želite obrisati izabrane $count stavke?';
  }

  @override
  String deleted_count_items(int count) {
    return 'Izbrisano $count predmeta';
  }

  @override
  String get no_storage_location_available =>
      'Trenutno nema dostupnih lokacija za pohranu';

  @override
  String get batch_change_location_title =>
      'Masovna promjena lokacije skladištenja';

  @override
  String moved_count_items_to_location(int count, String location) {
    return 'Već je premješteno $count predmeta u $location';
  }

  @override
  String get operation_type_create => 'Unos';

  @override
  String get operation_type_update => 'Uredi';

  @override
  String get operation_type_delete => 'Izbriši';

  @override
  String get operation_type_inbound => 'Unos u magacin';

  @override
  String get operation_type_outbound => 'Izdavanje iz skladišta';

  @override
  String export_failed_message(String error) {
    return 'Izvoz nije uspio: $error';
  }

  @override
  String get clear_logs => 'Očisti zapisnik';

  @override
  String get confirm_clear_logs =>
      'Da li ste sigurni da želite očistiti sve operativne dnevnike? Ova radnja se ne može poništiti.';

  @override
  String get logs_cleared => 'Dnevnik je očišćen';

  @override
  String get operation_logs_title => 'Dnevnik operacija';

  @override
  String get export_logs => 'Izvezi zapisnik';

  @override
  String get clear_logs_tooltip => 'Očisti zapisnik';

  @override
  String get no_operation_logs => 'Trenutno nema zapisa o radu';

  @override
  String get log_item_label => 'Predmet:';

  @override
  String get log_category_label => 'Kategorija:';

  @override
  String get log_type_label => 'Tip:';

  @override
  String get log_quantity_label => 'Količina:';

  @override
  String get log_unit_price_label => 'Jedinična cijena:';

  @override
  String get log_total_price_label => 'Ukupna cijena:';

  @override
  String get log_expiry_date_label => 'Datum isteka:';

  @override
  String get log_warranty_date_label => 'Datum garancije:';

  @override
  String get log_purchase_date_label => 'Datum kupovine:';

  @override
  String get log_production_date_label => 'Datum proizvodnje:';

  @override
  String get log_shelf_life_label => 'Rok trajanja:';

  @override
  String get log_storage_location_label => 'Mjesto skladištenja:';

  @override
  String get log_barcode_label => 'Barkod:';

  @override
  String get log_notes_label => 'Napomena:';

  @override
  String get log_alert_label => 'Upozorenje:';

  @override
  String get log_alert_days_label => 'Broj dana upozorenja:';

  @override
  String get log_quantity_change_label => 'Promjena količine:';

  @override
  String get log_field_changes_label => 'Izmijeni polje:';

  @override
  String get log_not_set => 'Nije postavljeno';

  @override
  String get log_empty => 'prazno';

  @override
  String get log_alert_enabled => 'Otvoriti';

  @override
  String get log_alert_disabled => 'Zatvori';

  @override
  String get operation_logs_menu => 'Dnevnik operacija';

  @override
  String get operation_logs_description =>
      'Pregled i oporavak zapisa operacija';

  @override
  String operation_failed_message(String error) {
    return 'Operacija nije uspjela: $error';
  }

  @override
  String get no_date => 'Bez datuma';

  @override
  String get shelf_life_months_suffix => 'mjesec';

  @override
  String get shelf_life_days_suffix => 'nebo';

  @override
  String get alert_days_suffix => 'nebo';

  @override
  String get unknown => 'Nepoznat';

  @override
  String get developer_name => 'Leo';

  @override
  String get log_operation_date_label => 'Datum operacije:';
}
