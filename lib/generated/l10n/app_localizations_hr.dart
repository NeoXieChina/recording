// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Croatian (`hr`).
class AppLocalizationsHr extends AppLocalizations {
  AppLocalizationsHr([String locale = 'hr']) : super(locale);

  @override
  String get app_name => 'Sakriveni kutak';

  @override
  String get cancel => 'Otkaži';

  @override
  String get confirm => 'Potvrdi';

  @override
  String get save => 'Spremi';

  @override
  String get delete => 'Izbriši';

  @override
  String get edit => 'Uredi';

  @override
  String get add => 'Dodaj';

  @override
  String get edit_item => 'Uredi predmet';

  @override
  String get add_item => 'Dodaj stavku';

  @override
  String get search => 'Pretraži';

  @override
  String get settings => 'Postavke';

  @override
  String get language_settings => 'Postavke jezika';

  @override
  String get language_settings_description =>
      'Postavi jezik prikaza aplikacije';

  @override
  String get system_default => 'Zadano sustava';

  @override
  String get use_system_language => 'Koristi jezik sustava';

  @override
  String get language_change_hint =>
      'Promjena jezika stupit će na snagu nakon ponovnog pokretanja aplikacije';

  @override
  String get back => 'Povratak';

  @override
  String get next => 'Sljedeći korak';

  @override
  String get done => 'dovršiti';

  @override
  String get loading => 'Učitavanje...';

  @override
  String get error => 'pogreška';

  @override
  String get success => 'uspjeh';

  @override
  String get warning => 'Upozorenje';

  @override
  String get info => 'informacije';

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
    return 'Trenutni odabir: $days dana';
  }

  @override
  String alert_days_range(int min, int max) {
    return 'Raspon dana za podsjetnik: $min-$max dana';
  }

  @override
  String get enter_days => 'Molimo unesite broj dana za podsjetnik';

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
  String get calendar_sync => 'Sinkronizacija kalendara';

  @override
  String get calendar_sync_desc =>
      'Nakon uključivanja bit će zatražena dopuštenja za kalendar';

  @override
  String get add_test_calendar_event => 'Dodaj testni kalendarski događaj';

  @override
  String get enable_calendar_sync_first =>
      'Molimo prvo uključite prekidač \'Sinkronizacija kalendara\'';

  @override
  String get app_alert_settings => 'Postavke obavijesti aplikacije';

  @override
  String get local_alerts => 'Lokalni podsjetnik';

  @override
  String get local_alerts_desc =>
      'Nakon uključivanja primajte podsjetnike o isteku unutar aplikacije';

  @override
  String get send_test_notification => 'Pošalji testnu obavijest';

  @override
  String get enable_local_alerts_first =>
      'Molimo prvo uključite prekidač \'Lokalna podsjetnika\'';

  @override
  String get alert_days_settings => 'Postavke dana podsjetnika';

  @override
  String get advance_alert_days => 'Broj dana unaprijed za podsjetnik';

  @override
  String get advance_alert_days_desc =>
      'Postavite koliko dana unaprijed podsjetiti na isteka robe ili jamstva';

  @override
  String get calendar_permission_request => 'Zahtjev za dopuštenje kalendara';

  @override
  String get calendar_permission_desc =>
      'Potrebna je dozvola za pristup kalendaru kako bi se sinkronizirala podsjetnika za stavke. Dozvoljavate li?';

  @override
  String get allow => 'dopustiti';

  @override
  String get calendar_permission_granted =>
      'Dozvola za kalendar je dodijeljena, sinkronizacija kalendara je uključena';

  @override
  String get calendar_permission_denied =>
      'Pristup kalendaru je odbijen, nije moguće omogućiti sinkronizaciju kalendara';

  @override
  String get calendar_permission_permanently_denied =>
      'Dozvola je trajno odbijena';

  @override
  String get calendar_permission_permanently_denied_desc =>
      'Dozvola za kalendar je trajno odbijena, molimo ručno omogućite dozvolu u postavkama sustava.';

  @override
  String get go_to_settings => 'Idi na postavke';

  @override
  String get calendar_account_failed =>
      'Pristup kalendaru je omogućen, ali nije moguće stvoriti kalendarski račun. Molimo provjerite postavke kalendara sustava';

  @override
  String get calendar_account_created =>
      'Pristup kalendaru je odobren, lokalni kalendarski račun je kreiran';

  @override
  String get calendar_account_creating =>
      'Kalendar račun je uspješno kreiran, ali sustavu može trebati neko vrijeme da stupi na snagu';

  @override
  String get test_calendar_event_added =>
      'Testiranje dodavanja kalendarskog događaja uspješno';

  @override
  String get test_calendar_event_failed =>
      'Dodavanje testnog događaja u kalendar nije uspjelo, provjerite postavke kalendara';

  @override
  String get calendar_permission_required =>
      'Potrebne su dozvole kalendara za dodavanje testnog događaja';

  @override
  String get test_notification_sent => 'Test obavijest je poslana';

  @override
  String test_notification_failed(String error) {
    return 'Slanje testne obavijesti nije uspjelo: $error';
  }

  @override
  String get notification_permission_required =>
      'Potrebna su dopuštenja za obavijesti da bi se omogućili lokalni podsjetnici';

  @override
  String operation_failed(String error) {
    return 'Operacija nije uspjela: $error';
  }

  @override
  String get notification_channel_name => 'Obavijest o upozorenju za predmet';

  @override
  String get notification_channel_description =>
      'Podsjetnik za istekao ili istekao rok trajanja proizvoda';

  @override
  String get item_category_food => 'Hrana';

  @override
  String get item_category_daily_necessities => 'Dnevni potrošački proizvodi';

  @override
  String get item_category_cosmetics => 'kozmetika';

  @override
  String get item_category_medicine => 'Lijek';

  @override
  String get item_category_electronics => 'Elektronički proizvodi';

  @override
  String get item_category_furniture => 'namještaj';

  @override
  String get item_category_clothing => 'Odjeća';

  @override
  String get item_category_books => 'knjige';

  @override
  String get item_category_other => 'Ostalo';

  @override
  String get purchase_channel_online_mall => 'Online trgovina';

  @override
  String get purchase_channel_physical_store => 'fizička trgovina';

  @override
  String get purchase_channel_supermarket => 'supermarket';

  @override
  String get purchase_channel_specialty_store => 'specijalizirana trgovina';

  @override
  String get purchase_channel_secondhand_market => 'tržište rabljenih stvari';

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
  String get backup_data => 'Sigurnosna kopija podataka';

  @override
  String get backup_data_description =>
      'Spakirati sve podatke (uključujući slike) u ZIP datoteku za sigurnosnu kopiju';

  @override
  String get backup_all_data => 'Napravite sigurnosnu kopiju svih podataka';

  @override
  String get backup_success => 'Sigurnosna kopija uspješna';

  @override
  String backup_failed(String error) {
    return 'Sigurnosna kopija nije uspjela: $error';
  }

  @override
  String get restore_data => 'Oporavak podataka';

  @override
  String get restore_data_description =>
      'Vratite sve podatke iz ZIP sigurnosne kopije';

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
      'Postavke podsjetnika u kalendaru i obavijesti aplikacija';

  @override
  String get about => 'O';

  @override
  String get about_description => 'Informacije o aplikaciji i verziji';

  @override
  String get select_backup_file_first =>
      'Molimo prvo odaberite sigurnosnu kopiju';

  @override
  String get confirm_restore => 'Potvrdi oporavak';

  @override
  String get confirm_restore_message =>
      'Obnavljanje sigurnosne kopije izbrisat će sve postojeće podatke i zamijeniti ih podacima iz sigurnosne kopije, ova radnja se ne može poništiti. Jeste li sigurni da želite nastaviti?';

  @override
  String get confirm_again => 'Ponovno potvrditi';

  @override
  String get confirm_restore_warning =>
      'Jeste li sigurni da želite obrisati sve postojeće podatke i vratiti sigurnosnu kopiju? Ova radnja se ne može opozvati!';

  @override
  String get confirm_restore_button => 'Potvrdi oporavak';

  @override
  String restore_success(int count) {
    return 'Obnova uspješna, ukupno $count stavki';
  }

  @override
  String restore_failed(String error) {
    return 'Obnavljanje nije uspjelo: $error';
  }

  @override
  String get select_backup_file => 'Odaberite datoteku sigurnosne kopije';

  @override
  String get restore_backup => 'Obnova sigurnosne kopije';

  @override
  String selected_file(String filename) {
    return 'Odabrana datoteka: $filename';
  }

  @override
  String get export_success => 'Podaci su uspješno izvezeni';

  @override
  String export_failed(String error) {
    return 'Izvoz neuspješan: $error';
  }

  @override
  String get format_csv => 'CSV';

  @override
  String get format_txt => 'TXT';

  @override
  String get format_sql => 'SQL';

  @override
  String get duplicate_data_handling => 'Obrada dupliciranih podataka';

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
  String get overwrite_all => 'Potpuno pokriven';

  @override
  String get select_import_format_first => 'Molimo prvo odaberite format uvoza';

  @override
  String get confirm_import => 'Potvrdi uvoz';

  @override
  String get confirm_import_message =>
      'Uvoz podataka će prebrisati postojeće podatke, ova radnja se ne može poništiti. Jeste li sigurni da želite nastaviti?';

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
  String get no_data => 'Nema podataka';

  @override
  String get no_data_description =>
      'Trenutno nema podataka, kliknite donji gumb za dodavanje prve stavke!';

  @override
  String get load_failed => 'Učitavanje nije uspjelo';

  @override
  String get load_failed_description =>
      'Učitavanje podataka nije uspjelo, provjerite mrežnu vezu i pokušajte ponovno';

  @override
  String get retry => 'Pokušaj ponovno';

  @override
  String get network_connection_failed => 'Veza s mrežom nije uspjela';

  @override
  String get network_connection_failed_description =>
      'Molimo provjerite mrežnu vezu i pokušajte ponovo';

  @override
  String get no_results => 'Nisu pronađeni rezultati';

  @override
  String get no_results_description =>
      'Pokušajte pretraživati koristeći druge ključne riječi';

  @override
  String get clear_search => 'Očisti pretragu';

  @override
  String get insufficient_permission => 'Nedostatak ovlasti';

  @override
  String get insufficient_permission_description =>
      'Potrebna su odgovarajuća dopuštenja za korištenje ove funkcije';

  @override
  String get request_permission => 'Zatraži dopuštenje';

  @override
  String get app_info => 'Informacije o aplikaciji';

  @override
  String get version => 'verzija';

  @override
  String get developer => 'Programer';

  @override
  String get device_info => 'Informacije o uređaju';

  @override
  String get device_model => 'Model uređaja';

  @override
  String get brand => 'brand';

  @override
  String get device_name => 'Naziv uređaja';

  @override
  String get product => 'proizvod';

  @override
  String get hardware => 'hardver';

  @override
  String get android_version => 'Verzija Androida';

  @override
  String get sdk_version => 'Verzija SDK-a';

  @override
  String get system_name => 'Naziv sustava';

  @override
  String get operating_system => 'Operativni sustav';

  @override
  String get system_version => 'Verzija sustava';

  @override
  String get dart_version => 'Verzija Darta';

  @override
  String get device_identifier => 'Oznaka uređaja';

  @override
  String get computer_name => 'Naziv računala';

  @override
  String get build_number => 'Verzija';

  @override
  String error_getting_device_info(String error) {
    return 'Ne mogu dohvatiti informacije o uređaju: $error';
  }

  @override
  String get features => 'Predstavljanje funkcija';

  @override
  String get app_description => 'Aplikacija za upravljanje pametnim predmetima';

  @override
  String get app_description_detail =>
      'Pomaže vam upravljati datumima isteka roka trajanja, datumima jamstva i drugim informacijama, te pruža funkciju pametnog podsjetnika.';

  @override
  String get consumable => 'Potrošni materijal';

  @override
  String get durable => 'Dugotrajna roba';

  @override
  String get sort => 'Sortiranje';

  @override
  String get name_asc => 'Naziv uzlazno';

  @override
  String get name_desc => 'Naziv silazno';

  @override
  String get date_asc => 'Rastući redoslijed datuma';

  @override
  String get date_desc => 'Datum silaznim redoslijedom';

  @override
  String get price_asc => 'Cijena po jedinici uzlazno';

  @override
  String get price_desc => 'Jedinična cijena opadajuće';

  @override
  String get quantity_asc => 'Rastući redoslijed po količini';

  @override
  String get quantity_desc => 'Opadajući redoslijed po količini';

  @override
  String get total_price_asc => 'Ukupna cijena uzlazno';

  @override
  String get total_price_desc => 'Ukupna cijena opadajućim redoslijedom';

  @override
  String get clear_all_filters => 'Očisti sve filtre';

  @override
  String get scan_barcode => 'Skeniraj kod za unos u skladište';

  @override
  String get search_items => 'Traži predmete...';

  @override
  String get no_items => 'Trenutno nema predmeta';

  @override
  String get no_items_description =>
      'Kliknite donji gumb za dodavanje prvog predmeta';

  @override
  String get expired => 'Isteklo';

  @override
  String get expiring_soon => 'Uskoro istječe';

  @override
  String get warranty_expired => 'Jamstvo je isteklo';

  @override
  String get warranty_expiring_soon => 'Jamstvo uskoro istječe';

  @override
  String days_remaining(int count) {
    return 'Preostalo $count dana';
  }

  @override
  String expired_days_ago(int count) {
    return 'Isteklo $count dana';
  }

  @override
  String get delete_item => 'Izbriši predmet';

  @override
  String delete_item_confirm(String name) {
    return 'Jeste li sigurni da želite izbrisati \"$name\"?';
  }

  @override
  String get item_deleted => 'Predmet je izbrisan';

  @override
  String get failed_to_delete => 'Brisanje nije uspjelo';

  @override
  String failed_to_delete_message(String error) {
    return 'Ne mogu izbrisati predmet: $error';
  }

  @override
  String get date_range_filter => 'Filtar po rasponu datuma';

  @override
  String get price_range_filter => 'Filtriranje po cjenovnom rasponu';

  @override
  String get my_items => 'Moje stvari';

  @override
  String get click_fab_to_add_item =>
      'Kliknite gumb u donjem desnom kutu za dodavanje predmeta';

  @override
  String get confirm_delete => 'Potvrdi brisanje';

  @override
  String get filter_options => 'Filtar opcije';

  @override
  String get filter_by_type_category_location =>
      'Filtrirajte stavke prema vrsti, kategoriji i lokaciji';

  @override
  String categories_count(int count) {
    return '$count kategorija';
  }

  @override
  String get all_categories => 'Sve kategorije';

  @override
  String get no_category_data => 'Trenutno nema podataka o kategorijama';

  @override
  String get storage_location => 'Mjesto pohrane';

  @override
  String locations_count(int count) {
    return '$count mjesta';
  }

  @override
  String get all_locations => 'Sva mjesta';

  @override
  String get no_location_data => 'Trenutno nema podataka o lokaciji';

  @override
  String get date_range => 'Raspon datuma';

  @override
  String get select_date_range => 'Odaberite raspon datuma';

  @override
  String get price_range => 'Cjenovni raspon';

  @override
  String get unit_price_range => 'Raspon cijena po jedinici';

  @override
  String get min_unit_price => 'Najniža cijena po jedinici';

  @override
  String get max_unit_price => 'Najviša jedinična cijena';

  @override
  String get total_price_range => 'Raspon ukupne cijene';

  @override
  String get min_total_price => 'Najniža ukupna cijena';

  @override
  String get max_total_price => 'Najviša ukupna cijena';

  @override
  String get clear_price_filter => 'Očisti filtriranje cijena';

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
  String get please_select_operation => 'Odaberite radnju:';

  @override
  String get outbound => 'izlazak iz skladišta';

  @override
  String get inbound => 'Unos u skladište';

  @override
  String get inbound_quantity => 'Količina u skladištu';

  @override
  String get outbound_quantity => 'Količina izlaska iz skladišta';

  @override
  String get quantity => 'količina';

  @override
  String get enter_inbound_quantity =>
      'Molimo unesite količinu za skladištenje';

  @override
  String get enter_outbound_quantity => 'Molimo unesite količinu za otpremu';

  @override
  String delete_item_confirm_with_irreversible(String name) {
    return 'Jeste li sigurni da želite izbrisati „$name“? Ova operacija se ne može poništiti.';
  }

  @override
  String get database_reset =>
      'Baza podataka je resetirana, tablice će biti ponovno kreirane';

  @override
  String database_reset_error(String error) {
    return 'Pogreška pri resetiranju baze podataka: $error';
  }

  @override
  String mock_data_init_failed(String error) {
    return 'Inicijalizacija simuliranih podataka nije uspjela: $error';
  }

  @override
  String get solution_steps => 'Rješenje:';

  @override
  String get solution_step_1 =>
      '1. Deinstalirajte aplikaciju i ponovno je instalirajte';

  @override
  String get solution_step_2 => '2. Ili očistite podatke aplikacije';

  @override
  String get solution_step_3 =>
      '3. Ili postavite resetDatabaseOnStart na true i zatim ponovno pokrenite';

  @override
  String notification_service_init_failed(String error) {
    return 'Inicijalizacija usluge podsjetnika nije uspjela: $error';
  }

  @override
  String check_calendar_account_failed(String error) {
    return 'Neuspjelo provjeravanje kalendarskog računa: $error';
  }

  @override
  String create_calendar_failed(String error) {
    return 'Neuspjelo stvaranje kalendara: $error';
  }

  @override
  String add_calendar_event_failed(String error) {
    return 'Dodavanje događaja u kalendar nije uspjelo: $error';
  }

  @override
  String delete_calendar_event_failed(String error) {
    return 'Neuspjelo brisanje događaja u kalendaru: $error';
  }

  @override
  String set_permission_message_failed(String error) {
    return 'Neuspjelo postavljanje poruke s uputama o dopuštenjima: $error';
  }

  @override
  String mock_data_init_success(int count) {
    return 'Uspješno je inicijalizirano $count simuliranih podataka';
  }

  @override
  String database_has_data(int count) {
    return 'Baza podataka već sadrži $count zapisa, preskočite inicijalizaciju simuliranih podataka';
  }

  @override
  String get database_structure_mismatch =>
      'Moguće je da struktura baze podataka nije kompatibilna, preporučuje se čišćenje podataka aplikacije ili ponovno instaliranje';

  @override
  String get old_database_deleted =>
      'Stare datoteke baze podataka su izbrisane';

  @override
  String get backup_data_empty => 'Podaci sigurnosne kopije su prazni';

  @override
  String get backup_file_not_found => 'Sigurnosna kopija datoteke ne postoji';

  @override
  String file_not_utf8(String error) {
    return 'Kodiranje datoteke nije valjani UTF-8 format. Provjerite je li datoteka spremljena u UTF-8 kodiranju. Detalji pogreške: $error';
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
      'Sadržaj datoteke je prazan nakon dekodiranja, moguće je da kodiranje ne odgovara';

  @override
  String field_cannot_be_empty(String fieldName) {
    return '$fieldName ne smije biti prazno';
  }

  @override
  String field_min_length(String fieldName, int minLength) {
    return '$fieldName duljina ne smije biti manja od $minLength znakova';
  }

  @override
  String field_max_length(String fieldName, int maxLength) {
    return '$fieldName ne smije imati više od $maxLength znakova';
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
    return '$fieldName ne može biti manji od $min';
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
    return 'Unesite valjani $fieldName';
  }

  @override
  String field_date_not_past(String fieldName) {
    return '$fieldName ne može biti datum iz prošlosti';
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
    return 'Unesite valjani $fieldName';
  }

  @override
  String password_min_length(String fieldName) {
    return '$fieldName duljina ne može biti manja od 8 znakova';
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
    return '$fieldName mora sadržavati barem jednu brojku';
  }

  @override
  String password_special_char_required(String fieldName) {
    return '$fieldName mora sadržavati barem jedan poseban znak';
  }

  @override
  String get passwords_not_match => 'Lozinke unesene dvaput se ne podudaraju';

  @override
  String get item_name_cannot_be_empty => 'Naziv predmeta ne smije biti prazan';

  @override
  String name_max_length(int maxLength) {
    return 'Naziv ne može imati više od $maxLength znakova';
  }

  @override
  String quantity_min(int minQuantity) {
    return 'Količina ne može biti manja od $minQuantity';
  }

  @override
  String quantity_max(int maxQuantity) {
    return 'Količina ne smije prelaziti $maxQuantity';
  }

  @override
  String get unit_price_not_negative =>
      'Jedinična cijena ne smije biti negativna';

  @override
  String unit_price_max(double maxUnitPrice) {
    return 'Jedinična cijena ne smije prelaziti $maxUnitPrice';
  }

  @override
  String get set_production_expiry_for_validity =>
      'Molimo postavite datum proizvodnje i rok trajanja kako biste automatski izračunali valjanost';

  @override
  String get set_purchase_warranty_for_validity =>
      'Molimo postavite datum kupnje i rok trajanja kako bi se automatski izračunao jamstveni rok';

  @override
  String get calendar_account_creation_failed =>
      'Ne mogu se stvoriti računi kalendara, provjerite postavke sistemskog kalendara';

  @override
  String get test_notification => 'Test obavijest';

  @override
  String get test_notification_description =>
      'Ovo je testna obavijest za provjeru funkcije lokalnog podsjetnika';

  @override
  String get day_unit => 'nebo';

  @override
  String days_with_value(int days) {
    return '$days dan';
  }

  @override
  String get item_saved => 'Predmet je spremljen';

  @override
  String get item_updated => 'Predmet je ažuriran';

  @override
  String get item_added => 'Predmet je dodan';

  @override
  String get save_success => 'Spremanje uspješno';

  @override
  String get update_success => 'Ažuriranje uspješno';

  @override
  String get delete_success => 'Uspješno izbrisano';

  @override
  String get save_failed => 'Spremanje nije uspjelo';

  @override
  String get update_failed => 'Ažuriranje nije uspjelo';

  @override
  String get delete_failed => 'Brisanje nije uspjelo';

  @override
  String get test_calendar_event => 'Testni kalendarski događaj';

  @override
  String get test_calendar_event_description =>
      'Ovo je testni događaj koji služi za provjeru funkcionalnosti kalendara';

  @override
  String get in_app => 'Unutar aplikacije';

  @override
  String get enable_alert => 'Omogući podsjetnik za isteka';

  @override
  String get alert_method => 'Način podsjećanja';

  @override
  String get alert_method_in_app => 'Samo u aplikaciji';

  @override
  String get alert_method_calendar => 'Samo kalendar';

  @override
  String get alert_method_both => 'oboje';

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
  String get select_operation => 'Odaberite operaciju';

  @override
  String get unit => 'jedinica';

  @override
  String get custom_unit => 'Prilagođena jedinica';

  @override
  String get enter_unit => 'Unesite jedinicu';

  @override
  String get custom_location => 'Prilagođena lokacija';

  @override
  String get enter_storage_location => 'Molimo unesite mjesto pohrane';

  @override
  String get scan => 'Skeniraj QR kod';

  @override
  String get scan_to_stock => 'Skeniraj kod za unos u skladište';

  @override
  String get item_categories => 'Klasifikacija predmeta';

  @override
  String get storage_locations => 'Mjesto pohrane';

  @override
  String get place_barcode_in_frame_to_scan =>
      'Stavite barkod unutar okvira za skeniranje';

  @override
  String get barcode => 'Barkod';

  @override
  String get enter_barcode_or_scan => 'Unesite barkod ili skenirajte';

  @override
  String get basic_information => 'Osnovne informacije';

  @override
  String get item_name => 'Naziv predmeta';

  @override
  String get enter_item_name => 'Molimo unesite naziv predmeta';

  @override
  String get enter_category_name => 'Unesite naziv kategorije';

  @override
  String item_increased(String itemName, String quantity, String unit) {
    return 'Dodano je $itemName $quantity$unit';
  }

  @override
  String item_decreased(String itemName, String quantity, String unit) {
    return 'Smanjeno za $itemName $quantity$unit';
  }

  @override
  String get unsaved_changes => 'Nespremjene promjene';

  @override
  String get unsaved_changes_message =>
      'Imate nespremljene promjene, molimo odaberite radnju:';

  @override
  String get discard => 'odustati';

  @override
  String get unit_piece => 'jedan';

  @override
  String get unit_item => 'predmet';

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
  String get quantity_label => 'Količina';

  @override
  String get unit_price_label => 'Jedinična cijena';

  @override
  String get currency_label => 'Valuta';

  @override
  String get total_price_label => 'Ukupna cijena:';

  @override
  String get storage_location_label => 'Mjesto pohrane';

  @override
  String get item_properties => 'Svojstva predmeta';

  @override
  String get expiry_date_label => 'Vrijedi';

  @override
  String get warranty_expiry_date_label => 'Datum isteka jamstva';

  @override
  String get production_date_label => 'Datum proizvodnje';

  @override
  String get purchase_date_label => 'Datum kupnje';

  @override
  String auto_calculated_from(String dateType) {
    return 'Automatski izračunava prema $dateType i roku trajanja';
  }

  @override
  String get auto_calculated => 'Automatsko izračunavanje';

  @override
  String get images_label => 'slika';

  @override
  String get notes_label => 'Bilješka';

  @override
  String get add_notes_hint => 'Dodajte napomenu (opcionalno)';

  @override
  String get year_label => 'godina';

  @override
  String get month_label => 'mjesec';

  @override
  String get day_label => 'nebo';

  @override
  String selected_count(int count) {
    return 'Odabrano je $count stavki';
  }

  @override
  String get select_all => 'Odaberi sve';

  @override
  String get deselect_all => 'Odznači sve';

  @override
  String get batch_change_location => 'Masovno mijenjanje lokacije pohrane';

  @override
  String confirm_delete_selected(int count) {
    return 'Jeste li sigurni da želite izbrisati odabrane $count stavke?';
  }

  @override
  String deleted_count_items(int count) {
    return 'Obrisano je $count predmeta';
  }

  @override
  String get no_storage_location_available =>
      'Trenutno nema dostupnih lokacija za pohranu';

  @override
  String get batch_change_location_title =>
      'Masovno mijenjanje lokacije pohrane';

  @override
  String moved_count_items_to_location(int count, String location) {
    return '$count predmeta je premješteno u $location';
  }

  @override
  String get operation_type_create => 'Unos';

  @override
  String get operation_type_update => 'Uredi';

  @override
  String get operation_type_delete => 'Izbriši';

  @override
  String get operation_type_inbound => 'ulazak u skladište';

  @override
  String get operation_type_outbound => 'izlazak iz skladišta';

  @override
  String export_failed_message(String error) {
    return 'Izvoz nije uspio: $error';
  }

  @override
  String get clear_logs => 'Očisti zapisnik';

  @override
  String get confirm_clear_logs =>
      'Jeste li sigurni da želite izbrisati sve zapisnike radnji? Ova radnja se ne može poništiti.';

  @override
  String get logs_cleared => 'Dnevnik je očišćen';

  @override
  String get operation_logs_title => 'Dnevnik operacija';

  @override
  String get export_logs => 'Izvezi zapisnik';

  @override
  String get clear_logs_tooltip => 'Očisti zapisnik';

  @override
  String get no_operation_logs => 'Trenutno nema zapisnika operacija';

  @override
  String get log_item_label => 'Predmet:';

  @override
  String get log_category_label => 'Kategorija:';

  @override
  String get log_type_label => 'Vrsta:';

  @override
  String get log_quantity_label => 'Količina:';

  @override
  String get log_unit_price_label => 'Jedinična cijena:';

  @override
  String get log_total_price_label => 'Ukupna cijena:';

  @override
  String get log_expiry_date_label => 'Datum isteka:';

  @override
  String get log_warranty_date_label => 'Datum jamstva:';

  @override
  String get log_purchase_date_label => 'Datum kupnje:';

  @override
  String get log_production_date_label => 'Datum proizvodnje:';

  @override
  String get log_shelf_life_label => 'Rok trajanja:';

  @override
  String get log_storage_location_label => 'Mjesto pohrane:';

  @override
  String get log_barcode_label => 'Šifra proizvoda:';

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
  String get log_alert_enabled => 'otvoriti';

  @override
  String get log_alert_disabled => 'Zatvori';

  @override
  String get operation_logs_menu => 'Dnevnik operacija';

  @override
  String get operation_logs_description => 'Pregled i obnova zapisa o radnjama';

  @override
  String operation_failed_message(String error) {
    return 'Operacija nije uspjela: $error';
  }

  @override
  String get no_date => 'Bez datuma';

  @override
  String get shelf_life_months_suffix => 'mjeseci';

  @override
  String get shelf_life_days_suffix => 'nebo';

  @override
  String get alert_days_suffix => 'nebo';

  @override
  String get unknown => 'Nepoznato';

  @override
  String get developer_name => 'Leo';

  @override
  String get log_operation_date_label => 'Datum operacije:';

  @override
  String get uncategorized => 'Nekategorizirano';

  @override
  String get no_location => 'Bez lokacije';

  @override
  String get item_category_cannot_be_empty =>
      'Kategorija predmeta ne smije biti prazna';

  @override
  String get storage_location_cannot_be_empty =>
      'Mjesto pohrane ne smije biti prazno';

  @override
  String get created_at_asc => 'Dodaj po vremenu uzlazno';

  @override
  String get created_at_desc => 'Dodaj po vremenu opadajuće';

  @override
  String get location_management => 'Upravljanje skladištem';

  @override
  String get private_warehouses => 'Privatni spremnik';

  @override
  String get public_warehouses => 'javna biblioteka';

  @override
  String get is_public_warehouse => 'javna biblioteka';

  @override
  String get public_warehouse_desc =>
      'Javna skladišta nemaju administratora, za izlaz i ulaz robe potrebno je upisati operatera';

  @override
  String get manager => 'Administrator';

  @override
  String get not_set => 'Nije postavljeno';

  @override
  String get edit_location => 'Uredi biblioteku';

  @override
  String get location_name => 'Naziv biblioteke';

  @override
  String get manager_name => 'Ime administratora';

  @override
  String get enter_manager_name => 'Unesite ime administratora';

  @override
  String get manager_name_required => 'Ime administratora ne smije biti prazno';

  @override
  String delete_location_confirm(String name) {
    return 'Jeste li sigurni da želite izbrisati biblioteku „$name“?';
  }

  @override
  String get delete_location_has_items =>
      'U toj knjižnici još uvijek ima predmeta, nije moguće izbrisati';

  @override
  String get default_manager => 'Zadani administrator';

  @override
  String get default_manager_desc =>
      'Zadani administrator prilikom stvaranja privatnog spremišta';

  @override
  String get enter_default_manager =>
      'Molimo unesite zadano ime administratora';

  @override
  String get operator_name => 'Ime osobe koja upravlja';

  @override
  String get enter_operator_name => 'Molimo unesite ime operatera';

  @override
  String get operator_name_required => 'Ime operatera ne može biti prazno';

  @override
  String get no_manager => 'Bez administratora';

  @override
  String get log_operator_label => 'Operater:';

  @override
  String get outbound_quantity_exceeds_current =>
      'Količina koja se izvodi iz skladišta ne smije premašiti trenutni inventar';
}
