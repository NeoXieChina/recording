// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Gujarati (`gu`).
class AppLocalizationsGu extends AppLocalizations {
  AppLocalizationsGu([String locale = 'gu']) : super(locale);

  @override
  String get app_name => 'સંગ્રહિત વસ્તુઓનો વિસ્તૃત વિવેક';

  @override
  String get cancel => 'રદ કરો';

  @override
  String get confirm => 'નક્કી કરવું';

  @override
  String get save => 'સાચવો';

  @override
  String get delete => 'કાઢી નાખો';

  @override
  String get edit => 'સંપાદિત કરો';

  @override
  String get add => 'સમતાવવું';

  @override
  String get edit_item => 'આઇટમ સંપાદિત કરો';

  @override
  String get add_item => 'વસ્તુ ઉમેરો';

  @override
  String get search => 'શોધ';

  @override
  String get settings => 'સેટિંગ';

  @override
  String get language_settings => 'ભાષા સેટિંગ';

  @override
  String get language_settings_description =>
      'એપ્લિકેશન જોવા માટેની ભાષા સેટ કરો';

  @override
  String get system_default => 'સિસ્ટમ ડિફોલ્ટ';

  @override
  String get use_system_language => 'સિસ્ટમ ભાષા ઉપયોગ કરો';

  @override
  String get language_change_hint =>
      'ભાષાની વિલંબિત અસર એપ પુનઃપ્રારંભ પછી લાગુ થશે';

  @override
  String get back => 'પરત જાવ';

  @override
  String get next => 'આગળનું પગલું';

  @override
  String get done => 'પૂર્ણ';

  @override
  String get loading => 'લોડ કરી રહ્યું છે...';

  @override
  String get error => 'ભૂલ';

  @override
  String get success => 'સફળતા';

  @override
  String get warning => 'ચેતવણી';

  @override
  String get info => 'માહિતી';

  @override
  String get select_alert_days => 'સૂચના દિવસો પસંદ કરો';

  @override
  String get custom => 'કસ્ટમાઇઝ';

  @override
  String custom_days(int days) {
    return 'કસ્ટમાઇઝ ($days દિવસ)';
  }

  @override
  String current_selection(int days) {
    return 'વર્તમાન પસંદગી: $days દિવસ';
  }

  @override
  String alert_days_range(int min, int max) {
    return 'જાગરૂકતા દિવસોની શ્રેણી: $min-$max દિવસ';
  }

  @override
  String get enter_days => 'કૃપા કરીને સૂચના દિવસો દાખલ કરો';

  @override
  String get days => 'દિવસોની સંખ્યા';

  @override
  String enter_valid_days(int min, int max) {
    return 'કૃપયા $min-$max વચ્ચેનો નંબર દાખલ કરો';
  }

  @override
  String get alert_settings => 'ચેતવણી સેટિંગ';

  @override
  String get calendar_settings => 'કેલેન્ડર સેટિંગ';

  @override
  String get calendar_sync => 'કેલેન્ડર સમકલન';

  @override
  String get calendar_sync_desc =>
      'ખોલ્યા બાદ કેલેન્ડરના પરવાનગી માટે વિનંતી કરશે';

  @override
  String get add_test_calendar_event => 'ટેસ્ટ કેલેન્ડર ઇવેન્ટ ઉમેરો';

  @override
  String get enable_calendar_sync_first =>
      'કૃપા કરીને પ્રથમ \'કલંડર સમકાલીકરણ\' સ્વિચ ચાલુ કરો';

  @override
  String get app_alert_settings => 'એપ્લિકેશન સૂચના સેટિંગ્સ';

  @override
  String get local_alerts => 'સ્થાનિક યાદગીરી';

  @override
  String get local_alerts_desc =>
      'ચાલુ કરો પછી એપ્લિકેશનમાં સમયావધી પૂર્ણ સૂચનાઓ પ્રાપ્ત કરો';

  @override
  String get send_test_notification => 'ટેસ્ટ સૂચના મોકલો';

  @override
  String get enable_local_alerts_first =>
      'કૃપા કરીને પ્રથમ \'સ્થાનિક સૂચનાઓ\' સ્વીચ ચાલુ કરો';

  @override
  String get alert_days_settings => 'સૂચના દિવસો સેટિંગ';

  @override
  String get advance_alert_days => 'પૂર્વ સૂચિત દિવસો';

  @override
  String get advance_alert_days_desc =>
      'વસ્તુની મિયાદ છેલ્લી તારીખ અથવા વૉરંટીની સમયમર્યાદા પહેલાં કેટલા દિવસોનું સ્મરણ સેટ કરવું';

  @override
  String get calendar_permission_request => 'કૅલેન્ડર પરમીશન અનુરોધ';

  @override
  String get calendar_permission_desc =>
      'આઇટમ રીમાઈન્ડરોને સમકલિત કરવા માટે કૅલેન્ડર પર ઍક્સેસની જરૂર છે. શું મંજૂર કરશો?';

  @override
  String get allow => 'અનુમતિ આપવી';

  @override
  String get calendar_permission_granted =>
      'કૅલેન્ડરનો અધિકાર આપવામાં આવ્યો છે, કૅલેન્ડર სინ્ક્રોનાઇઝેશન ચાલુ છે';

  @override
  String get calendar_permission_denied =>
      'કૅલેન્ડરનો અધિકાર નકારી દેવામાં આવ્યો છે, કૅલેન્ડર સિંગ્ક્રોનાઇઝેશન ચાલુ ન થઇ શકે';

  @override
  String get calendar_permission_permanently_denied =>
      'અધિકાર કાયમ માટે નકારવામાં આવ્યો';

  @override
  String get calendar_permission_permanently_denied_desc =>
      'કલંડરના અધિકારો કાયમી રીતે નકારવામાં આવ્યા છે, કૃપા કરીને સિસ્ટમ સેટિંગ્સમાં જાનીને अधिकार હસ્તે ખોલો.';

  @override
  String get go_to_settings => 'સેટિંગ્સ પર જાઓ';

  @override
  String get calendar_account_failed =>
      'કેલેન્ડરનું અધિકાર આપવામાં આવ્યું છે, પરંતુ કેલેન્ડર એકાઉન્ટ બનાવી શકાયતું નથી. કૃપા કરીને સિસ્ટમ કેલેન્ડર સેટિંગ્સ તપાસો';

  @override
  String get calendar_account_created =>
      'કલેન્ડર પરવાનગી સોંપવામાં આવી છે, સ્થાનિક કલેન્ડર ખાતું બનાવાયું છે';

  @override
  String get calendar_account_creating =>
      'કૅલેન્ડર ખાતું સફળતાપૂર્વક બનાવાયું, પરંતુ સિસ્ટમને અસર થાય તે માટે થોડો સમય લાગે શકે છે';

  @override
  String get test_calendar_event_added =>
      'ટેસ્ટ કેલેન્ડર ઇવેન્ટ સફળતાપૂર્વક ઉમેરાઈ';

  @override
  String get test_calendar_event_failed =>
      'ટેસ્ટ કેલેન્ડર ઇવેન્ટ ઉમેરવામાં નિષ્ફળ રહ્યા, કૃપા કરીને કેલેન્ડર સેટિંગ્સ તપાસો';

  @override
  String get calendar_permission_required =>
      'પરીક્ષણ ઘટનાઓ जोड़વા માટે કૅલેન્ડર સત્તા જોઈએ';

  @override
  String get test_notification_sent => 'ટેસ્ટ સૂચના મોકલવામાં આવી છે';

  @override
  String test_notification_failed(String error) {
    return 'ટેસ્ટ સૂચના મોકલવામાં નિષ્ફળ: $error';
  }

  @override
  String get notification_permission_required =>
      'સ્થાનિક યાદી સક્રિય કરવા માટે સૂચના અનુમતિની જરૂર છે';

  @override
  String operation_failed(String error) {
    return 'ઓપરેશન વિફળ: $error';
  }

  @override
  String get notification_channel_name => 'વસ્તુ ચેતવણી સૂચના';

  @override
  String get notification_channel_description =>
      'વસ્તુનો સમય સમાપ્ત થઈ ગયો છે અથવા વોરંટીની મર્યાદા ટ્રિ格ર';

  @override
  String get item_category_food => 'ખાદ્ય સામગ્રી';

  @override
  String get item_category_daily_necessities => 'દૈનિક વપરાશની વસ્તુઓ';

  @override
  String get item_category_cosmetics => 'સુંદરતા ઉત્પાદનો';

  @override
  String get item_category_medicine => 'દવા';

  @override
  String get item_category_electronics => 'ઇલેક્ટ્રોનિક ઉત્પાદનો';

  @override
  String get item_category_furniture => 'ફર્નિચર';

  @override
  String get item_category_clothing => 'કપડા';

  @override
  String get item_category_books => 'કિતાબ';

  @override
  String get item_category_other => 'અન્ય';

  @override
  String get purchase_channel_online_mall => 'ઓનલાઇન સ્ટોર';

  @override
  String get purchase_channel_physical_store => 'ફિઝિકલ સ્ટોર';

  @override
  String get purchase_channel_supermarket => 'સუპરમાર્કેટ';

  @override
  String get purchase_channel_specialty_store => 'વિશેષ દુકાન';

  @override
  String get purchase_channel_secondhand_market => 'બીજું હાથ માર્કેટ';

  @override
  String get purchase_channel_other => 'અન્ય';

  @override
  String get default_category => 'અન્ય';

  @override
  String get default_purchase_channel => 'ઓનલાઇન સ્ટોર';

  @override
  String get item_category => 'વસ્તુ વર્ગીકરણ';

  @override
  String get custom_category => 'કસ્ટમ કેટેગરી';

  @override
  String get backup_data => 'ડેટાનો બેકઅપ બનાવો';

  @override
  String get backup_data_description =>
      'બધી ડેટા (ચિત્રો સહિત) ને ZIP ફાઈલમાં પેક કરીને બેકઅપ બનાવવું';

  @override
  String get backup_all_data => 'તમામ ડેટા બૅકઅપ કરો';

  @override
  String get backup_success => 'બેકઅપ સફળ';

  @override
  String backup_failed(String error) {
    return 'બેકઅપ નિષ્ફળ: $error';
  }

  @override
  String get restore_data => 'ડેટા પુનઃપ્રાપ્ત કરો';

  @override
  String get restore_data_description =>
      'ZIP બૅકઅપ ફાઇલમાંથી તમામ ડેટા પુનઃપ્રાપ્ત કરો';

  @override
  String get export_data => 'ડેટા નિકાસ કરો';

  @override
  String get export_data_description => 'CSV, TXT, SQL ફોર્મેટમાં નિકાસ કરો';

  @override
  String get import_data => 'ડેટા આયાત કરો';

  @override
  String get import_data_description =>
      'CSV, TXT, SQL ફાઈલોમાંથી ડેટા આયાત કરો';

  @override
  String get alert_settings_description =>
      'કૅલેન્ડર યાદ આપી અને એપ્લિકેશન પુશ સૂચના સેટિંગ્સ';

  @override
  String get about => 'સંદર્ભે';

  @override
  String get about_description => 'એપ્લિકેશન માહિતી અને সংস্কરણ';

  @override
  String get select_backup_file_first => 'કૃપા કરીને પહેલા બેકઅપ ફાઈલ પસંદ કરો';

  @override
  String get confirm_restore => 'પુનઃસ્થાપનની પુષ્ટિ કરો';

  @override
  String get confirm_restore_message =>
      'બેકઅપ પુનઃસ્થాపિત કરવાથી તમામ વર્તમાન ડેટા સાફ થઈ જવાશે અને બેકઅપ ડેટાથી બદલાશે, આ ક્રિયા રદ કરી શકાતી નથી. શું તમે ચાલુ રાખવા માંગો છો?';

  @override
  String get confirm_again => 'ફરીથી પુષ્ટિ કરો';

  @override
  String get confirm_restore_warning =>
      'શું તમારે બધા વર્તમાન માહિતી સાફ કરીને બેકઅપ પુનઃસ્થાપિત કરવું છે؟ આ ક્રિયા પુનઃપ્રાપ્ત કરી શકાતી નથી!';

  @override
  String get confirm_restore_button => 'પુનઃસ્થાપિત કરવા નિશ્ચિત કરો';

  @override
  String restore_success(int count) {
    return 'પુનઃપ્રાપ્ત કરવામાં સફળ, કુલ $count વસ્તુઓ';
  }

  @override
  String restore_failed(String error) {
    return 'પુનઃપ્રાપ્તિ નિષ્ફળ: $error';
  }

  @override
  String get select_backup_file => 'બેકઅપ ફાઇલ પસંદ કરો';

  @override
  String get restore_backup => 'બેકઅપ પુનઃસ્થાપિત કરો';

  @override
  String selected_file(String filename) {
    return 'ફાઇલ પસંદ થઈ ગઈ છે: $filename';
  }

  @override
  String get export_success => 'ડેટા સફળતાપૂર્વક નિકાસ થયો';

  @override
  String export_failed(String error) {
    return 'નિર્યાત નિષ્ફળ: $error';
  }

  @override
  String get format_csv => 'સીએસવી';

  @override
  String get format_txt => 'TXT';

  @override
  String get format_sql => 'એસક્યુએલ';

  @override
  String get duplicate_data_handling => 'ડુપ્લિકેટ ડેટા પ્રોસેસિંગ';

  @override
  String get duplicate_data_detected =>
      'ડુપ્લિકેટ ડેટા મળી, કૃપા કરીને પ્રક્રિયા કરવાની રીત પસંદ કરો:';

  @override
  String get skip => 'કૂદવો';

  @override
  String get overwrite => 'આવરી નાખવું';

  @override
  String get skip_all => 'બધું છોડો';

  @override
  String get overwrite_all => 'કુલ આવરણ';

  @override
  String get select_import_format_first =>
      'મહેરબાની કરીને પહેલા આયાત ફોર્મેટ પસંદ કરો';

  @override
  String get confirm_import => 'આયાતને પુષ્ટિ કરો';

  @override
  String get confirm_import_message =>
      'આંકડાઓ આયાત કરવાથી હાલના આંકડાઓ ઉપર લખાઈ જશે, આ કામગીરી રદ્દ થઇ શકતું નથી. શું તમે આગળ વધવા ચોક્કસ છો?';

  @override
  String import_success(int count) {
    return 'ડેટા સફળતાપૂર્વક આયાત કરવામાં આવ્યો, કુલ $count વસ્તુઓ આયાત કરાઈ';
  }

  @override
  String import_failed(String error) {
    return 'આયાત નિષ્ફળ થયું: $error';
  }

  @override
  String get select_file => 'ફાઇલ પસંદ કરો';

  @override
  String get no_data => 'કોઈ ડેટા નથી';

  @override
  String get no_data_description =>
      'વર્તમાનમાં કોઈ ડેટા નથી, પ્રથમ રેકોર્ડ ઉમેરવા માટે નીચેના બટન પર ક્લિક કરો!';

  @override
  String get load_failed => 'લોડ કરવામાં નિષ્ફળ';

  @override
  String get load_failed_description =>
      'ડેટા લોડ થવામાં નિષ્ફળ, કૃપા કરીને નેટવર્ક કનેક્શન તપાસીને ફરી પ્રયાસ કરો';

  @override
  String get retry => 'ફરી પ્રયાસ કરો';

  @override
  String get network_connection_failed => 'નેટવર્ક કનેક્શન નિષ્ફળ થયું';

  @override
  String get network_connection_failed_description =>
      'કૃપા કરીને નેટવર્ક કનેક્શન તપાસો અને પછી ફરી પ્રયાસ કરો';

  @override
  String get no_results => 'પરિણામ نہیں મળ્યો';

  @override
  String get no_results_description =>
      'અન્ય કીવર્ડ્સનો ઉપયોગ કરીને શોધવાનો પ્રયાસ કરો';

  @override
  String get clear_search => 'શોધને સાફ કરો';

  @override
  String get insufficient_permission => 'કૂટણ અધિકારો';

  @override
  String get insufficient_permission_description =>
      'આ કાર્ય જોવા માટે સંબંધિત અનుమતિઓની જરૂર છે';

  @override
  String get request_permission => 'કૃપા કરીને અનુમતિ માંગો';

  @override
  String get app_info => 'એપ્લિકેશન માહિતી';

  @override
  String get version => 'સંસ્કરણ';

  @override
  String get developer => 'ડેવલપર';

  @override
  String get device_info => 'ઉપકરણ માહિતી';

  @override
  String get device_model => 'ઉપકરણ મોડેલ';

  @override
  String get brand => 'બ્રાંડ';

  @override
  String get device_name => 'ઉપકરણનું નામ';

  @override
  String get product => 'ઉત્પાદન';

  @override
  String get hardware => 'હાર્ડવેર';

  @override
  String get android_version => 'એન્ડ્રોઇડ સંસ્કરણ';

  @override
  String get sdk_version => 'SDK સંસ્કરણ';

  @override
  String get system_name => 'સિસ્ટમનું નામ';

  @override
  String get operating_system => 'ઓપરેટિંગ સિસ્ટમ';

  @override
  String get system_version => 'સિસ્ટમ સંસ્કરણ';

  @override
  String get dart_version => 'ડાર્ટ સંસ્કરણ';

  @override
  String get device_identifier => 'ઉપકરણ ઓળખ';

  @override
  String get computer_name => 'કમ્પ્યુટરના નામ';

  @override
  String get build_number => 'સંસ્કરણ નંબર';

  @override
  String error_getting_device_info(String error) {
    return 'ડિવાઇસ માહિતી મેળવવામાં અસમર્થ: $error';
  }

  @override
  String get features => 'ફીચર પરિચય';

  @override
  String get app_description => 'સ્માર્ટ વસ્તુઓનું સંચાલન એપ્લિકેશન';

  @override
  String get app_description_detail =>
      'તમારા માલના મেয়ાદ પુરૂં તારીખો, વોરંટી તારીખો વગેરેની માહિતી વ્યવસ્થિત કરવામાં મદદ કરે છે અને સ્માર્ટ સૂચના ફંકશન આપે છે.';

  @override
  String get consumable => 'ઉપયોગી સામગ્રી';

  @override
  String get durable => 'કૂટણ વપરાશનો સામાન';

  @override
  String get sort => 'ક્રમબદ્ધ કરવું';

  @override
  String get name_asc => 'નામક્રમ પ્રમાણે વધતા ક્રમમાં';

  @override
  String get name_desc => 'નામના ક્રમમાં ઊતરતા';

  @override
  String get date_asc => 'તારીખ પ્રમાણે વધતા ક્રમમાં';

  @override
  String get date_desc => 'તારીખ પ્રમાણે ઉતરતી ક્રમ';

  @override
  String get price_asc => 'એકમ કિંમત મુજબ વધારો';

  @override
  String get price_desc => 'એકમ કિંમત ઉતરતી ક્રમમાં';

  @override
  String get quantity_asc => '数量 વૃદ્ધિ ક્રમ';

  @override
  String get quantity_desc => 'ગણના પ્રમાણે ઉતરતી ક્રમ';

  @override
  String get total_price_asc => 'કુલ કિંમત મુજબ વધારો';

  @override
  String get total_price_desc => 'કુલ કિંમત ઉતરતી ક્રમમાં';

  @override
  String get clear_all_filters => 'બધા ફિલ્ટર્સ સાફ કરો';

  @override
  String get scan_barcode => 'સ્કેન કરી જથ્થો દાખલ કરો';

  @override
  String get search_items => 'સામાન શોધો...';

  @override
  String get no_items => 'કોઈ વસ્તુ ઉપલબ્ધ નથી';

  @override
  String get no_items_description =>
      'નીચેના બટન પર ક્લિક કરીને પ્રથમ વસ્તુ ઉમેરો';

  @override
  String get expired => 'સમય વટાવી ગયો';

  @override
  String get expiring_soon => 'લગભગ સમય પૂર્ણ થતો';

  @override
  String get warranty_expired => 'ગારંટી સમયસમાપ્ત થઈ ગયો છે';

  @override
  String get warranty_expiring_soon => 'વોરંટિ ટૂંક સમયમાં સમાપ્ત થવા والی છે';

  @override
  String days_remaining(int count) {
    return 'બાકી $count દિવસ';
  }

  @override
  String expired_days_ago(int count) {
    return 'સમાપ્ત થઈ ચુક્યું$countદિવસ';
  }

  @override
  String get delete_item => 'વસ્તુ કાઢી નાખો';

  @override
  String delete_item_confirm(String name) {
    return 'શું તમે ખરેખર દૂર કરવા માંગો છો \"$name\"?';
  }

  @override
  String get item_deleted => 'સામાન કાઢી લેવામાં આવ્યું છે';

  @override
  String get failed_to_delete => 'કાઢી નાખવામાં નિષ્ફળ';

  @override
  String failed_to_delete_message(String error) {
    return 'આવુ વસ્તુ કાઢી શકાતું નથી: $error';
  }

  @override
  String get date_range_filter => 'તારીખ શ્રેણી ફિલ્ટર';

  @override
  String get price_range_filter => 'મૂલ્ય શ્રેણી ફિલ્ટર';

  @override
  String get my_items => 'મારા વસ્તુઓ';

  @override
  String get click_fab_to_add_item =>
      'કેસમીનાની ખૂણામાંના બટન પર ક્લિક કરીને વસ્તુઓ ઉમેરો';

  @override
  String get confirm_delete => 'કૂટણ કાઢી નાખવા માટે કન્ફર્મ કરો';

  @override
  String get filter_options => 'ફિલ્ટર વિકલ્પો';

  @override
  String get filter_by_type_category_location =>
      'વસ્તુઓને પ્રકાર, વર્ગ અને સ્થળ અનુસાર સૉર્ટ કરો';

  @override
  String categories_count(int count) {
    return '$count શ્રેણીઓ';
  }

  @override
  String get all_categories => 'તમામ વર્ગો';

  @override
  String get no_category_data => 'કેટેગરી માહિતી ઉપલબ્ધ નથી';

  @override
  String get storage_location => 'સંગ્રહ સ્થળ';

  @override
  String locations_count(int count) {
    return '$count સ્થળો';
  }

  @override
  String get all_locations => 'તમારા બધા સ્થાન';

  @override
  String get no_location_data => 'સ્થાનના ડેટા ઉપલબ્ધ નથી';

  @override
  String get date_range => 'તારીખ શ્રેણી';

  @override
  String get select_date_range => 'તારીખ શ્રેણી પસંદ કરો';

  @override
  String get price_range => 'કિંમત શ્રેણી';

  @override
  String get unit_price_range => 'એકમ કિંમત શ્રેણી';

  @override
  String get min_unit_price => 'ન્યૂનતમ એકમ કિંમત';

  @override
  String get max_unit_price => 'સર્વોચ્ચ એકમ કિંમત';

  @override
  String get total_price_range => 'કુલ કિંમત શ્રેણી';

  @override
  String get min_total_price => 'ન્યૂનતમ કુલ કિંમત';

  @override
  String get max_total_price => 'સર્વોચ્ચ કુલ કિંમત';

  @override
  String get clear_price_filter => 'કિંમત ફિલ્ટર સાફ કરો';

  @override
  String get place_barcode_in_frame => 'બારકોટ બોક્સની અંદર મૂકીને સ્કેન કરો';

  @override
  String get item_already_exists => 'ઉત્પાદન પહેલેથી જ અસ્તિત્વમાં છે';

  @override
  String barcode_with_value(String barcode) {
    return 'બારકોડ: $barcode';
  }

  @override
  String name_with_value(String name) {
    return 'નામ: $name';
  }

  @override
  String category_with_value(String category) {
    return 'વર્ગીકરણ: $category';
  }

  @override
  String current_quantity_with_value(String quantity, String unit) {
    return 'વર્તમાન સંખ્યા: $quantity$unit';
  }

  @override
  String get please_select_operation => 'કૃપા કરીને કાર્ય પસંદ કરો:';

  @override
  String get outbound => 'કારા જવાનું';

  @override
  String get inbound => 'કગારણમાં દાખલ કરવું';

  @override
  String get inbound_quantity => 'ગોડાઉનમાં પ્રવેશ કી સંખ્યા';

  @override
  String get outbound_quantity => 'ગોડાઉનમાંથી બહાર નીકળી ગયેલી સંખ્યા';

  @override
  String get quantity => 'સંખ્યા';

  @override
  String get enter_inbound_quantity =>
      'કૃપા કરીને ભંડારમાં દાખલ થનાર સંખ્યા દાખલ કરો';

  @override
  String get enter_outbound_quantity =>
      'કૃપા કરીને નિકાસ માટેની સંખ્યા દાખલ કરો';

  @override
  String delete_item_confirm_with_irreversible(String name) {
    return 'તમે ખરેખર “$name” ડિલીટ કરવા માંગો છો? આ ક્રિયા રદ કરી શકાતી નથી.';
  }

  @override
  String get database_reset =>
      'ડેટાબેસ રિસેટ થઇ ગયો છે, ટેબલ સ્ટ્રક્ચર ફરી બનાવાશે';

  @override
  String database_reset_error(String error) {
    return 'ડેટાબેઝ પુનઃસેટ કરતી વખતે ખોટ: $error';
  }

  @override
  String mock_data_init_failed(String error) {
    return 'અનુકલિત ડેટા પ્રારંભિકકરણ નિષ્ફળ: $error';
  }

  @override
  String get solution_steps => 'ઉકેલ:';

  @override
  String get solution_step_1 =>
      '1. એપ્લિકેશન અનઇન્સ્ટોલ કરીને ફરીથી ઇન્સ્ટૉલ કરો';

  @override
  String get solution_step_2 => '2. અથવા એપ્લિકેશન ડેટા સાફ કરો';

  @override
  String get solution_step_3 =>
      '3. અથવા resetDatabaseOnStart ને true પર સેટ કરીને ફરી ચલાવો';

  @override
  String notification_service_init_failed(String error) {
    return 'સુચના સેવા આરંભ કરવામાં નિષ્ફળ: $error';
  }

  @override
  String check_calendar_account_failed(String error) {
    return 'કૅલેન્ડર ખાતાની તપાસ નિષ્ફળ: $error';
  }

  @override
  String create_calendar_failed(String error) {
    return 'કૅલેન્ડર બનાવવા નિષ્ફળ: $error';
  }

  @override
  String add_calendar_event_failed(String error) {
    return 'કૅલેન્ડર ઇવેંટ ઉમેરવામાં નિષ્ફળ: $error';
  }

  @override
  String delete_calendar_event_failed(String error) {
    return 'કૅલેન્ડર ઇવેંટ દૂર કરવામાં નિષ્ફળ: $error';
  }

  @override
  String set_permission_message_failed(String error) {
    return 'અધિકાર સંદેશો સુજાવ્યામાં નિષ્ફળ: $error';
  }

  @override
  String mock_data_init_success(int count) {
    return 'સફળતાપૂર્વક $count ટુકડાં નકલી ડેટા પ્રારંભ કરવામાં આવી છે';
  }

  @override
  String database_has_data(int count) {
    return 'ડેટાબેઝમાં પહેલેથી જ $count રેકોર્ડ છે, નકલી ડેટા શરૂઆતને ઉઠાવી દીધાં';
  }

  @override
  String get database_structure_mismatch =>
      'સંભવતઃ ડેટાબેસનું માળખું મેળ ખાતું નથી, એપ્લિકેશન ડેટા સાફ કરવાનો અથવા ફરીથી ઇન્સ્ટોલ કરવાનો સૂચન કરવામાં આવે છે';

  @override
  String get old_database_deleted => 'જૂનો ડેટાબેસ ફાઇલ કાઢી આપી';

  @override
  String get backup_data_empty => 'બેકઅપ ડેટા ખાલી છે';

  @override
  String get backup_file_not_found => 'બેકઅપ ફાઇલ અસ્તિત્વમાં નથી';

  @override
  String file_not_utf8(String error) {
    return 'ફાઇલ કોડિંગ માન્ય UTF-8 ફોર્મેટ નથી. કૃપા કરીને ખાતરી કરો કે ફાઇલ UTF-8 કોડિંગમાં સેવ થઈ છે. ત્રુટી વિગતો: $error';
  }

  @override
  String file_not_found(String filePath) {
    return 'ફાઈલ અસ્તિત્વમાં નથી: $filePath';
  }

  @override
  String file_empty(String filePath) {
    return 'ફાઈલ ખાલી છે: $filePath';
  }

  @override
  String get file_content_empty =>
      'ફાઈલની સામગ્રી ડિકોડ કર્યા પછી ખાલી છે, શક્ય છે કે એન્કોડિંગ મેટ ન થાય';

  @override
  String field_cannot_be_empty(String fieldName) {
    return '$fieldName ખાલી નહીં હોઈ શકે';
  }

  @override
  String field_min_length(String fieldName, int minLength) {
    return '$fieldNameની લંબાઈ ઓછામાં ઓછા $minLength અક્ષરોની હોવી જોઈએ';
  }

  @override
  String field_max_length(String fieldName, int maxLength) {
    return '$fieldNameની લંબાઈ $maxLength અક્ષરોથી વધુ ન હોઈ શકે';
  }

  @override
  String field_invalid_email(String fieldName) {
    return 'કૃપા કરીને માન્ય $fieldName સરનામું દાખલ કરો';
  }

  @override
  String field_invalid_number(String fieldName, String numberType) {
    return '$fieldNameજરૂરી છે કે $numberType હોઈ';
  }

  @override
  String field_min_value(String fieldName, double min) {
    return '$fieldName $min કરતા નાની ન હોઈ શકે';
  }

  @override
  String field_max_value(String fieldName, double max) {
    return '$fieldName $max કરતા મોટું ન હોઈ શકે';
  }

  @override
  String field_positive_integer(String fieldName) {
    return '$fieldName યોગ્ય પૂર્ણાંક હોવો જોઈએ';
  }

  @override
  String field_greater_than_zero(String fieldName) {
    return '$fieldName 0 કરતા મોટું હોવું જ જોઈએ';
  }

  @override
  String field_positive_number(String fieldName) {
    return '$fieldName પોઝિટિવ નંબર હોવો જ જોઈએ';
  }

  @override
  String field_invalid_date(String fieldName) {
    return 'કૃપા કરીને માન્ય $fieldName દાખલ કરો';
  }

  @override
  String field_date_not_past(String fieldName) {
    return '$fieldName ભૂતકાળ તારીખ ન હોઈ શકે';
  }

  @override
  String field_date_not_before(String fieldName, String minDate) {
    return '$fieldName $minDate કરતા વહેલાં ન હોઈ શકે';
  }

  @override
  String field_date_not_after(String fieldName, String maxDate) {
    return '$fieldName $maxDate કરતા મોડું ન હોઈ શકે';
  }

  @override
  String field_invalid_value(String fieldName) {
    return 'કૃપા કરીને માન્ય $fieldName દાખલ કરો';
  }

  @override
  String password_min_length(String fieldName) {
    return '$fieldName ની લંબાઈ 8 અક્ષરોથી ઓછો ન હોઈ શકે';
  }

  @override
  String password_uppercase_required(String fieldName) {
    return '$fieldNameમાં कम از कम એક મોટો અક્ષર હોવું જોઈએ';
  }

  @override
  String password_lowercase_required(String fieldName) {
    return '$fieldNameમાં कम از कम એક નાના અક્ષરનો સમાવેશ હોવો જોઈએ';
  }

  @override
  String password_digit_required(String fieldName) {
    return '$fieldNameમાં ઓછામાં ઓછું એક અંક હોવો જ જોઈએ';
  }

  @override
  String password_special_char_required(String fieldName) {
    return '$fieldName માં ઓછામાં ઓછું એક વિશેષ અક્ષર હોવું જ જોઈએ';
  }

  @override
  String get passwords_not_match => 'બે વાર દાખલ કરેલો પાસવર્ડ મળતો નથી';

  @override
  String get item_name_cannot_be_empty => 'સામાનનું નામ ખાલી ન હોઈ શકે';

  @override
  String name_max_length(int maxLength) {
    return 'નામ $maxLength અક્ષરોથી વધુ ન હોઈ શકે';
  }

  @override
  String quantity_min(int minQuantity) {
    return 'માત્રા $minQuantity કરતાં ઓછી ન હોઈ શકે';
  }

  @override
  String quantity_max(int maxQuantity) {
    return 'સંખ્યા $maxQuantity થી વધુ ન થઈ શકે';
  }

  @override
  String get unit_price_not_negative => 'એકમ કિંમત નકારાત્મક ન ہوسકે';

  @override
  String unit_price_max(double maxUnitPrice) {
    return 'એકમ કિંમત $maxUnitPrice કરતાં વધારે ન હોઈ શકે';
  }

  @override
  String get set_production_expiry_for_validity =>
      'કૃપા કરીને ઉત્પાદન તારીખ અને સંગ્રહ સમય સેટ કરો જેથી વ્યાવસાયિક સમય આપમેળે ગણકાઈ શકે.';

  @override
  String get set_purchase_warranty_for_validity =>
      'કૃપા કરીને ખરીદીની તારીખ અને વૉરંટી સમયગાળો સેટ કરો જેથી વૉરંટી આપમેળે ગણાય';

  @override
  String get calendar_account_creation_failed =>
      'કેલેન્ડર ખાતું બનાવી શકાતું નથી, કૃપા કરીને સિસ્ટમ કેલેન્ડર સેટિંગ્સ તપાસો';

  @override
  String get test_notification => 'કસોટી સૂચના';

  @override
  String get test_notification_description =>
      'આ એક પરીક્ષણ સૂચના છે, સ્થાનિક યાદગીરી ફંક્શનને વેરિફાઇ કરવા માટે';

  @override
  String get day_unit => 'આકાસ';

  @override
  String days_with_value(int days) {
    return '$days દિવસ';
  }

  @override
  String get item_saved => 'સામાન સેવ થઈ ગયો છે';

  @override
  String get item_updated => 'સામાન અપડેટ થઈ ગયો છે';

  @override
  String get item_added => 'સામાન ઉમેરાયું';

  @override
  String get save_success => 'સંચય સફળ';

  @override
  String get update_success => 'અપડેટ સફળ';

  @override
  String get delete_success => 'કૂટણ સફળ';

  @override
  String get save_failed => 'સંચય કરવો નિષ્ફળ થયો';

  @override
  String get update_failed => 'અપડેટ નિષ્ફળ થઈ';

  @override
  String get delete_failed => 'કાઢી નાખવામાં નિષ્ફળ';

  @override
  String get test_calendar_event => 'કેલેન્ડર ઇવેન્ટનું પરીક્ષણ';

  @override
  String get test_calendar_event_description =>
      'આ એક ટેસ્ટ ઇવેન્ટ છે, કેલેન્ડર ફંક્શનને વેરિફાઇ કરવા માટે ઉપયોગ થાય છે';

  @override
  String get in_app => 'એપ્લિકેશનમાં';

  @override
  String get enable_alert => 'સમાપ્ત થવાની સૂચના સક્રિય કરો';

  @override
  String get alert_method => 'સ્મરણ કરવાની રીત';

  @override
  String get alert_method_in_app => 'ફક્ત એપ્લિકેશન અંદર';

  @override
  String get alert_method_calendar => 'ફક્ત કેલેન્ડર';

  @override
  String get alert_method_both => 'બન્ને';

  @override
  String get alert_days_before => 'પૂર્વ સૂચિત દિવસો';

  @override
  String get use_global_setting => 'ગ્લોબલ સેટિંગ્સ વાપરો';

  @override
  String get barcode_label => 'કોડ';

  @override
  String get name_label => 'નામ';

  @override
  String get category_label => 'વર્ગીકરણ';

  @override
  String get current_quantity => 'વર્તમાન સંખ્યા';

  @override
  String get select_operation => 'કૃપા કરીને ક્રિયા પસંદ કરો';

  @override
  String get unit => 'એકક';

  @override
  String get custom_unit => 'કસ્ટમ યુનિટ';

  @override
  String get enter_unit => 'કૃપા કરીને યુનિટ દાખલ કરો';

  @override
  String get custom_location => 'કસ્ટમ સ્થાન';

  @override
  String get enter_storage_location => 'કૃપા કરીને 저장 સ્થાન દાખલ કરો';

  @override
  String get scan => 'સ્કેન કરો';

  @override
  String get scan_to_stock => 'સ્કેન કરી જથ્થો દાખલ કરો';

  @override
  String get item_categories => 'વસ્તુ વર્ગીકરણ';

  @override
  String get storage_locations => 'સંગ્રહ સ્થળ';

  @override
  String get place_barcode_in_frame_to_scan =>
      'બારકોટ બોક્સની અંદર મૂકીને સ્કેન કરો';

  @override
  String get barcode => 'કોડ';

  @override
  String get enter_barcode_or_scan =>
      'કૃપા કરીને બારકોડ દાખલ કરો અથવા સ્કેન કરો';

  @override
  String get basic_information => 'મૂળભૂત માહિતી';

  @override
  String get item_name => 'વસ્તુનું નામ';

  @override
  String get enter_item_name => 'કૃપા કરીને વસ્તુનું નામ દાખલ કરો';

  @override
  String get enter_category_name => 'કૃપા કરીને શ્રેણીનું નામ દાખલ કરો';

  @override
  String item_increased(String itemName, String quantity, String unit) {
    return '$itemName $quantity$unit વધારી દીધા છે';
  }

  @override
  String item_decreased(String itemName, String quantity, String unit) {
    return '$itemName $quantity$unit ઘટાડવામાં આવ્યા';
  }

  @override
  String get unsaved_changes => 'સાચવાયો નથી તે બદલાવ';

  @override
  String get unsaved_changes_message =>
      'તમારી પાસે સંગ્રહ ન થયેલી ફેરફારો છે, કૃપા કરીને કાર્ય પસંદ કરો:';

  @override
  String get discard => 'મતદાન કરવો';

  @override
  String get unit_piece => 'એક';

  @override
  String get unit_item => 'ટુકડો';

  @override
  String get unit_box => 'બકસો';

  @override
  String get unit_package => 'બેગ';

  @override
  String get unit_bottle => 'બોટલ';

  @override
  String get unit_carton => 'બકસો';

  @override
  String get unit_set => 'સેટ';

  @override
  String get unit_kg => 'કિગ્રા';

  @override
  String get unit_g => 'જી';

  @override
  String get unit_l => 'એલ';

  @override
  String get unit_ml => 'મીલિલીટર';

  @override
  String get unit_m => 'm';

  @override
  String get unit_cm => 'સેમી';

  @override
  String get quantity_label => 'સંખ્યા';

  @override
  String get unit_price_label => 'એકમ કિંમત';

  @override
  String get currency_label => 'કરન્સી';

  @override
  String get total_price_label => 'કુલ કિંમત：';

  @override
  String get storage_location_label => 'સંગ્રહ સ્થળ';

  @override
  String get item_properties => 'વસ્તુના લક્ષણો';

  @override
  String get expiry_date_label => 'મતદાન સમયગાળો';

  @override
  String get warranty_expiry_date_label => 'ગારંટી સમાપ્ત થવાની તારીખ';

  @override
  String get production_date_label => 'ઉત્પાદન તારીખ';

  @override
  String get purchase_date_label => 'ક્રીયતારીખ';

  @override
  String auto_calculated_from(String dateType) {
    return 'આધાર $dateType અને મર્યાદિત સમયગાળા અનુસાર આપોઆપ ગણતરી કરવામાં આવે છે';
  }

  @override
  String get auto_calculated => 'સ્વચાલિત ગણતરી';

  @override
  String get images_label => 'ચિત્ર';

  @override
  String get notes_label => 'ટિપ્પણીઓ';

  @override
  String get add_notes_hint => 'નોંધ માહિતી ઉમેરો (વૈકલ્પિક)';

  @override
  String get year_label => 'વર્ષ';

  @override
  String get month_label => 'ચંદ્ર';

  @override
  String get day_label => 'આકાસ';

  @override
  String selected_count(int count) {
    return '$count આઈટમ્સ પસંદ કરી ગયા છે';
  }

  @override
  String get select_all => 'તમારા બધા પસંદ કરો';

  @override
  String get deselect_all => 'બધા પસંદગી રદ કરો';

  @override
  String get batch_change_location => 'થોકમાં સ્ટોરેજ સ્થાન બદલવું';

  @override
  String confirm_delete_selected(int count) {
    return 'ચિહ્નિત $count વસ્તુઓ કાઢી નાખવી છે તે નક્કી કરશો?';
  }

  @override
  String deleted_count_items(int count) {
    return 'ડિલીટ કરેલા $count વસ્તુઓ';
  }

  @override
  String get no_storage_location_available => 'હજુ સ્ટોરેજ સ્થાન ઉપલબ્ધ નથી';

  @override
  String get batch_change_location_title => 'થોકમાં સ્ટોરેજ સ્થાન બદલવું';

  @override
  String moved_count_items_to_location(int count, String location) {
    return '$count વસ્તુઓ $location માં મૂવી ગઈ છે';
  }

  @override
  String get operation_type_create => 'પ્રવેશ કરવો';

  @override
  String get operation_type_update => 'સંપાદિત કરો';

  @override
  String get operation_type_delete => 'કાઢી નાખો';

  @override
  String get operation_type_inbound => 'કૂટણમાં દાખલ કરવું';

  @override
  String get operation_type_outbound => 'કારા જવાનું';

  @override
  String export_failed_message(String error) {
    return 'નિર્યાત નિષ્ફળ: $error';
  }

  @override
  String get clear_logs => 'લૉગ સાફ કરો';

  @override
  String get confirm_clear_logs =>
      'શું તમે ખરેખર બધા ઓપરેશન લોગ્સ ખાલી કરવા માંગો છો? આ ક્રિયા પુનઃપ્રાપ્ય નથી.';

  @override
  String get logs_cleared => 'લૉગ સાફ કરી દીધો છે';

  @override
  String get operation_logs_title => 'ક્રીયા લોગ';

  @override
  String get export_logs => 'લૉગ નિકાસ કરો';

  @override
  String get clear_logs_tooltip => 'લૉગ સાફ કરો';

  @override
  String get no_operation_logs => 'અત્યાર સુધી કોઇ કાર્ય લૉગ નથી';

  @override
  String get log_item_label => 'વસ્તુ:';

  @override
  String get log_category_label => 'કેટેગરી:';

  @override
  String get log_type_label => 'પ્રકાર:';

  @override
  String get log_quantity_label => 'મતારા:';

  @override
  String get log_unit_price_label => 'એકમ કિંમત：';

  @override
  String get log_total_price_label => 'કુલ કિંમત：';

  @override
  String get log_expiry_date_label => 'સમાપ્તિ તારીખ:';

  @override
  String get log_warranty_date_label => 'ગેરંટી તારીખ:';

  @override
  String get log_purchase_date_label => 'ખરીદ તારીખ:';

  @override
  String get log_production_date_label => 'ઉત્પાદન તારીખ:';

  @override
  String get log_shelf_life_label => 'માપદંડ સમય:';

  @override
  String get log_storage_location_label => 'સંગ્રહ સ્થાન:';

  @override
  String get log_barcode_label => 'બારકોડ:';

  @override
  String get log_notes_label => 'કૂટણીઓ:';

  @override
  String get log_alert_label => 'ચેતવણી:';

  @override
  String get log_alert_days_label => 'ચેતવણી દિવસો:';

  @override
  String get log_quantity_change_label => '数量માં ફેરફાર:';

  @override
  String get log_field_changes_label => 'ક્ષેત્ર ફેરફાર કરો:';

  @override
  String get log_not_set => 'સેટ કર્યું નથી';

  @override
  String get log_empty => 'ખાલી';

  @override
  String get log_alert_enabled => 'ચાલૂ કરવું';

  @override
  String get log_alert_disabled => 'બંધ કરો';

  @override
  String get operation_logs_menu => 'ક્રીયા લોગ';

  @override
  String get operation_logs_description =>
      'ઓપરેશન રેકોર્ડ તપાસો અને પુનઃપ્રાપ્ત કરો';

  @override
  String operation_failed_message(String error) {
    return 'ઓપરેશન વિફળ: $error';
  }

  @override
  String get no_date => 'કોઈ તારીખ નથી';

  @override
  String get shelf_life_months_suffix => 'મહિનો';

  @override
  String get shelf_life_days_suffix => 'આકાસ';

  @override
  String get alert_days_suffix => 'આકાસ';

  @override
  String get unknown => 'અજાણ્યું';

  @override
  String get developer_name => 'લિયોએ';

  @override
  String get log_operation_date_label => 'ઓપરેશન તારીખ:';
}
