// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get app_name => 'संग्रह करने के लिए जगह';

  @override
  String get cancel => 'रद्द करें';

  @override
  String get confirm => 'पुष्टि करें';

  @override
  String get save => 'सहेजें';

  @override
  String get delete => 'हटाएँ';

  @override
  String get edit => 'संपादित करें';

  @override
  String get add => 'जोड़ना';

  @override
  String get edit_item => 'सामान संपादित करें';

  @override
  String get add_item => 'आइटम जोड़ें';

  @override
  String get search => 'खोज';

  @override
  String get settings => 'सेटिंग';

  @override
  String get language_settings => 'भाषा सेटिंग';

  @override
  String get language_settings_description => 'ऐप की प्रदर्शनी भाषा सेट करें';

  @override
  String get system_default => 'सिस्टम डिफ़ॉल्ट';

  @override
  String get use_system_language => 'सिस्टम भाषा का उपयोग करें';

  @override
  String get language_change_hint =>
      'भाषा परिवर्तन एप्लिकेशन को पुनः प्रारंभ करने के बाद लागू होगा';

  @override
  String get back => 'वापस';

  @override
  String get next => 'अगला कदम';

  @override
  String get done => 'पूर्ण';

  @override
  String get loading => 'लोड हो रहा है...';

  @override
  String get error => 'त्रुटि';

  @override
  String get success => 'सफलता';

  @override
  String get warning => 'चेतावनी';

  @override
  String get info => 'सूचना';

  @override
  String get select_alert_days => 'स्मरण दिन चुनें';

  @override
  String get custom => 'कस्टम';

  @override
  String custom_days(int days) {
    return 'कस्टम ($days दिन)';
  }

  @override
  String current_selection(int days) {
    return 'वर्तमान चयन: $days दिन';
  }

  @override
  String alert_days_range(int min, int max) {
    return 'स्मरण अवधि सीमा: $min-$max दिन';
  }

  @override
  String get enter_days => 'कृपया स्मरण दिवस दर्ज करें';

  @override
  String get days => 'दिनों की संख्या';

  @override
  String enter_valid_days(int min, int max) {
    return 'कृपया $min-$max के बीच की संख्या दर्ज करें';
  }

  @override
  String get alert_settings => 'अलर्ट सेटिंग्स';

  @override
  String get calendar_settings => 'कैलेंडर सेटिंग';

  @override
  String get calendar_sync => 'कैलेंडर सिंक';

  @override
  String get calendar_sync_desc =>
      'सक्रिय करने के बाद कैलेंडर अनुमति का अनुरोध किया जाएगा';

  @override
  String get add_test_calendar_event => 'टेस्ट कैलेंडर ईवेंट जोड़ें';

  @override
  String get enable_calendar_sync_first =>
      'कृपया पहले \"कैलेंडर सिंक\" स्विच चालू करें';

  @override
  String get app_alert_settings => 'ऐप अलर्ट सेटिंग';

  @override
  String get local_alerts => 'स्थानीय अनुस्मारक';

  @override
  String get local_alerts_desc =>
      'सक्रिय करने पर ऐप के अंदर की समाप्ति की सूचनाएँ प्राप्त करें';

  @override
  String get send_test_notification => 'टेस्ट नोटिफिकेशन भेजें';

  @override
  String get enable_local_alerts_first =>
      'कृपया पहले \"स्थानीय अनुस्मारक\" स्विच चालू करें';

  @override
  String get alert_days_settings => 'स्मरण समय सेट करें';

  @override
  String get advance_alert_days => '提前提醒天数';

  @override
  String get advance_alert_days_desc =>
      'कितने दिन पहले सामान की समाप्ति या वारंटी समाप्ति की सूचना दें';

  @override
  String get calendar_permission_request => 'कैलेंडर अनुमति का अनुरोध';

  @override
  String get calendar_permission_desc =>
      'आइटम रिमाइंडर को सिंक करने के लिए कैलेंडर की अनुमति की आवश्यकता है। क्या अनुमति दें?';

  @override
  String get allow => 'अनुमति देना';

  @override
  String get calendar_permission_granted =>
      'कैलेंडर अनुमति दी गई है, कैलेंडर सिंक चालू है';

  @override
  String get calendar_permission_denied =>
      'कैलेंडर अनुमति अस्वीकार कर दी गई है, कैलेंडर समन्वय नहीं खोल सकते';

  @override
  String get calendar_permission_permanently_denied =>
      'अनुमति स्थायी रूप से अस्वीकार कर दी गई है';

  @override
  String get calendar_permission_permanently_denied_desc =>
      'कैलेंडर अनुमति को स्थायी रूप से अस्वीकार कर दिया गया है, कृपया सिस्टम सेटिंग्स में मैनुअल रूप से अनुमति चालू करें।';

  @override
  String get go_to_settings => 'सेटिंग्स पर जाएँ';

  @override
  String get calendar_account_failed =>
      'कैलेंडर की अनुमति दी गई है, लेकिन कैलेंडर खाता नहीं बनाया जा सका। कृपया सिस्टम कैलेंडर सेटिंग्स की जाँच करें।';

  @override
  String get calendar_account_created =>
      'कैलेंडर अनुमति दी गई है, स्थानीय कैलेंडर खाता बनाया गया है';

  @override
  String get calendar_account_creating =>
      'कैलेंडर खाता सफलतापूर्वक बनाया गया है, लेकिन सिस्टम को प्रभावी होने में कुछ समय लग सकता है';

  @override
  String get test_calendar_event_added => 'कैलेंडर ईवेंट जोड़ने का परीक्षण सफल';

  @override
  String get test_calendar_event_failed =>
      'टेस्ट कैलेंडर इवेंट जोड़ने में विफल, कृपया कैलेंडर सेटिंग्स जांचें';

  @override
  String get calendar_permission_required =>
      'टेस्ट ईवेंट जोड़ने के लिए कैलेंडर अनुमति की आवश्यकता है';

  @override
  String get test_notification_sent => 'परीक्षण通知 भेजा गया';

  @override
  String test_notification_failed(String error) {
    return 'टेस्ट नोटिफिकेशन भेजने में विफल: $error';
  }

  @override
  String get notification_permission_required =>
      'स्थानीय रिमाइंडर सक्षम करने के लिए सूचना अनुमति की आवश्यकता है';

  @override
  String operation_failed(String error) {
    return 'संचालन विफल: $error';
  }

  @override
  String get notification_channel_name => 'सामान चेतावनी सूचना';

  @override
  String get notification_channel_description =>
      'सामान की समाप्ति या वारंटी समाप्ति की提醒';

  @override
  String get item_category_food => 'खाद्य';

  @override
  String get item_category_daily_necessities => 'दैनिक उपयोग की वस्तुएँ';

  @override
  String get item_category_cosmetics => 'सौंदर्य प्रसाधन';

  @override
  String get item_category_medicine => 'दवा';

  @override
  String get item_category_electronics => 'इलेक्ट्रॉनिक उत्पाद';

  @override
  String get item_category_furniture => 'फ़र्नीचर';

  @override
  String get item_category_clothing => 'कपड़े';

  @override
  String get item_category_books => 'पुस्तकें';

  @override
  String get item_category_other => 'अन्य';

  @override
  String get purchase_channel_online_mall => 'ऑनलाइन शॉपिंग मॉल';

  @override
  String get purchase_channel_physical_store => 'भौतिक दुकान';

  @override
  String get purchase_channel_supermarket => 'सुपरमार्केट';

  @override
  String get purchase_channel_specialty_store => 'विशेषीकृत स्टोर';

  @override
  String get purchase_channel_secondhand_market => 'सेकेंड हैंड मार्केट';

  @override
  String get purchase_channel_other => 'अन्य';

  @override
  String get default_category => 'अन्य';

  @override
  String get default_purchase_channel => 'ऑनलाइन शॉपिंग मॉल';

  @override
  String get item_category => 'वस्तु वर्गीकरण';

  @override
  String get custom_category => 'कस्टम श्रेणी';

  @override
  String get backup_data => 'डेटा का बैकअप';

  @override
  String get backup_data_description =>
      'सारी डेटा (चित्रों सहित) को ZIP फ़ाइल में संकलित करके बैकअप बनाएं';

  @override
  String get backup_all_data => 'सभी डेटा का बैकअप लें';

  @override
  String get backup_success => 'बैकअप सफल';

  @override
  String backup_failed(String error) {
    return 'बैकअप विफल: $error';
  }

  @override
  String get restore_data => 'डेटा पुनर्स्थापित करें';

  @override
  String get restore_data_description =>
      'ZIP बैकअप फ़ाइल से सभी डेटा पुनर्स्थापित करें';

  @override
  String get export_data => 'डेटा निर्यात करें';

  @override
  String get export_data_description =>
      'CSV, TXT, SQL फ़ॉर्मेट में निर्यात करें';

  @override
  String get import_data => 'डेटा आयात करें';

  @override
  String get import_data_description =>
      'CSV, TXT, SQL फ़ाइलों से डेटा आयात करें';

  @override
  String get alert_settings_description =>
      'कैलेंडर रिमाइंडर और ऐप पुश रिमाइंडर सेटिंग';

  @override
  String get about => 'के बारे में';

  @override
  String get about_description => 'एप्लिकेशन जानकारी और संस्करण';

  @override
  String get select_backup_file_first => 'कृपया पहले बैकअप फ़ाइल चुनें';

  @override
  String get confirm_restore => 'पुनर्स्थापना की पुष्टि करें';

  @override
  String get confirm_restore_message =>
      'बैकअप पुनर्स्थापित करने से सभी मौजूदा डेटा मिट जाएंगे और बैकअप डेटा से बदल जाएंगे, यह कार्रवाई अपरिवर्तनीय है। क्या आप जारी रखना चाहते हैं?';

  @override
  String get confirm_again => 'फिर से पुष्टि करें';

  @override
  String get confirm_restore_warning =>
      'क्या आप वाकई सभी मौजूदा डेटा को साफ़ करना और बैकअप को पुनर्स्थापित करना चाहते हैं? इस क्रिया को बदला नहीं जा सकेगा!';

  @override
  String get confirm_restore_button => 'पुनर्स्थापना सुनिश्चित करें';

  @override
  String restore_success(int count) {
    return 'पुनर्प्राप्ति सफल, कुल $count आइटम';
  }

  @override
  String restore_failed(String error) {
    return 'पुनर्स्थापना विफल: $error';
  }

  @override
  String get select_backup_file => 'बैकअप फ़ाइल चुनें';

  @override
  String get restore_backup => 'बैकअप पुनर्स्थापित करें';

  @override
  String selected_file(String filename) {
    return 'चयनित फ़ाइल: $filename';
  }

  @override
  String get export_success => 'डेटा निर्यात सफल';

  @override
  String export_failed(String error) {
    return 'निर्यात विफल: $error';
  }

  @override
  String get format_csv => 'सीएसवी';

  @override
  String get format_txt => 'TXT';

  @override
  String get format_sql => 'SQL';

  @override
  String get duplicate_data_handling => 'डुप्लिकेट डेटा प्रोसेसिंग';

  @override
  String get duplicate_data_detected =>
      'समान डेटा पाया गया, कृपया प्रक्रिया का तरीका चुनें:';

  @override
  String get skip => 'छोड़ें';

  @override
  String get overwrite => 'कवरेज';

  @override
  String get skip_all => 'सब कुछ छोड़ दें';

  @override
  String get overwrite_all => 'पूर्ण कवरेज';

  @override
  String get select_import_format_first => 'कृपया पहले आयात प्रारूप चुनें';

  @override
  String get confirm_import => 'आयात पुष्टि करें';

  @override
  String get confirm_import_message =>
      'डेटा आयात करने से मौजूदा डेटा ओवरराइट हो जाएगा, यह क्रिया वापस नहीं की जा सकती। क्या आप जारी रखना चाहते हैं?';

  @override
  String import_success(int count) {
    return 'डेटा सफलतापूर्वक आयात किया गया, कुल $count आइटम आयात किए गए';
  }

  @override
  String import_failed(String error) {
    return 'आयात विफल: $error';
  }

  @override
  String get select_file => 'फ़ाइल चुनें';

  @override
  String get no_data => 'कोई डेटा उपलब्ध नहीं';

  @override
  String get no_data_description =>
      'वर्तमान में कोई डेटा नहीं है, नीचे दिए बटन पर क्लिक करके पहला रिकॉर्ड जोड़ें!';

  @override
  String get load_failed => 'लोड करने में विफल';

  @override
  String get load_failed_description =>
      'डेटा लोड करने में विफल, कृपया नेटवर्क कनेक्शन जांचें और फिर से प्रयास करें';

  @override
  String get retry => 'पुनः प्रयास करें';

  @override
  String get network_connection_failed => 'नेटवर्क कनेक्शन विफल';

  @override
  String get network_connection_failed_description =>
      'कृपया नेटवर्क कनेक्शन जांचने के बाद पुनः प्रयास करें';

  @override
  String get no_results => 'परिणाम नहीं मिला';

  @override
  String get no_results_description =>
      'अन्य कीवर्ड का उपयोग करके खोजने का प्रयास करें';

  @override
  String get clear_search => 'सर्च साफ़ करें';

  @override
  String get insufficient_permission => 'अनुमति अपर्याप्त';

  @override
  String get insufficient_permission_description =>
      'इस फ़ंक्शन का उपयोग करने के लिए संबंधित अनुमति की आवश्यकता है';

  @override
  String get request_permission => 'अनुमति का अनुरोध करें';

  @override
  String get app_info => 'एप्लिकेशन जानकारी';

  @override
  String get version => 'संस्करण';

  @override
  String get developer => 'डेवलपर';

  @override
  String get device_info => 'उपकरण जानकारी';

  @override
  String get device_model => 'उपकरण मॉडल';

  @override
  String get brand => 'ब्रांड';

  @override
  String get device_name => 'उपकरण का नाम';

  @override
  String get product => 'उत्पाद';

  @override
  String get hardware => 'हार्डवेयर';

  @override
  String get android_version => 'एंड्रॉइड संस्करण';

  @override
  String get sdk_version => 'SDK संस्करण';

  @override
  String get system_name => 'सिस्टम का नाम';

  @override
  String get operating_system => 'ऑपरेटिंग सिस्टम';

  @override
  String get system_version => 'सिस्टम संस्करण';

  @override
  String get dart_version => 'Dart संस्करण';

  @override
  String get device_identifier => 'उपकरण पहचान';

  @override
  String get computer_name => 'कंप्यूटर का नाम';

  @override
  String get build_number => 'संस्करण संख्या';

  @override
  String error_getting_device_info(String error) {
    return 'डिवाइस जानकारी प्राप्त नहीं की जा सकी: $error';
  }

  @override
  String get features => 'फ़ंक्शन परिचय';

  @override
  String get app_description => 'स्मार्ट आइटम प्रबंधन एप्लिकेशन';

  @override
  String get app_description_detail =>
      'आपको वस्तुओं की समाप्ति तिथि, वारंटी तिथि आदि जानकारी प्रबंधित करने में मदद करता है, और स्मार्ट नोटिफिकेशन सुविधा प्रदान करता है।';

  @override
  String get consumable => 'उपभोज्य सामग्री';

  @override
  String get durable => 'टिकाऊ वस्तु';

  @override
  String get sort => 'क्रमबद्ध करना';

  @override
  String get name_asc => 'नाम के अनुसार आरोही क्रम';

  @override
  String get name_desc => 'नाम अवरोही क्रम';

  @override
  String get date_asc => 'तारीख़ क्रम वृद्धि';

  @override
  String get date_desc => 'तारीख़ क्रम में घटते हुए';

  @override
  String get price_asc => 'एकल मूल्य क्रम वृद्धि';

  @override
  String get price_desc => 'एकल मूल्य क्रम में घटते हुए';

  @override
  String get quantity_asc => '数量 के आरोही क्रम';

  @override
  String get quantity_desc => 'मात्रा के क्रम में अवरोही';

  @override
  String get total_price_asc => 'कुल कीमत क्रम वृद्धि';

  @override
  String get total_price_desc => 'कुल कीमत क्रम में घटते हुए';

  @override
  String get clear_all_filters => 'सभी फ़िल्टर साफ़ करें';

  @override
  String get scan_barcode => 'स्कैन करके भण्डारण में डालें';

  @override
  String get search_items => 'सामान खोजें...';

  @override
  String get no_items => 'कोई वस्तु नहीं';

  @override
  String get no_items_description =>
      'नीचे दिए गए बटन पर क्लिक करके पहला आइटम जोड़ें';

  @override
  String get expired => 'समाप्त';

  @override
  String get expiring_soon => 'सामयिक समाप्त होने वाला';

  @override
  String get warranty_expired => 'गारंटी समाप्त हो चुकी है';

  @override
  String get warranty_expiring_soon => 'गारंटी जल्द ही समाप्त होने वाली है';

  @override
  String days_remaining(int count) {
    return 'बचे हुए $count दिन';
  }

  @override
  String expired_days_ago(int count) {
    return '$count दिन पहले समाप्त हो गया';
  }

  @override
  String get delete_item => 'सामान हटाएँ';

  @override
  String delete_item_confirm(String name) {
    return 'क्या आप वाकई \"$name\" को हटाना चाहते हैं?';
  }

  @override
  String get item_deleted => 'सामान हटा दिया गया है';

  @override
  String get failed_to_delete => 'हटाना विफल हुआ';

  @override
  String failed_to_delete_message(String error) {
    return 'आइटम हटाया नहीं जा सकता: $error';
  }

  @override
  String get date_range_filter => 'तारीख़ सीमा फ़िल्टर';

  @override
  String get price_range_filter => 'मूल्य सीमा फ़िल्टर';

  @override
  String get my_items => 'मेरा सामान';

  @override
  String get click_fab_to_add_item =>
      'नीचे दाईं ओर वाले बटन पर क्लिक करके आइटम जोड़ें';

  @override
  String get confirm_delete => 'हटाने की पुष्टि करें';

  @override
  String get filter_options => 'फ़िल्टर विकल्प';

  @override
  String get filter_by_type_category_location =>
      'सामान को प्रकार, श्रेणी और स्थान के अनुसार फ़िल्टर करें';

  @override
  String categories_count(int count) {
    return '$count श्रेणियाँ';
  }

  @override
  String get all_categories => 'सभी श्रेणियाँ';

  @override
  String get no_category_data => 'अभी कोई वर्गीकृत डेटा नहीं';

  @override
  String get storage_location => 'भंडारण स्थान';

  @override
  String locations_count(int count) {
    return '$count स्थल';
  }

  @override
  String get all_locations => 'सभी स्थान';

  @override
  String get no_location_data => 'अभी कोई स्थान डेटा नहीं है';

  @override
  String get date_range => 'तारीख़ की सीमा';

  @override
  String get select_date_range => 'तारीख़ सीमा चुनें';

  @override
  String get price_range => 'मूल्य सीमा';

  @override
  String get unit_price_range => 'मूल्य सीमा';

  @override
  String get min_unit_price => 'न्यूनतम इकाई मूल्य';

  @override
  String get max_unit_price => 'सबसे अधिक इकाई मूल्य';

  @override
  String get total_price_range => 'कुल मूल्य सीमा';

  @override
  String get min_total_price => 'न्यूनतम कुल मूल्य';

  @override
  String get max_total_price => 'अधिकतम कुल मूल्य';

  @override
  String get clear_price_filter => 'मूल्य फ़िल्टर हटाएँ';

  @override
  String get place_barcode_in_frame =>
      'बारकोड को स्कैन करने के लिए बॉक्स के अंदर रखें';

  @override
  String get item_already_exists => 'सामान पहले से मौजूद है';

  @override
  String barcode_with_value(String barcode) {
    return 'बारकोड: $barcode';
  }

  @override
  String name_with_value(String name) {
    return 'नाम: $name';
  }

  @override
  String category_with_value(String category) {
    return 'श्रेणी: $category';
  }

  @override
  String current_quantity_with_value(String quantity, String unit) {
    return 'वर्तमान संख्या: $quantity$unit';
  }

  @override
  String get please_select_operation => 'कृपया ऑपरेशन चुनें:';

  @override
  String get outbound => 'वितरण के लिए स्टॉक से निकालना';

  @override
  String get inbound => 'भंडारण में प्रवेश';

  @override
  String get inbound_quantity => 'भंडारण में प्रवेश की मात्रा';

  @override
  String get outbound_quantity => 'वितरण की मात्रा';

  @override
  String get quantity => 'संख्या';

  @override
  String get enter_inbound_quantity =>
      'कृपया भंडारण में डाले जाने वाली मात्रा दर्ज करें';

  @override
  String get enter_outbound_quantity => 'कृपया आउटगोइंग मात्रा दर्ज करें';

  @override
  String delete_item_confirm_with_irreversible(String name) {
    return 'क्या आप वाकई \'$name\' को हटाना चाहते हैं? यह कार्रवाई अपरिवर्तनीय है।';
  }

  @override
  String get database_reset =>
      'डेटाबेस रीसेट कर दिया गया है, तालिका संरचना को फिर से बनाया जाएगा';

  @override
  String database_reset_error(String error) {
    return 'डेटाबेस रीसेट करते समय त्रुटि हुई: $error';
  }

  @override
  String mock_data_init_failed(String error) {
    return 'सिमुलेटेड डेटा प्रारंभिककरण विफल: $error';
  }

  @override
  String get solution_steps => 'समाधान:';

  @override
  String get solution_step_1 =>
      '1. एप्लिकेशन अनइंस्टॉल करके फिर से इंस्टॉल करें';

  @override
  String get solution_step_2 => '2. या एप्लिकेशन डेटा साफ़ करें';

  @override
  String get solution_step_3 =>
      '3. या resetDatabaseOnStart को true पर सेट करने के बाद दोबारा चलाएँ';

  @override
  String notification_service_init_failed(String error) {
    return 'अधिसूचना सेवा प्रारंभ करने में विफल: $error';
  }

  @override
  String check_calendar_account_failed(String error) {
    return 'कैलेंडर खाता जांच विफल: $error';
  }

  @override
  String create_calendar_failed(String error) {
    return 'कैलेंडर बनाने में विफल: $error';
  }

  @override
  String add_calendar_event_failed(String error) {
    return 'कैलेंडर इवेंट जोड़ने में विफल: $error';
  }

  @override
  String delete_calendar_event_failed(String error) {
    return 'कैलेंडर इवेंट हटाने में विफल: $error';
  }

  @override
  String set_permission_message_failed(String error) {
    return 'अनुमति संकेत संदेश सेट करने में विफल: $error';
  }

  @override
  String mock_data_init_success(int count) {
    return '$count सिम्युलेटेड डेटा सफलतापूर्वक इनिशियलाइज़ किया गया';
  }

  @override
  String database_has_data(int count) {
    return 'डेटाबेस में पहले से ही $count डेटा हैं, सिमुलेटेड डेटा इनिशियलाइजेशन को छोड़ दें';
  }

  @override
  String get database_structure_mismatch =>
      'संभवतः डेटाबेस संरचना मेल नहीं खाती है, सुझाव दिया जाता है कि एप्लिकेशन डेटा साफ़ करें या पुनः इंस्टाल करें';

  @override
  String get old_database_deleted => 'पुरानी डेटाबेस फ़ाइलें हटा दी गई हैं';

  @override
  String get backup_data_empty => 'बैकअप डेटा खाली है';

  @override
  String get backup_file_not_found => 'बैकअप फ़ाइल मौजूद नहीं है';

  @override
  String file_not_utf8(String error) {
    return 'फ़ाइल एन्कोडिंग वैध UTF-8 फ़ॉर्मेट नहीं है। कृपया सुनिश्चित करें कि फ़ाइल UTF-8 एन्कोडिंग का उपयोग करके सहेजी गई है। त्रुटि विवरण: $error';
  }

  @override
  String file_not_found(String filePath) {
    return 'फ़ाइल मौजूद नहीं है: $filePath';
  }

  @override
  String file_empty(String filePath) {
    return 'फ़ाइल खाली है: $filePath';
  }

  @override
  String get file_content_empty =>
      'फ़ाइल की सामग्री डिकोड करने के बाद खाली है, संभवतः एन्कोडिंग मेल नहीं खा रही है';

  @override
  String field_cannot_be_empty(String fieldName) {
    return '$fieldName खाली नहीं हो सकता';
  }

  @override
  String field_min_length(String fieldName, int minLength) {
    return '$fieldName की लंबाई $minLength वर्णों से कम नहीं हो सकती';
  }

  @override
  String field_max_length(String fieldName, int maxLength) {
    return '$fieldName की लंबाई $maxLength अक्षरों से अधिक नहीं हो सकती';
  }

  @override
  String field_invalid_email(String fieldName) {
    return 'कृपया वैध $fieldName पता दर्ज करें';
  }

  @override
  String field_invalid_number(String fieldName, String numberType) {
    return '$fieldName होना चाहिए $numberType';
  }

  @override
  String field_min_value(String fieldName, double min) {
    return '$fieldName $min से कम नहीं हो सकता';
  }

  @override
  String field_max_value(String fieldName, double max) {
    return '$fieldName $max से बड़ा नहीं हो सकता';
  }

  @override
  String field_positive_integer(String fieldName) {
    return '$fieldName एक सकारात्मक पूर्णांक होना चाहिए';
  }

  @override
  String field_greater_than_zero(String fieldName) {
    return '$fieldName 0 से बड़ा होना चाहिए';
  }

  @override
  String field_positive_number(String fieldName) {
    return '$fieldName लंबा होना चाहिए';
  }

  @override
  String field_invalid_date(String fieldName) {
    return 'कृपया वैध $fieldName दर्ज करें';
  }

  @override
  String field_date_not_past(String fieldName) {
    return '$fieldName पिछली तारीख नहीं हो सकती';
  }

  @override
  String field_date_not_before(String fieldName, String minDate) {
    return '$fieldName $minDate से पहले नहीं हो सकता';
  }

  @override
  String field_date_not_after(String fieldName, String maxDate) {
    return '$fieldName $maxDate से बाद नहीं हो सकता';
  }

  @override
  String field_invalid_value(String fieldName) {
    return 'कृपया वैध $fieldName दर्ज करें';
  }

  @override
  String password_min_length(String fieldName) {
    return '$fieldName की लंबाई 8 अक्षरों से कम नहीं हो सकती';
  }

  @override
  String password_uppercase_required(String fieldName) {
    return '$fieldName में कम से कम एक बड़े अक्षर का होना अनिवार्य है';
  }

  @override
  String password_lowercase_required(String fieldName) {
    return '$fieldName में कम से कम एक छोटा अक्षर होना चाहिए';
  }

  @override
  String password_digit_required(String fieldName) {
    return '$fieldName में कम से कम एक संख्या शामिल होना आवश्यक है';
  }

  @override
  String password_special_char_required(String fieldName) {
    return '$fieldName में कम से कम एक विशेष वर्ण शामिल होना चाहिए';
  }

  @override
  String get passwords_not_match =>
      'दोनों बार दर्ज किया गया पासवर्ड मेल नहीं खाता';

  @override
  String get item_name_cannot_be_empty => 'सामान का नाम खाली नहीं हो सकता';

  @override
  String name_max_length(int maxLength) {
    return 'नाम $maxLength वर्णों से अधिक नहीं हो सकता';
  }

  @override
  String quantity_min(int minQuantity) {
    return 'संख्या $minQuantity से कम नहीं हो सकती';
  }

  @override
  String quantity_max(int maxQuantity) {
    return 'संख्या $maxQuantity से अधिक नहीं हो सकती';
  }

  @override
  String get unit_price_not_negative => 'इकाई मूल्य ऋणात्मक नहीं हो सकता';

  @override
  String unit_price_max(double maxUnitPrice) {
    return 'एकाई मूल्य $maxUnitPrice से अधिक नहीं हो सकता';
  }

  @override
  String get set_production_expiry_for_validity =>
      'कृपया उत्पादन तिथि और शेल्फ लाइफ सेट करें ताकि वैधता स्वचालित रूप से गणना हो सके';

  @override
  String get set_purchase_warranty_for_validity =>
      'कृपया वारंटी स्वचालित रूप से गणना करने के लिए खरीदारी की तिथि और शेल्फ जीवन सेट करें';

  @override
  String get calendar_account_creation_failed =>
      'कैलेंडर खाता नहीं बना सकता, कृपया सिस्टम कैलेंडर सेटिंग्स जांचें';

  @override
  String get test_notification => 'परीक्षण सूचना';

  @override
  String get test_notification_description =>
      'यह एक परीक्षण सूचना है, स्थानीय अनुस्मारक कार्यक्षमता को सत्यापित करने के लिए';

  @override
  String get day_unit => 'आसमान';

  @override
  String days_with_value(int days) {
    return '$days दिन';
  }

  @override
  String get item_saved => 'सामान सहेजा गया है';

  @override
  String get item_updated => 'सामान अपडेट किया गया है';

  @override
  String get item_added => 'सामान जोड़ दिया गया है';

  @override
  String get save_success => 'सफलतापूर्वक सहेजा गया';

  @override
  String get update_success => 'अपडेट सफल';

  @override
  String get delete_success => 'हटाना सफल';

  @override
  String get save_failed => 'सहेजने में विफल';

  @override
  String get update_failed => 'अपडेट विफल';

  @override
  String get delete_failed => 'हटाना विफल हुआ';

  @override
  String get test_calendar_event => 'कैलेंडर इवेंट का परीक्षण';

  @override
  String get test_calendar_event_description =>
      'यह एक परीक्षण घटना है, कैलेंडर फ़ंक्शन को सत्यापित करने के लिए';

  @override
  String get in_app => 'ऐप के भीतर';

  @override
  String get enable_alert => 'समाप्ति अनुस्मारक सक्षम करें';

  @override
  String get alert_method => 'स्मरण करने का तरीका';

  @override
  String get alert_method_in_app => 'केवल ऐप के अंदर';

  @override
  String get alert_method_calendar => 'केवल कैलेंडर';

  @override
  String get alert_method_both => 'दोनों';

  @override
  String get alert_days_before => '提前提醒天数';

  @override
  String get use_global_setting => 'संपूर्ण सेटिंग का उपयोग करें';

  @override
  String get barcode_label => 'बारकोड';

  @override
  String get name_label => 'नाम';

  @override
  String get category_label => 'वर्गीकरण';

  @override
  String get current_quantity => 'वर्तमान मात्रा';

  @override
  String get select_operation => 'कृपया क्रिया चुनें';

  @override
  String get unit => '单位';

  @override
  String get custom_unit => 'कस्टम यूनिट';

  @override
  String get enter_unit => 'कृपया इकाई दर्ज करें';

  @override
  String get custom_location => 'कस्टम स्थान';

  @override
  String get enter_storage_location => 'कृपया भंडारण स्थान दर्ज करें';

  @override
  String get scan => 'कोड स्कैन करें';

  @override
  String get scan_to_stock => 'स्कैन करके भण्डारण में डालें';

  @override
  String get item_categories => 'वस्तु वर्गीकरण';

  @override
  String get storage_locations => 'भंडारण स्थान';

  @override
  String get place_barcode_in_frame_to_scan =>
      'बारकोड को स्कैन करने के लिए बॉक्स के अंदर रखें';

  @override
  String get barcode => 'बारकोड';

  @override
  String get enter_barcode_or_scan => 'कृपया बारकोड दर्ज करें या स्कैन करें';

  @override
  String get basic_information => 'मूल जानकारी';

  @override
  String get item_name => 'वस्तु का नाम';

  @override
  String get enter_item_name => 'कृपया वस्तु का नाम दर्ज करें';

  @override
  String get enter_category_name => 'कृपया श्रेणी का नाम दर्ज करें';

  @override
  String item_increased(String itemName, String quantity, String unit) {
    return '$itemName $quantity$unit बढ़ा दिया गया है';
  }

  @override
  String item_decreased(String itemName, String quantity, String unit) {
    return '$itemName $quantity$unit कम हो गया है';
  }
}
