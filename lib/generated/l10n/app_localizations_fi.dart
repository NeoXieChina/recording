// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Finnish (`fi`).
class AppLocalizationsFi extends AppLocalizations {
  AppLocalizationsFi([String locale = 'fi']) : super(locale);

  @override
  String get app_name => 'Säilyttää esineitä pienessä tilassa';

  @override
  String get cancel => 'Peruuta';

  @override
  String get confirm => 'Vahvista';

  @override
  String get save => 'Tallenna';

  @override
  String get delete => 'Poista';

  @override
  String get edit => 'Muokkaa';

  @override
  String get add => 'lisää';

  @override
  String get edit_item => 'Muokkaa kohdetta';

  @override
  String get add_item => 'Lisää kohde';

  @override
  String get search => 'Hae';

  @override
  String get settings => 'Asetukset';

  @override
  String get language_settings => 'Kieliasetukset';

  @override
  String get language_settings_description => 'Aseta sovelluksen näyttökieli';

  @override
  String get system_default => 'Järjestelmän oletus';

  @override
  String get use_system_language => 'Käytä järjestelmän kieltä';

  @override
  String get language_change_hint =>
      'Kielen muutos tulee voimaan sovelluksen uudelleenkäynnistyksen jälkeen';

  @override
  String get back => 'Takaisin';

  @override
  String get next => 'Seuraava askel';

  @override
  String get done => 'Valmis';

  @override
  String get loading => 'Ladataan...';

  @override
  String get error => 'Virhe';

  @override
  String get success => 'Menestys';

  @override
  String get warning => 'Varoitus';

  @override
  String get info => 'tieto';

  @override
  String get select_alert_days => 'Valitse muistutuspäivien määrä';

  @override
  String get custom => 'Mukautettu';

  @override
  String custom_days(int days) {
    return 'Mukautettu ($days päivää)';
  }

  @override
  String current_selection(int days) {
    return 'Tällä hetkellä valittu: $days päivää';
  }

  @override
  String alert_days_range(int min, int max) {
    return 'Muistutuspäivien väli: $min-$max päivää';
  }

  @override
  String get enter_days => 'Syötä muistutuspäivien määrä';

  @override
  String get days => 'päivien määrä';

  @override
  String enter_valid_days(int min, int max) {
    return 'Syötä numero $min-$max välillä';
  }

  @override
  String get alert_settings => 'Varoitusasetukset';

  @override
  String get calendar_settings => 'Kalenterin asetukset';

  @override
  String get calendar_sync => 'Kalenterin synkronointi';

  @override
  String get calendar_sync_desc =>
      'Käytettäessä pyydetään kalenterin käyttöoikeutta';

  @override
  String get add_test_calendar_event => 'Lisää testikalenteritapahtuma';

  @override
  String get enable_calendar_sync_first =>
      'Ole hyvä ja ota ensin käyttöön \'Kalenterin synkronointi\' -kytkin';

  @override
  String get app_alert_settings => 'Sovelluksen muistutusasetukset';

  @override
  String get local_alerts => 'Paikallinen muistutus';

  @override
  String get local_alerts_desc =>
      'Ota käyttöön sovelluksen sisäisten vanhenemisilmoitusten vastaanotto';

  @override
  String get send_test_notification => 'Lähetä testiviesti';

  @override
  String get enable_local_alerts_first =>
      'Ole hyvä ja ota ensin käyttöön \'Paikalliset muistutukset\' -kytkin';

  @override
  String get alert_days_settings => 'Muistutuspäivien asetus';

  @override
  String get advance_alert_days => 'Etukäteen muistutuspäivien määrä';

  @override
  String get advance_alert_days_desc =>
      'Aseta, kuinka monta päivää etukäteen muistutetaan tuotteen viimeisestä käyttöpäivästä tai takuun päättymisestä';

  @override
  String get calendar_permission_request => 'Kalenterin käyttöoikeuspyyntö';

  @override
  String get calendar_permission_desc =>
      'Tarvitaan pääsy kalenteriin synkronoimaan muistutuksia. Sallitko sen?';

  @override
  String get allow => 'sallia';

  @override
  String get calendar_permission_granted =>
      'Kalenterin käyttöoikeus on myönnetty, kalenterin synkronointi on päällä';

  @override
  String get calendar_permission_denied =>
      'Kalenterin käyttöoikeus evätty, kalenterin synkronointia ei voida avata';

  @override
  String get calendar_permission_permanently_denied =>
      'Oikeudet on pysyvästi evätty';

  @override
  String get calendar_permission_permanently_denied_desc =>
      'Kalenterin käyttöoikeus on pysyvästi evätty, avaa käyttöoikeus järjestelmäasetuksista manuaalisesti.';

  @override
  String get go_to_settings => 'Siirry asetuksiin';

  @override
  String get calendar_account_failed =>
      'Kalenterin käyttöoikeus on myönnetty, mutta kalenteritiliä ei voi luoda. Tarkista järjestelmän kalenteriasetukset.';

  @override
  String get calendar_account_created =>
      'Kalenterin käyttöoikeus myönnetty, paikallinen kalenteritili luotu';

  @override
  String get calendar_account_creating =>
      'Kalenteritili luotu onnistuneesti, mutta järjestelmä saattaa tarvita hieman aikaa tullakseen voimaan';

  @override
  String get test_calendar_event_added =>
      'Kalenteritapahtuman lisääminen onnistui testissä';

  @override
  String get test_calendar_event_failed =>
      'Testikalenteritapahtuman lisääminen epäonnistui, tarkista kalenteriasetukset';

  @override
  String get calendar_permission_required =>
      'Tarvitset kalenterin käyttöoikeuden lisätäksesi testitapahtuman';

  @override
  String get test_notification_sent => 'Testiviesti on lähetetty';

  @override
  String test_notification_failed(String error) {
    return 'Testiviestin lähettäminen epäonnistui: $error';
  }

  @override
  String get notification_permission_required =>
      'Paikallisten muistutusten käyttöönottamiseksi tarvitaan ilmoitusoikeudet';

  @override
  String operation_failed(String error) {
    return 'Toiminto epäonnistui: $error';
  }

  @override
  String get notification_channel_name => 'Esineiden varoitusilmoitus';

  @override
  String get notification_channel_description =>
      'Tuotteen vanhenemis- tai takuutodistusmuistutus';

  @override
  String get item_category_food => 'ruoka';

  @override
  String get item_category_daily_necessities => 'Arkipäivän tarvikkeet';

  @override
  String get item_category_cosmetics => 'kosmetiikka';

  @override
  String get item_category_medicine => 'Lääke';

  @override
  String get item_category_electronics => 'Elektroniikkatuotteet';

  @override
  String get item_category_furniture => 'huonekalut';

  @override
  String get item_category_clothing => 'Vaatteet';

  @override
  String get item_category_books => 'kirja';

  @override
  String get item_category_other => 'Muut';

  @override
  String get purchase_channel_online_mall => 'Verkkokauppa';

  @override
  String get purchase_channel_physical_store => 'fyysinen myymälä';

  @override
  String get purchase_channel_supermarket => 'supermarket';

  @override
  String get purchase_channel_specialty_store => 'erikoisliike';

  @override
  String get purchase_channel_secondhand_market =>
      'käytettyjen tavaroiden markkinat';

  @override
  String get purchase_channel_other => 'Muut';

  @override
  String get default_category => 'Muut';

  @override
  String get default_purchase_channel => 'Verkkokauppa';

  @override
  String get item_category => 'Tavaroiden luokittelu';

  @override
  String get custom_category => 'Mukautettu luokittelu';

  @override
  String get backup_data => 'varmuuskopioida tiedot';

  @override
  String get backup_data_description =>
      'Pakkaa kaikki tiedot (mukaan lukien kuvat) ZIP-tiedostoksi varmuuskopiota varten';

  @override
  String get backup_all_data => 'Varmuuskopioi kaikki tiedot';

  @override
  String get backup_success => 'Varmuuskopiointi onnistui';

  @override
  String backup_failed(String error) {
    return 'Varmuuskopiointi epäonnistui: $error';
  }

  @override
  String get restore_data => 'Palauta tiedot';

  @override
  String get restore_data_description =>
      'Palauta kaikki tiedot ZIP-varmuuskopiosta';

  @override
  String get export_data => 'Vie tiedot';

  @override
  String get export_data_description => 'Vie CSV-, TXT- tai SQL-muodossa';

  @override
  String get import_data => 'Tuo data';

  @override
  String get import_data_description =>
      'Tuo tietoja CSV-, TXT- ja SQL-tiedostoista';

  @override
  String get alert_settings_description =>
      'Kalenterimuistutusten ja sovellusten ponnahdusmuistutusten asetukset';

  @override
  String get about => 'Tietoa';

  @override
  String get about_description => 'Sovellustiedot ja versio';

  @override
  String get select_backup_file_first =>
      'Valitse ensin varmuuskopiointitiedosto';

  @override
  String get confirm_restore => 'Vahvista palautus';

  @override
  String get confirm_restore_message =>
      'Varmuuskopion palauttaminen tyhjentää kaikki nykyiset tiedot ja korvaa ne varmuuskopiolla; tätä toimintoa ei voi peruuttaa. Haluatko jatkaa?';

  @override
  String get confirm_again => 'Vahvista uudelleen';

  @override
  String get confirm_restore_warning =>
      'Oletko varma, että haluat tyhjentää kaikki olemassa olevat tiedot ja palauttaa varmuuskopion? Tätä toimintoa ei voi peruuttaa!';

  @override
  String get confirm_restore_button => 'Varmista palautus';

  @override
  String restore_success(int count) {
    return 'Palautus onnistui, yhteensä $count kohdetta';
  }

  @override
  String restore_failed(String error) {
    return 'Palautus epäonnistui: $error';
  }

  @override
  String get select_backup_file => 'Valitse varmuuskopiotiedosto';

  @override
  String get restore_backup => 'Palauta varmuuskopio';

  @override
  String selected_file(String filename) {
    return 'Valittu tiedosto: $filename';
  }

  @override
  String get export_success => 'Datan vienti onnistui';

  @override
  String export_failed(String error) {
    return 'Vienti epäonnistui: $error';
  }

  @override
  String get format_csv => 'CSV';

  @override
  String get format_txt => 'TXT';

  @override
  String get format_sql => 'SQL';

  @override
  String get duplicate_data_handling => 'Toistuvan datan käsittely';

  @override
  String get duplicate_data_detected =>
      'Havaittu kaksoistiedot, valitse käsittelytapa:';

  @override
  String get skip => 'Ohita';

  @override
  String get overwrite => 'peittää';

  @override
  String get skip_all => 'Ohita kaikki';

  @override
  String get overwrite_all => 'täysi peitto';

  @override
  String get select_import_format_first => 'Valitse ensin tuontimuoto';

  @override
  String get confirm_import => 'Vahvista tuonti';

  @override
  String get confirm_import_message =>
      'Tuo tiedot korvaa olemassa olevat tiedot, tätä toimintoa ei voi kumota. Haluatko jatkaa?';

  @override
  String import_success(int count) {
    return 'Datan tuonti onnistui, yhteensä tuotiin $count kohdetta';
  }

  @override
  String import_failed(String error) {
    return 'Tuo epäonnistui: $error';
  }

  @override
  String get select_file => 'Valitse tiedosto';

  @override
  String get no_data => 'Ei tietoja';

  @override
  String get no_data_description =>
      'Tällä hetkellä ei ole tietoja, napsauta alla olevaa painiketta lisätäksesi ensimmäisen tietueen!';

  @override
  String get load_failed => 'Lataus epäonnistui';

  @override
  String get load_failed_description =>
      'Datan lataus epäonnistui, tarkista verkkoyhteys ja yritä uudelleen';

  @override
  String get retry => 'Yritä uudelleen';

  @override
  String get network_connection_failed => 'Verkkoyhteys epäonnistui';

  @override
  String get network_connection_failed_description =>
      'Tarkista verkkoyhteys ja yritä uudelleen';

  @override
  String get no_results => 'Ei tuloksia';

  @override
  String get no_results_description => 'Yritä etsiä muita avainsanoja käyttäen';

  @override
  String get clear_search => 'Tyhjennä haku';

  @override
  String get insufficient_permission => 'Oikeuksia ei ole riittävästi';

  @override
  String get insufficient_permission_description =>
      'Tämän toiminnon käyttö vaatii asianmukaiset oikeudet';

  @override
  String get request_permission => 'Pyydä lupaa';

  @override
  String get app_info => 'Sovellustiedot';

  @override
  String get version => 'versio';

  @override
  String get developer => 'kehittäjä';

  @override
  String get device_info => 'Laitetiedot';

  @override
  String get device_model => 'Laitemalli';

  @override
  String get brand => 'brändi';

  @override
  String get device_name => 'Laitteen nimi';

  @override
  String get product => 'tuote';

  @override
  String get hardware => 'Laitteisto';

  @override
  String get android_version => 'Android-versio';

  @override
  String get sdk_version => 'SDK-versio';

  @override
  String get system_name => 'Järjestelmän nimi';

  @override
  String get operating_system => 'käyttöjärjestelmä';

  @override
  String get system_version => 'Järjestelmäversio';

  @override
  String get dart_version => 'Dart-versio';

  @override
  String get device_identifier => 'Laitteen tunniste';

  @override
  String get computer_name => 'Tietokoneen nimi';

  @override
  String get build_number => 'Versioversio';

  @override
  String error_getting_device_info(String error) {
    return 'Laitetietoja ei voi hakea: $error';
  }

  @override
  String get features => 'Ominaisuuksien esittely';

  @override
  String get app_description => 'Älyesineiden hallintasovellus';

  @override
  String get app_description_detail =>
      'Auttaa sinua hallitsemaan esineiden viimeisiä käyttöpäiviä, takuuajat ja muuta tietoa sekä tarjoaa älykkäitä muistutusominaisuuksia.';

  @override
  String get consumable => 'Kulutustavarat';

  @override
  String get durable => 'kestokulutustavara';

  @override
  String get sort => 'järjestäminen';

  @override
  String get name_asc => 'Nimen mukaiseen nousevaan järjestykseen';

  @override
  String get name_desc => 'Nimi laskevassa järjestyksessä';

  @override
  String get date_asc => 'Päivämäärä nousevassa järjestyksessä';

  @override
  String get date_desc => 'Päivämäärä laskevassa järjestyksessä';

  @override
  String get price_asc => 'Yksikköhinnan nouseva järjestys';

  @override
  String get price_desc => 'Yksikköhinnan mukaiseen laskevaan järjestykseen';

  @override
  String get quantity_asc => 'Määrä nousevassa järjestyksessä';

  @override
  String get quantity_desc => 'Määrä laskevassa järjestyksessä';

  @override
  String get total_price_asc => 'Kokonaishinnan nouseva järjestys';

  @override
  String get total_price_desc =>
      'Kokonaishinnan mukaiseen laskevaan järjestykseen';

  @override
  String get clear_all_filters => 'Tyhjennä kaikki suodattimet';

  @override
  String get scan_barcode => 'Skannaa koodi varastoon';

  @override
  String get search_items => 'Etsi kohteita...';

  @override
  String get no_items => 'Ei esineitä saatavilla';

  @override
  String get no_items_description =>
      'Napsauta alla olevaa painiketta lisätäksesi ensimmäisen kohteen';

  @override
  String get expired => 'Vanhentunut';

  @override
  String get expiring_soon => 'Pian vanheneva';

  @override
  String get warranty_expired => 'Takuu on vanhentunut';

  @override
  String get warranty_expiring_soon => 'Takuu on juuri päättymässä';

  @override
  String days_remaining(int count) {
    return 'Jäljellä $count päivää';
  }

  @override
  String expired_days_ago(int count) {
    return 'On vanhentunut $count päivää';
  }

  @override
  String get delete_item => 'Poista kohde';

  @override
  String delete_item_confirm(String name) {
    return 'Haluatko varmasti poistaa \"$name\"?';
  }

  @override
  String get item_deleted => 'Esine on poistettu';

  @override
  String get failed_to_delete => 'Poisto epäonnistui';

  @override
  String failed_to_delete_message(String error) {
    return 'Ei voi poistaa kohdetta: $error';
  }

  @override
  String get date_range_filter => 'Päivämääräalueen suodatus';

  @override
  String get price_range_filter => 'Hintahaitarin suodatus';

  @override
  String get my_items => 'Omat tavarani';

  @override
  String get click_fab_to_add_item =>
      'Napauta oikean alakulman painiketta lisätäksesi kohteen';

  @override
  String get confirm_delete => 'Vahvista poisto';

  @override
  String get filter_options => 'Suodatusvaihtoehdot';

  @override
  String get filter_by_type_category_location =>
      'Suodata kohteita tyypin, luokan ja paikan mukaan';

  @override
  String categories_count(int count) {
    return '$count luokkaa';
  }

  @override
  String get all_categories => 'Kaikki luokat';

  @override
  String get no_category_data => 'Ei luokiteltua tietoa';

  @override
  String get storage_location => 'Tallennuspaikka';

  @override
  String locations_count(int count) {
    return '$count paikkaa';
  }

  @override
  String get all_locations => 'Kaikki paikat';

  @override
  String get no_location_data => 'Ei sijaintitietoja saatavilla';

  @override
  String get date_range => 'Päivämääräväli';

  @override
  String get select_date_range => 'Valitse päivämääräväli';

  @override
  String get price_range => 'Hintahaarukka';

  @override
  String get unit_price_range => 'Yksikköhintahaarukka';

  @override
  String get min_unit_price => 'alin yksikköhinta';

  @override
  String get max_unit_price => 'korkein yksikköhinta';

  @override
  String get total_price_range => 'Kokonaishintahaarukka';

  @override
  String get min_total_price => 'Alin kokonaishinta';

  @override
  String get max_total_price => 'korkein kokonaishinta';

  @override
  String get clear_price_filter => 'Tyhjennä hintasuodatin';

  @override
  String get place_barcode_in_frame =>
      'Aseta viivakoodi kehyksen sisään skannattavaksi';

  @override
  String get item_already_exists => 'Tuote on jo olemassa';

  @override
  String barcode_with_value(String barcode) {
    return 'Viivakoodi: $barcode';
  }

  @override
  String name_with_value(String name) {
    return 'Nimi: $name';
  }

  @override
  String category_with_value(String category) {
    return 'Luokka: $category';
  }

  @override
  String current_quantity_with_value(String quantity, String unit) {
    return 'Nykyinen määrä: $quantity$unit';
  }

  @override
  String get please_select_operation => 'Valitse toiminto:';

  @override
  String get outbound => 'Varastosta lähtö';

  @override
  String get inbound => 'Varastoon vastaanotto';

  @override
  String get inbound_quantity => 'Varastoon otettu määrä';

  @override
  String get outbound_quantity => 'Lähtevän varaston määrä';

  @override
  String get quantity => 'määrä';

  @override
  String get enter_inbound_quantity => 'Syötä varastoon sijoitettava määrä';

  @override
  String get enter_outbound_quantity => 'Syötä lähtevän varaston määrä';

  @override
  String delete_item_confirm_with_irreversible(String name) {
    return 'Haluatko varmasti poistaa „$name“? Tätä toimintoa ei voi peruuttaa.';
  }

  @override
  String get database_reset =>
      'Tietokanta on nollattu, taulujen rakenne luodaan uudelleen';

  @override
  String database_reset_error(String error) {
    return 'Tietokannan nollauksessa tapahtui virhe: $error';
  }

  @override
  String mock_data_init_failed(String error) {
    return 'Simuloidun datan alustus epäonnistui: $error';
  }

  @override
  String get solution_steps => 'Ratkaisu:';

  @override
  String get solution_step_1 => '1. Poista sovellus ja asenna se uudelleen';

  @override
  String get solution_step_2 => '2. Tai tyhjennä sovellustiedot';

  @override
  String get solution_step_3 =>
      '3. Tai aseta resetDatabaseOnStart arvoksi true ja suorita uudelleen';

  @override
  String notification_service_init_failed(String error) {
    return 'Muistutuspalvelun alustus epäonnistui: $error';
  }

  @override
  String check_calendar_account_failed(String error) {
    return 'Kalenteritilin tarkistus epäonnistui: $error';
  }

  @override
  String create_calendar_failed(String error) {
    return 'Kalenterin luominen epäonnistui: $error';
  }

  @override
  String add_calendar_event_failed(String error) {
    return 'Kalenteritapahtuman lisääminen epäonnistui: $error';
  }

  @override
  String delete_calendar_event_failed(String error) {
    return 'Kalenteritapahtuman poistaminen epäonnistui: $error';
  }

  @override
  String set_permission_message_failed(String error) {
    return 'Asetusten käyttöoikeusviestin näyttäminen epäonnistui: $error';
  }

  @override
  String mock_data_init_success(int count) {
    return 'Onnistuneesti alustettu $count simuloitua tietoa';
  }

  @override
  String database_has_data(int count) {
    return 'Tietokannassa on jo $count tietueita, ohitetaan simuloitujen tietojen alustaminen';
  }

  @override
  String get database_structure_mismatch =>
      'Voi olla, että tietokannan rakenne ei täsmää; suositellaan tyhjentämään sovelluksen tiedot tai asentamaan se uudelleen.';

  @override
  String get old_database_deleted => 'Vanha tietokantatiedosto on poistettu';

  @override
  String get backup_data_empty => 'Varmuuskopiotiedot ovat tyhjiä';

  @override
  String get backup_file_not_found => 'Varmuuskopiotiedostoa ei ole';

  @override
  String file_not_utf8(String error) {
    return 'Tiedoston koodaus ei ole kelvollisessa UTF-8-muodossa. Varmista, että tiedosto on tallennettu UTF-8-koodauksella. Virheen yksityiskohdat: $error';
  }

  @override
  String file_not_found(String filePath) {
    return 'Tiedostoa ei ole olemassa: $filePath';
  }

  @override
  String file_empty(String filePath) {
    return 'Tiedosto on tyhjä: $filePath';
  }

  @override
  String get file_content_empty =>
      'Tiedoston sisällön purkamisen jälkeen se on tyhjä, mahdollisesti koodaus ei vastaa';

  @override
  String field_cannot_be_empty(String fieldName) {
    return '$fieldName ei voi olla tyhjä';
  }

  @override
  String field_min_length(String fieldName, int minLength) {
    return '$fieldName pituuden tulee olla vähintään $minLength merkkiä';
  }

  @override
  String field_max_length(String fieldName, int maxLength) {
    return '$fieldName pituus ei saa ylittää $maxLength merkkiä';
  }

  @override
  String field_invalid_email(String fieldName) {
    return 'Kirjoita kelvollinen $fieldName-osoite';
  }

  @override
  String field_invalid_number(String fieldName, String numberType) {
    return '$fieldName täytyy olla $numberType';
  }

  @override
  String field_min_value(String fieldName, double min) {
    return '$fieldName ei voi olla pienempi kuin $min';
  }

  @override
  String field_max_value(String fieldName, double max) {
    return '$fieldName ei voi olla suurempi kuin $max';
  }

  @override
  String field_positive_integer(String fieldName) {
    return '$fieldName on oltava positiivinen kokonaisluku';
  }

  @override
  String field_greater_than_zero(String fieldName) {
    return '$fieldName on oltava suurempi kuin 0';
  }

  @override
  String field_positive_number(String fieldName) {
    return '$fieldName on oltava positiivinen luku';
  }

  @override
  String field_invalid_date(String fieldName) {
    return 'Syötä kelvollinen $fieldName';
  }

  @override
  String field_date_not_past(String fieldName) {
    return '$fieldName ei voi olla mennyt päivämäärä';
  }

  @override
  String field_date_not_before(String fieldName, String minDate) {
    return '$fieldName ei voi olla ennen $minDate';
  }

  @override
  String field_date_not_after(String fieldName, String maxDate) {
    return '$fieldName ei voi olla myöhäisempi kuin $maxDate';
  }

  @override
  String field_invalid_value(String fieldName) {
    return 'Syötä kelvollinen $fieldName';
  }

  @override
  String password_min_length(String fieldName) {
    return '$fieldName pituuden on oltava vähintään 8 merkkiä';
  }

  @override
  String password_uppercase_required(String fieldName) {
    return '$fieldName on sisällettävä ainakin yksi iso kirjain';
  }

  @override
  String password_lowercase_required(String fieldName) {
    return '$fieldName on sisällettävä ainakin yksi pienaakkonen';
  }

  @override
  String password_digit_required(String fieldName) {
    return '$fieldName on sisällettävä vähintään yksi numero';
  }

  @override
  String password_special_char_required(String fieldName) {
    return '$fieldName on sisällettävä ainakin yksi erikoismerkki';
  }

  @override
  String get passwords_not_match => 'Kahdesti syötetyt salasanat eivät täsmää';

  @override
  String get item_name_cannot_be_empty => 'Esineen nimi ei voi olla tyhjä';

  @override
  String name_max_length(int maxLength) {
    return 'Nimen pituus ei voi ylittää $maxLength merkkiä';
  }

  @override
  String quantity_min(int minQuantity) {
    return 'Määrän on oltava vähintään $minQuantity';
  }

  @override
  String quantity_max(int maxQuantity) {
    return 'Määrä ei saa ylittää $maxQuantity';
  }

  @override
  String get unit_price_not_negative => 'Yksikköhinta ei voi olla negatiivinen';

  @override
  String unit_price_max(double maxUnitPrice) {
    return 'Yksikköhinta ei saa ylittää $maxUnitPrice';
  }

  @override
  String get set_production_expiry_for_validity =>
      'Aseta valmistuspäivämäärä ja säilyvyysaika, jotta voimassaoloaika voidaan laskea automaattisesti';

  @override
  String get set_purchase_warranty_for_validity =>
      'Aseta ostopäivä ja parasta ennen -päivä automaattisen takuuajan laskemiseksi';

  @override
  String get calendar_account_creation_failed =>
      'Kalenteritiliä ei voida luoda, tarkista järjestelmän kalenteriasetukset';

  @override
  String get test_notification => 'Testi-ilmoitus';

  @override
  String get test_notification_description =>
      'Tämä on testiviesti, tarkoitettu paikallisen muistutustoiminnon tarkistamiseen';

  @override
  String get day_unit => 'taivas';

  @override
  String days_with_value(int days) {
    return '$days päivää';
  }

  @override
  String get item_saved => 'Esine on tallennettu';

  @override
  String get item_updated => 'Tuote on päivitetty';

  @override
  String get item_added => 'Tuote on lisätty';

  @override
  String get save_success => 'Tallennus onnistui';

  @override
  String get update_success => 'Päivitys onnistui';

  @override
  String get delete_success => 'Poisto onnistui';

  @override
  String get save_failed => 'Tallennus epäonnistui';

  @override
  String get update_failed => 'Päivitys epäonnistui';

  @override
  String get delete_failed => 'Poisto epäonnistui';

  @override
  String get test_calendar_event => 'Testaa kalenteritapahtuma';

  @override
  String get test_calendar_event_description =>
      'Tämä on testitapahtuma kalenteritoiminnon tarkistamiseen varten';

  @override
  String get in_app => 'sovelluksen sisäinen';

  @override
  String get enable_alert => 'Ota käyttöön eräpäivämuistutus';

  @override
  String get alert_method => 'muistutustapa';

  @override
  String get alert_method_in_app => 'Vain sovelluksessa';

  @override
  String get alert_method_calendar => 'Vain kalenteri';

  @override
  String get alert_method_both => 'kumpikin';

  @override
  String get alert_days_before => 'Etukäteen muistutuspäivien määrä';

  @override
  String get use_global_setting => 'Käytä globaaleja asetuksia';

  @override
  String get barcode_label => 'viivakoodi';

  @override
  String get name_label => 'Nimi';

  @override
  String get category_label => 'luokittelu';

  @override
  String get current_quantity => 'Nykyinen määrä';

  @override
  String get select_operation => 'Valitse toiminto';

  @override
  String get unit => 'yksikkö';

  @override
  String get custom_unit => 'Mukautettu yksikkö';

  @override
  String get enter_unit => 'Anna yksikkö';

  @override
  String get custom_location => 'Mukautettu sijainti';

  @override
  String get enter_storage_location => 'Syötä tallennuspaikka';

  @override
  String get scan => 'Skannaa QR-koodi';

  @override
  String get scan_to_stock => 'Skannaa koodi varastoon kirjautumista varten';

  @override
  String get item_categories => 'Tavaroiden luokittelu';

  @override
  String get storage_locations => 'Tallennuspaikka';

  @override
  String get place_barcode_in_frame_to_scan =>
      'Aseta viivakoodi kehyksen sisään skannattavaksi';

  @override
  String get barcode => 'viivakoodi';

  @override
  String get enter_barcode_or_scan => 'Syötä viivakoodi tai skannaa';

  @override
  String get basic_information => 'Perustiedot';

  @override
  String get item_name => 'Esineen nimi';

  @override
  String get enter_item_name => 'Syötä tuotteen nimi';

  @override
  String get enter_category_name => 'Anna luokan nimi';

  @override
  String item_increased(String itemName, String quantity, String unit) {
    return 'On lisätty $itemName $quantity$unit';
  }

  @override
  String item_decreased(String itemName, String quantity, String unit) {
    return 'On vähennetty $itemName $quantity$unit';
  }

  @override
  String get unsaved_changes => 'Tallenemattomat muutokset';

  @override
  String get unsaved_changes_message =>
      'Sinulla on tallentamattomia muutoksia, valitse toiminto:';

  @override
  String get discard => 'luopua';

  @override
  String get unit_piece => 'yksi';

  @override
  String get unit_item => 'esine';

  @override
  String get unit_box => 'laatikko';

  @override
  String get unit_package => 'laukku';

  @override
  String get unit_bottle => 'pullo';

  @override
  String get unit_carton => 'laatikko';

  @override
  String get unit_set => 'sarja';

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
  String get quantity_label => 'määrä';

  @override
  String get unit_price_label => 'yksikköhinta';

  @override
  String get currency_label => 'valuutta';

  @override
  String get total_price_label => 'Kokonaishinta:';

  @override
  String get storage_location_label => 'Tallennuspaikka';

  @override
  String get item_properties => 'Esineen ominaisuudet';

  @override
  String get expiry_date_label => 'Voimassaoloaika';

  @override
  String get warranty_expiry_date_label => 'Takuu päättymispäivä';

  @override
  String get production_date_label => 'Valmistuspäivämäärä';

  @override
  String get purchase_date_label => 'Ostopäivä';

  @override
  String auto_calculated_from(String dateType) {
    return 'Automaattinen laskenta $dateType ja säilyvyysajan mukaan';
  }

  @override
  String get auto_calculated => 'Automaattinen laskenta';

  @override
  String get images_label => 'kuva';

  @override
  String get notes_label => 'Muistiinpano';

  @override
  String get add_notes_hint => 'Lisää huomautuksia (valinnainen)';

  @override
  String get year_label => 'vuosi';

  @override
  String get month_label => 'kuu';

  @override
  String get day_label => 'taivas';

  @override
  String selected_count(int count) {
    return 'On valittu $count kohdetta';
  }

  @override
  String get select_all => 'Valitse kaikki';

  @override
  String get deselect_all => 'Poista kaikki valinnat';

  @override
  String get batch_change_location =>
      'Paikallisten tallennuspaikkojen massavaihto';

  @override
  String confirm_delete_selected(int count) {
    return 'Haluatko varmasti poistaa valitut $count kohdetta?';
  }

  @override
  String deleted_count_items(int count) {
    return 'On poistettu $count kohdetta';
  }

  @override
  String get no_storage_location_available =>
      'Ei saatavilla olevia tallennuspaikkoja';

  @override
  String get batch_change_location_title =>
      'Paikallisten tallennuspaikkojen massavaihto';

  @override
  String moved_count_items_to_location(int count, String location) {
    return '$count kohdetta on siirretty $location';
  }

  @override
  String get operation_type_create => 'syöttää tietoihin';

  @override
  String get operation_type_update => 'Muokkaa';

  @override
  String get operation_type_delete => 'Poista';

  @override
  String get operation_type_inbound => 'Varastoon vastaanotto';

  @override
  String get operation_type_outbound => 'Varastosta lähtö';

  @override
  String export_failed_message(String error) {
    return 'Vienti epäonnistui: $error';
  }

  @override
  String get clear_logs => 'Tyhjennä loki';

  @override
  String get confirm_clear_logs =>
      'Haluatko varmasti tyhjentää kaikki toimintalokit? Tätä toimintoa ei voi palauttaa.';

  @override
  String get logs_cleared => 'Loki on tyhjennetty';

  @override
  String get operation_logs_title => 'Toimintaloki';

  @override
  String get export_logs => 'Vie loki';

  @override
  String get clear_logs_tooltip => 'Tyhjennä loki';

  @override
  String get no_operation_logs => 'Ei toimintalokia';

  @override
  String get log_item_label => 'Esine:';

  @override
  String get log_category_label => 'Luokittelu:';

  @override
  String get log_type_label => 'Tyyppi:';

  @override
  String get log_quantity_label => 'Määrä:';

  @override
  String get log_unit_price_label => 'Yksikköhinta:';

  @override
  String get log_total_price_label => 'Kokonaishinta:';

  @override
  String get log_expiry_date_label => 'Parasta ennen:';

  @override
  String get log_warranty_date_label => 'Takuu Päivämäärä:';

  @override
  String get log_purchase_date_label => 'Ostopäivämäärä:';

  @override
  String get log_production_date_label => 'Valmistuspäivä:';

  @override
  String get log_shelf_life_label => 'Säilyvyysaika:';

  @override
  String get log_storage_location_label => 'Säilytyspaikka:';

  @override
  String get log_barcode_label => 'Viivakoodi:';

  @override
  String get log_notes_label => 'Huomautus:';

  @override
  String get log_alert_label => 'Varoitus:';

  @override
  String get log_alert_days_label => 'Varoituspäivien määrä:';

  @override
  String get log_quantity_change_label => 'Määrän muutos:';

  @override
  String get log_field_changes_label => 'Muokkaa kenttää:';

  @override
  String get log_not_set => 'Ei asetettu';

  @override
  String get log_empty => 'tyhjä';

  @override
  String get log_alert_enabled => 'Avaa';

  @override
  String get log_alert_disabled => 'Sulje';

  @override
  String get operation_logs_menu => 'Toimintaloki';

  @override
  String get operation_logs_description =>
      'Tarkastele ja palauta toimintalokit';

  @override
  String operation_failed_message(String error) {
    return 'Toiminto epäonnistui: $error';
  }

  @override
  String get no_date => 'Päivämäärätön';

  @override
  String get shelf_life_months_suffix => 'kuukautta';

  @override
  String get shelf_life_days_suffix => 'taivas';

  @override
  String get alert_days_suffix => 'taivas';

  @override
  String get unknown => 'Tuntematon';

  @override
  String get developer_name => 'Leo';

  @override
  String get log_operation_date_label => 'Toimintapäivämäärä:';

  @override
  String get uncategorized => 'Luokittelematon';

  @override
  String get no_location => 'Ei paikkaa';

  @override
  String get item_category_cannot_be_empty => 'Tuoteluokka ei voi olla tyhjä';

  @override
  String get storage_location_cannot_be_empty =>
      'Tallennuspaikka ei voi olla tyhjä';

  @override
  String get created_at_asc => 'Lisäysaika nousevassa järjestyksessä';

  @override
  String get created_at_desc => 'Lisäysaika laskevassa järjestyksessä';

  @override
  String get location_management => 'Varastonhallinta';

  @override
  String get private_warehouses => 'Yksityinen kirjasto';

  @override
  String get public_warehouses => 'julkinen kirjasto';

  @override
  String get is_public_warehouse => 'julkinen kirjasto';

  @override
  String get public_warehouse_desc =>
      'Julkisessa varastossa ei ole ylläpitäjää, varastoon otettaessa ja sinne lisättäessä on täytettävä toimijan nimi';

  @override
  String get manager => 'Ylläpitäjä';

  @override
  String get not_set => 'Ei asetettu';

  @override
  String get edit_location => 'Muokkaa kirjastoa';

  @override
  String get location_name => 'Varaston nimi';

  @override
  String get manager_name => 'Ylläpitäjän nimi';

  @override
  String get enter_manager_name => 'Anna järjestelmänvalvojan nimi';

  @override
  String get manager_name_required =>
      'Ylläpitäjän nimeä ei voi jättää tyhjäksi';

  @override
  String delete_location_confirm(String name) {
    return 'Haluatko varmasti poistaa kirjaston „$name”?';
  }

  @override
  String get delete_location_has_items =>
      'Kirjastossa on edelleen esineitä, ei voi poistaa';

  @override
  String get default_manager => 'Oletusjärjestelmänvalvoja';

  @override
  String get default_manager_desc =>
      'Oletusvalvoja uuden yksityisen varaston luomisessa';

  @override
  String get enter_default_manager => 'Syötä oletusjärjestelmänvalvojan nimi';

  @override
  String get operator_name => 'Toimijan nimi';

  @override
  String get enter_operator_name => 'Syötä käyttäjän nimi';

  @override
  String get operator_name_required => 'Toimijan nimi ei voi olla tyhjä';

  @override
  String get no_manager => 'Ei ylläpitäjää';

  @override
  String get log_operator_label => 'Toimija:';

  @override
  String get outbound_quantity_exceeds_current =>
      'Lähtevien tuotteiden määrä ei voi ylittää nykyistä varastoa';
}
