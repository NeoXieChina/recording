// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Fijian (`fj`).
class AppLocalizationsFj extends AppLocalizations {
  AppLocalizationsFj([String locale = 'fj']) : super(locale);

  @override
  String get app_name => 'Veivakabibitaki ni iyaya ena dakuni';

  @override
  String get cancel => 'Sega';

  @override
  String get confirm => 'Vakadeitaka';

  @override
  String get save => 'Maroroya';

  @override
  String get delete => 'Sokati';

  @override
  String get edit => 'Vakadewataka';

  @override
  String get add => 'Vakuria';

  @override
  String get edit_item => 'Vakatokai na iyaya';

  @override
  String get add_item => 'Vakayacora na iyaya';

  @override
  String get search => 'Vakasaqara';

  @override
  String get settings => 'iVale ni Veivakatorocaketaki';

  @override
  String get language_settings => 'Vale ni vosa';

  @override
  String get language_settings_description =>
      'Veivakadeitaki ni vosa ni iwalewale ni kena vakaraitaki na porokaramu';

  @override
  String get system_default => 'Vale ni sisiteme';

  @override
  String get use_system_language => 'Vakayagataka na vosa ni sisitemu';

  @override
  String get language_change_hint =>
      'Na veisau ni vosa ena yaco kevea ni sa tekivu tale na porokaramu';

  @override
  String get back => 'Lesu';

  @override
  String get next => 'Lako ki na yasana tarava';

  @override
  String get done => 'Vakakina';

  @override
  String get loading => 'Tukutuku tiko...';

  @override
  String get error => 'Daru';

  @override
  String get success => 'Sega ni cava';

  @override
  String get warning => 'Valea';

  @override
  String get info => 'iVale ni Veika';

  @override
  String get select_alert_days => 'Digitaka na ilakolako ni veisau ni siga';

  @override
  String get custom => 'Valei ni vakadidike';

  @override
  String custom_days(int days) {
    return 'Vakailavo Yaloyalo ($days siga)';
  }

  @override
  String current_selection(int days) {
    return 'Na veisautaki e cake nikua: $days siga';
  }

  @override
  String alert_days_range(int min, int max) {
    return 'Vakacala na veikacacataka ni siga: $min-$max na siga';
  }

  @override
  String get enter_days => 'Kerekere volai na ilimidavulu ni siga';

  @override
  String get days => 'Siga';

  @override
  String enter_valid_days(int min, int max) {
    return 'Tomani na iwiliwili mai $min ki $max';
  }

  @override
  String get alert_settings => 'iTuvatuva ni Kuwai Vakalailai';

  @override
  String get calendar_settings => 'iTuvatuva ni Kalenda';

  @override
  String get calendar_sync => 'Vakatokai ni Kalenda';

  @override
  String get calendar_sync_desc => 'Ni otā qai na kerea na tika ni kalendā';

  @override
  String get add_test_calendar_event =>
      'Vakavei koya na gauna ni veivakatovolei';

  @override
  String get enable_calendar_sync_first =>
      'Yalovinaka tekivu na \'vakadewataki ni kalenda\'';

  @override
  String get app_alert_settings => 'iTuvatuva ni App';

  @override
  String get local_alerts => 'iTukutuku ena vanua';

  @override
  String get local_alerts_desc =>
      'Vakatadra ka qai rogoca na ivakatawase ni vakalailai ni app ena loma ni gauna ni kena vakayacori';

  @override
  String get send_test_notification =>
      'Tukuna na ivakamacala ni veivakatovolei';

  @override
  String get enable_local_alerts_first =>
      'Yalataka na \'ivolakerekere ni vanua\' ena tikina batabata';

  @override
  String get alert_days_settings => 'Veivakasaurarataki ni siga';

  @override
  String get advance_alert_days => 'Veivosaki ena siga e liu';

  @override
  String get advance_alert_days_desc =>
      'Sokosoko na kena ivakaraitaki ni siga me tukuna kevaka sa rui mudu nai livaliva se na kena iwali ni ciqomi';

  @override
  String get calendar_permission_request => 'Kerekere ni itukutuku ni kaleniva';

  @override
  String get calendar_permission_desc =>
      'E tika mo veivakadonui ena nomu iwasewase ni kalendari me vakalewena na itukutuku ni iyaya. Dou na vakarautaka tiko ena ka?';

  @override
  String get allow => 'vakarautaka';

  @override
  String get calendar_permission_granted =>
      'Na itavi ni kalenda sa solia, na veivakatorocaketaki ni kalenda sa tekivu';

  @override
  String get calendar_permission_denied =>
      'Na itavi ni kalenda e laivi, e sega ni rawa ni vakatuburi na veivakarautaki ni kalenda';

  @override
  String get calendar_permission_permanently_denied => 'Vakacalai tu na dodonu';

  @override
  String get calendar_permission_permanently_denied_desc =>
      'Na ilesilesi ni kalenda sa batilaki vakatotolo, yalovinaka vakatotolo mai na iyaya ni kena veisautaki na ilesilesi ena sitima.';

  @override
  String get go_to_settings => 'Lako ki na veivakadinadina';

  @override
  String get calendar_account_failed =>
      'Na veivakacegui ni kalenda e sa solia oti, ia e sega ni rawa ni bulia na akaude kalenda. Kerekere mo raica na veika e tu ena kalenda ni sisitemu.';

  @override
  String get calendar_account_created =>
      'Na tika ni kalendari e solia oti, sa buli oti na akaude ni kalendari vakavanua';

  @override
  String get calendar_account_creating =>
      'E sa rawata na ilavo ni kalendari, ia e rawa ni gadrevi e dua na gauna me vakayagataki kina na iyaya ni kena cakacaka ena sisitemu';

  @override
  String get test_calendar_event_added =>
      'Vakayagataka na kena vakuria na macawa ni gauna e yaco vinaka';

  @override
  String get test_calendar_event_failed =>
      'E sega ni rawata na vakatotomuri ni veika e na kalenda ni vakatovolei, vakadinadinataka na veisau ni kalenda';

  @override
  String get calendar_permission_required =>
      'E bibi na veika e vakatulewa kina na kalendari me rawa ni biuta e dua na cakacaka vakadidike';

  @override
  String get test_notification_sent => 'Veivosaki ni vakatovolei sa tukuna oti';

  @override
  String test_notification_failed(String error) {
    return 'Sega ni vakauta na ileso ni vakaraitaki: $error';
  }

  @override
  String get notification_permission_required =>
      'E bibi na itukutuku ni vakatulewa me rawa ni vakayagataki na vakatutu vaqaqacotaki ena vanua';

  @override
  String operation_failed(String error) {
    return 'Sega ni yaco na cakacaka: $error';
  }

  @override
  String get notification_channel_name => 'Vakaveitalia ni I Vola';

  @override
  String get notification_channel_description =>
      'Tukutuku ni gauna ni iwalewale se kena qaiveina ena tikina batabata';

  @override
  String get item_category_food => 'Kakanisa';

  @override
  String get item_category_daily_necessities => 'iyaya ni siga kei na siga';

  @override
  String get item_category_cosmetics => 'iPapila ni Yago';

  @override
  String get item_category_medicine => 'Vale ni vukei ni mate';

  @override
  String get item_category_electronics => 'iyaya ni mataveilawa';

  @override
  String get item_category_furniture => 'iVale ni iyaya';

  @override
  String get item_category_clothing => 'Vale ni ulu';

  @override
  String get item_category_books => 'Vale ni volavola';

  @override
  String get item_category_other => 'Eso tale';

  @override
  String get purchase_channel_online_mall => 'Vale ni volivoli ena initaneti';

  @override
  String get purchase_channel_physical_store => 'Vale ni volivoli ena vanua';

  @override
  String get purchase_channel_supermarket => 'Vale ni volivoli levu';

  @override
  String get purchase_channel_specialty_store =>
      'Dua na sitoa ni volivoli vakatabakidua';

  @override
  String get purchase_channel_secondhand_market => 'makete vakavei ni iyaya';

  @override
  String get purchase_channel_other => 'Eso tale';

  @override
  String get default_category => 'Eso tale';

  @override
  String get default_purchase_channel => 'Vale ni volivoli ena initaneti';

  @override
  String get item_category => 'iVeika e wasei';

  @override
  String get custom_category => 'Vakarautaka na itavi';

  @override
  String get backup_data => 'iTukutuku ni Backup';

  @override
  String get backup_data_description =>
      'Vakavinakataka kece na itukutuku (okati kina na iyaloyalo) me vaka na faila ZIP me taqomaki';

  @override
  String get backup_all_data =>
      'Veivakabekataki ni veika kece me baleta na kena itukutuku';

  @override
  String get backup_success => 'Sa yaco vinaka na backup';

  @override
  String backup_failed(String error) {
    return 'Na veisau ni iwalewale e caka vakamatei: $error';
  }

  @override
  String get restore_data => 'Vakatubura na iTukutuku';

  @override
  String get restore_data_description =>
      'Vakayacora tale na veika kece mai na faila ni back-up ni ZIP';

  @override
  String get export_data => 'Vakatokai na iyaya ni itukutuku';

  @override
  String get export_data_description => 'Vakatautauvata me CSV, TXT, SQL';

  @override
  String get import_data => 'Vakatokai na itukutuku';

  @override
  String get import_data_description =>
      'Vakatavulica na iTukutuku mai na CSV, TXT, SQL iWasewase';

  @override
  String get alert_settings_description =>
      'Vakatovolei ni kalendari kei na vakatovolei ni app';

  @override
  String get about => 'Me baleta';

  @override
  String get about_description =>
      'Veika e baleta na porokaramu kei na kena ivakataoti';

  @override
  String get select_backup_file_first =>
      'Yalovinaka digitaka na faila ni buli tale';

  @override
  String get confirm_restore => 'Vakatulewa me vakaukautaka tale';

  @override
  String get confirm_restore_message =>
      'Na vakatovolei ni vakauqeti na isau ena na vakavouya na veika kece e tiko ka vakauta vakadua na isau ni vakauqeti, e sega ni rawa ni vakasavi. O vinakata mo tomana tiko?';

  @override
  String get confirm_again => 'Vakaikonaki tale';

  @override
  String get confirm_restore_warning =>
      'O sa dauveibutumu me vakatotolo taucoko na itukutuku kece o ya ka vakavouya na veiliutaki ena imeli? Na cakacaka qo e na sega ni rawa ni vakalewena tale!';

  @override
  String get confirm_restore_button => 'Vakaikonaki me vakaukauwataki';

  @override
  String restore_success(int count) {
    return 'Vakatokai vinaka, tiko $count na iyaya';
  }

  @override
  String restore_failed(String error) {
    return 'Sega ni rawa ni vakavurea: $error';
  }

  @override
  String get select_backup_file => 'Digitaka na faila ni vakatulewa';

  @override
  String get restore_backup => 'Vukea na isau ni kena mai vakalailai';

  @override
  String selected_file(String filename) {
    return 'E sa digitaki na faila: $filename';
  }

  @override
  String get export_success =>
      'Veivakabibitaki ni iyaya ena rawata na veiwekani';

  @override
  String export_failed(String error) {
    return 'Sega ni rawata na vakatulewa ni isala: $error';
  }

  @override
  String get format_csv => 'CSV';

  @override
  String get format_txt => 'TXT';

  @override
  String get format_sql => 'SQL';

  @override
  String get duplicate_data_handling =>
      'Vakayacora tale na iwasewase ni itukutuku';

  @override
  String get duplicate_data_detected =>
      'Kena vakadikevi na iwalewale e dua ga, yaco me digitaki na sala ni qarava: ';

  @override
  String get skip => 'Lako vata';

  @override
  String get overwrite => 'sasa';

  @override
  String get skip_all => 'Tosokete kece';

  @override
  String get overwrite_all => 'Valea taucoko';

  @override
  String get select_import_format_first =>
      'Yalovinaka digitaka na iwalewale ni vakau';

  @override
  String get confirm_import => 'Vakadeitaka na isau ni imuntaraki';

  @override
  String get confirm_import_message =>
      'Na vakauitukutuku na batabata na itukutuku e tiko, ena sega ni rawa ni veisau tale. O dou vinakata tiko beka ena toso tiko?';

  @override
  String import_success(int count) {
    return 'Sa yaco vinaka na vakatotolo ni iwiliwili, e $count na iyaya sa vakatotolo';
  }

  @override
  String import_failed(String error) {
    return 'Sega ni vakadewataki na icavacava: $error';
  }

  @override
  String get select_file => 'Digitaka na faila';

  @override
  String get no_data => 'Sega ni iYaloyalo';

  @override
  String get no_data_description =>
      'Sega ni iulutaga ena gauna qo, kiliki na butoni ena ruku me vakalati ira na itukutuku taumada!';

  @override
  String get load_failed => 'Valea na vakacalai ni livaliva';

  @override
  String get load_failed_description =>
      'Sa mai basika na kena buli na idusidusi, vakadikeva na nomu veisautaki ni matanitu ka vakayagataka tale';

  @override
  String get retry => 'Vakasosomitaka tale';

  @override
  String get network_connection_failed =>
      'Sega ni rawa ni veisautaki na isema ni initaneti';

  @override
  String get network_connection_failed_description =>
      'Kerekere vakadeitaka na nomu veisureti ni veivakacegui ka qai vakayagataka tale';

  @override
  String get no_results => 'Sega ni kunea na iwiliwili';

  @override
  String get no_results_description =>
      'Vakayagataka tale eso na vosa me baleta na kena vakasaqara';

  @override
  String get clear_search => 'Sosomi na vakasaqaqara';

  @override
  String get insufficient_permission => 'Vale ni veiliutaki e sega ni vakakina';

  @override
  String get insufficient_permission_description =>
      'Me tara na dodonu me rawa ni vakayagataki oqo na ituvaki';

  @override
  String get request_permission => 'Kerekere na iko me soli na ilesilesi';

  @override
  String get app_info => 'Vale ni iVakadonui ni porokaramu';

  @override
  String get version => 'iVakatakilakila ni iwasewase';

  @override
  String get developer => 'Valei ni vakatorocaketaki';

  @override
  String get device_info => 'Vale ni iyaloyalo ni iyaya';

  @override
  String get device_model => 'Vale ni iyaya';

  @override
  String get brand => 'iVale ni ivoli';

  @override
  String get device_name => 'Yaca ni iyaya';

  @override
  String get product => 'iVakatakilakila ni iyaya';

  @override
  String get hardware => 'Vale ni iyaya';

  @override
  String get android_version => 'Vesion ni Android';

  @override
  String get sdk_version => 'Vesion ni SDK';

  @override
  String get system_name => 'Vosa ni iVakatakilakila ni Ivu';

  @override
  String get operating_system => 'Vale ni cakacaka ni kompiuta';

  @override
  String get system_version => 'Vesion ni iYaya ni System';

  @override
  String get dart_version => 'iVakataoti ni Dart';

  @override
  String get device_identifier => 'iTukutuku ni iyaya';

  @override
  String get computer_name => 'Yaca ni kompiuta';

  @override
  String get build_number => 'Vale ni iwasewase';

  @override
  String error_getting_device_info(String error) {
    return 'Sega ni rawa ni kunea na itukutuku ni iyaya: $error';
  }

  @override
  String get features => 'Vakatakilakila ni cakacaka';

  @override
  String get app_description =>
      'iVakayagataki ni iyaya matai me buli vinaka na iyaya';

  @override
  String get app_description_detail =>
      'Vakayagataka na veivuke me qarava na nomu itukutuku me baleta na gauna ni yabaki ni maliwa ni ivoli, gauna ni vakadeitaki, kei na so tale na itukutuku, ka solia talega na itukutuku vakatagi vakasemi.';

  @override
  String get consumable => 'iYaya ni vakayagataki';

  @override
  String get durable => 'iyaya e draki tawa vakalailai';

  @override
  String get sort => 'iValei';

  @override
  String get name_asc => 'Yaca teitei ki loma';

  @override
  String get name_desc => 'Yaca vakasokalou';

  @override
  String get date_asc => 'iTakitaki ni Siga ena Vakarautaki Rise';

  @override
  String get date_desc => 'iTakitaki ni Siga Taucoko';

  @override
  String get price_asc => 'Veisau ni isau ena tarava ena i tika';

  @override
  String get price_desc => 'Veisau ni isau lailai ki levu';

  @override
  String get quantity_asc => 'iTavi levu ena iwasewase ena iTavaki';

  @override
  String get quantity_desc => 'i-lawa ni levu rawa';

  @override
  String get total_price_asc => 'Veisau ni isau taucoko ena i tika ni levu';

  @override
  String get total_price_desc => 'Veisau ni isau taucoko ena i tika ni loma';

  @override
  String get clear_all_filters => 'Vakavei ira kece na vakaseketaki';

  @override
  String get scan_barcode => 'Vakatokai na iyaya me curu ena sitoka';

  @override
  String get search_items => 'Vakatara na iyaya...';

  @override
  String get no_items => 'Sega ni iyaya';

  @override
  String get no_items_description =>
      'Dinani na boto ena ra me vakuria na ka e vuqa ni imatai';

  @override
  String get expired => 'Sa cava na gauna';

  @override
  String get expiring_soon => 'Veisiga sa soli rawa';

  @override
  String get warranty_expired =>
      'Na gauna ni veiqaravi ni veivakadidike sa oti';

  @override
  String get warranty_expiring_soon =>
      'Na veivakadeitaki ena na cava tiko ena gauna lailai';

  @override
  String days_remaining(int count) {
    return 'E mai sivia tiko na $count na siga';
  }

  @override
  String expired_days_ago(int count) {
    return 'E sa oti na $count na siga';
  }

  @override
  String get delete_item => 'Sosomitaka na iyaya';

  @override
  String delete_item_confirm(String name) {
    return 'O sa na cala me tosoveina $name?';
  }

  @override
  String get item_deleted => 'Na iyaya sa vakarautaki';

  @override
  String get failed_to_delete => 'Valea na cakacaka ni bibi';

  @override
  String failed_to_delete_message(String error) {
    return 'Sega ni rawa ni biu na ka: $error';
  }

  @override
  String get date_range_filter => 'Veivosaki ni gauna e toso';

  @override
  String get price_range_filter => 'Veisau ni iyaya ni isau';

  @override
  String get my_items => 'Noqu iyaya';

  @override
  String get click_fab_to_add_item =>
      'Titikina na boto ena dakuni i cake ena kena i vakarua me vakuria na ka';

  @override
  String get confirm_delete => 'Vakaikonaki me toso';

  @override
  String get filter_options => 'Veisautaki ni digidigi';

  @override
  String get filter_by_type_category_location =>
      'Vakamacalataki na iyaya ena kena mataqali, iwasewase kei na vanua';

  @override
  String categories_count(int count) {
    return '$count na iwasewase';
  }

  @override
  String get all_categories => 'Vakatakilakila kece';

  @override
  String get no_category_data => 'Sega ni i tukutuku e vakavakarau me buli';

  @override
  String get storage_location => 'Yaca ni iLavo';

  @override
  String locations_count(int count) {
    return '$count na vanua';
  }

  @override
  String get all_locations => 'Vale kece';

  @override
  String get no_location_data => 'Sega ni i tukutuku ni vanua ena tiko';

  @override
  String get date_range => 'Vale ni gauna';

  @override
  String get select_date_range => 'Digitaka na yasana ni gauna';

  @override
  String get price_range => 'Vale ni isau';

  @override
  String get unit_price_range => 'Yabaki ni isau';

  @override
  String get min_unit_price => 'Isau levu duadua';

  @override
  String get max_unit_price => 'Yau levu duadua';

  @override
  String get total_price_range => 'Yau taucoko ni iwiliwili';

  @override
  String get min_total_price => 'Yau levu duadua';

  @override
  String get max_total_price => 'Yau levu duadua';

  @override
  String get clear_price_filter => 'Vakavei na iwiliwili ni isau';

  @override
  String get place_barcode_in_frame =>
      'Tauta na bar code ena i box me vakadewataki';

  @override
  String get item_already_exists => 'Na iyaya e tiko oti';

  @override
  String barcode_with_value(String barcode) {
    return 'Kodi ni Baumu: $barcode';
  }

  @override
  String name_with_value(String name) {
    return 'Yaca: $name';
  }

  @override
  String category_with_value(String category) {
    return 'Vakarautaki ena iVolakerekere: $category';
  }

  @override
  String current_quantity_with_value(String quantity, String unit) {
    return 'Lailai oqo: $quantity$unit';
  }

  @override
  String get please_select_operation => 'Yalovinaka digitaka na cakacaka:';

  @override
  String get outbound => 'Vale ni volivoli';

  @override
  String get inbound => 'Valei ni iyaya';

  @override
  String get inbound_quantity => 'Yavu ni katuba';

  @override
  String get outbound_quantity => 'iNamba ni volitaka';

  @override
  String get quantity => 'iVale ni iwiliwili';

  @override
  String get enter_inbound_quantity =>
      'Kerekere volia na levu me tomani ena kabani';

  @override
  String get enter_outbound_quantity =>
      'Kerekere volia na levu ni isau me buli mai';

  @override
  String delete_item_confirm_with_irreversible(String name) {
    return 'O cei mo vakamatei \"$name\"? E sega ni rawa ni veisautaki oqo na cakacaka.';
  }

  @override
  String get database_reset =>
      'Na database sa vakavureti tale, ena buli tale na iwasewase ni tabula';

  @override
  String database_reset_error(String error) {
    return 'Sega ni cala ena kena vakacacani na database: $error';
  }

  @override
  String mock_data_init_failed(String error) {
    return 'Na itinitini ni iulutaga ni kena vakatovotovo e sega ni yaco: $error';
  }

  @override
  String get solution_steps => 'iTuvatuva ni iwali';

  @override
  String get solution_step_1 => '1. Tadra na app ka vakatubura tale';

  @override
  String get solution_step_2 => '2. Se qai vakacina na iwasewase ni porokaramu';

  @override
  String get solution_step_3 =>
      '3. Se rawa ni vakayacori tale na cakacaka ni wiliwili ni database ni vakatakila na resetDatabaseOnStart me vaka dina';

  @override
  String notification_service_init_failed(String error) {
    return 'Na kena tekivu na veiqaravi vakamugala e sega ni yaco: $error';
  }

  @override
  String check_calendar_account_failed(String error) {
    return 'Vakatovotovo na akaude ni kalenda: $error';
  }

  @override
  String create_calendar_failed(String error) {
    return 'Sega ni rawa ni bulia na kalendari: $error';
  }

  @override
  String add_calendar_event_failed(String error) {
    return 'E sega ni rawata me laivi na veika e caliqa ena kalenda: $error';
  }

  @override
  String delete_calendar_event_failed(String error) {
    return 'E sega ni yaco na veika me vakarautaki kina na kalenda: $error';
  }

  @override
  String set_permission_message_failed(String error) {
    return 'Vakatikora na iTukutuku ni vakatulewa ni lesilesi: $error';
  }

  @override
  String mock_data_init_success(int count) {
    return 'E sa rawata vinaka na vakat/initiate $count na iyaya ni vakadinadina';
  }

  @override
  String database_has_data(int count) {
    return 'E tiko ena database $count na itukutuku, taura vakalailai na ituvatuva ni itukutuku ni vakasavu';
  }

  @override
  String get database_structure_mismatch =>
      'E rawa ni sega ni duidui na iwasewase ni database, e vakararavi me vakacava na kena vakaduiduitaki na data ni app se ena vakatotogitaki tale.';

  @override
  String get old_database_deleted =>
      'Sa biuti na faila ni veika rara ni iVola vou';

  @override
  String get backup_data_empty =>
      'Na iyaya ni itukutuku ni veisau e sega ni ilavo';

  @override
  String get backup_file_not_found => 'Na faila ni backup e sega ni tu';

  @override
  String file_not_utf8(String error) {
    return 'Na ikavida ni ivola e sega ni iwalewale donu ni UTF-8. Kerekere mo vakadeitaka ni sa vakatututaka na ivola ena ivakatagedegede ni UTF-8. Na veika dina ni cala: $error';
  }

  @override
  String file_not_found(String filePath) {
    return 'Oqo na i vola e sega ni tiko: $filePath';
  }

  @override
  String file_empty(String filePath) {
    return 'Na ivola e vakadavaki: $filePath';
  }

  @override
  String get file_content_empty =>
      'Na iVola e vakadewataki oti e tu vakadua, e rawa ni sega ni salavata na itukutuku vakadewataki';

  @override
  String field_cannot_be_empty(String fieldName) {
    return '$fieldName e sega ni rawa ni vakacurumi';
  }

  @override
  String field_min_length(String fieldName, int minLength) {
    return '$fieldName e sega ni rawata na rui lailai ni $minLength mataqali itukutuku';
  }

  @override
  String field_max_length(String fieldName, int maxLength) {
    return '$fieldName e sega ni rawa ni sivia $maxLength na itukutuku';
  }

  @override
  String field_invalid_email(String fieldName) {
    return 'Kerekerei mo volavola e dua na $fieldName i-yadra dodonu';
  }

  @override
  String field_invalid_number(String fieldName, String numberType) {
    return '$fieldName me vaka $numberType';
  }

  @override
  String field_min_value(String fieldName, double min) {
    return '$fieldName e sega ni rawa ni lailai vei $min';
  }

  @override
  String field_max_value(String fieldName, double max) {
    return '$fieldName e sega ni levu cake mai $max';
  }

  @override
  String field_positive_integer(String fieldName) {
    return '$fieldName e dodonu me dua na iwiliwili vinaka';
  }

  @override
  String field_greater_than_zero(String fieldName) {
    return '$fieldName e dodonu me levu mai na 0';
  }

  @override
  String field_positive_number(String fieldName) {
    return '$fieldName e dodonu me dua na iwiliwili vinaka';
  }

  @override
  String field_invalid_date(String fieldName) {
    return 'Yalataka na $fieldName dodonu';
  }

  @override
  String field_date_not_past(String fieldName) {
    return '$fieldName e sega ni rawa me dua na siga mai liu';
  }

  @override
  String field_date_not_before(String fieldName, String minDate) {
    return '$fieldName e sega ni rawa ni sala i liu vei $minDate';
  }

  @override
  String field_date_not_after(String fieldName, String maxDate) {
    return '$fieldName e sega ni bera sara mai vei $maxDate';
  }

  @override
  String field_invalid_value(String fieldName) {
    return 'Yalataka na $fieldName dodonu';
  }

  @override
  String password_min_length(String fieldName) {
    return '$fieldName e sega ni rawa ni lailai mai na 8 na mataqali ulutaga';
  }

  @override
  String password_uppercase_required(String fieldName) {
    return '$fieldName e dodonu me okati e loma e dua na lewena levu';
  }

  @override
  String password_lowercase_required(String fieldName) {
    return '$fieldName e dodonu me okati e loma e dua na lewena lailai';
  }

  @override
  String password_digit_required(String fieldName) {
    return '$fieldName me vaka kina e dua ga na iwiliwili';
  }

  @override
  String password_special_char_required(String fieldName) {
    return '$fieldName e dodonu me okati e dua se vica na ivakatakilakila vakatani';
  }

  @override
  String get passwords_not_match =>
      'Na pasiwedi e laurai e rua e sega ni duidui';

  @override
  String get item_name_cannot_be_empty =>
      'Na yaca ni iyaya e sega ni rawa ni vakavuna';

  @override
  String name_max_length(int maxLength) {
    return 'Na yaca e sega ni rawa ni sivia na $maxLength na inaki';
  }

  @override
  String quantity_min(int minQuantity) {
    return 'E sega ni rawa ni lailai cake nai levu e $minQuantity';
  }

  @override
  String quantity_max(int maxQuantity) {
    return 'E sega ni rawa ni sivia $maxQuantity na iwiliwili';
  }

  @override
  String get unit_price_not_negative => 'Na isau e sega ni rawa ni bibi';

  @override
  String unit_price_max(double maxUnitPrice) {
    return 'Na ilavo e rawa ni volia kina e sega ni sivia $maxUnitPrice';
  }

  @override
  String get set_production_expiry_for_validity =>
      'Yalataka na siga ni kena vakatubura kei na gauna ni bula me vakadodonutaki kina na gauna e vinaka kina';

  @override
  String get set_purchase_warranty_for_validity =>
      'Yalovinaka seti na siga ni volivoli kei na gauna ni bula ni iyaya me vakadodonutaki kina na gauna ni warranty';

  @override
  String get calendar_account_creation_failed =>
      'E sega ni rawa ni buli akauwese ni kalenda, vakadeitaka na kena isetiyasi ni kalenda ni sisitemu';

  @override
  String get test_notification => 'Vale ni veivosaki ni vakadidike';

  @override
  String get test_notification_description =>
      'Qo e dua na ivolakerekere ni vakadinadina me vakadeitaka na veiqaravi ni vakatutu e koro';

  @override
  String get day_unit => 'lagi';

  @override
  String days_with_value(int days) {
    return '$days siga';
  }

  @override
  String get item_saved => 'Na iyaya sa volitaki';

  @override
  String get item_updated => 'Na iyaya sa vakavoui';

  @override
  String get item_added => 'Veika sa vakuria';

  @override
  String get save_success => 'Valea vinaka';

  @override
  String get update_success => 'Vakatubura vinaka';

  @override
  String get delete_success => 'Valea vinaka';

  @override
  String get save_failed => 'Valea na vakasave';

  @override
  String get update_failed => 'Vakatakilakila ni vakavoutaki ena sega ni yaco';

  @override
  String get delete_failed => 'Valea na cakacaka ni bibi mai';

  @override
  String get test_calendar_event => 'Veika ena Kalendari ni Vakarautaki';

  @override
  String get test_calendar_event_description =>
      'Qo e dua na veika ni vakatovolei me vakadeitaka na cakacaka ni kalenda';

  @override
  String get in_app => 'Vakaikoya ena iwalewale ni app';

  @override
  String get enable_alert => 'Vakavei ni vakasama me baleta na gauna mai';

  @override
  String get alert_method => 'Valeitaka';

  @override
  String get alert_method_in_app => 'Vakarautaki ena app ga';

  @override
  String get alert_method_calendar => 'Kalendari ga';

  @override
  String get alert_method_both => 'rua';

  @override
  String get alert_days_before => 'Veivosaki ena siga e liu';

  @override
  String get use_global_setting =>
      'Veiyalayalati na kena vakayagataki ena vanua taucoko';

  @override
  String get barcode_label => 'Valei waqa';

  @override
  String get name_label => 'Yaca';

  @override
  String get category_label => 'iVakatakilakila';

  @override
  String get current_quantity => 'Vale ni iwiliwili qo';

  @override
  String get select_operation => 'Vakayagataka na cakacaka';

  @override
  String get unit => 'iVunau';

  @override
  String get custom_unit => 'Yavu ni iyaya ni veisau';

  @override
  String get enter_unit => 'Valevolekinia na noda iyaya';

  @override
  String get custom_location => 'Vanua vakadewataki';

  @override
  String get enter_storage_location =>
      'Kerekere volia na vanua me kauti kina na iyaya';

  @override
  String get scan => 'Sikeli koda';

  @override
  String get scan_to_stock => 'Vakatokai na iyaya me curu ena sitoka';

  @override
  String get item_categories => 'Vakarautaki ni iyaya';

  @override
  String get storage_locations => 'Yaca ni iLavo';

  @override
  String get place_barcode_in_frame_to_scan =>
      'Tauta na bar code ena dakuna me vakadewataki';

  @override
  String get barcode => 'Valei waqa';

  @override
  String get enter_barcode_or_scan =>
      'Vakacuruma na namba waika se vakatotolo na QR code';

  @override
  String get basic_information => 'Vale ni iwalewale';

  @override
  String get item_name => 'Yaca ni iyaya';

  @override
  String get enter_item_name => 'Kerekere volai na yaca ni ka';

  @override
  String get enter_category_name => 'Yacani na isulu ni icavacava';

  @override
  String item_increased(String itemName, String quantity, String unit) {
    return 'Sa vakuria $itemName $quantity$unit';
  }

  @override
  String item_decreased(String itemName, String quantity, String unit) {
    return 'Kua ni sa lailai $itemName $quantity$unit';
  }
}
