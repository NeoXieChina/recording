// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Irish (`ga`).
class AppLocalizationsGa extends AppLocalizations {
  AppLocalizationsGa([String locale = 'ga']) : super(locale);

  @override
  String get app_name => 'Áit bheag chun rudaí a cheilt';

  @override
  String get cancel => 'Cealaigh';

  @override
  String get confirm => 'Deimhnigh';

  @override
  String get save => 'Sábháil';

  @override
  String get delete => 'Scrios';

  @override
  String get edit => 'Eagar';

  @override
  String get add => 'Cuir leis';

  @override
  String get edit_item => 'Eagar earra';

  @override
  String get add_item => 'Cuir earra leis';

  @override
  String get search => 'Cuardach';

  @override
  String get settings => 'Socruithe';

  @override
  String get language_settings => 'Socruithe Teanga';

  @override
  String get language_settings_description =>
      'Socraigh teanga taispeána an fheidhmchláir';

  @override
  String get system_default => 'Réamhshocraithe an chórais';

  @override
  String get use_system_language => 'Bain úsáid as teanga an chórais';

  @override
  String get language_change_hint =>
      'Beidh an teanga athraithe i bhfeidhm tar éis an aip a atosú';

  @override
  String get back => 'Fill ar ais';

  @override
  String get next => 'Céim eile';

  @override
  String get done => 'Críochnaithe';

  @override
  String get loading => 'Ag luchtú...';

  @override
  String get error => 'Botún';

  @override
  String get success => 'Rath';

  @override
  String get warning => 'Rabhadh';

  @override
  String get info => 'Eolas';

  @override
  String get select_alert_days => 'Roghnaigh líon na n-lá chun cuimhneacháin';

  @override
  String get custom => 'Saincheap';

  @override
  String custom_days(int days) {
    return 'Saincheaptha ($days laethanta)';
  }

  @override
  String current_selection(int days) {
    return 'Roghnú reatha: $days lá';
  }

  @override
  String alert_days_range(int min, int max) {
    return 'Raon laethanta foláirimh: $min-$max lá';
  }

  @override
  String get enter_days => 'Iontráil líon na laethanta cuimhneacháin';

  @override
  String get days => 'Lá';

  @override
  String enter_valid_days(int min, int max) {
    return 'Cuir isteach uimhir idir $min agus $max';
  }

  @override
  String get alert_settings => 'Socruithe Réamhchúraim';

  @override
  String get calendar_settings => 'Socruithe Féilire';

  @override
  String get calendar_sync => 'Comhtháthú féilire';

  @override
  String get calendar_sync_desc =>
      'Tar éis dó a bheith ar siúl, iarrfaidh sé cead rochtain ar an bhféilire';

  @override
  String get add_test_calendar_event => 'Cuir imeacht féilte tástála leis';

  @override
  String get enable_calendar_sync_first =>
      'Cuir an lasc \"Comhtháthú Féilire\" ar siúl ar dtús le do thoil';

  @override
  String get app_alert_settings => 'Socruithe meabhrúcháin aip';

  @override
  String get local_alerts => 'Meabhrúchán áitiúil';

  @override
  String get local_alerts_desc =>
      'Tar éis a chasadh air, faigh meabhrúcháin faoi rith ama laistigh den aip';

  @override
  String get send_test_notification => 'Seol fógra tástála';

  @override
  String get enable_local_alerts_first =>
      'Le do thoil, cas ar an \'Fógra Áitiúil\' ar dtús';

  @override
  String get alert_days_settings => 'Socruithe laethanta cuimhneacháin';

  @override
  String get advance_alert_days => 'Lá réamhchúraim';

  @override
  String get advance_alert_days_desc =>
      'Socraigh cé mhéad lá roimh ré chun meabhrúchán a fháil faoi dhul in éag táirgí nó críochnú bharánta';

  @override
  String get calendar_permission_request =>
      'Iarratas ar chead rochtana féilire';

  @override
  String get calendar_permission_desc =>
      'Teastaíonn rochtain ar an bhféilire chun meabhrúcháin earraí a shioncronú. An gceadaíonn tú é?';

  @override
  String get allow => 'Ceadaigh';

  @override
  String get calendar_permission_granted =>
      'Tá cead ag an bhféilire curtha ar fáil, tá comhtháthú féilire curtha ar siúl';

  @override
  String get calendar_permission_denied =>
      'Diúltaithe cead rochtana féilire, ní féidir comhtháthú féilire a chumasú';

  @override
  String get calendar_permission_permanently_denied =>
      'Tá ceadanna diúltaithe go buan';

  @override
  String get calendar_permission_permanently_denied_desc =>
      'Tá rochtain ar an bhféilire dífhorbartha go buan, le do thoil, bain an cead de láimh i socruithe an chórais.';

  @override
  String get go_to_settings => 'Téigh go dtí na socruithe';

  @override
  String get calendar_account_failed =>
      'Tá cead ar fáil don fhéilire, ach ní féidir cuntas féilire a chruthú. Seiceáil socruithe féilire an chórais le do thoil.';

  @override
  String get calendar_account_created =>
      'Tá cead ag an gclár féilire, tá cuntas féilire áitiúil cruthaithe';

  @override
  String get calendar_account_creating =>
      'Chruthaíodh cuntas féilire go rathúil, ach d’fhéadfadh go mbeadh beagán ama ag teastáil ón gcóras chun é a fheidhmiú';

  @override
  String get test_calendar_event_added =>
      'Tástáil cur le himeachtaí féilire rathúil';

  @override
  String get test_calendar_event_failed =>
      'Theip ar chur ócáid tástála leis an bhféilire, seiceáil socruithe an fhéilire le do thoil';

  @override
  String get calendar_permission_required =>
      'Teastaíonn cead roinnnfhéilirí chun tástáil imeachta a chur leis';

  @override
  String get test_notification_sent => 'Tá fógra tástála seolta';

  @override
  String test_notification_failed(String error) {
    return 'Theipeann ar chur isteach fógra tástála: $error';
  }

  @override
  String get notification_permission_required =>
      'Teastaíonn cead fógra chun cuimhneacháin áitiúla a chumasú';

  @override
  String operation_failed(String error) {
    return 'Theip ar an oibriú: $error';
  }

  @override
  String get notification_channel_name =>
      'Fógra Réamhchúraim Maidir le Híodálacha';

  @override
  String get notification_channel_description =>
      'Fógra maidir le míreanna a bheith as dáta nó as ráthaíocht';

  @override
  String get item_category_food => 'Bia';

  @override
  String get item_category_daily_necessities => 'Earraí laethúla';

  @override
  String get item_category_cosmetics => 'Táirgí maisiúil';

  @override
  String get item_category_medicine => 'Cógas';

  @override
  String get item_category_electronics => 'Táirgí leictreonacha';

  @override
  String get item_category_furniture => 'Troscán';

  @override
  String get item_category_clothing => 'Éadaí';

  @override
  String get item_category_books => 'Leabhair';

  @override
  String get item_category_other => 'Eile';

  @override
  String get purchase_channel_online_mall => 'Siopa Ar Líne';

  @override
  String get purchase_channel_physical_store => 'Siopa fisiceach';

  @override
  String get purchase_channel_supermarket => 'Siopa mór';

  @override
  String get purchase_channel_specialty_store => 'Siopa eisiach';

  @override
  String get purchase_channel_secondhand_market => 'Margadh dara láimhe';

  @override
  String get purchase_channel_other => 'Eile';

  @override
  String get default_category => 'Eile';

  @override
  String get default_purchase_channel => 'Siopa Ar Líne';

  @override
  String get item_category => 'Catagóiriú earraí';

  @override
  String get custom_category => 'Catagóiriú saincheaptha';

  @override
  String get backup_data => 'Cúltaca sonraí';

  @override
  String get backup_data_description =>
      'Pacáil gach sonraí (lena n-áirítear íomhánna) mar chomhad ZIP le cúltaca';

  @override
  String get backup_all_data => 'Cúltaca a dhéanamh ar na sonraí go léir';

  @override
  String get backup_success => 'Ar ais suas go rathúil';

  @override
  String backup_failed(String error) {
    return 'Theip ar an cúltaca: $error';
  }

  @override
  String get restore_data => 'Aisghabháil sonraí';

  @override
  String get restore_data_description =>
      'Aisghabh gach sonraí ó chomhad cúltaca ZIP';

  @override
  String get export_data => 'Easpórtáil sonraí';

  @override
  String get export_data_description => 'Easpórtáil mar fhormáid CSV, TXT, SQL';

  @override
  String get import_data => 'Tiontain sonraí isteach';

  @override
  String get import_data_description =>
      'Sonraí a allmhairiú ó chomhaid CSV, TXT, SQL';

  @override
  String get alert_settings_description =>
      'Socruithe Meabhrúcháin Féilire agus Meabhrúcháin Brúite App';

  @override
  String get about => 'Maidir le';

  @override
  String get about_description => 'Eolas ar an bhfeidhmchlár agus an leagan';

  @override
  String get select_backup_file_first =>
      'Roghnaigh le do thoil comhad cúltaca ar dtús';

  @override
  String get confirm_restore => 'Deimhnigh athchóir';

  @override
  String get confirm_restore_message =>
      'Má dhéanann tú cúltaca a athshlánú, scriosfar gach sonraí atá ann faoi láthair agus beidh siad á n-aisghabháil leis na sonraí cúltaca; ní féidir an gníomh seo a thabhairt ar ais. An bhfuil tú cinnte go leanfaidh tú ar aghaidh?';

  @override
  String get confirm_again => 'Deimhníodh arís';

  @override
  String get confirm_restore_warning =>
      'An bhfuil tú cinnte gur mhaith leat gach sonraí atá ann a bhaint agus an cúltaca a athshlánú? Ní féidir an gníomh seo a chur ar ais!';

  @override
  String get confirm_restore_button => 'Déan cinnte go dtí aisghabháil';

  @override
  String restore_success(int count) {
    return 'Aisghabhadh go rathúil, $count earraí san iomlán';
  }

  @override
  String restore_failed(String error) {
    return 'Theip ar aisshlánú: $error';
  }

  @override
  String get select_backup_file => 'Roghnaigh comhad cúltaca';

  @override
  String get restore_backup => 'Aisghabh cúltaca';

  @override
  String selected_file(String filename) {
    return 'Comhad roghnaithe: $filename';
  }

  @override
  String get export_success => 'Rath ar onnmhairiú sonraí';

  @override
  String export_failed(String error) {
    return 'Theip ar onnmhairiú: $error';
  }

  @override
  String get format_csv => 'CSV';

  @override
  String get format_txt => 'TXT';

  @override
  String get format_sql => 'SQL';

  @override
  String get duplicate_data_handling => 'Próiseáil sonraí atá athmhúnlaithe';

  @override
  String get duplicate_data_detected =>
      'Braitear sonraí dúblacha, roghnaigh conas iad a láimhseáil:';

  @override
  String get skip => 'Léim thar';

  @override
  String get overwrite => 'clúdach';

  @override
  String get skip_all => 'Léim thar gach rud';

  @override
  String get overwrite_all => 'Clúdaigh go hiomlán';

  @override
  String get select_import_format_first =>
      'Roghnaigh an formáid ionchuir ar dtús le do thoil';

  @override
  String get confirm_import => 'Deimhniú allmhairiú';

  @override
  String get confirm_import_message =>
      'Beidh na sonraí a allmhairítear ag clúdach na sonraí atá ann cheana, ní féidir an gníomh seo a aisiompú. An bhfuil tú cinnte go dteastaíonn uait leanúint ar aghaidh?';

  @override
  String import_success(int count) {
    return 'Táthar iompórtáilte go rathúil, iomlán $count míreanna iompórtáilte';
  }

  @override
  String import_failed(String error) {
    return 'Theip ar an allmhairiú: $error';
  }

  @override
  String get select_file => 'Roghnaigh comhad';

  @override
  String get no_data => 'Gan sonraí ar fáil';

  @override
  String get no_data_description =>
      'Níl aon sonraí ann faoi láthair, cliceáil ar an gcnaipe thíos chun an chéad taifead a chur leis!';

  @override
  String get load_failed => 'Teip ar luchtú';

  @override
  String get load_failed_description =>
      'Theip ar luchtú sonraí, seiceáil do nasc idirlín agus déan iarracht arís';

  @override
  String get retry => 'Déan iarracht arís';

  @override
  String get network_connection_failed => 'Theip ar nascacht líonra';

  @override
  String get network_connection_failed_description =>
      'Seiceáil do nasc idirlín agus bain triail eile as';

  @override
  String get no_results => 'Níor aimsíodh aon toradh';

  @override
  String get no_results_description =>
      'Bain triail as cuardach a dhéanamh le focail eochair eile';

  @override
  String get clear_search => 'Glan cuardach';

  @override
  String get insufficient_permission => 'Neamhleordhóthanacht ceadanna';

  @override
  String get insufficient_permission_description =>
      'Teastaíonn na ceadanna ábhartha chun an ghné seo a úsáid';

  @override
  String get request_permission => 'Iarr Ceada';

  @override
  String get app_info => 'Eolas faoin iarratas';

  @override
  String get version => 'Leagan';

  @override
  String get developer => 'Forbróir';

  @override
  String get device_info => 'Eolas Trealaimh';

  @override
  String get device_model => 'Samhail Trealaimh';

  @override
  String get brand => 'Branda';

  @override
  String get device_name => 'Ainm na trealaimh';

  @override
  String get product => 'Táirge';

  @override
  String get hardware => 'Crua-earraí';

  @override
  String get android_version => 'Leagan Android';

  @override
  String get sdk_version => 'Leagan SDK';

  @override
  String get system_name => 'Ainm an chórais';

  @override
  String get operating_system => 'Córas Oibriúcháin';

  @override
  String get system_version => 'Leagan an chórais';

  @override
  String get dart_version => 'Leagan Dart';

  @override
  String get device_identifier => 'Aitheantas trealaimh';

  @override
  String get computer_name => 'Ainm ríomhaire';

  @override
  String get build_number => 'Uimhir leagan';

  @override
  String error_getting_device_info(String error) {
    return 'Ní féidir faisnéis an ghléis a fháil: $error';
  }

  @override
  String get features => 'Réamhrá ar Fheidhmeanna';

  @override
  String get app_description => 'Aip Bhainistíochta Rudaí Cliste';

  @override
  String get app_description_detail =>
      'Cabhraíonn sé leat dátaí éaga earraí, dátaí bharánta agus faisnéis eile a bhainistiú, agus soláthraíonn sé feidhm chuimhneacháin chliste.';

  @override
  String get consumable => 'Tearmaí úsáide';

  @override
  String get durable => 'Earraí inbhuanaithe';

  @override
  String get sort => 'Sórtáil';

  @override
  String get name_asc => 'Ordú aibítreach de réir ainm';

  @override
  String get name_desc => 'Ordú leasainm síos';

  @override
  String get date_asc => 'Ordú dáta ó ísle go hard';

  @override
  String get date_desc => 'Ordú laghdaitheach dáta';

  @override
  String get price_asc => 'Ordú praghais ó ísle go hard';

  @override
  String get price_desc => 'Ordú meánphraghais laghdaithe';

  @override
  String get quantity_asc => 'Ordú Ascending de Chainníocht';

  @override
  String get quantity_desc => 'Ordú laghdaitheach de réir chainníocht';

  @override
  String get total_price_asc => 'Ordú praghais iomláine ó íseal go hard';

  @override
  String get total_price_desc => 'Ordú laghdaithe praghas iomlán';

  @override
  String get clear_all_filters => 'Glan na scagairí go léir';

  @override
  String get scan_barcode => 'Scan chun isteach sa stoc';

  @override
  String get search_items => 'Cuardaigh earraí...';

  @override
  String get no_items => 'Gan aon earra ar fáil';

  @override
  String get no_items_description =>
      'Cliceáil ar an gcnaipe thíos chun an chéad earra a chur leis';

  @override
  String get expired => 'Imithe thar am';

  @override
  String get expiring_soon => 'Ag druidim le teip';

  @override
  String get warranty_expired => 'Tá an barántas imithe in éag';

  @override
  String get warranty_expiring_soon => 'Tá barántas le teacht chun deiridh';

  @override
  String days_remaining(int count) {
    return '$count lá fágtha';
  }

  @override
  String expired_days_ago(int count) {
    return 'Tá sé imithe in éag le $count lá';
  }

  @override
  String get delete_item => 'Scrios earra';

  @override
  String delete_item_confirm(String name) {
    return 'An bhfuil tú cinnte gur mhaith leat \"$name\" a scriosadh?';
  }

  @override
  String get item_deleted => 'Tá an mír scriosta';

  @override
  String get failed_to_delete => 'Teip ar scriosadh';

  @override
  String failed_to_delete_message(String error) {
    return 'Ní féidir an earra a scriosadh: $error';
  }

  @override
  String get date_range_filter => 'Scagaire raonta dáta';

  @override
  String get price_range_filter => 'Scagaire raonta praghsanna';

  @override
  String get my_items => 'Mo chuid earraí';

  @override
  String get click_fab_to_add_item =>
      'Cliceáil ar an gcnaipe ag an gúin íochtarach ar dheis chun earraí a chur leis';

  @override
  String get confirm_delete => 'Deimhnigh scrios';

  @override
  String get filter_options => 'Roghanna scagtha';

  @override
  String get filter_by_type_category_location =>
      'Scag earraí de réir cineál, catagóir agus suíomh';

  @override
  String categories_count(int count) {
    return '$count catagóir';
  }

  @override
  String get all_categories => 'Gach Catagóir';

  @override
  String get no_category_data => 'Gan sonraí catagóire faoi láthair';

  @override
  String get storage_location => 'Áit stórála';

  @override
  String locations_count(int count) {
    return '$count láithreán';
  }

  @override
  String get all_locations => 'Gach áit';

  @override
  String get no_location_data => 'Níl aon sonraí suímh ar fáil faoi láthair';

  @override
  String get date_range => 'Raon Dáta';

  @override
  String get select_date_range => 'Roghnaigh raon dáta';

  @override
  String get price_range => 'Raon praghsanna';

  @override
  String get unit_price_range => 'Raon praghsanna aonad';

  @override
  String get min_unit_price => 'An praghas íosta aonad';

  @override
  String get max_unit_price => 'An praghas uasta aonair';

  @override
  String get total_price_range => 'Raon iomlán praghais';

  @override
  String get min_total_price => 'An praghas iomlán is ísle';

  @override
  String get max_total_price => 'An praghas uasta iomlán';

  @override
  String get clear_price_filter => 'Glan scagairí praghais';

  @override
  String get place_barcode_in_frame =>
      'Cuir an cód barra isteach sa bhosca chun scanadh a dhéanamh air';

  @override
  String get item_already_exists => 'Tá an táirge ann cheana';

  @override
  String barcode_with_value(String barcode) {
    return 'Cód Barrach: $barcode';
  }

  @override
  String name_with_value(String name) {
    return 'Ainm: $name';
  }

  @override
  String category_with_value(String category) {
    return 'Rangú: $category';
  }

  @override
  String current_quantity_with_value(String quantity, String unit) {
    return 'Líon reatha: $quantity$unit';
  }

  @override
  String get please_select_operation => 'Roghnaigh gníomh:';

  @override
  String get outbound => 'Amharc ar stóras';

  @override
  String get inbound => 'Ionchur stoc';

  @override
  String get inbound_quantity => 'Cainníocht a chur isteach sa stór';

  @override
  String get outbound_quantity => 'Cainníocht as stoc';

  @override
  String get quantity => 'Méid';

  @override
  String get enter_inbound_quantity => 'Iontráil an méid stórála le do thoil';

  @override
  String get enter_outbound_quantity =>
      'Iontráil líon na n-earraí atá ag imeacht as an stoc';

  @override
  String delete_item_confirm_with_irreversible(String name) {
    return 'An bhfuil tú cinnte gur mhaith leat „$name“ a scriosadh? Ní féidir an gníomh seo a chealú.';
  }

  @override
  String get database_reset =>
      'Tá an bunachar sonraí athshocraithe, cruthófar struchtúr na táblaí arís';

  @override
  String database_reset_error(String error) {
    return 'Earráid ag athshocrú an bhunachar sonraí: $error';
  }

  @override
  String mock_data_init_failed(String error) {
    return 'Theipeann ar thosú sonraí insamhlaithe: $error';
  }

  @override
  String get solution_steps => 'Réiteach:';

  @override
  String get solution_step_1 => '1. Díshuiteáil an aip agus athshuiteáil é';

  @override
  String get solution_step_2 => '2. Nó soiléir sonraí an iarratais';

  @override
  String get solution_step_3 =>
      '3. Nó b’fhéidir rith arís tar éis resetDatabaseOnStart a shocrú go fíor';

  @override
  String notification_service_init_failed(String error) {
    return 'Theipeann ar thosú seirbhíse meabhrúcháin: $error';
  }

  @override
  String check_calendar_account_failed(String error) {
    return 'Theip ar sheiceáil an chuntais féilire: $error';
  }

  @override
  String create_calendar_failed(String error) {
    return 'Theipeann ar chruthú an fhéilire: $error';
  }

  @override
  String add_calendar_event_failed(String error) {
    return 'Theip ar chur imeacht féilire leis: $error';
  }

  @override
  String delete_calendar_event_failed(String error) {
    return 'Theip ar scrios an eachtra féilire: $error';
  }

  @override
  String set_permission_message_failed(String error) {
    return 'Theip ar theachtaireacht meabhrúcháin cead a shocrú: $error';
  }

  @override
  String mock_data_init_success(int count) {
    return 'Tá $count sonraí samhlacha curtha ar bun go rathúil';
  }

  @override
  String database_has_data(int count) {
    return 'Tá $count taifid sa bhunachar sonraí cheana féin, rith thar thosaíocht sonraí samhlacha';
  }

  @override
  String get database_structure_mismatch =>
      'B’fhéidir nach n-aontaíonn struchtúr an bhunachar sonraí, moltar sonraí an fheidhmchláir a ghlanadh nó í a athshuiteáil';

  @override
  String get old_database_deleted =>
      'Tá na comhaid sean-bhunachar sonraí scriosta';

  @override
  String get backup_data_empty => 'Tá na sonraí cúltaca folamh';

  @override
  String get backup_file_not_found => 'Níl comhad cúltaca ann';

  @override
  String file_not_utf8(String error) {
    return 'Ní fhormáid bhailí UTF-8 í códúchán an chomhaid. Déan cinnte go bhfuil an comhad sábháilte le códúchán UTF-8. Mionsonraí an earráide: $error';
  }

  @override
  String file_not_found(String filePath) {
    return 'Níl an comhad ann: $filePath';
  }

  @override
  String file_empty(String filePath) {
    return 'Tá an comhad folamh: $filePath';
  }

  @override
  String get file_content_empty =>
      'Tar éis d’ábhar an chomhaid a dhíchódaigh, tá sé folamh; b’fhéidir nach bhfuil an chódaíocht ag teacht';

  @override
  String field_cannot_be_empty(String fieldName) {
    return '$fieldName ní féidir a bheith folamh';
  }

  @override
  String field_min_length(String fieldName, int minLength) {
    return 'Ní féidir le fad $fieldName a bheith níos giorra ná $minLength carachtar';
  }

  @override
  String field_max_length(String fieldName, int maxLength) {
    return '$fieldName ní féidir a fhad a bheith níos mó ná $maxLength carachtar';
  }

  @override
  String field_invalid_email(String fieldName) {
    return 'Iontráil seoladh $fieldName bailí le do thoil';
  }

  @override
  String field_invalid_number(String fieldName, String numberType) {
    return '$fieldName caithfidh a bheith $numberType';
  }

  @override
  String field_min_value(String fieldName, double min) {
    return '$fieldName ní féidir a bheith níos lú ná $min';
  }

  @override
  String field_max_value(String fieldName, double max) {
    return '$fieldName ní féidir a bheith níos mó ná $max';
  }

  @override
  String field_positive_integer(String fieldName) {
    return '$fieldName caithfidh a bheith ina shlí iomlán dearfach';
  }

  @override
  String field_greater_than_zero(String fieldName) {
    return '$fieldName caithfidh a bheith níos mó ná 0';
  }

  @override
  String field_positive_number(String fieldName) {
    return '$fieldName caithfidh a bheith ina uimhir dhearfach';
  }

  @override
  String field_invalid_date(String fieldName) {
    return 'Cuir isteach $fieldName bailí le do thoil';
  }

  @override
  String field_date_not_past(String fieldName) {
    return '$fieldName ní féidir a bheith i ndáta atá caite';
  }

  @override
  String field_date_not_before(String fieldName, String minDate) {
    return '$fieldName ní féidir níos luaithe ná $minDate';
  }

  @override
  String field_date_not_after(String fieldName, String maxDate) {
    return '$fieldName ní féidir a bheith níos déanaí ná $maxDate';
  }

  @override
  String field_invalid_value(String fieldName) {
    return 'Cuir isteach $fieldName bailí le do thoil';
  }

  @override
  String password_min_length(String fieldName) {
    return 'Ní mór don fhadtéarmaíocht $fieldName a bheith ar a laghad 8 gcarachtar';
  }

  @override
  String password_uppercase_required(String fieldName) {
    return '$fieldName caithfidh ceann litir chloinne ar a laghad a bheith ann';
  }

  @override
  String password_lowercase_required(String fieldName) {
    return '$fieldName caithfidh ceann litir bheag ar a laghad a bheith ann';
  }

  @override
  String password_digit_required(String fieldName) {
    return '$fieldName caithfidh go bhfuil ar a laghad uimhir amháin ann';
  }

  @override
  String password_special_char_required(String fieldName) {
    return '$fieldName caithfidh a bheith ar a laghad le carachtar speisialta amháin';
  }

  @override
  String get passwords_not_match =>
      'Níl na pasfhocail a chuir tú isteach an dá uair comhoiriúnach';

  @override
  String get item_name_cannot_be_empty =>
      'Ní féidir ainm an earra a bheith folamh';

  @override
  String name_max_length(int maxLength) {
    return 'Ní fhéadfaidh an t-ainm níos mó ná $maxLength carachtar a bheith ann';
  }

  @override
  String quantity_min(int minQuantity) {
    return 'Ní féidir leis an méid a bheith níos lú ná $minQuantity';
  }

  @override
  String quantity_max(int maxQuantity) {
    return 'Ní féidir leis an méid a bheith níos mó ná $maxQuantity';
  }

  @override
  String get unit_price_not_negative =>
      'Ní féidir leis an praghas aonad a bheith diúltach';

  @override
  String unit_price_max(double maxUnitPrice) {
    return 'Ní féidir leis an bpraghas aonad a bheith níos mó ná $maxUnitPrice';
  }

  @override
  String get set_production_expiry_for_validity =>
      'Le do thoil socraigh dáta táirgthe agus tréimhse bhailíochta chun an tréimhse éifeachtachta a ríomh go huathoibríoch';

  @override
  String get set_purchase_warranty_for_validity =>
      'Le do thoil socraigh an dáta ceannaigh agus an tréimhse bhreise chun an tréimhse baránta a ríomh go huathoibríoch';

  @override
  String get calendar_account_creation_failed =>
      'Ní féidir cuntas féilire a chruthú, seiceáil socruithe féilire an chórais le do thoil';

  @override
  String get test_notification => 'Fógra Tástála';

  @override
  String get test_notification_description =>
      'Seo fógra tástála, chun feidhm cuimhneacháin áitiúil a fhíorú';

  @override
  String get day_unit => 'Neamh';

  @override
  String days_with_value(int days) {
    return '$days lá';
  }

  @override
  String get item_saved => 'Tá na hearraí sábháilte';

  @override
  String get item_updated => 'Tá na míreanna nuashonraithe';

  @override
  String get item_added => 'Tá an mír curtha leis';

  @override
  String get save_success => 'Sábháilte go rathúil';

  @override
  String get update_success => 'Nuashonrú go rathúil';

  @override
  String get delete_success => 'Scriosadh go rathúil';

  @override
  String get save_failed => 'Theip ar shábháil';

  @override
  String get update_failed => 'Theip ar an nuashonrú';

  @override
  String get delete_failed => 'Teip ar scriosadh';

  @override
  String get test_calendar_event => 'Tástáil imeachtaí féilire';

  @override
  String get test_calendar_event_description =>
      'Is eachtra tástála é seo chun feidhmiúlacht an fhéilire a fhíorú';

  @override
  String get in_app => 'laistigh den aip';

  @override
  String get enable_alert => 'Cumasaigh Meabhrúchán Éaga';

  @override
  String get alert_method => 'Modh Meabhrúcháin';

  @override
  String get alert_method_in_app => 'Ar iarratas amháin';

  @override
  String get alert_method_calendar => 'Ar an bhféilire amháin';

  @override
  String get alert_method_both => 'beirt';

  @override
  String get alert_days_before => 'Lá réamhchuirteach';

  @override
  String get use_global_setting => 'Úsáid Socruithe Domhanda';

  @override
  String get barcode_label => 'Bharchód';

  @override
  String get name_label => 'Ainm';

  @override
  String get category_label => 'Rangú';

  @override
  String get current_quantity => 'Líon reatha';

  @override
  String get select_operation => 'Roghnaigh gníomh';

  @override
  String get unit => 'aonad';

  @override
  String get custom_unit => 'Aonaid shaincheaptha';

  @override
  String get enter_unit => 'Cuir isteach aonad';

  @override
  String get custom_location => 'Suíomh saincheaptha';

  @override
  String get enter_storage_location => 'Iontráil an áit stórála';

  @override
  String get scan => 'Scannán cód';

  @override
  String get scan_to_stock => 'Scan chun isteach sa stoc';

  @override
  String get item_categories => 'Catagóiriú earraí';

  @override
  String get storage_locations => 'Áit stórála';

  @override
  String get place_barcode_in_frame_to_scan =>
      'Cuir an cód barra isteach sa bhosca chun scanadh';

  @override
  String get barcode => 'Bharchód';

  @override
  String get enter_barcode_or_scan => 'Iontráil an barrachód nó scanáil an cód';

  @override
  String get basic_information => 'Eolas bunúsach';

  @override
  String get item_name => 'Ainm an mhála';

  @override
  String get enter_item_name => 'Iontráil ainm an mhóta';

  @override
  String get enter_category_name => 'Cuir isteach ainm na catagóire';

  @override
  String item_increased(String itemName, String quantity, String unit) {
    return 'Tá $itemName $quantity$unit curtha leis';
  }

  @override
  String item_decreased(String itemName, String quantity, String unit) {
    return 'Tá laghdaithe $itemName $quantity$unit';
  }

  @override
  String get unsaved_changes => 'Athruithe nach bhfuil sábháilte';

  @override
  String get unsaved_changes_message =>
      'Tá athruithe neamhshábháilte agat, roghnaigh gníomhaíocht:';

  @override
  String get discard => 'Éirí as';

  @override
  String get unit_piece => 'aon';

  @override
  String get unit_item => 'réad';

  @override
  String get unit_box => 'Bosca';

  @override
  String get unit_package => 'mála';

  @override
  String get unit_bottle => 'buidéal';

  @override
  String get unit_carton => 'bosca';

  @override
  String get unit_set => 'sraith';

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
  String get quantity_label => 'Méid';

  @override
  String get unit_price_label => 'Praghas aonair';

  @override
  String get currency_label => 'Airgeadra';

  @override
  String get total_price_label => 'Praghas iomlán:';

  @override
  String get storage_location_label => 'Áit stórála';

  @override
  String get item_properties => 'Airíonna Earraí';

  @override
  String get expiry_date_label => 'Am éifeachtach';

  @override
  String get warranty_expiry_date_label => 'Dáta éaga bharántais';

  @override
  String get production_date_label => 'Dáta déantúsaíochta';

  @override
  String get purchase_date_label => 'Dáta Ceannaigh';

  @override
  String auto_calculated_from(String dateType) {
    return 'Ríomh go huathoibríoch bunaithe ar $dateType agus ar thréimhse stórála';
  }

  @override
  String get auto_calculated => 'Ríomh uathoibríoch';

  @override
  String get images_label => 'Íomhá';

  @override
  String get notes_label => 'Nóta';

  @override
  String get add_notes_hint => 'Cuir faisnéis nótaí leis (roghnach)';

  @override
  String get year_label => 'bliain';

  @override
  String get month_label => 'Gealach';

  @override
  String get day_label => 'Neamh';

  @override
  String selected_count(int count) {
    return 'Tá $count roghnaithe';
  }

  @override
  String get select_all => 'Roghnaigh uile';

  @override
  String get deselect_all => 'Cealaigh uile roghnaithe';

  @override
  String get batch_change_location => 'Athrú massach ar shuíomh stórála';

  @override
  String confirm_delete_selected(int count) {
    return 'An bhfuil tú cinnte go dteastaíonn uait na $count míreanna roghnaithe a scriosadh?';
  }

  @override
  String deleted_count_items(int count) {
    return 'Tá $count earra scriosta';
  }

  @override
  String get no_storage_location_available =>
      'Níl aon áit stórála ar fáil faoi láthair';

  @override
  String get batch_change_location_title => 'Athrú massach ar shuíomh stórála';

  @override
  String moved_count_items_to_location(int count, String location) {
    return 'Tá $count mír áirithe aistrithe go $location';
  }

  @override
  String get operation_type_create => 'Ionchur';

  @override
  String get operation_type_update => 'Eagar';

  @override
  String get operation_type_delete => 'Scrios';

  @override
  String get operation_type_inbound => 'Ionchur sa stór';

  @override
  String get operation_type_outbound => 'Amharc ar stóras';

  @override
  String export_failed_message(String error) {
    return 'Theip ar onnmhairiú: $error';
  }

  @override
  String get clear_logs => 'Folamh na logaí';

  @override
  String get confirm_clear_logs =>
      'An bhfuil tú cinnte go dteastaíonn uait gach loga oibríochta a ghlanadh? Ní féidir an gníomh seo a dhíghníomhachtú.';

  @override
  String get logs_cleared => 'Tá an dialann folamh';

  @override
  String get operation_logs_title => 'Logáil Oibríochtaí';

  @override
  String get export_logs => 'Easpórtáil Logaí';

  @override
  String get clear_logs_tooltip => 'Log a ghlanadh';

  @override
  String get no_operation_logs => 'Níl aon loga oibríochta ann faoi láthair';

  @override
  String get log_item_label => 'Mír:';

  @override
  String get log_category_label => 'Catagóir:';

  @override
  String get log_type_label => 'Cineál:';

  @override
  String get log_quantity_label => 'Cainníocht:';

  @override
  String get log_unit_price_label => 'Praghas in aghaidh an aonaid:';

  @override
  String get log_total_price_label => 'Praghas iomlán:';

  @override
  String get log_expiry_date_label => 'Dáta éaga:';

  @override
  String get log_warranty_date_label => 'Dáta baránta:';

  @override
  String get log_purchase_date_label => 'Dáta ceannaigh:';

  @override
  String get log_production_date_label => 'Dáta táirgthe:';

  @override
  String get log_shelf_life_label => 'Dáta bailíochta:';

  @override
  String get log_storage_location_label => 'Áit stórála:';

  @override
  String get log_barcode_label => 'Bircód:';

  @override
  String get log_notes_label => 'Nóta:';

  @override
  String get log_alert_label => 'Rabhadh réamhchúraim';

  @override
  String get log_alert_days_label => 'Lá rabhadh:';

  @override
  String get log_quantity_change_label => 'Athrú i méid:';

  @override
  String get log_field_changes_label => 'Réimse a chur in eagar:';

  @override
  String get log_not_set => 'Níor socraíodh';

  @override
  String get log_empty => 'Folamh';

  @override
  String get log_alert_enabled => 'Oscail';

  @override
  String get log_alert_disabled => 'Dún';

  @override
  String get operation_logs_menu => 'Logáil Oibríochtaí';

  @override
  String get operation_logs_description =>
      'Féach agus Aisghabh na Taifid Oibríochta';

  @override
  String operation_failed_message(String error) {
    return 'Theip ar an oibriú: $error';
  }

  @override
  String get no_date => 'Gan Dáta';

  @override
  String get shelf_life_months_suffix => 'míonna';

  @override
  String get shelf_life_days_suffix => 'Neamh';

  @override
  String get alert_days_suffix => 'Neamh';

  @override
  String get unknown => 'Neamhchinnte';

  @override
  String get developer_name => 'Léó';

  @override
  String get log_operation_date_label => 'Dáta Oibríochta:';

  @override
  String get uncategorized => 'Neamh-chatagóirithe';

  @override
  String get no_location => 'Gan áit';

  @override
  String get item_category_cannot_be_empty =>
      'Ní féidir le catagóir earra a bheith folamh';

  @override
  String get storage_location_cannot_be_empty =>
      'Ní féidir suíomh stórála a bheith folamh';

  @override
  String get created_at_asc => 'Ordú ama a chur leis de réir ardaithe';

  @override
  String get created_at_desc => 'Ordú meán ama anuas';
}
