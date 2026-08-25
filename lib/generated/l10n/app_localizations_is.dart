// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Icelandic (`is`).
class AppLocalizationsIs extends AppLocalizations {
  AppLocalizationsIs([String locale = 'is']) : super(locale);

  @override
  String get app_name => 'Geymi hlutina í litlu rými';

  @override
  String get cancel => 'Hætta við';

  @override
  String get confirm => 'Ákveða';

  @override
  String get save => 'Vista';

  @override
  String get delete => 'Eyða';

  @override
  String get edit => 'Breyta';

  @override
  String get add => 'Bæta við';

  @override
  String get edit_item => 'Breyta hlut';

  @override
  String get add_item => 'Bæta við hlut';

  @override
  String get search => 'Leita';

  @override
  String get settings => 'Stillingar';

  @override
  String get language_settings => 'Tungumálastillingar';

  @override
  String get language_settings_description =>
      'Stilla sýnilegt tungumál forrits';

  @override
  String get system_default => 'Sjálfgefið kerfi';

  @override
  String get use_system_language => 'Notaðu kerfismálið';

  @override
  String get language_change_hint =>
      'Málbreytingin mun taka gildi eftir endurræsingu forritsins';

  @override
  String get back => 'Aftur';

  @override
  String get next => 'Næsta skref';

  @override
  String get done => 'Lokið';

  @override
  String get loading => 'Hleðst inn...';

  @override
  String get error => 'Villa';

  @override
  String get success => 'Árangur';

  @override
  String get warning => 'Viðvörun';

  @override
  String get info => 'Upplýsingar';

  @override
  String get select_alert_days => 'Velja áminningardaga';

  @override
  String get custom => 'Sérsniðin';

  @override
  String custom_days(int days) {
    return 'Sérsniðin ($days dagar)';
  }

  @override
  String current_selection(int days) {
    return 'Núverandi val: $days dagar';
  }

  @override
  String alert_days_range(int min, int max) {
    return 'Vikmörk áminningar: $min-$max dagar';
  }

  @override
  String get enter_days => 'Vinsamlegast sláðu inn dagafjölda fyrir áminningu';

  @override
  String get days => 'Dagar';

  @override
  String enter_valid_days(int min, int max) {
    return 'Vinsamlegast sláðu inn tölu á milli $min og $max';
  }

  @override
  String get alert_settings => 'Forskoðun stillingar';

  @override
  String get calendar_settings => 'Dagatalsstillingar';

  @override
  String get calendar_sync => 'Dagatals samstilling';

  @override
  String get calendar_sync_desc =>
      'Eftir að því er opnað mun beiðja um aðgang að dagatali';

  @override
  String get add_test_calendar_event => 'Bæta við prófunardagatalsviðburði';

  @override
  String get enable_calendar_sync_first =>
      'Vinsamlegast kveiktu fyrst á „Dagatalssamstillingu“ rofanum';

  @override
  String get app_alert_settings => 'App tilkynningastillingar';

  @override
  String get local_alerts => 'Staðbundin áminning';

  @override
  String get local_alerts_desc =>
      'Móttaka áminninga um útrunnin forrit þegar virkjað';

  @override
  String get send_test_notification => 'Senda prófunartilkynningu';

  @override
  String get enable_local_alerts_first =>
      'Vinsamlegast kveiktu á „Staðbundnum áminningum“ rofanum fyrst';

  @override
  String get alert_days_settings => 'Stilling á fjölda daga fyrir áminningu';

  @override
  String get advance_alert_days => 'Fjöldi daga fyrirfram til að minna á';

  @override
  String get advance_alert_days_desc =>
      'Stilla hversu mörgum dögum í fyrirrúmi á að minna á útrunnin eða gildistíma hlutanna';

  @override
  String get calendar_permission_request => 'Fyrirspurn um dagatalsáttur';

  @override
  String get calendar_permission_desc =>
      'Þörf er á aðgangi að dagatali til að samstilla viðvörun um hluti. Viltu veita leyfi?';

  @override
  String get allow => 'Leyfa';

  @override
  String get calendar_permission_granted =>
      'Dagatalsheimild hefur verið veitt, dagatalsamstilling er virk';

  @override
  String get calendar_permission_denied =>
      'Dagatalsheimild var hafnað, dagatalasamstillingu er ekki hægt að opna';

  @override
  String get calendar_permission_permanently_denied =>
      'Aðgangur hefur verið varanlega neitað';

  @override
  String get calendar_permission_permanently_denied_desc =>
      'Aðgangur að dagatali hefur verið varanlega hafnað, vinsamlegast opnið réttindi handvirkt í kerfisstillingum.';

  @override
  String get go_to_settings => 'Farðu í stillingar';

  @override
  String get calendar_account_failed =>
      'Dagatalsheimildir hafa verið veittar, en ekki er hægt að búa til dagatalsreikning. Vinsamlegast athugaðu stillingar kerfisdagatalsins.';

  @override
  String get calendar_account_created =>
      'Dagatalleyfi hefur verið veitt, innlendur dagatalreikningur hefur verið búinn til';

  @override
  String get calendar_account_creating =>
      'Dagatalareikningur hefur verið búinn til, en kerfið kann að þurfa smá tíma til að taka gildi';

  @override
  String get test_calendar_event_added =>
      'Prófunardagatalshlutur bætt við með árangri';

  @override
  String get test_calendar_event_failed =>
      'Mistókst að bæta testdagatali viðburði við, vinsamlegast athugaðu dagatalsstillingarnar';

  @override
  String get calendar_permission_required =>
      'Krefst dagatalsleyfis til að bæta við prófviðburði';

  @override
  String get test_notification_sent => 'Prófunartilkynning hefur verið send';

  @override
  String test_notification_failed(String error) {
    return 'Mistókst að senda prófunartilkynningu: $error';
  }

  @override
  String get notification_permission_required =>
      'Það þarf að hafa tilkynningaleyfi til að virkja staðbundna áminningu';

  @override
  String operation_failed(String error) {
    return 'Virkjun mistókst: $error';
  }

  @override
  String get notification_channel_name => 'Vöruviðvörun tilkynning';

  @override
  String get notification_channel_description =>
      'Minning um útrunnin eða tryggðartímaleysi vara';

  @override
  String get item_category_food => 'Matvæli';

  @override
  String get item_category_daily_necessities => 'Dagvörur';

  @override
  String get item_category_cosmetics => 'Snyrtivörur';

  @override
  String get item_category_medicine => 'Lyf';

  @override
  String get item_category_electronics => 'Rafmagnsvörur';

  @override
  String get item_category_furniture => 'Húsgögn';

  @override
  String get item_category_clothing => 'Föt';

  @override
  String get item_category_books => 'Bækur';

  @override
  String get item_category_other => 'Annað';

  @override
  String get purchase_channel_online_mall => 'Netverslun';

  @override
  String get purchase_channel_physical_store => 'Raunveruleg búð';

  @override
  String get purchase_channel_supermarket => 'matvöruverslun';

  @override
  String get purchase_channel_specialty_store => 'einstaklingsverslun';

  @override
  String get purchase_channel_secondhand_market => 'notaður markaður';

  @override
  String get purchase_channel_other => 'Annað';

  @override
  String get default_category => 'Annað';

  @override
  String get default_purchase_channel => 'Netverslun';

  @override
  String get item_category => 'Vöruflokkun';

  @override
  String get custom_category => 'Sérsniðin flokkun';

  @override
  String get backup_data => 'Afrit gagna';

  @override
  String get backup_data_description =>
      'Pakkaðu öllum gögnum (þ.m.t. myndum) í ZIP-skrá til öryggisafritunar';

  @override
  String get backup_all_data => 'Afritaðu öll gögn';

  @override
  String get backup_success => 'Afritun tókst';

  @override
  String backup_failed(String error) {
    return 'Öryggisafrit mistókst: $error';
  }

  @override
  String get restore_data => 'Endurheimta gögn';

  @override
  String get restore_data_description =>
      'Endurheimta öll gögn frá ZIP öryggisafritsskjali';

  @override
  String get export_data => 'Flytja út gögn';

  @override
  String get export_data_description => 'Flytja út sem CSV, TXT, SQL snið';

  @override
  String get import_data => 'Flytja inn gögn';

  @override
  String get import_data_description =>
      'Flytja gögn inn frá CSV-, TXT- eða SQL-skrám';

  @override
  String get alert_settings_description =>
      'Dagatal áminning og forritkynningarstillingar';

  @override
  String get about => 'Um';

  @override
  String get about_description => 'Forritaupplýsingar og útgáfa';

  @override
  String get select_backup_file_first =>
      'Vinsamlegast veldu fyrst öryggisafritsskrána';

  @override
  String get confirm_restore => 'Staðfesta endurheimt';

  @override
  String get confirm_restore_message =>
      'Að endurheimta afrit mun hreinsa öll núverandi gögn og skipta þeim út fyrir afritagögn. Þetta ferli er óafturkallanlegt. Viltu halda áfram?';

  @override
  String get confirm_again => 'Staðfesta aftur';

  @override
  String get confirm_restore_warning =>
      'Ertu viss um að þú viljir hreinsa öll núverandi gögn og endurheimta afrit? Þessi aðgerð er ekki hægt að afturkalla!';

  @override
  String get confirm_restore_button => 'Staðfesta endurheimt';

  @override
  String restore_success(int count) {
    return 'Endurheimt tókst, samtals $count atriði';
  }

  @override
  String restore_failed(String error) {
    return 'Endurheimt mistókst: $error';
  }

  @override
  String get select_backup_file => 'Velja afritsskrá';

  @override
  String get restore_backup => 'Endurheimta öryggisafrit';

  @override
  String selected_file(String filename) {
    return 'Valinn skrá: $filename';
  }

  @override
  String get export_success => 'Gagnasending tókst';

  @override
  String export_failed(String error) {
    return 'Útflutningur misheppnaðist: $error';
  }

  @override
  String get format_csv => 'CSV';

  @override
  String get format_txt => 'TXT';

  @override
  String get format_sql => 'SQL';

  @override
  String get duplicate_data_handling => 'Endurtekin gagnaúrvinnsla';

  @override
  String get duplicate_data_detected =>
      'Tvöföld gögn uppgötvuð, vinsamlegast veldu meðferðaraðferð:';

  @override
  String get skip => 'Sleppa';

  @override
  String get overwrite => 'þekja';

  @override
  String get skip_all => 'Hafna öllu';

  @override
  String get overwrite_all => 'Allt þak';

  @override
  String get select_import_format_first =>
      'Vinsamlegast veldu fyrst innflutningsform';

  @override
  String get confirm_import => 'Staðfesta innflutning';

  @override
  String get confirm_import_message =>
      'Innflutningur gagna mun yfirstíga núverandi gögn, og þessi aðgerð er óafturkræf. Viltu halda áfram?';

  @override
  String import_success(int count) {
    return 'Gagnainnflutningur tókst, samtals flutt inn $count atriði';
  }

  @override
  String import_failed(String error) {
    return 'Innflutningur mistókst: $error';
  }

  @override
  String get select_file => 'Velja skrá';

  @override
  String get no_data => 'Engin gögn í boði';

  @override
  String get no_data_description =>
      'Engin gögn eru til staðar núna, smelltu á hnappinn hér að neðan til að bæta við fyrstu færslunni!';

  @override
  String get load_failed => 'Hleðsla mistókst';

  @override
  String get load_failed_description =>
      'Gögnin voru ekki hlaðin, vinsamlegast athugaðu nettenginguna og reyndu aftur';

  @override
  String get retry => 'Reyna aftur';

  @override
  String get network_connection_failed => 'Netengingin mistókst';

  @override
  String get network_connection_failed_description =>
      'Vinsamlegast athugaðu netfyrirkomulagið og reyndu aftur';

  @override
  String get no_results => 'Engar niðurstöður fundust';

  @override
  String get no_results_description => 'Reyndu að nota önnur leitarorð';

  @override
  String get clear_search => 'Hreinsa leit';

  @override
  String get insufficient_permission => 'Ófullnægjandi heimildir';

  @override
  String get insufficient_permission_description =>
      'Það þarf viðeigandi leyfi til að nota þessa eiginleika';

  @override
  String get request_permission => 'Beiðni um leyfi';

  @override
  String get app_info => 'Forritsupplýsingar';

  @override
  String get version => 'útgáfa';

  @override
  String get developer => 'Forritari';

  @override
  String get device_info => 'Tæki upplýsingar';

  @override
  String get device_model => 'Tækjamódel';

  @override
  String get brand => 'Vörumerki';

  @override
  String get device_name => 'Búnaðarheiti';

  @override
  String get product => 'vara';

  @override
  String get hardware => 'Hugbúnaður';

  @override
  String get android_version => 'Android útgáfa';

  @override
  String get sdk_version => 'SDK útgáfa';

  @override
  String get system_name => 'Kerfisnafn';

  @override
  String get operating_system => 'Stýrikerfi';

  @override
  String get system_version => 'Kerfisútgáfa';

  @override
  String get dart_version => 'Dart útgáfa';

  @override
  String get device_identifier => 'Tæki auðkenni';

  @override
  String get computer_name => 'Tölvunafn';

  @override
  String get build_number => 'Útgáfunúmer';

  @override
  String error_getting_device_info(String error) {
    return 'Ekki er hægt að fá tæknupplýsingar: $error';
  }

  @override
  String get features => 'Aðgerða kynning';

  @override
  String get app_description => 'Forrit til stjórnun snjallhluta';

  @override
  String get app_description_detail =>
      'Hjálpar þér að stjórna upplýsingum um síðasta notkunardag, ábyrgðardag o.s.frv., og býður upp á snjallviðvörun.';

  @override
  String get consumable => 'Neysluvörur';

  @override
  String get durable => 'Endingarvörur';

  @override
  String get sort => 'Raða';

  @override
  String get name_asc => 'Nafn í hækkandi röð';

  @override
  String get name_desc => 'Nafn í niðurstöðuhækkandi röð';

  @override
  String get date_asc => 'Dagar í hækkandi röð';

  @override
  String get date_desc => 'Dagskrá í lækkandi röð';

  @override
  String get price_asc => 'Einingaverð hækkandi';

  @override
  String get price_desc => 'Einingaverð í lækkandi röð';

  @override
  String get quantity_asc => 'Hækkandi magn';

  @override
  String get quantity_desc => 'Raðað eftir magni í lækkandi röð';

  @override
  String get total_price_asc => 'Heildarkostnaður hækkandi';

  @override
  String get total_price_desc => 'Heildarverð lækkandi röð';

  @override
  String get clear_all_filters => 'Hreinsa allar síur';

  @override
  String get scan_barcode => 'Skanna til að skrá inn á lager';

  @override
  String get search_items => 'Leita að hlut...';

  @override
  String get no_items => 'Engar vörur í boði';

  @override
  String get no_items_description =>
      'Smelltu á hnappinn hér að neðan til að bæta við fyrsta hlutnum';

  @override
  String get expired => 'Útrunnið';

  @override
  String get expiring_soon => 'Yfirleitt að renna út';

  @override
  String get warranty_expired => 'Ábyrgð hefur runnið út';

  @override
  String get warranty_expiring_soon => 'Ábyrgð er að renna út';

  @override
  String days_remaining(int count) {
    return 'Eftir $count daga';
  }

  @override
  String expired_days_ago(int count) {
    return 'Útrunnið $count dagar';
  }

  @override
  String get delete_item => 'Eyða hlut';

  @override
  String delete_item_confirm(String name) {
    return 'Ertu viss um að eyða \"$name\"?';
  }

  @override
  String get item_deleted => 'Hluturinn hefur verið eytt';

  @override
  String get failed_to_delete => 'Ekki tókst að eyða';

  @override
  String failed_to_delete_message(String error) {
    return 'Ekki er hægt að eyða hlut: $error';
  }

  @override
  String get date_range_filter => 'Dagsvísis sviðs síun';

  @override
  String get price_range_filter => 'Verðbil síun';

  @override
  String get my_items => 'Mínar eigur';

  @override
  String get click_fab_to_add_item =>
      'Smelltu á hnappinn neðst til hægri til að bæta við hlut';

  @override
  String get confirm_delete => 'Staðfesta eyðingu';

  @override
  String get filter_options => 'Sía valkosti';

  @override
  String get filter_by_type_category_location =>
      'Sía hluti eftir tegund, flokki og staðsetningu';

  @override
  String categories_count(int count) {
    return '$count flokkar';
  }

  @override
  String get all_categories => 'Allar flokka';

  @override
  String get no_category_data => 'Engar flokkaupplýsingar';

  @override
  String get storage_location => 'Geymslustaður';

  @override
  String locations_count(int count) {
    return '$count staðir';
  }

  @override
  String get all_locations => 'Öll stöð';

  @override
  String get no_location_data => 'Engar staðsetningargögn tiltækar';

  @override
  String get date_range => 'Dagsetningarsvið';

  @override
  String get select_date_range => 'Velja dagsetningartímabil';

  @override
  String get price_range => 'Verðbil';

  @override
  String get unit_price_range => 'Einingaverðasvið';

  @override
  String get min_unit_price => 'Lægsta einingaverð';

  @override
  String get max_unit_price => 'Hæsta einingaverð';

  @override
  String get total_price_range => 'Heildarverð svið';

  @override
  String get min_total_price => 'Lægsta heildarverð';

  @override
  String get max_total_price => 'Hámarks heildarverð';

  @override
  String get clear_price_filter => 'Hreinsa verðsía';

  @override
  String get place_barcode_in_frame =>
      'Settu strikamerkið í kassann til að skanna';

  @override
  String get item_already_exists => 'Vara er þegar til';

  @override
  String barcode_with_value(String barcode) {
    return 'Strikamerki: $barcode';
  }

  @override
  String name_with_value(String name) {
    return 'Nafn: $name';
  }

  @override
  String category_with_value(String category) {
    return 'Flokkur: $category';
  }

  @override
  String current_quantity_with_value(String quantity, String unit) {
    return 'Núverandi magn: $quantity$unit';
  }

  @override
  String get please_select_operation => 'Vinsamlegast veldu aðgerð:';

  @override
  String get outbound => 'Útflutningur úr birgðum';

  @override
  String get inbound => 'Innskráning í lager';

  @override
  String get inbound_quantity => 'Innlest magn';

  @override
  String get outbound_quantity => 'Útflutningsmagn';

  @override
  String get quantity => 'Magn';

  @override
  String get enter_inbound_quantity =>
      'Vinsamlegast sláðu inn magn sem á að skrá í birgðir';

  @override
  String get enter_outbound_quantity =>
      'Vinsamlegast sláðu inn útflutningsmagn';

  @override
  String delete_item_confirm_with_irreversible(String name) {
    return 'Ertu viss um að þú viljir eyða „$name“? Þessi aðgerð er óafturkallanleg.';
  }

  @override
  String get database_reset =>
      'Gagnagrunnurinn hefur verið endurstilltur, tafla verður endurreist';

  @override
  String database_reset_error(String error) {
    return 'Villa við endurstillingu gagnagrunns: $error';
  }

  @override
  String mock_data_init_failed(String error) {
    return 'Gervigagnainnstilling mistókst: $error';
  }

  @override
  String get solution_steps => 'Lausn:';

  @override
  String get solution_step_1 => '1. Afsetja forritið og setja það upp aftur';

  @override
  String get solution_step_2 => '2. Eða hreinsa forritagögn';

  @override
  String get solution_step_3 =>
      '3. Eða settu resetDatabaseOnStart á true og keyrðu síðan aftur';

  @override
  String notification_service_init_failed(String error) {
    return 'Áminningarþjónusta mistókst við frumstillingu: $error';
  }

  @override
  String check_calendar_account_failed(String error) {
    return 'Mistókst að athuga dagatnsreikning: $error';
  }

  @override
  String create_calendar_failed(String error) {
    return 'Mistókst að búa til dagatalið: $error';
  }

  @override
  String add_calendar_event_failed(String error) {
    return 'Mistókst að bæta við dagatalefni: $error';
  }

  @override
  String delete_calendar_event_failed(String error) {
    return 'Mistókst að eyða dagatalsviðburði: $error';
  }

  @override
  String set_permission_message_failed(String error) {
    return 'Mistókst að stilla leyfisviðvörun: $error';
  }

  @override
  String mock_data_init_success(int count) {
    return 'Það hefur tekist að frumstilla $count hermigögn';
  }

  @override
  String database_has_data(int count) {
    return 'Gagnagrunnurinn hefur nú þegar $count færslur, slepptu undirbúningi hermigagna';
  }

  @override
  String get database_structure_mismatch =>
      'Það gæti verið ósamræmi í gagnagrunnsstrúktúrnum, mælt er með að hreinsa forritagögn eða endursetja forritið';

  @override
  String get old_database_deleted => 'Gamli gagnagrunnsskráin hefur verið eytt';

  @override
  String get backup_data_empty => 'Afritsgögn eru tóm';

  @override
  String get backup_file_not_found => 'Afritaskrá finnst ekki';

  @override
  String file_not_utf8(String error) {
    return 'Skráakóðun er ekki gilt UTF-8 snið. Vinsamlegast tryggðu að skráin sé vistuð með UTF-8 kóðun. Villuupplýsingar: $error';
  }

  @override
  String file_not_found(String filePath) {
    return 'Skráin er ekki til: $filePath';
  }

  @override
  String file_empty(String filePath) {
    return 'Skráin er tóm: $filePath';
  }

  @override
  String get file_content_empty =>
      'Eftir að innihald skráarinnar var afkóðað var það tómt, mögulega vegna ósamræmis í kóðun';

  @override
  String field_cannot_be_empty(String fieldName) {
    return '$fieldName má ekki vera tómt';
  }

  @override
  String field_min_length(String fieldName, int minLength) {
    return '$fieldName lengd má ekki vera minni en $minLength stafir';
  }

  @override
  String field_max_length(String fieldName, int maxLength) {
    return '$fieldName má ekki vera lengri en $maxLength stafir';
  }

  @override
  String field_invalid_email(String fieldName) {
    return 'Vinsamlegast sláðu inn gilt $fieldName netfang';
  }

  @override
  String field_invalid_number(String fieldName, String numberType) {
    return '$fieldName verður að vera $numberType';
  }

  @override
  String field_min_value(String fieldName, double min) {
    return '$fieldName má ekki vera minni en $min';
  }

  @override
  String field_max_value(String fieldName, double max) {
    return '$fieldName má ekki vera stærra en $max';
  }

  @override
  String field_positive_integer(String fieldName) {
    return '$fieldName verður að vera jákvætt heiltala';
  }

  @override
  String field_greater_than_zero(String fieldName) {
    return '$fieldName verður að vera stærra en 0';
  }

  @override
  String field_positive_number(String fieldName) {
    return '$fieldName verður að vera jákvætt tölu';
  }

  @override
  String field_invalid_date(String fieldName) {
    return 'Vinsamlegast sláðu inn gildan $fieldName';
  }

  @override
  String field_date_not_past(String fieldName) {
    return '$fieldName má ekki vera fyrri dagsetning';
  }

  @override
  String field_date_not_before(String fieldName, String minDate) {
    return '$fieldName má ekki vera fyrr en $minDate';
  }

  @override
  String field_date_not_after(String fieldName, String maxDate) {
    return '$fieldName má ekki vera síðar en $maxDate';
  }

  @override
  String field_invalid_value(String fieldName) {
    return 'Vinsamlegast sláðu inn gildan $fieldName';
  }

  @override
  String password_min_length(String fieldName) {
    return '$fieldName lengd má ekki vera færri en 8 stafir';
  }

  @override
  String password_uppercase_required(String fieldName) {
    return '$fieldName verður að innihalda að minnsta kosti eitt hástaf';
  }

  @override
  String password_lowercase_required(String fieldName) {
    return '$fieldName verður að innihalda að minnsta kosti eitt lágstafsstaf';
  }

  @override
  String password_digit_required(String fieldName) {
    return '$fieldName verður að innihalda að minnsta kosti eitt tölustaf';
  }

  @override
  String password_special_char_required(String fieldName) {
    return '$fieldName verður að innihalda að minnsta kosti einn sérstakan staf';
  }

  @override
  String get passwords_not_match =>
      'Lykilorðin sem slegin voru inn tveir sinnum eru ekki eins';

  @override
  String get item_name_cannot_be_empty => 'Vörunafn má ekki vera tómt';

  @override
  String name_max_length(int maxLength) {
    return 'Nafn má ekki vera lengra en $maxLength stafi';
  }

  @override
  String quantity_min(int minQuantity) {
    return 'Magn má ekki vera minna en $minQuantity';
  }

  @override
  String quantity_max(int maxQuantity) {
    return 'Fjöldi má ekki vera meiri en $maxQuantity';
  }

  @override
  String get unit_price_not_negative => 'Einingaverð má ekki vera neikvætt';

  @override
  String unit_price_max(double maxUnitPrice) {
    return 'Einingaverðið má ekki fara yfir $maxUnitPrice';
  }

  @override
  String get set_production_expiry_for_validity =>
      'Vinsamlegast stilltu framleiðsludagsetningu og geymsluþol til að reikna sjálfkrafa gildistíma.';

  @override
  String get set_purchase_warranty_for_validity =>
      'Vinsamlegast stilltu kaupdag og geymsluþol til að reikna sjálfkrafa ábyrgðartímann.';

  @override
  String get calendar_account_creation_failed =>
      'Ekki er hægt að búa til dagatnsreikning, vinsamlegast athugaðu dagatnsstillingar kerfisins';

  @override
  String get test_notification => 'Próf tilkynning';

  @override
  String get test_notification_description =>
      'Þetta er tilkynning um prófun, notuð til að staðfesta staðbundna áminningarvirkni';

  @override
  String get day_unit => 'himinn';

  @override
  String days_with_value(int days) {
    return '$days dagar';
  }

  @override
  String get item_saved => 'Hluturinn hefur verið vistaður';

  @override
  String get item_updated => 'Vara hefur verið uppfærð';

  @override
  String get item_added => 'Vara hefur verið bætt við';

  @override
  String get save_success => 'Geymt með góðum árangri';

  @override
  String get update_success => 'Uppfærsla tókst';

  @override
  String get delete_success => 'Eytt tókst';

  @override
  String get save_failed => 'Geymsla mistókst';

  @override
  String get update_failed => 'Uppfærsla mistókst';

  @override
  String get delete_failed => 'Ekki tókst að eyða';

  @override
  String get test_calendar_event => 'Prófunardagatalviðburður';

  @override
  String get test_calendar_event_description =>
      'Þetta er tilraunaatburður til að sannreyna dagatalsaðgerðir';

  @override
  String get in_app => 'í forritinu';

  @override
  String get enable_alert => 'Virkja áminningu um útgáfu';

  @override
  String get alert_method => 'Áminningaraðferð';

  @override
  String get alert_method_in_app => 'Aðeins í forriti';

  @override
  String get alert_method_calendar => 'Aðeins dagatal';

  @override
  String get alert_method_both => 'Báðir';

  @override
  String get alert_days_before => 'Fjöldi daga fyrirfram til að minna á';

  @override
  String get use_global_setting => 'Notaðu alhliða stillingar';

  @override
  String get barcode_label => 'Strikamerki';

  @override
  String get name_label => 'Heiti';

  @override
  String get category_label => 'Flokkun';

  @override
  String get current_quantity => 'Núverandi magn';

  @override
  String get select_operation => 'Vinsamlegast veldu aðgerð';

  @override
  String get unit => 'eining';

  @override
  String get custom_unit => 'Sérsniðin eining';

  @override
  String get enter_unit => 'Vinsamlegast sláðu inn einingu';

  @override
  String get custom_location => 'Sérsniðið staðsetning';

  @override
  String get enter_storage_location => 'Vinsamlegast sláðu inn geymslustað';

  @override
  String get scan => 'Skanna kóða';

  @override
  String get scan_to_stock => 'Skanna til að skrá inn á lager';

  @override
  String get item_categories => 'Vöruflokkun';

  @override
  String get storage_locations => 'Geymslustaður';

  @override
  String get place_barcode_in_frame_to_scan =>
      'Settu strikamerkið í kassann til að skanna';

  @override
  String get barcode => 'Strikamerki';

  @override
  String get enter_barcode_or_scan =>
      'Vinsamlegast sláðu inn strikamerki eða skannaðu kóða';

  @override
  String get basic_information => 'Grunnupplýsingar';

  @override
  String get item_name => 'Vörunafn';

  @override
  String get enter_item_name => 'Vinsamlegast sláðu inn nafn hlutarins';

  @override
  String get enter_category_name => 'Vinsamlegast sláðu inn flokkunarnafn';

  @override
  String item_increased(String itemName, String quantity, String unit) {
    return 'Bætt við $itemName $quantity$unit';
  }

  @override
  String item_decreased(String itemName, String quantity, String unit) {
    return 'Nú hefur verið minnkað $itemName $quantity$unit';
  }

  @override
  String get unsaved_changes => 'Óvistaðar breytingar';

  @override
  String get unsaved_changes_message =>
      'Þú hefur ósparaðar breytingar, vinsamlegast veldu aðgerð:';

  @override
  String get discard => 'gefa eftir';

  @override
  String get unit_piece => 'stykki';

  @override
  String get unit_item => 'hlutr';

  @override
  String get unit_box => 'kassi';

  @override
  String get unit_package => 'poki';

  @override
  String get unit_bottle => 'flaska';

  @override
  String get unit_carton => 'kassi';

  @override
  String get unit_set => 'sett';

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
  String get quantity_label => 'Magn';

  @override
  String get unit_price_label => 'Einingaverð';

  @override
  String get currency_label => 'Gjaldmiðill';

  @override
  String get total_price_label => 'Heildarverð:';

  @override
  String get storage_location_label => 'Geymslustaður';

  @override
  String get item_properties => 'Vörueiginleikar';

  @override
  String get expiry_date_label => 'Gildistími';

  @override
  String get warranty_expiry_date_label => 'Ábyrgðartími rennur út';

  @override
  String get production_date_label => 'Framleiðsludagur';

  @override
  String get purchase_date_label => 'Kaupdagsetning';

  @override
  String auto_calculated_from(String dateType) {
    return 'Reikna sjálfkrafa út frá $dateType og geymsluþoli';
  }

  @override
  String get auto_calculated => 'Sjálfvirk útreikningur';

  @override
  String get images_label => 'mynd';

  @override
  String get notes_label => 'Athugasemd';

  @override
  String get add_notes_hint => 'Bæta við athugasemdum (valfrjálst)';

  @override
  String get year_label => 'Ár';

  @override
  String get month_label => 'mánaður';

  @override
  String get day_label => 'himinn';

  @override
  String selected_count(int count) {
    return 'Valið $count atriði';
  }

  @override
  String get select_all => 'Velja allt';

  @override
  String get deselect_all => 'Hætta við allt val';

  @override
  String get batch_change_location => 'Fjöldaskipti á geymslustað';

  @override
  String confirm_delete_selected(int count) {
    return 'Ertu viss um að þú viljir eyða valin $count atriðum?';
  }

  @override
  String deleted_count_items(int count) {
    return 'Eytt $count hlutum';
  }

  @override
  String get no_storage_location_available => 'Enginn geymslustaður í boði';

  @override
  String get batch_change_location_title => 'Fjöldaskipti á geymslustað';

  @override
  String moved_count_items_to_location(int count, String location) {
    return 'Færa $count hluti yfir í $location';
  }

  @override
  String get operation_type_create => 'Skrá inn';

  @override
  String get operation_type_update => 'Breyta';

  @override
  String get operation_type_delete => 'Eyða';

  @override
  String get operation_type_inbound => 'Innskráning í lager';

  @override
  String get operation_type_outbound => 'Út úr birgðum';

  @override
  String export_failed_message(String error) {
    return 'Útflutningur misheppnaðist: $error';
  }

  @override
  String get clear_logs => 'Hreinsa dagbók';

  @override
  String get confirm_clear_logs =>
      'Ertu viss um að þú viljir hreinsa allar aðgerðarloggar? Þessi aðgerð er óafturkræf.';

  @override
  String get logs_cleared => 'Dagbókin hefur verið hreinsuð';

  @override
  String get operation_logs_title => 'Aðgerðardagbok';

  @override
  String get export_logs => 'Flytja út skrá';

  @override
  String get clear_logs_tooltip => 'Hreinsa dagbók';

  @override
  String get no_operation_logs => 'Engar aðgerðaferlar skráðir';

  @override
  String get log_item_label => 'Hlutur:';

  @override
  String get log_category_label => 'Flokkun:';

  @override
  String get log_type_label => 'Tegund:';

  @override
  String get log_quantity_label => 'Magn:';

  @override
  String get log_unit_price_label => 'Einingaverð:';

  @override
  String get log_total_price_label => 'Heildarverð:';

  @override
  String get log_expiry_date_label => 'FormattingDate:';

  @override
  String get log_warranty_date_label => 'Ábyrgðardagsetning:';

  @override
  String get log_purchase_date_label => 'Kaupdagsetning:';

  @override
  String get log_production_date_label => 'Framleiðsludagsetning:';

  @override
  String get log_shelf_life_label => 'Geymsluþol:';

  @override
  String get log_storage_location_label => 'Geymslustaður:';

  @override
  String get log_barcode_label => 'Strikamerki:';

  @override
  String get log_notes_label => 'Athugasemd:';

  @override
  String get log_alert_label => 'Forskoðun:';

  @override
  String get log_alert_days_label => 'Viðvörunardagar:';

  @override
  String get log_quantity_change_label => 'Fjöldabreyting:';

  @override
  String get log_field_changes_label => 'Breyta reit';

  @override
  String get log_not_set => 'Ekki stillt';

  @override
  String get log_empty => 'tóm';

  @override
  String get log_alert_enabled => 'Opna';

  @override
  String get log_alert_disabled => 'Loka';

  @override
  String get operation_logs_menu => 'Aðgerðardagbók';

  @override
  String get operation_logs_description => 'Skoða og endurheimta aðgerðarferil';

  @override
  String operation_failed_message(String error) {
    return 'Virkjun mistókst: $error';
  }

  @override
  String get no_date => 'Engin dagsetning';

  @override
  String get shelf_life_months_suffix => 'mánuðir';

  @override
  String get shelf_life_days_suffix => 'himinn';

  @override
  String get alert_days_suffix => 'himinn';

  @override
  String get unknown => 'Óþekkt';

  @override
  String get developer_name => 'Reó';

  @override
  String get log_operation_date_label => 'Aðgerðardagur:';

  @override
  String get uncategorized => 'Óflokkuð';

  @override
  String get no_location => 'Enginn staður';

  @override
  String get item_category_cannot_be_empty => 'Vöruflokkun má ekki vera tóm';

  @override
  String get storage_location_cannot_be_empty =>
      'Geymslustaður má ekki vera tómur';

  @override
  String get created_at_asc => 'Bæta við tímaröð hækkandi';

  @override
  String get created_at_desc => 'Bæta við tímaröð lækkandi';

  @override
  String get location_management => 'Birgðastjórnun';

  @override
  String get private_warehouses => 'Einkageymsla';

  @override
  String get public_warehouses => 'Opinber bókasafn';

  @override
  String get is_public_warehouse => 'Opinber bókasafn';

  @override
  String get public_warehouse_desc =>
      'Almennur birgðageymsla hefur engan stjórnanda, fyrir inn- og útflutning þarf að fylla út nafnið á þeim sem framkvæmir aðgerðina';

  @override
  String get manager => 'Stjórnandi';

  @override
  String get not_set => 'Ekki stillt';

  @override
  String get edit_location => 'Breyta bókasafni';

  @override
  String get location_name => 'Bókarsafnsnafn';

  @override
  String get manager_name => 'Nafn stjórnanda';

  @override
  String get enter_manager_name => 'Vinsamlegast sláðu inn nafn stjórnanda';

  @override
  String get manager_name_required => 'Nafn stjórnanda má ekki vera tómt';

  @override
  String delete_location_confirm(String name) {
    return 'Ertu viss um að þú viljir eyða bókasafninu „$name“?';
  }

  @override
  String get delete_location_has_items =>
      'Það eru enn hlutir í þessum geymslu, ekki er hægt að eyða';

  @override
  String get default_manager => 'Sjálfgefin stjórnandi';

  @override
  String get default_manager_desc =>
      'Sjálfgefin stjórnandi þegar nýtt einkaleyfi er stofnað';

  @override
  String get enter_default_manager =>
      'Vinsamlegast sláðu inn nafn sjálfgefið stjórnanda';

  @override
  String get operator_name => 'Nafn starfsmanns sem framkvæmdi aðgerðina';

  @override
  String get enter_operator_name => 'Vinsamlegast sláðu inn nafn aðgerðarmanns';

  @override
  String get operator_name_required => 'Nafn rekstraraðila má ekki vera tómt';

  @override
  String get no_manager => 'Enginn stjórnandi';

  @override
  String get log_operator_label => 'Aðgerðamaður:';

  @override
  String get outbound_quantity_exceeds_current =>
      'Útfluttningsmagn má ekki vera meira en núverandi birgðir';
}
