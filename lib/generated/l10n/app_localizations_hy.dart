// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Armenian (`hy`).
class AppLocalizationsHy extends AppLocalizations {
  AppLocalizationsHy([String locale = 'hy']) : super(locale);

  @override
  String get app_name => 'պահելու փոքր տարածք';

  @override
  String get cancel => 'Չեղարկել';

  @override
  String get confirm => 'Հաստատել';

  @override
  String get save => 'Պահպանել';

  @override
  String get delete => 'Ջնջել';

  @override
  String get edit => 'Խմբագրել';

  @override
  String get add => 'ավելացնել';

  @override
  String get edit_item => 'Խմբագրել առարկան';

  @override
  String get add_item => 'Ավելացնել տարր';

  @override
  String get search => 'Որոնել';

  @override
  String get settings => 'Կարգավորումներ';

  @override
  String get language_settings => 'Լեզվի կարգավորում';

  @override
  String get language_settings_description =>
      'Սահմանել հավելվածի ցուցադրման լեզուն';

  @override
  String get system_default => 'համակարգի լռելյայն';

  @override
  String get use_system_language => 'Օգտագործել համակարգի լեզուն';

  @override
  String get language_change_hint =>
      'Լեզվի փոփոխությունը ուժի մեջ կմտնի հավելվածը նորից սկսելուց հետո';

  @override
  String get back => 'Վերադառնալ';

  @override
  String get next => 'التالي քայլը';

  @override
  String get done => 'ավարտել';

  @override
  String get loading => 'Բեռնվում է...';

  @override
  String get error => 'խափանում';

  @override
  String get success => 'հաջողություն';

  @override
  String get warning => 'Վտանգ';

  @override
  String get info => 'տեղեկատվություն';

  @override
  String get select_alert_days => 'Ընտրել հիշեցման օրերը';

  @override
  String get custom => 'Ընդհանուր դասավորություն';

  @override
  String custom_days(int days) {
    return 'Անհատականացված ($days օր)';
  }

  @override
  String current_selection(int days) {
    return 'Ընթացիկ ընտրություն․ $days օր';
  }

  @override
  String alert_days_range(int min, int max) {
    return 'Երկուշաբթի օրերի հիշեցման տիրույթը՝ $min-$max օր';
  }

  @override
  String get enter_days => 'Խնդրում ենք մուտքագրել հիշեցման օրերի քանակը';

  @override
  String get days => 'Օրերի քանակ';

  @override
  String enter_valid_days(int min, int max) {
    return 'Խնդրում ենք ներմուծել $min-$max թվերի միջև համարը';
  }

  @override
  String get alert_settings => 'զգուշացումի կարգավորում';

  @override
  String get calendar_settings => 'Օրավուրի կարգավորումներ';

  @override
  String get calendar_sync => 'Օրավուրի համաժամացում';

  @override
  String get calendar_sync_desc =>
      'Բացելուց հետո կխնդրվի օրացույցի թույլտվությունը';

  @override
  String get add_test_calendar_event =>
      'Ավելացնել թեստային օրացույցի իրադարձություն';

  @override
  String get enable_calendar_sync_first =>
      'Խնդրում ենք նախ ակտիվացնել «Օրացույցի համաժամման» անջատիչը';

  @override
  String get app_alert_settings => 'App ծանուցումների կարգավորումներ';

  @override
  String get local_alerts => 'Համայնքային հիշեցում';

  @override
  String get local_alerts_desc =>
      'Մակարդակը բացվելուց հետո ստացեք հավելվածում ժամկետանց զգուշացումներ';

  @override
  String get send_test_notification => 'Ուղարկել փորձարկման ծանուցում';

  @override
  String get enable_local_alerts_first =>
      'Խնդրում ենք նախ ակտիվացնել «Տեղական հիշեցումների» փոխարկիչը';

  @override
  String get alert_days_settings => 'Նշում՝ օրերի կարգավորում';

  @override
  String get advance_alert_days => 'Նախապես հիշեցնելու օրերի թիվ';

  @override
  String get advance_alert_days_desc =>
      'Սկզբը զանգահարել ընդ թե քանի օր առաջ, որպեսզի հիշեցնի իրերի ժամկետի ավարտի կամ երաշխիքային ժամկետի ավարտի մասին';

  @override
  String get calendar_permission_request =>
      'Օրվա օրացույցի թույլտվության հարցում';

  @override
  String get calendar_permission_desc =>
      'Պետք է մուտքի թույլտվություն տրամադրել օրացույցին՝ իրերի հիշեցումները համաժամանակեցնելու համար։ Թույլատրե՞լ:';

  @override
  String get allow => 'Թույլատրվել';

  @override
  String get calendar_permission_granted =>
      'Օրացույցի թույլտվությունը տրվել է, օրացույցի համաժամացումը նշվում է';

  @override
  String get calendar_permission_denied =>
      'Օրվա աղյուսակի թույլտվությունը մերժվել է, հնարավոր չէ սկսել օրվա աղյուսակի համաժամացումը';

  @override
  String get calendar_permission_permanently_denied =>
      'Այլևս թույլտվություն չի տրվում';

  @override
  String get calendar_permission_permanently_denied_desc =>
      'Օրացույցի իրավունքները մշտապես մերժվել են, խնդրում ենք ձեռքով ակտիվացնել իրավունքները համակարգի կարգավորումներում։';

  @override
  String get go_to_settings => 'գնալ կարգավորումներ';

  @override
  String get calendar_account_failed =>
      'Օրվա օրացույցի թույլտվությունը տրվել է, բայց հնարավոր չէ ստեղծել օրացույցի հաշիվ: Խնդրում ենք ստուգել համակարգի օրացույցի կարգավորումները';

  @override
  String get calendar_account_created =>
      'Օրացույցի թույլտվությունը տրվել է, ստեղծվել է տեղական օրացույցի հաշիվ';

  @override
  String get calendar_account_creating =>
      'Օրացույցի հաշիվը հաջողությամբ ստեղծվեց, բայց համակարգին կարող է անհրաժեշտ լինել որոշ ժամանակ ակտիվանալու համար';

  @override
  String get test_calendar_event_added =>
      'Թեստավորման օրացույցի իրադարձությունը հաջողությամբ ավելացված է';

  @override
  String get test_calendar_event_failed =>
      'Չափման օրացույցը զանգվածում ավելացնելն անհաջող է, խնդրում ենք ստուգել օրացույցի կարգավորումները';

  @override
  String get calendar_permission_required =>
      'Պետք է ունենալ օրացույցի հասանելիություն՝ թեստային միջոցառման ավելացման համար';

  @override
  String get test_notification_sent => 'Թեստային ծանուցումը ուղարկվել է';

  @override
  String test_notification_failed(String error) {
    return 'Թեստային ծանուցումը ուղարկել չի հաջողվել. $error';
  }

  @override
  String get notification_permission_required =>
      'Պահանջվում է ծանուցման թույլտվություն՝ տեղական հիշեցումներ ակտիվացնելու համար';

  @override
  String operation_failed(String error) {
    return 'Չհաջողվեց կատարել գործողությունը՝ $error';
  }

  @override
  String get notification_channel_name => 'Ապրանքի նախազգուշացման ծանուցում';

  @override
  String get notification_channel_description =>
      'Իրերի ժամկետը լրանալը կամ երաշխիքի ավարտը հիշեցում';

  @override
  String get item_category_food => 'տնտեսական ապրանք';

  @override
  String get item_category_daily_necessities => 'Օրվա օգտագործման իրեր';

  @override
  String get item_category_cosmetics => 'դիմահարդարանք';

  @override
  String get item_category_medicine => 'դեղորայք';

  @override
  String get item_category_electronics => 'էլեկտրոնային արտադրանք';

  @override
  String get item_category_furniture => 'տնային գույք';

  @override
  String get item_category_clothing => 'հագուստ';

  @override
  String get item_category_books => 'գրքեր';

  @override
  String get item_category_other => 'Այլ';

  @override
  String get purchase_channel_online_mall => 'Օնլայն խանութ';

  @override
  String get purchase_channel_physical_store => 'Ֆիզիկական խանութ';

  @override
  String get purchase_channel_supermarket => 'սուպերմարկետ';

  @override
  String get purchase_channel_specialty_store => 'Հատուկ խանութ';

  @override
  String get purchase_channel_secondhand_market => 'երկրորդային շուկա';

  @override
  String get purchase_channel_other => 'Այլ';

  @override
  String get default_category => 'Այլ';

  @override
  String get default_purchase_channel => 'Օնլայն խանութ';

  @override
  String get item_category => 'Գործարքի դասակարգում';

  @override
  String get custom_category => 'Հարմարեցված դասակարգում';

  @override
  String get backup_data => 'Գոյագրված տվյալների կրկնօրինակ';

  @override
  String get backup_data_description =>
      'Բոլոր տվյալները (ներառյալ պատկերը) փաթեթավորեք որպես ZIP ֆայլ կրկնօրինակման համար';

  @override
  String get backup_all_data => 'Ապահովագրել բոլոր տվյալները';

  @override
  String get backup_success => 'Հաջողվեց կրկնօրինակել';

  @override
  String backup_failed(String error) {
    return 'Պաշտպանությունը ձախողվեց՝ $error';
  }

  @override
  String get restore_data => 'Վերականգնել տվյալները';

  @override
  String get restore_data_description =>
      'Վերականգնել բոլոր տվյալները ZIP պահուստային ֆայլից';

  @override
  String get export_data => 'արտահանել տվյալները';

  @override
  String get export_data_description =>
      'Անհատականացնել CSV, TXT, SQL ձեւաչափերով';

  @override
  String get import_data => 'Ներմուծել տվյալները';

  @override
  String get import_data_description =>
      'Ներմուծել տվյալներ CSV, TXT, SQL ֆայլերից';

  @override
  String get alert_settings_description =>
      'Օրացույցի հուշումները և հավելվածի հրուցումների կարգավորումները';

  @override
  String get about => 'մասին';

  @override
  String get about_description => 'Դիմումի տեղեկություններն ու տարբերակը';

  @override
  String get select_backup_file_first =>
      'Խնդրում ենք նախ ընտրել պահուստային ֆայլը';

  @override
  String get confirm_restore => 'Հաստատել վերականգնումը';

  @override
  String get confirm_restore_message =>
      'Վերականգնել պատճենը կջրի բոլոր առկա տվյալները և կփոխարինի դրանք պատճենային տվյալներով, այս գործողությունը չես կարող հետ դարձնել: Ցանկանու՞մ եք շարունակել:';

  @override
  String get confirm_again => 'Վերստուգել կրկին';

  @override
  String get confirm_restore_warning =>
      'Դուք համոզված եք, որ ուզում եք մաքրել բոլոր գոյություն ունեցող տվյալները և վերականգնել պահուստը՞ Այս գործողությունը վերականգնելի չէ։';

  @override
  String get confirm_restore_button => 'Վերականգնումը հաստատել';

  @override
  String restore_success(int count) {
    return 'Վերականգնումը հաջողված է, ընդհանուր $count առարկա';
  }

  @override
  String restore_failed(String error) {
    return 'Վերականգնումը ձախողվեց՝ $error';
  }

  @override
  String get select_backup_file => 'Ընտրել պահուստային ֆայլը';

  @override
  String get restore_backup => 'Վերականգնել պահուստավորումը';

  @override
  String selected_file(String filename) {
    return 'Ներբեռնված ֆայլը՝ $filename';
  }

  @override
  String get export_success => 'Տվյալների արտահանումը հաջողվեց';

  @override
  String export_failed(String error) {
    return 'Արտահանումը ձախողվեց՝ $error';
  }

  @override
  String get format_csv => 'CSV';

  @override
  String get format_txt => 'TXT';

  @override
  String get format_sql => 'SQL';

  @override
  String get duplicate_data_handling => 'Կրկնվող տվյալների մշակում';

  @override
  String get duplicate_data_detected =>
      'Մակագրված են կրկնօրինակ տվյալներ, խնդրում ենք ընտրել մշակման ձևը՝';

  @override
  String get skip => 'Ընդդիմանալ';

  @override
  String get overwrite => 'ծածկել';

  @override
  String get skip_all => 'Բոլորը թողնել';

  @override
  String get overwrite_all => 'Ընդհանուր ծածկույթ';

  @override
  String get select_import_format_first =>
      'Խնդրում ենք նախ ընտրել ներմուծման ձևաչափը';

  @override
  String get confirm_import => 'Հաստատել ներմուծումը';

  @override
  String get confirm_import_message =>
      'Ներմուծված տվյալները կփոխարինեն առկա տվյալները, և այս գործողությունը հետ կդարձնել հնարավոր չի լինի: Դուք ցանկանում եք շարունակել?';

  @override
  String import_success(int count) {
    return 'Դետաների ներմուծումը հաջողվեց, ընդհանուր ներմուծվել է $count կետ պարագա';
  }

  @override
  String import_failed(String error) {
    return 'Ներմուծումը ձախողվեց՝ $error';
  }

  @override
  String get select_file => 'Ընտրել ֆայլը';

  @override
  String get no_data => 'Ընդեղ տվյալներ չկան';

  @override
  String get no_data_description =>
      'Ընթացիկ տվյալներ չկան, սեղմեք ստորև գտնվող կոճակը, որպեսզի ավելացնեք առաջին արձանագրությունը։';

  @override
  String get load_failed => 'Ընդեղ բեռնվելը ձախողվեց';

  @override
  String get load_failed_description =>
      'Տվյալների բեռնվելը ձախողվեց, խնդրում ենք ստուգել ցանցի միացումը և կրկնել փորձը';

  @override
  String get retry => 'Վերագնահատել';

  @override
  String get network_connection_failed => 'Ցանցային կապը ձախողվեց';

  @override
  String get network_connection_failed_description =>
      'Խնդրում ենք ստուգել ինտերնետը և կրկին փորձել';

  @override
  String get no_results => 'Արդյունք չի գտնվել';

  @override
  String get no_results_description =>
      'Փորձեք օգտագործել այլ բանալի բառեր որոնելու համար';

  @override
  String get clear_search => 'Մաքրել որոնումը';

  @override
  String get insufficient_permission => 'Արտոնություն չի բավականացնում';

  @override
  String get insufficient_permission_description =>
      'Այս գործառույթի օգտագործման համար անհրաժեշտ են համապատասխան թույլտվություններ';

  @override
  String get request_permission => 'Պահանջել թույլտվություն';

  @override
  String get app_info => 'Ընդհանուր տեղեկատվություն';

  @override
  String get version => 'տարբերակ';

  @override
  String get developer => 'զարգացնող';

  @override
  String get device_info => 'Պահանջվող սարքի տեղեկություններ';

  @override
  String get device_model => 'Պահանջվող սարքի մոդել';

  @override
  String get brand => 'բրենդ';

  @override
  String get device_name => 'Պահանջվող սարք';

  @override
  String get product => 'ապրանք';

  @override
  String get hardware => 'Պահեստամասեր';

  @override
  String get android_version => 'Android տարբերակ';

  @override
  String get sdk_version => 'SDK տարբերակ';

  @override
  String get system_name => 'համակարգի անուն';

  @override
  String get operating_system => 'Օպերացիոն համակարգ';

  @override
  String get system_version => 'համակարգի տարբերակ';

  @override
  String get dart_version => 'Dart տարբերակ';

  @override
  String get device_identifier => 'Գործիքի նույնացում';

  @override
  String get computer_name => 'Համակարգչի անուն';

  @override
  String get build_number => 'Վարկածի համարը';

  @override
  String error_getting_device_info(String error) {
    return 'Չի կարողանում ստանալ սարքի տեղեկությունները՝ $error';
  }

  @override
  String get features => 'Ֆունկցիայի ներկայացում';

  @override
  String get app_description => 'խելացի առարկաների կառավարումային հավելված';

  @override
  String get app_description_detail =>
      'Օգնություն տրամադրել ձեզ կառավարելու ապրանքների ժամկետանցման, երաշխիքային ժամկետների և այլ տեղեկատվություն, ինչպես նաև տրամադրել խելացի հիշեցման ֆունկցիա։';

  @override
  String get consumable => 'ծախսվող նյութեր';

  @override
  String get durable => 'Պահպանվող ապրանք';

  @override
  String get sort => 'տարբերել կարգավորված';

  @override
  String get name_asc => 'Անունի աճման կարգ';

  @override
  String get name_desc => 'Անունի իջեցման կարգ';

  @override
  String get date_asc => 'Ամսաթիվ՝ աճման կարգով';

  @override
  String get date_desc => 'Ամսաթիվ՝ նվազման կարգով';

  @override
  String get price_asc => 'Միավորված գնի աճման կարգով';

  @override
  String get price_desc => 'Միավորված գնի նվազման կարգ';

  @override
  String get quantity_asc => 'Քանակի աճման կարգ';

  @override
  String get quantity_desc => 'Քանակի նվազման կարգ';

  @override
  String get total_price_asc => 'Ընդհանուր արժեքը աճման կարգով';

  @override
  String get total_price_desc => 'Ընդհանուր արժեքը նվազման կարգով';

  @override
  String get clear_all_filters => 'Հանել բոլոր ֆիլտրերը';

  @override
  String get scan_barcode => 'Քոդը սկանավորել պահեստամասային մուտքի համար';

  @override
  String get search_items => 'Որոնել առարկաներ...';

  @override
  String get no_items => 'Առայժմ ապրանք չկա';

  @override
  String get no_items_description =>
      'Սեղմեք ստորև գտնվող կոճակը՝ ավելացնելու համար առաջին ապրանքը';

  @override
  String get expired => 'Ժամկետը լրացել է';

  @override
  String get expiring_soon => 'Միավորված է վաղուց';

  @override
  String get warranty_expired => 'Գаранտիան ավարտվել է';

  @override
  String get warranty_expiring_soon => 'Գarantիան շուտով լրանում է';

  @override
  String days_remaining(int count) {
    return 'Մնացած են $count օր';
  }

  @override
  String expired_days_ago(int count) {
    return 'Ժամկետը լրացած է $count օր';
  }

  @override
  String get delete_item => 'Հեռացնել տարրը';

  @override
  String delete_item_confirm(String name) {
    return 'համոզված արդյոք եք, որ ցանկանում եք ջնջել \"$name\"?';
  }

  @override
  String get item_deleted => 'Նյութը ջնջվել է';

  @override
  String get failed_to_delete => 'Վերացնելը ձախողվեց';

  @override
  String failed_to_delete_message(String error) {
    return 'Չի կարող հեռանալը զանգվածը՝ $error';
  }

  @override
  String get date_range_filter => 'Ամսաթվի միջակայքի筛选';

  @override
  String get price_range_filter => 'Գների միջակայքի ֆիլտրման';

  @override
  String get my_items => 'Իմ իրերը';

  @override
  String get click_fab_to_add_item =>
      'Սեղմեք ներքաղաքային աջ անկյունի կոճակը՝ ապրանք ավելացնելու համար';

  @override
  String get confirm_delete => 'Հաստատել հեռացումը';

  @override
  String get filter_options => 'Ֆիլտրի ընտրանքներ';

  @override
  String get filter_by_type_category_location =>
      'Ըստ տեսակների, դասակարգման և վայրի զտել իրերը';

  @override
  String categories_count(int count) {
    return '$count կատեգորիա';
  }

  @override
  String get all_categories => 'Բոլոր դասակարգերը';

  @override
  String get no_category_data => 'Գոյություն չունեն դասակարգված տվյալներ';

  @override
  String get storage_location => 'Պահեստավորման վայր';

  @override
  String locations_count(int count) {
    return '$count վայրեր';
  }

  @override
  String get all_locations => 'Բոլոր վայրերը';

  @override
  String get no_location_data => 'Գոյություն չունի վայրի տվյալներ';

  @override
  String get date_range => 'Ամսաթիվների միջակայք';

  @override
  String get select_date_range => 'Ընտրել ամսաթիվների միջակայք';

  @override
  String get price_range => 'գնային միջակայք';

  @override
  String get unit_price_range => 'Միավորի գնի տիրույթի';

  @override
  String get min_unit_price => 'ամենացածր միավոր գին';

  @override
  String get max_unit_price => 'ամենաբարձր միավորված գին';

  @override
  String get total_price_range => 'Ընդհանուր գնի տիրույթի';

  @override
  String get min_total_price => 'Նվազագույն ընդհանուր գին';

  @override
  String get max_total_price => 'ամենքի առավելագույն գինը';

  @override
  String get clear_price_filter => 'Մաքրել գների զտումը';

  @override
  String get place_barcode_in_frame =>
      'Դրեք շտրիխկոդը շրջանակի մեջ սկանավորման համար';

  @override
  String get item_already_exists => 'Ապրանքը արդեն գոյություն ունի';

  @override
  String barcode_with_value(String barcode) {
    return 'Բարքոդ՝ $barcode';
  }

  @override
  String name_with_value(String name) {
    return 'Անունը՝ $name';
  }

  @override
  String category_with_value(String category) {
    return 'Կատեգորիա՝ $category';
  }

  @override
  String current_quantity_with_value(String quantity, String unit) {
    return 'Ընթացիկ քանակը՝ $quantity$unit';
  }

  @override
  String get please_select_operation => 'Ընտրեք գործողությունը՝';

  @override
  String get outbound => 'Ընդունում պահեստից';

  @override
  String get inbound => 'Ընդունվել պահեստ';

  @override
  String get inbound_quantity => 'Մուտքի քանակ';

  @override
  String get outbound_quantity => 'Ելքի քանակը';

  @override
  String get quantity => '数量';

  @override
  String get enter_inbound_quantity =>
      'Խնդրում ենք մուտքագրել պահեստային քանակը';

  @override
  String get enter_outbound_quantity =>
      'Խնդրում ենք մուտքագրել դուրս հանման քանակը';

  @override
  String delete_item_confirm_with_irreversible(String name) {
    return 'Համարո՞ւմ եք հեռացնել «$name»: Այս գործողությունը չի կարող հետկանգնվել։';
  }

  @override
  String get database_reset =>
      'Տվյալների բազան վերականգնվել է, կվերականգնվի աղյուսակի կառուցվածքը';

  @override
  String database_reset_error(String error) {
    return 'Չհաջողվեց վերակենդանացնել տվյալների բազան՝ $error';
  }

  @override
  String mock_data_init_failed(String error) {
    return 'Մոդելային տվյալների սկզբնական կազմավորումը ձախողվեց: $error';
  }

  @override
  String get solution_steps => 'լուծում';

  @override
  String get solution_step_1 => '1. Հեռացնել ծրագիրը և նորից տեղադրել';

  @override
  String get solution_step_2 => '2. կամ զրոյացնել հավելվածի տվյալները';

  @override
  String get solution_step_3 =>
      '3. Կարող եք set անել resetDatabaseOnStart որպես true և հետո նորից գործարկել';

  @override
  String notification_service_init_failed(String error) {
    return 'Ծանուցման ծառայության զանգվածային սկզբնականացման անհաջողություն՝ $error';
  }

  @override
  String check_calendar_account_failed(String error) {
    return 'Օգտագործողի օրացույցի հաշվի ստուգման ձախողում՝ $error';
  }

  @override
  String create_calendar_failed(String error) {
    return 'Ամրագրում ամսաթվագիր ձախողվեց՝ $error';
  }

  @override
  String add_calendar_event_failed(String error) {
    return 'Օրացույցի իրադարձությունը ավելացնելն անհաջողվեց՝ $error';
  }

  @override
  String delete_calendar_event_failed(String error) {
    return 'Օրացույցի իրադարձությունը ջնջելը ձախողվեց: $error';
  }

  @override
  String set_permission_message_failed(String error) {
    return 'Սհատվելը զանգվածային մուտքի իրավունքի հաղորդագրության կարգավորումը՝ $error';
  }

  @override
  String mock_data_init_success(int count) {
    return 'Ուժի մեջ է մտցված $count սիմուլյացիոն տվյալները';
  }

  @override
  String database_has_data(int count) {
    return 'Դետաբազայում արդեն կա $count ցուցակ, բաց թողնել նմուշային տվյալների ինկուիբացում';
  }

  @override
  String get database_structure_mismatch =>
      'Սպասվում է, որ տվյալների բազայի կառուցվածքը համապատասխանում չէ, խորհուրդ է տրվում ջնջել հավելվածի տվյալները կամ կրկին տեղադրել';

  @override
  String get old_database_deleted => 'Հին տվյալների բազայի ֆայլը ջնջվել է';

  @override
  String get backup_data_empty => '备份数据为空';

  @override
  String get backup_file_not_found => '备份文件不存在';

  @override
  String file_not_utf8(String error) {
    return 'Ֆայլի կոդավորումը վավեր UTF-8 ձևաչափ չէ: Խնդրում ենք համոզվել, որ ֆայլը պահպանված է UTF-8 կոդավորմամբ: Անհաջողության մանրամասները՝ $error';
  }

  @override
  String file_not_found(String filePath) {
    return 'Ֆայլը գոյություն չունի․ $filePath';
  }

  @override
  String file_empty(String filePath) {
    return 'Ֆայլը դատարկ է՝ $filePath';
  }

  @override
  String get file_content_empty =>
      'Ֆայլի պարունակության դեկոդավորումը դատող է, հնարավոր է, որ կոդավորումը չի համապատասխանում';

  @override
  String field_cannot_be_empty(String fieldName) {
    return '$fieldName չի կարող լինել դատարկ';
  }

  @override
  String field_min_length(String fieldName, int minLength) {
    return '$fieldName երկարությունը չպետք է լինի պակաս $minLength նիշից';
  }

  @override
  String field_max_length(String fieldName, int maxLength) {
    return '$fieldName-ի երկարությունը չի կարող գերազանցել $maxLength նշանները';
  }

  @override
  String field_invalid_email(String fieldName) {
    return 'Խնդրում ենք մուտքագրել վավեր $fieldName հասցե';
  }

  @override
  String field_invalid_number(String fieldName, String numberType) {
    return '$fieldName պետք է լինի $numberType';
  }

  @override
  String field_min_value(String fieldName, double min) {
    return '$fieldName չի կարող փոքրանալ $min-ից';
  }

  @override
  String field_max_value(String fieldName, double max) {
    return '$fieldName չի կարող մեծանալ $max-ից';
  }

  @override
  String field_positive_integer(String fieldName) {
    return '$fieldName պետք է լինի դրական ամբողջ թիվ';
  }

  @override
  String field_greater_than_zero(String fieldName) {
    return '$fieldName պետք է մեծ լինի քան 0';
  }

  @override
  String field_positive_number(String fieldName) {
    return '$fieldName պետք է լինի դրական թիվ';
  }

  @override
  String field_invalid_date(String fieldName) {
    return 'Խնդրում ենք մուտքագրել վավեր $fieldName';
  }

  @override
  String field_date_not_past(String fieldName) {
    return '$fieldName չի կարող լինել անցյալ ամսաթիվ';
  }

  @override
  String field_date_not_before(String fieldName, String minDate) {
    return '$fieldName չի կարող լինել ավելի վաղ քան $minDate';
  }

  @override
  String field_date_not_after(String fieldName, String maxDate) {
    return '$fieldName չի կարող ուշանալ $maxDate-ից';
  }

  @override
  String field_invalid_value(String fieldName) {
    return 'Խնդրում ենք մուտքագրել վավեր $fieldName';
  }

  @override
  String password_min_length(String fieldName) {
    return '$fieldName-ի երկարությունը չի կարող փոքր լինել քան 8 նիշ';
  }

  @override
  String password_uppercase_required(String fieldName) {
    return '$fieldName պետք է պարունակի առնվազն մեկ մեծատառ';
  }

  @override
  String password_lowercase_required(String fieldName) {
    return '$fieldName պետք է պարունակի առնվազն մեկ փոքրատառ';
  }

  @override
  String password_digit_required(String fieldName) {
    return '$fieldNameը պետք է ունենա առնվազն մեկ թիվ';
  }

  @override
  String password_special_char_required(String fieldName) {
    return '$fieldName պետք է պարունակի առնվազն մեկ հատուկ նիշ';
  }

  @override
  String get passwords_not_match =>
      'Երկու անգամ մուտքագրված գաղտնաբառերը համընկնու՞մ չեն';

  @override
  String get item_name_cannot_be_empty => 'Նյութի անունը չի կարող դատարկել';

  @override
  String name_max_length(int maxLength) {
    return 'Անվանումը չի կարող գերազանցել $maxLength նիշը';
  }

  @override
  String quantity_min(int minQuantity) {
    return 'Քանակը չի կարող լինել փոքր քան $minQuantity';
  }

  @override
  String quantity_max(int maxQuantity) {
    return 'Չի կարելի գերազանցել $maxQuantity քանակը';
  }

  @override
  String get unit_price_not_negative => 'Միավոր գինը չի կարող լինել բացասական';

  @override
  String unit_price_max(double maxUnitPrice) {
    return 'Միավորային գինը չի կարող գերազանցել $maxUnitPrice';
  }

  @override
  String get set_production_expiry_for_validity =>
      'Խնդրում ենք սահմանել արտադրության ամսաթիվն ու պահպանման ժամկետը՝ ավտոմատ կերպով հաշվելու համար վավերականությունը';

  @override
  String get set_purchase_warranty_for_validity =>
      'Խնդրում ենք սահմանել գնման ամսաթիվը և պահպանման ժամկետը՝ ավտոմատ հաշվարկելու համար երաշխիքային ժամանակը';

  @override
  String get calendar_account_creation_failed =>
      'Չի հաջողվում ստեղծել օրացույցի հաշիվ, խնդրում ենք ստուգել համակարգի օրացույցի կարգավորումները';

  @override
  String get test_notification => 'Թեստային ծանուցում';

  @override
  String get test_notification_description =>
      'Սա փորձարկման ծանուցագիր է, օգտագործվում է տեղական հիշեցումների գործառույթը ստուգելու համար';

  @override
  String get day_unit => ' երկինք ';

  @override
  String days_with_value(int days) {
    return '$days օր';
  }

  @override
  String get item_saved => 'Նյութերը պահպանվել են';

  @override
  String get item_updated => 'Նյութը թարմացվել է';

  @override
  String get item_added => 'Նյութը ավելացվել է';

  @override
  String get save_success => 'Պահպանվել է հաջողությամբ';

  @override
  String get update_success => 'Թարմացումը հաջողվեց';

  @override
  String get delete_success => 'Ընդեղջում հաջողվեց';

  @override
  String get save_failed => 'Պահպանումը ձախողվեց';

  @override
  String get update_failed => 'Թարմացումը ձախողվեց';

  @override
  String get delete_failed => 'Վերացնելը ձախողվեց';

  @override
  String get test_calendar_event => 'Թեստային օրացույցի իրադարձություն';

  @override
  String get test_calendar_event_description =>
      'Սա թեստային իրադարձություն է՝ օրացույցի ֆունկցիան ստուգելու համար';

  @override
  String get in_app => 'էջում';

  @override
  String get enable_alert => 'Միացնել ժամկետի ավարտի հիշեցումը';

  @override
  String get alert_method => 'հուշման մեթոդ';

  @override
  String get alert_method_in_app => 'Միայն հավելվածում';

  @override
  String get alert_method_calendar => 'Միայն օրացույց';

  @override
  String get alert_method_both => ' երկուսն էլ';

  @override
  String get alert_days_before => 'Նախապես հիշեցնելու օրերի թիվ';

  @override
  String get use_global_setting => 'Օգտագործել գլոբալ կարգավորումները';

  @override
  String get barcode_label => 'Պատվերով կոդ';

  @override
  String get name_label => 'Անուն';

  @override
  String get category_label => 'ԱԿԱՏԵԳՈՐԻԱՑՈՒՄ';

  @override
  String get current_quantity => 'Ընթացիկ քանակը';

  @override
  String get select_operation => 'Ընտրեք գործողությունը';

  @override
  String get unit => 'միավոր';

  @override
  String get custom_unit => 'Հարմարեցված միավոր';

  @override
  String get enter_unit => 'Խնդրում ենք ներմուծել միավոր';

  @override
  String get custom_location => 'Հարմարեցված վայր';

  @override
  String get enter_storage_location =>
      'Խնդրում ենք մուտքագրել պահեստավորման վայրը';

  @override
  String get scan => 'Սքանավորել կոդը';

  @override
  String get scan_to_stock => 'Քոդը սկանավորել պահեստամասային մուտքի համար';

  @override
  String get item_categories => 'Գործարքի դասակարգում';

  @override
  String get storage_locations => 'Պահեստավորման վայր';

  @override
  String get place_barcode_in_frame_to_scan =>
      'Դնել զտակոդը շրջանակի մեջ զանգահարելու համար';

  @override
  String get barcode => 'Պատվերով կոդ';

  @override
  String get enter_barcode_or_scan =>
      'Խնդրում ենք մուտքագրել բարկոդը կամ սկանավորել';

  @override
  String get basic_information => 'Ընդհանուր տեղեկատվություն';

  @override
  String get item_name => 'Ապրանքի անուն';

  @override
  String get enter_item_name => 'Խնդրում ենք մուտքագրել ապրանքի անունը';

  @override
  String get enter_category_name =>
      'Խնդրում ենք ներմուծել դասակարգման անվանումը';

  @override
  String item_increased(String itemName, String quantity, String unit) {
    return 'Ավելացված է $itemName $quantity$unit';
  }

  @override
  String item_decreased(String itemName, String quantity, String unit) {
    return 'Կրճատվել է $itemName $quantity$unit';
  }

  @override
  String get unsaved_changes => 'չպահպանված փոփոխություններ';

  @override
  String get unsaved_changes_message =>
      'Դուք ունեք չպահպանված փոփոխություններ, խնդրում ենք ընտրել գործողությունը՝';

  @override
  String get discard => 'հրաժարվել';

  @override
  String get unit_piece => 'տարբեր';

  @override
  String get unit_item => 'հատ';

  @override
  String get unit_box => 'տուփ';

  @override
  String get unit_package => 'փաթեթ';

  @override
  String get unit_bottle => 'բալոն';

  @override
  String get unit_carton => 'տուփ';

  @override
  String get unit_set => 'տուն';

  @override
  String get unit_kg => 'կգ';

  @override
  String get unit_g => 'g';

  @override
  String get unit_l => 'Լ';

  @override
  String get unit_ml => 'մլ';

  @override
  String get unit_m => 'մ';

  @override
  String get unit_cm => 'սմ';

  @override
  String get quantity_label => 'աքանակ';

  @override
  String get unit_price_label => 'մեկ գին';

  @override
  String get currency_label => 'Արժույթ';

  @override
  String get total_price_label => 'Ընդհանուր գինը՝';

  @override
  String get storage_location_label => 'Պահեստավորման վայր';

  @override
  String get item_properties => 'անվանական հատկություններ';

  @override
  String get expiry_date_label => 'Վավերականության ժամկետ';

  @override
  String get warranty_expiry_date_label => 'Համապատասխանության ժամկետի ավարտ';

  @override
  String get production_date_label => 'Արտադրության ամսաթիվ';

  @override
  String get purchase_date_label => 'գնման ամսաթիվ';

  @override
  String auto_calculated_from(String dateType) {
    return 'Ակտիվը ավտոմատ կերպով հաշվարկվում է հիմնվելով $dateType և ժամկետների վրա';
  }

  @override
  String get auto_calculated => 'Ավտոմատ հաշվարկ';

  @override
  String get images_label => 'Պատկեր';

  @override
  String get notes_label => 'ԱԿՆԱՆՆՈՒԹՅՈՒՆ';

  @override
  String get add_notes_hint => 'Ավելացնել գրառման տեղեկություն (ընըտրովի)';

  @override
  String get year_label => 'տարի';

  @override
  String get month_label => 'ամիս';

  @override
  String get day_label => ' երկինք ';

  @override
  String selected_count(int count) {
    return 'Ընտրվել է $count կետ';
  }

  @override
  String get select_all => 'Ընտրել բոլորը';

  @override
  String get deselect_all => 'Հեռացնել բոլոր ընտրությունները';

  @override
  String get batch_change_location => 'Մեծածավալ բաշխում պահպանման վայրի միջեւ';

  @override
  String confirm_delete_selected(int count) {
    return 'Ուպաստվե՞լն է ընտրած $count ապրանքը ջնջելը։';
  }

  @override
  String deleted_count_items(int count) {
    return 'Ջնջվել է $count ապրանք';
  }

  @override
  String get no_storage_location_available =>
      'Անհասանելի են պահեստավորման վայրեր';

  @override
  String get batch_change_location_title =>
      'Մեծածավալ բաշխում պահեստի վայրերի միջև';

  @override
  String moved_count_items_to_location(int count, String location) {
    return '$count տարրը տեղափոխվել է $location';
  }

  @override
  String get operation_type_create => 'Մուտքագրում';

  @override
  String get operation_type_update => 'Խմբագրել';

  @override
  String get operation_type_delete => 'Ջնջել';

  @override
  String get operation_type_inbound => 'Ընդունվել պահեստ';

  @override
  String get operation_type_outbound => 'Ընդունում պահեստից';

  @override
  String export_failed_message(String error) {
    return 'Արտահանումը ձախողվեց՝ $error';
  }

  @override
  String get clear_logs => 'Մաքրել արձանագրությունները';

  @override
  String get confirm_clear_logs =>
      'համոզված արդյոք եք, որ ցանկանում եք մաքրել բոլոր գործողությունների նշումները՞ Այս գործողությունը հակադարձելի չէ։';

  @override
  String get logs_cleared => 'Նշմարումները մաքրվել են';

  @override
  String get operation_logs_title => 'գործողությունների արձանագրություն';

  @override
  String get export_logs => 'արտահանել արձանագրությունները';

  @override
  String get clear_logs_tooltip => 'Մաքրել արձանագրությունները';

  @override
  String get no_operation_logs => 'Գործողության գրանցամատյան առկա չէ';

  @override
  String get log_item_label => 'Ապրանք:';

  @override
  String get log_category_label => 'Վերնագիր։';

  @override
  String get log_type_label => 'Տեսակ։';

  @override
  String get log_quantity_label => 'Քանակը։';

  @override
  String get log_unit_price_label => 'Միավորի գին՝';

  @override
  String get log_total_price_label => 'Ընդհանուր գինը՝';

  @override
  String get log_expiry_date_label => 'Վավերության ավարտի ամիս';

  @override
  String get log_warranty_date_label => 'Гаранտիայի ամսաթիվը:';

  @override
  String get log_purchase_date_label => 'Գնումի ամսաթիվը՝';

  @override
  String get log_production_date_label => 'արտադրության ամսաթիվը։';

  @override
  String get log_shelf_life_label => 'Պահման ժամկետը՝';

  @override
  String get log_storage_location_label => 'Պահեստավորման վայր։';

  @override
  String get log_barcode_label => 'Բարակ կոդ՝';

  @override
  String get log_notes_label => 'Նշում։';

  @override
  String get log_alert_label => 'Գոյարություն';

  @override
  String get log_alert_days_label => 'Ծանուցման օրեր՝';

  @override
  String get log_quantity_change_label => 'Քանակի փոփոխություն՝';

  @override
  String get log_field_changes_label => 'Փոփոխել դաշտը՝';

  @override
  String get log_not_set => 'Չես սահմանվել';

  @override
  String get log_empty => 'ಖಾಲಿ';

  @override
  String get log_alert_enabled => 'բացել';

  @override
  String get log_alert_disabled => 'Փակել';

  @override
  String get operation_logs_menu => 'գործողությունների արձանագրություն';

  @override
  String get operation_logs_description =>
      'Դիտել և վերականգնել օպերացիաների գրառումները';

  @override
  String operation_failed_message(String error) {
    return 'Չհաջողվեց կատարել գործողությունը: $error';
  }

  @override
  String get no_date => 'Անսպաս ամսաթիվ';

  @override
  String get shelf_life_months_suffix => 'ամիս';

  @override
  String get shelf_life_days_suffix => ' երկինք ';

  @override
  String get alert_days_suffix => ' երկինք ';

  @override
  String get unknown => 'Անհայտ';

  @override
  String get developer_name => 'Լեոն';

  @override
  String get log_operation_date_label => 'Գործողության ամսաթիվը։';

  @override
  String get uncategorized => 'Չկարգավորված';

  @override
  String get no_location => 'Առանց վայրի';

  @override
  String get item_category_cannot_be_empty =>
      'Տարատեսակների դասակարգումը չի կարող դատարկ լինել';

  @override
  String get storage_location_cannot_be_empty =>
      'Պահեստավորման վայրը չի կարող դատարկ լինել';

  @override
  String get created_at_asc => 'Ավելացման ժամանակի աճման կարգով';

  @override
  String get created_at_desc => 'Ավելացված ժամանակը նահանջային կարգով';

  @override
  String get location_management => 'Պահեստի կառավարում';

  @override
  String get private_warehouses => 'Գաղտնի գրադարան';

  @override
  String get public_warehouses => 'հասարակ դասարան';

  @override
  String get is_public_warehouse => 'հասարակ դասարան';

  @override
  String get public_warehouse_desc =>
      'Հանրային գրադարանում չկա ադմինիստրատոր, դուրս կամ ներս բերելու համար պետք է լրացնել գործողության կատարողի անունը';

  @override
  String get manager => 'ԱԿԱՌԱՎԱՐԻ';

  @override
  String get not_set => 'Չես սահմանվել';

  @override
  String get edit_location => 'Խմբագրել գրադարանը';

  @override
  String get location_name => 'Պահոցի անուն';

  @override
  String get manager_name => 'Վարչի անուն';

  @override
  String get enter_manager_name =>
      'Խնդրում ենք ներմուծել ադմինիստրատորի անունը';

  @override
  String get manager_name_required => 'Մենեջերի անունը չի կարող դատարկել';

  @override
  String delete_location_confirm(String name) {
    return 'կուզե՞ք ջնջել գրադարանը «$name»։';
  }

  @override
  String get delete_location_has_items =>
      'Այն գրադարանում դեռ առարկաներ կան, հնարավոր չէ ջնջել';

  @override
  String get default_manager => 'Ընդհանուր ադմինիստրատոր';

  @override
  String get default_manager_desc =>
      'Նոր անձնական պահոց ստեղծելիս զանգվածային մենեջերը';

  @override
  String get enter_default_manager =>
      'Խնդրում ենք մուտքագրել ընտրված ադմինիստրատորի անունը';

  @override
  String get operator_name => 'Գործընթաց կատարողի անունը';

  @override
  String get enter_operator_name => 'Խնդրում ենք մուտքագրել օպերատորի անունը';

  @override
  String get operator_name_required => 'Օպերատորի անունը不能为空';

  @override
  String get no_manager => 'Առանց ադմինիստրատորի';

  @override
  String get log_operator_label => 'Գործողություն կատարող անձը՝';

  @override
  String get outbound_quantity_exceeds_current =>
      'Ելքի պահեստամասերի քանակը չի կարող գերազանցել ընթացիկ պահման քանակը';
}
