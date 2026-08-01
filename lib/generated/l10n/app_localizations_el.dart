// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Modern Greek (`el`).
class AppLocalizationsEl extends AppLocalizations {
  AppLocalizationsEl([String locale = 'el']) : super(locale);

  @override
  String get app_name => 'Αποθήκευση αντικειμένων';

  @override
  String get cancel => 'Ακύρωση';

  @override
  String get confirm => 'Επιβεβαίωση';

  @override
  String get save => 'Αποθήκευση';

  @override
  String get delete => 'Διαγραφή';

  @override
  String get edit => 'Επεξεργασία';

  @override
  String get add => 'Προσθήκη';

  @override
  String get search => 'Αναζήτηση';

  @override
  String get settings => 'Ρυθμίσεις';

  @override
  String get language_settings => 'Ρυθμίσεις γλώσσας';

  @override
  String get language_settings_description =>
      'Ορισμός γλώσσας εμφάνισης εφαρμογής';

  @override
  String get system_default => 'Προεπιλογή συστήματος';

  @override
  String get use_system_language => 'Χρήση της γλώσσας συστήματος';

  @override
  String get language_change_hint =>
      'Η αλλαγή γλώσσας θα τεθεί σε ισχύ μετά την επανεκκίνηση της εφαρμογής';

  @override
  String get back => 'Επιστροφή';

  @override
  String get next => 'Επόμενο';

  @override
  String get done => 'Ολοκλήρωση';

  @override
  String get loading => 'Φόρτωση...';

  @override
  String get error => 'Σφάλμα';

  @override
  String get success => 'Επιτυχία';

  @override
  String get warning => 'Προειδοποίηση';

  @override
  String get info => 'Πληροφορίες';

  @override
  String get select_alert_days => 'Επιλογή ημερών υπενθύμισης';

  @override
  String get custom => 'Προσαρμοσμένο';

  @override
  String custom_days(int days) {
    return 'Προσαρμοσμένο ($days ημέρες)';
  }

  @override
  String current_selection(int days) {
    return 'Τρέχουσα επιλογή: $days ημέρες';
  }

  @override
  String alert_days_range(int min, int max) {
    return 'Εύρος ημερών υπενθύμισης: $min-$max ημέρες';
  }

  @override
  String get enter_days => 'Παρακαλώ εισάγετε τον αριθμό υπενθύμισης';

  @override
  String get days => 'Ημέρες';

  @override
  String enter_valid_days(int min, int max) {
    return 'Παρακαλώ εισαγάγετε έναν αριθμό μεταξύ $min και $max';
  }

  @override
  String get alert_settings => 'Ρύθμιση ειδοποίησης';

  @override
  String get calendar_settings => 'Ρύθμιση ημερολογίου';

  @override
  String get calendar_sync => 'Συγχρονισμός ημερολογίου';

  @override
  String get calendar_sync_desc =>
      'Μετά την ενεργοποίηση θα ζητηθούν δικαιώματα ημερολογίου';

  @override
  String get add_test_calendar_event =>
      'Προσθήκη δοκιμαστικού γεγονότος ημερολογίου';

  @override
  String get enable_calendar_sync_first =>
      'Παρακαλώ ενεργοποιήστε πρώτα το διακόπτη \"Συγχρονισμός ημερολογίου\"';

  @override
  String get app_alert_settings => 'Ρυθμίσεις υπενθύμισης εφαρμογής';

  @override
  String get local_alerts => 'Τοπική υπενθύμιση';

  @override
  String get local_alerts_desc =>
      'Ενεργοποιήστε για να λαμβάνετε υπενθυμίσεις ληγμένων μέσα στην εφαρμογή';

  @override
  String get send_test_notification => 'Αποστολή δοκιμαστικής ειδοποίησης';

  @override
  String get enable_local_alerts_first =>
      'Παρακαλώ ενεργοποιήστε πρώτα τον διακόπτη \"Τοπικές ειδοποιήσεις\"';

  @override
  String get alert_days_settings => 'Ρύθμιση ημερών ειδοποίησης';

  @override
  String get advance_alert_days => 'Ημέρες ειδοποίησης εκ των προτέρων';

  @override
  String get advance_alert_days_desc =>
      'Ορίστε πόσες ημέρες νωρίτερα να σας ειδοποιούμε για τη λήξη αντικειμένων ή της εγγύησης';

  @override
  String get calendar_permission_request => 'Αίτημα άδειας ημερολογίου';

  @override
  String get calendar_permission_desc =>
      'Απαιτείται πρόσβαση στο ημερολόγιο για συγχρονισμό των υπενθυμίσεων αντικειμένων. Επιτρέπεται;';

  @override
  String get allow => 'Επιτρέπεται';

  @override
  String get calendar_permission_granted =>
      'Η πρόσβαση στο ημερολόγιο έχει παραχωρηθεί, ο συγχρονισμός ημερολογίου έχει ενεργοποιηθεί';

  @override
  String get calendar_permission_denied =>
      'Η άδεια ημερολογίου απορρίφθηκε, δεν είναι δυνατός ο συγχρονισμός του ημερολογίου';

  @override
  String get calendar_permission_permanently_denied =>
      'Η άδεια απορρίφθηκε μόνιμα';

  @override
  String get calendar_permission_permanently_denied_desc =>
      'Η άδεια του ημερολογίου έχει απορριφθεί μόνιμα, παρακαλώ ενεργοποιήστε την άδεια χειροκίνητα στις ρυθμίσεις του συστήματος.';

  @override
  String get go_to_settings => 'Μετάβαση στις ρυθμίσεις';

  @override
  String get calendar_account_failed =>
      'Τα δικαιώματα του ημερολογίου έχουν παραχωρηθεί, αλλά δεν είναι δυνατή η δημιουργία λογαριασμού ημερολογίου. Ελέγξτε τις ρυθμίσεις του συστήματος ημερολογίου';

  @override
  String get calendar_account_created =>
      'Τα δικαιώματα του ημερολογίου έχουν παραχωρηθεί, έχει δημιουργηθεί λογαριασμός τοπικού ημερολογίου';

  @override
  String get calendar_account_creating =>
      'Ο λογαριασμός ημερολογίου δημιουργήθηκε με επιτυχία, αλλά το σύστημα μπορεί να χρειαστεί λίγο χρόνο για να ενεργοποιηθεί';

  @override
  String get test_calendar_event_added =>
      'Η δοκιμαστική προσθήκη εκδήλωσης ημερολογίου ήταν επιτυχής';

  @override
  String get test_calendar_event_failed =>
      'Αποτυχία προσθήκης δοκιμαστικού γεγονότος στο ημερολόγιο, ελέγξτε τις ρυθμίσεις του ημερολογίου';

  @override
  String get calendar_permission_required =>
      'Απαιτούνται δικαιώματα ημερολογίου για να προστεθεί δοκιμαστικό γεγονός';

  @override
  String get test_notification_sent => 'Η δοκιμαστική ειδοποίηση εστάλη';

  @override
  String test_notification_failed(String error) {
    return 'Αποτυχία αποστολής δοκιμαστικής ειδοποίησης: $error';
  }

  @override
  String get notification_permission_required =>
      'Απαιτούνται δικαιώματα ειδοποιήσεων για να ενεργοποιηθεί η τοπική υπενθύμιση';

  @override
  String operation_failed(String error) {
    return 'Λειτουργία απέτυχε: $error';
  }

  @override
  String get notification_channel_name =>
      'Ειδοποίηση προειδοποίησης αντικειμένου';

  @override
  String get notification_channel_description =>
      'Υπενθύμιση λήξης ή υπέρβασης αντικειμένου';

  @override
  String get item_category_food => 'Τρόφιμα';

  @override
  String get item_category_daily_necessities => 'Είδη καθημερινής χρήσης';

  @override
  String get item_category_cosmetics => 'Καλλυντικά';

  @override
  String get item_category_medicine => 'Φάρμακα';

  @override
  String get item_category_electronics => 'Ηλεκτρονικά προϊόντα';

  @override
  String get item_category_furniture => 'Έπιπλα';

  @override
  String get item_category_clothing => 'Ρούχα';

  @override
  String get item_category_books => 'Βιβλία';

  @override
  String get item_category_other => 'Άλλα';

  @override
  String get purchase_channel_online_mall => 'Διαδικτυακό κατάστημα';

  @override
  String get purchase_channel_physical_store => 'Φυσικό κατάστημα';

  @override
  String get purchase_channel_supermarket => 'Σούπερ μάρκετ';

  @override
  String get purchase_channel_specialty_store => 'Κατάστημα ειδικών προϊόντων';

  @override
  String get purchase_channel_secondhand_market => 'Δευτερογενής αγορά';

  @override
  String get purchase_channel_other => 'Άλλα';

  @override
  String get default_category => 'Άλλα';

  @override
  String get default_purchase_channel => 'Ηλεκτρονικό κατάστημα';

  @override
  String get item_category => 'Κατηγορίες αντικειμένων';

  @override
  String get custom_category => 'Προσαρμοσμένη κατηγορία';

  @override
  String get backup_data => 'Δημιουργία αντιγράφων ασφαλείας δεδομένων';

  @override
  String get backup_data_description =>
      'Συμπιέστε όλα τα δεδομένα (συμπεριλαμβανομένων των εικόνων) σε αρχείο ZIP για δημιουργία αντιγράφου ασφαλείας';

  @override
  String get backup_all_data =>
      'Δημιουργία αντιγράφου ασφαλείας όλων των δεδομένων';

  @override
  String get backup_success => 'Δημιουργία αντιγράφου ασφαλείας επιτυχής';

  @override
  String backup_failed(String error) {
    return 'Αποτυχία δημιουργίας αντιγράφου ασφαλείας: $error';
  }

  @override
  String get restore_data => 'Επαναφορά δεδομένων';

  @override
  String get restore_data_description =>
      'Επαναφορά όλων των δεδομένων από το αρχείο αντιγράφου ασφαλείας ZIP';

  @override
  String get export_data => 'Εξαγωγή δεδομένων';

  @override
  String get export_data_description => 'Εξαγωγή ως CSV, TXT, SQL';

  @override
  String get import_data => 'Εισαγωγή δεδομένων';

  @override
  String get import_data_description =>
      'Εισαγωγή δεδομένων από αρχεία CSV, TXT, SQL';

  @override
  String get alert_settings_description =>
      'Ρυθμίσεις υπενθυμίσεων ημερολογίου και ειδοποιήσεων εφαρμογής';

  @override
  String get about => 'Σχετικά';

  @override
  String get about_description => 'Πληροφορίες εφαρμογής και έκδοση';

  @override
  String get select_backup_file_first =>
      'Επιλέξτε πρώτα το αρχείο αντιγράφου ασφαλείας';

  @override
  String get confirm_restore => 'Επιβεβαίωση επαναφοράς';

  @override
  String get confirm_restore_message =>
      'Η επαναφορά του αντιγράφου ασφαλείας θα διαγράψει όλα τα υπάρχοντα δεδομένα και θα τα αντικαταστήσει με τα δεδομένα του αντιγράφου ασφαλείας. Αυτή η ενέργεια δεν μπορεί να αναιρεθεί. Είστε βέβαιοι ότι θέλετε να συνεχίσετε;';

  @override
  String get confirm_again => 'Επιβεβαίωση ξανά';

  @override
  String get confirm_restore_warning =>
      'Είστε σίγουροι ότι θέλετε να διαγράψετε όλα τα υπάρχοντα δεδομένα και να επαναφέρετε το αντίγραφο ασφαλείας; Αυτή η ενέργεια δεν μπορεί να αναιρεθεί!';

  @override
  String get confirm_restore_button => 'Επιβεβαίωση επαναφοράς';

  @override
  String restore_success(int count) {
    return 'Ανάκτηση επιτυχής, συνολικά $count αντικείμενα';
  }

  @override
  String restore_failed(String error) {
    return 'Αποτυχία επαναφοράς: $error';
  }

  @override
  String get select_backup_file => 'Επιλέξτε αρχείο αντιγράφου ασφαλείας';

  @override
  String get restore_backup => 'Επαναφορά αντιγράφου ασφαλείας';

  @override
  String selected_file(String filename) {
    return 'Έχει επιλεγεί αρχείο: $filename';
  }

  @override
  String get export_success => 'Εξαγωγή δεδομένων επιτυχημένη';

  @override
  String export_failed(String error) {
    return 'Εξαγωγή αποτυχής: $error';
  }

  @override
  String get format_csv => 'CSV';

  @override
  String get format_txt => 'TXT';

  @override
  String get format_sql => 'SQL';

  @override
  String get duplicate_data_handling => 'Επεξεργασία διπλών δεδομένων';

  @override
  String get duplicate_data_detected =>
      'Ανιχνεύθηκαν διπλά δεδομένα, παρακαλώ επιλέξτε τον τρόπο επεξεργασίας:';

  @override
  String get skip => 'Παράλειψη';

  @override
  String get overwrite => 'Υπερκάλυψη';

  @override
  String get skip_all => 'Παράλειψη όλων';

  @override
  String get overwrite_all => 'Κάλυψη όλων';

  @override
  String get select_import_format_first =>
      'Παρακαλώ επιλέξτε πρώτα τη μορφή εισαγωγής';

  @override
  String get confirm_import => 'Επιβεβαίωση εισαγωγής';

  @override
  String get confirm_import_message =>
      'Η εισαγωγή δεδομένων θα αντικαταστήσει τα υπάρχοντα δεδομένα και αυτή η ενέργεια δεν μπορεί να αναιρεθεί. Είστε βέβαιοι ότι θέλετε να συνεχίσετε;';

  @override
  String import_success(int count) {
    return 'Τα δεδομένα εισήχθησαν με επιτυχία, συνολικά εισήχθησαν $count αντικείμενα';
  }

  @override
  String import_failed(String error) {
    return 'Εισαγωγή αποτυχής: $error';
  }

  @override
  String get select_file => 'Επιλογή αρχείου';

  @override
  String get no_data => 'Δεν υπάρχουν δεδομένα';

  @override
  String get no_data_description =>
      'Αυτή τη στιγμή δεν υπάρχουν δεδομένα, κάντε κλικ στο κουμπί παρακάτω για να προσθέσετε την πρώτη εγγραφή!';

  @override
  String get load_failed => 'Αποτυχία φόρτωσης';

  @override
  String get load_failed_description =>
      'Φόρτωση δεδομένων απέτυχε, παρακαλώ ελέγξτε τη σύνδεση δικτύου και δοκιμάστε ξανά';

  @override
  String get retry => 'Δοκιμάστε ξανά';

  @override
  String get network_connection_failed => 'Απέτυχε η σύνδεση δικτύου';

  @override
  String get network_connection_failed_description =>
      'Παρακαλώ ελέγξτε τη σύνδεση δικτύου και δοκιμάστε ξανά';

  @override
  String get no_results => 'Δεν βρέθηκαν αποτελέσματα';

  @override
  String get no_results_description =>
      'Δοκιμάστε να αναζητήσετε με άλλες λέξεις-κλειδιά';

  @override
  String get clear_search => 'Εκκαθάριση αναζήτησης';

  @override
  String get insufficient_permission => 'Δεν υπάρχουν επαρκή δικαιώματα';

  @override
  String get insufficient_permission_description =>
      'Απαιτούνται τα σχετικά δικαιώματα για να χρησιμοποιήσετε αυτήν τη λειτουργία';

  @override
  String get request_permission => 'Ζητήστε άδεια';

  @override
  String get app_info => 'Πληροφορίες εφαρμογής';

  @override
  String get version => 'Έκδοση';

  @override
  String get developer => 'Προγραμματιστής';

  @override
  String get device_info => 'Πληροφορίες συσκευής';

  @override
  String get device_model => 'Μοντέλο συσκευής';

  @override
  String get brand => 'Μάρκα';

  @override
  String get device_name => 'Όνομα συσκευής';

  @override
  String get product => 'Προϊόν';

  @override
  String get hardware => 'Υλικό';

  @override
  String get android_version => 'Έκδοση Android';

  @override
  String get sdk_version => 'Έκδοση SDK';

  @override
  String get system_name => 'Όνομα συστήματος';

  @override
  String get system_version => 'Έκδοση συστήματος';

  @override
  String get device_identifier => 'Αναγνωριστικό συσκευής';

  @override
  String get computer_name => 'Όνομα υπολογιστή';

  @override
  String get build_number => 'Αριθμός έκδοσης';

  @override
  String error_getting_device_info(String error) {
    return 'Δεν είναι δυνατή η λήψη πληροφοριών συσκευής: $error';
  }

  @override
  String get features => 'Εισαγωγή λειτουργιών';

  @override
  String get app_description => 'Εφαρμογή διαχείρισης έξυπνων αντικειμένων';

  @override
  String get app_description_detail =>
      'Βοηθά στην διαχείριση των ημερομηνιών λήξης, των ημερομηνιών εγγύησης και άλλων πληροφοριών των αντικειμένων σας, και παρέχει λειτουργία έξυπνης υπενθύμισης.';

  @override
  String get consumable => 'Αναλώσιμα';

  @override
  String get durable => 'Ανθεκτικά αγαθά';

  @override
  String get sort => 'Ταξινόμηση';

  @override
  String get name_asc => 'Όνομα αύξουσα σειρά';

  @override
  String get name_desc => 'Όνομα φθίνουσα σειρά';

  @override
  String get date_asc => 'Ημερομηνία αύξουσα σειρά';

  @override
  String get date_desc => 'Ημερομηνία φθίνουσα σειρά';

  @override
  String get price_asc => 'Τιμή μονάδας αύξουσα σειρά';

  @override
  String get price_desc => 'Τιμή ανά μονάδα φθίνουσα';

  @override
  String get quantity_asc => 'Ποσότητα αύξουσα';

  @override
  String get quantity_desc => 'Ποσότητα φθίνουσα';

  @override
  String get total_price_asc => 'Συνολική τιμή αύξουσα';

  @override
  String get total_price_desc => 'Συνολική τιμή φθίνουσα';

  @override
  String get clear_all_filters => 'Κατάργηση όλων των φίλτρων';

  @override
  String get scan_barcode => 'Σάρωση κωδικού για αποθήκευση';

  @override
  String get search_items => 'Αναζήτηση αντικειμένων...';

  @override
  String get no_items => 'Δεν υπάρχουν αντικείμενα';

  @override
  String get no_items_description =>
      'Κάντε κλικ στο κουμπί παρακάτω για να προσθέσετε το πρώτο αντικείμενο';

  @override
  String get expired => 'Έχει λήξει';

  @override
  String get expiring_soon => 'Θα λήξει σύντομα';

  @override
  String get warranty_expired => 'Η εγγύηση έχει λήξει';

  @override
  String get warranty_expiring_soon => 'Η εγγύηση πρόκειται να λήξει';

  @override
  String days_remaining(int count) {
    return 'Απομένουν $count ημέρες';
  }

  @override
  String expired_days_ago(int count) {
    return 'Έχει λήξει $count ημέρες';
  }

  @override
  String get delete_item => 'Διαγραφή αντικειμένου';

  @override
  String delete_item_confirm(String name) {
    return 'Είστε σίγουροι ότι θέλετε να διαγράψετε \"$name\";';
  }

  @override
  String get item_deleted => 'Το αντικείμενο διαγράφηκε';

  @override
  String get failed_to_delete => 'Η διαγραφή απέτυχε';

  @override
  String failed_to_delete_message(String error) {
    return 'Αδυναμία διαγραφής αντικειμένου: $error';
  }

  @override
  String get date_range_filter => 'Φιλτράρισμα κατά εύρος ημερομηνιών';

  @override
  String get price_range_filter => 'Φιλτράρισμα κατά εύρος τιμών';

  @override
  String get my_items => 'Τα αντικείμενά μου';

  @override
  String get click_fab_to_add_item =>
      'Κάντε κλικ στο κουμπί κάτω δεξιά για να προσθέσετε αντικείμενο';

  @override
  String get confirm_delete => 'Επιβεβαίωση διαγραφής';

  @override
  String get filter_options => 'Επιλογές φίλτρου';

  @override
  String get filter_by_type_category_location =>
      'Φιλτράρετε αντικείμενα κατά τύπο, κατηγορία και τοποθεσία';

  @override
  String categories_count(int count) {
    return '$count κατηγορίες';
  }

  @override
  String get all_categories => 'Όλες οι κατηγορίες';

  @override
  String get no_category_data => 'Δεδομένα χωρίς κατηγορία';

  @override
  String get storage_location => 'Τοποθεσία αποθήκευσης';

  @override
  String locations_count(int count) {
    return '$count τοποθεσίες';
  }

  @override
  String get all_locations => 'Όλες οι τοποθεσίες';

  @override
  String get no_location_data => 'Δεν υπάρχουν δεδομένα τοποθεσίας';

  @override
  String get date_range => 'Εύρος ημερομηνιών';

  @override
  String get select_date_range => 'Επιλέξτε εύρος ημερομηνιών';

  @override
  String get price_range => 'Εύρος τιμών';

  @override
  String get unit_price_range => 'Εύρος τιμής ανά μονάδα';

  @override
  String get min_unit_price => 'Ελάχιστη τιμή μονάδας';

  @override
  String get max_unit_price => 'Μέγιστη τιμή μονάδας';

  @override
  String get total_price_range => 'Εύρος συνολικής τιμής';

  @override
  String get min_total_price => 'Ελάχιστη συνολική τιμή';

  @override
  String get max_total_price => 'Μέγιστη συνολική τιμή';

  @override
  String get clear_price_filter => 'Καθαρισμός φίλτρου τιμών';

  @override
  String get place_barcode_in_frame =>
      'Τοποθετήστε τον γραμμικό κώδικα στο πλαίσιο για σάρωση';

  @override
  String get item_already_exists => 'Το προϊόν υπάρχει ήδη';

  @override
  String barcode_with_value(String barcode) {
    return 'Barcode: $barcode';
  }

  @override
  String name_with_value(String name) {
    return 'Όνομα: $name';
  }

  @override
  String category_with_value(String category) {
    return 'Κατηγορία: $category';
  }

  @override
  String current_quantity_with_value(String quantity, String unit) {
    return 'Τρέχουσα ποσότητα: $quantity$unit';
  }

  @override
  String get please_select_operation => 'Παρακαλώ επιλέξτε ενέργεια:';

  @override
  String get outbound => 'Αποστολή από την αποθήκη';

  @override
  String get inbound => 'Εισαγωγή στην αποθήκη';

  @override
  String get inbound_quantity => 'Ποσότητα εισαγωγής στην αποθήκη';

  @override
  String get outbound_quantity => 'Ποσότητα αποστολής από την αποθήκη';

  @override
  String get quantity => 'Ποσότητα';

  @override
  String get enter_inbound_quantity =>
      'Παρακαλώ εισάγετε την ποσότητα εισαγωγής στην αποθήκη';

  @override
  String get enter_outbound_quantity =>
      'Παρακαλώ εισαγάγετε την ποσότητα εξαγωγής από το αποθετήριο';

  @override
  String item_increased(String name, String quantity, String unit) {
    return 'Έχει προστεθεί $name $quantity$unit';
  }

  @override
  String delete_item_confirm_with_irreversible(String name) {
    return 'Είστε βέβαιοι ότι θέλετε να διαγράψετε «$name»; Αυτή η ενέργεια δεν μπορεί να αναιρεθεί.';
  }

  @override
  String item_decreased(String name, String quantity, String unit) {
    return 'Έχει μειωθεί $name $quantity$unit';
  }

  @override
  String get database_reset =>
      'Η βάση δεδομένων έχει επαναρυθμιστεί, ο πίνακας θα δημιουργηθεί ξανά';

  @override
  String database_reset_error(String error) {
    return 'Σφάλμα κατά την επαναφορά της βάσης δεδομένων: $error';
  }

  @override
  String mock_data_init_failed(String error) {
    return 'Αποτυχία αρχικοποίησης δεδομένων προσομοίωσης: $error';
  }

  @override
  String get solution_steps => 'Λύση:';

  @override
  String get solution_step_1 =>
      '1. Απεγκαταστήστε την εφαρμογή και επανεγκαταστήστε';

  @override
  String get solution_step_2 => '2. Ή καθαρίστε τα δεδομένα της εφαρμογής';

  @override
  String get solution_step_3 =>
      '3. Ή ρυθμίστε το resetDatabaseOnStart σε true και εκτελέστε ξανά';

  @override
  String notification_service_init_failed(String error) {
    return 'Η αρχικοποίηση της υπηρεσίας υπενθύμισης απέτυχε: $error';
  }

  @override
  String check_calendar_account_failed(String error) {
    return 'Αποτυχία ελέγχου του λογαριασμού ημερολογίου: $error';
  }

  @override
  String create_calendar_failed(String error) {
    return 'Αποτυχία δημιουργίας ημερολογίου: $error';
  }

  @override
  String add_calendar_event_failed(String error) {
    return 'Αποτυχία προσθήκης γεγονότος ημερολογίου: $error';
  }

  @override
  String delete_calendar_event_failed(String error) {
    return 'Αποτυχία διαγραφής γεγονότος ημερολογίου: $error';
  }

  @override
  String set_permission_message_failed(String error) {
    return 'Αποτυχία στην εμφάνιση μηνύματος προτροπής δικαιωμάτων: $error';
  }

  @override
  String mock_data_init_success(int count) {
    return 'Έχουν αρχικοποιηθεί με επιτυχία $count δεδομένα προσομοίωσης';
  }

  @override
  String database_has_data(int count) {
    return 'Η βάση δεδομένων έχει ήδη $count εγγραφές, παράβλεψη αρχικοποίησης δεδομένων προσομοίωσης';
  }

  @override
  String get database_structure_mismatch =>
      'Μπορεί να υπάρχει ασυμβατότητα στη δομή της βάσης δεδομένων, προτείνεται να εκκαθαρίσετε τα δεδομένα της εφαρμογής ή να επανεγκαταστήσετε';

  @override
  String get old_database_deleted =>
      'Τα αρχεία της παλιάς βάσης δεδομένων έχουν διαγραφεί';

  @override
  String get backup_data_empty => 'Τα δεδομένα αντιγράφου ασφαλείας είναι κενά';

  @override
  String get backup_file_not_found =>
      'Το αρχείο αντιγράφου ασφαλείας δεν υπάρχει';

  @override
  String file_not_utf8(String error) {
    return 'Η κωδικοποίηση του αρχείου δεν είναι έγκυρη μορφή UTF-8. Βεβαιωθείτε ότι το αρχείο είναι αποθηκευμένο με κωδικοποίηση UTF-8. Λεπτομέρειες σφάλματος: $error';
  }

  @override
  String file_not_found(String filePath) {
    return 'Το αρχείο δεν υπάρχει: $filePath';
  }

  @override
  String file_empty(String filePath) {
    return 'Το αρχείο είναι κενό: $filePath';
  }

  @override
  String get file_content_empty =>
      'Το περιεχόμενο του αρχείου είναι κενό μετά την αποκωδικοποίηση, ενδέχεται να υπάρχει ασυμφωνία στην κωδικοποίηση';

  @override
  String field_cannot_be_empty(String fieldName) {
    return '$fieldName δεν μπορεί να είναι κενό';
  }

  @override
  String field_min_length(String fieldName, int minLength) {
    return 'Το μήκος του $fieldName δεν μπορεί να είναι λιγότερο από $minLength χαρακτήρες';
  }

  @override
  String field_max_length(String fieldName, int maxLength) {
    return '$fieldName μήκος δεν μπορεί να υπερβαίνει τους $maxLength χαρακτήρες';
  }

  @override
  String field_invalid_email(String fieldName) {
    return 'Παρακαλώ εισαγάγετε μια έγκυρη διεύθυνση $fieldName';
  }

  @override
  String field_invalid_number(String fieldName, String numberType) {
    return '$fieldName πρέπει να είναι $numberType';
  }

  @override
  String field_min_value(String fieldName, double min) {
    return '$fieldName δεν μπορεί να είναι μικρότερο από $min';
  }

  @override
  String field_max_value(String fieldName, double max) {
    return '$fieldName δεν μπορεί να είναι μεγαλύτερο από $max';
  }

  @override
  String field_positive_integer(String fieldName) {
    return '$fieldName πρέπει να είναι θετικός ακέραιος';
  }

  @override
  String field_greater_than_zero(String fieldName) {
    return '$fieldName πρέπει να είναι μεγαλύτερο από 0';
  }

  @override
  String field_positive_number(String fieldName) {
    return '$fieldName πρέπει να είναι θετικός αριθμός';
  }

  @override
  String field_invalid_date(String fieldName) {
    return 'Παρακαλώ εισάγετε ένα έγκυρο $fieldName';
  }

  @override
  String field_date_not_past(String fieldName) {
    return '$fieldName δεν μπορεί να είναι ημερομηνία στο παρελθόν';
  }

  @override
  String field_date_not_before(String fieldName, String minDate) {
    return '$fieldName δεν μπορεί να είναι νωρίτερα από $minDate';
  }

  @override
  String field_date_not_after(String fieldName, String maxDate) {
    return '$fieldName δεν μπορεί να είναι αργότερα από $maxDate';
  }

  @override
  String field_invalid_value(String fieldName) {
    return 'Παρακαλώ εισαγάγετε έγκυρο $fieldName';
  }

  @override
  String password_min_length(String fieldName) {
    return '$fieldName Η διάρκεια δεν μπορεί να είναι μικρότερη από 8 χαρακτήρες';
  }

  @override
  String password_uppercase_required(String fieldName) {
    return '$fieldName πρέπει να περιέχει τουλάχιστον ένα κεφαλαίο γράμμα';
  }

  @override
  String password_lowercase_required(String fieldName) {
    return '$fieldName πρέπει να περιέχει τουλάχιστον ένα πεζό γράμμα';
  }

  @override
  String password_digit_required(String fieldName) {
    return '$fieldName πρέπει να περιέχει τουλάχιστον έναν αριθμό';
  }

  @override
  String password_special_char_required(String fieldName) {
    return '$fieldName πρέπει να περιέχει τουλάχιστον ένα ειδικό χαρακτήρα';
  }

  @override
  String get passwords_not_match =>
      'Οι δύο φορές που εισήχθη ο κωδικός πρόσβασης δεν ταιριάζουν';

  @override
  String get item_name_cannot_be_empty =>
      'Το όνομα του αντικειμένου δεν μπορεί να είναι κενό';

  @override
  String name_max_length(int maxLength) {
    return 'Το όνομα δεν μπορεί να υπερβαίνει τους $maxLength χαρακτήρες';
  }

  @override
  String quantity_min(int minQuantity) {
    return 'Η ποσότητα δεν μπορεί να είναι μικρότερη από $minQuantity';
  }

  @override
  String quantity_max(int maxQuantity) {
    return 'Η ποσότητα δεν μπορεί να υπερβαίνει $maxQuantity';
  }

  @override
  String get unit_price_not_negative =>
      'Η μονάδα τιμής δεν μπορεί να είναι αρνητική';

  @override
  String unit_price_max(double maxUnitPrice) {
    return 'Η τιμή ανά μονάδα δεν μπορεί να υπερβαίνει $maxUnitPrice';
  }

  @override
  String get set_production_expiry_for_validity =>
      'Παρακαλώ καθορίστε την ημερομηνία παραγωγής και τη διάρκεια ζωής για αυτόματη υπολογισμό της διάρκειας ισχύος';

  @override
  String get set_purchase_warranty_for_validity =>
      'Παρακαλώ ορίστε την ημερομηνία αγοράς και την περίοδο εγγύησης για να υπολογιστεί αυτόματα η διάρκεια της εγγύησης';

  @override
  String get calendar_account_creation_failed =>
      'Δεν είναι δυνατή η δημιουργία λογαριασμού ημερολογίου, ελέγξτε τις ρυθμίσεις του συστήματος ημερολογίου';

  @override
  String get test_notification => 'Δοκιμαστική ειδοποίηση';

  @override
  String get test_notification_description =>
      'Αυτή είναι μια δοκιμαστική ειδοποίηση για να ελεγχθεί η λειτουργία τοπικής υπενθύμισης';

  @override
  String get day_unit => 'Ημέρες';

  @override
  String days_with_value(int days) {
    return '$days ημέρες';
  }

  @override
  String get item_saved => 'Το αντικείμενο έχει αποθηκευτεί';

  @override
  String get item_updated => 'Το αντικείμενο έχει ενημερωθεί';

  @override
  String get item_added => 'Το αντικείμενο έχει προστεθεί';

  @override
  String get save_success => 'Αποθήκευση επιτυχής';

  @override
  String get update_success => 'Ενημέρωση επιτυχής';

  @override
  String get delete_success => 'Διαγραφή επιτυχής';

  @override
  String get save_failed => 'Αποθήκευση απέτυχε';

  @override
  String get update_failed => 'Ενημέρωση απέτυχε';

  @override
  String get delete_failed => 'Διαγραφή απέτυχε';
}
