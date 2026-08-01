// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get app_name => 'Objet précieux dans un petit espace';

  @override
  String get cancel => 'Annuler';

  @override
  String get confirm => 'Confirmer';

  @override
  String get save => 'Enregistrer';

  @override
  String get delete => 'Supprimer';

  @override
  String get edit => 'Éditer';

  @override
  String get add => 'Ajouter';

  @override
  String get search => 'Recherche';

  @override
  String get settings => 'Paramètres';

  @override
  String get language_settings => 'Paramètres de langue';

  @override
  String get language_settings_description =>
      'Définir la langue d\'affichage de l\'application';

  @override
  String get system_default => 'Par défaut du système';

  @override
  String get use_system_language => 'Utiliser la langue du système';

  @override
  String get language_change_hint =>
      'Le changement de langue prendra effet après le redémarrage de l\'application';

  @override
  String get back => 'Retour';

  @override
  String get next => 'Étape suivante';

  @override
  String get done => 'Terminé';

  @override
  String get loading => 'Chargement...';

  @override
  String get error => 'Erreur';

  @override
  String get success => 'succès';

  @override
  String get warning => 'Avertissement';

  @override
  String get info => 'information';

  @override
  String get select_alert_days => 'Choisir le nombre de jours de rappel';

  @override
  String get custom => 'Personnalisé';

  @override
  String custom_days(int days) {
    return 'Personnalisé ($days jours)';
  }

  @override
  String current_selection(int days) {
    return 'Sélection actuelle : $days jours';
  }

  @override
  String alert_days_range(int min, int max) {
    return 'Plage de jours de rappel : $min-$max jours';
  }

  @override
  String get enter_days => 'Veuillez entrer le nombre de jours de rappel';

  @override
  String get days => 'jours';

  @override
  String enter_valid_days(int min, int max) {
    return 'Veuillez saisir un nombre entre $min et $max';
  }

  @override
  String get alert_settings => 'Paramètres d\'alerte';

  @override
  String get calendar_settings => 'Paramètres du calendrier';

  @override
  String get calendar_sync => 'Synchronisation du calendrier';

  @override
  String get calendar_sync_desc =>
      'Après activation, l\'application demandera l\'autorisation d\'accéder au calendrier';

  @override
  String get add_test_calendar_event =>
      'Ajouter un événement de calendrier de test';

  @override
  String get enable_calendar_sync_first =>
      'Veuillez d\'abord activer l\'interrupteur de \'synchronisation du calendrier\'';

  @override
  String get app_alert_settings =>
      'Paramètres de notification de l\'application';

  @override
  String get local_alerts => 'Rappel local';

  @override
  String get local_alerts_desc =>
      'Recevoir des rappels d\'expiration dans l\'application après activation';

  @override
  String get send_test_notification => 'Envoyer une notification de test';

  @override
  String get enable_local_alerts_first =>
      'Veuillez d\'abord activer l\'interrupteur \"Rappel local\"';

  @override
  String get alert_days_settings => 'Paramètres de rappel des jours';

  @override
  String get advance_alert_days => 'Nombre de jours de rappel à l\'avance';

  @override
  String get advance_alert_days_desc =>
      'Configurer combien de jours à l\'avance rappeler que les articles sont périmés ou que la garantie expire';

  @override
  String get calendar_permission_request =>
      'Demande d\'autorisation du calendrier';

  @override
  String get calendar_permission_desc =>
      'L\'accès au calendrier est nécessaire pour synchroniser les rappels des éléments. Autoriser ?';

  @override
  String get allow => 'Permettre';

  @override
  String get calendar_permission_granted =>
      'L\'autorisation du calendrier a été accordée, la synchronisation du calendrier est activée';

  @override
  String get calendar_permission_denied =>
      'L\'accès au calendrier a été refusé, impossible d\'activer la synchronisation du calendrier';

  @override
  String get calendar_permission_permanently_denied =>
      'Autorisation refusée de manière permanente';

  @override
  String get calendar_permission_permanently_denied_desc =>
      'L\'accès au calendrier a été refusé de manière permanente, veuillez activer les autorisations manuellement dans les paramètres du système.';

  @override
  String get go_to_settings => 'Aller aux réglages';

  @override
  String get calendar_account_failed =>
      'L\'autorisation du calendrier a été accordée, mais il est impossible de créer un compte de calendrier. Veuillez vérifier les paramètres du calendrier du système.';

  @override
  String get calendar_account_created =>
      'Les permissions du calendrier ont été accordées, un compte de calendrier local a été créé';

  @override
  String get calendar_account_creating =>
      'Le compte du calendrier a été créé avec succès, mais le système pourrait nécessiter un certain temps pour entrer en vigueur';

  @override
  String get test_calendar_event_added =>
      'Test d\'ajout d\'événement au calendrier réussi';

  @override
  String get test_calendar_event_failed =>
      'Échec de l\'ajout de l\'événement de test au calendrier, veuillez vérifier les paramètres du calendrier';

  @override
  String get calendar_permission_required =>
      'L\'autorisation du calendrier est requise pour ajouter un événement test';

  @override
  String get test_notification_sent => 'La notification de test a été envoyée';

  @override
  String test_notification_failed(String error) {
    return 'Échec de l\'envoi de la notification de test : $error';
  }

  @override
  String get notification_permission_required =>
      'Les autorisations de notification sont nécessaires pour activer les rappels locaux';

  @override
  String operation_failed(String error) {
    return 'Échec de l\'opération : $error';
  }

  @override
  String get notification_channel_name => 'Notification d\'alerte d\'objet';

  @override
  String get notification_channel_description =>
      'Rappel de péremption ou de garantie des articles';

  @override
  String get item_category_food => 'aliments';

  @override
  String get item_category_daily_necessities => 'Articles de toilette';

  @override
  String get item_category_cosmetics => 'cosmétiques';

  @override
  String get item_category_medicine => 'Médicament';

  @override
  String get item_category_electronics => 'Produits électroniques';

  @override
  String get item_category_furniture => 'meubles';

  @override
  String get item_category_clothing => 'Vêtements';

  @override
  String get item_category_books => 'livre';

  @override
  String get item_category_other => 'Autre';

  @override
  String get purchase_channel_online_mall => 'Boutique en ligne';

  @override
  String get purchase_channel_physical_store => 'magasin physique';

  @override
  String get purchase_channel_supermarket => 'supermarché';

  @override
  String get purchase_channel_specialty_store => 'Magasin spécialisé';

  @override
  String get purchase_channel_secondhand_market => 'Marché de l\'occasion';

  @override
  String get purchase_channel_other => 'Autre';

  @override
  String get default_category => 'Autre';

  @override
  String get default_purchase_channel => 'Boutique en ligne';

  @override
  String get item_category => 'Classification des objets';

  @override
  String get custom_category => 'Catégorie personnalisée';

  @override
  String get backup_data => 'Sauvegarder les données';

  @override
  String get backup_data_description =>
      'Packager toutes les données (y compris les images) en un fichier ZIP pour la sauvegarde';

  @override
  String get backup_all_data => 'Sauvegarder toutes les données';

  @override
  String get backup_success => 'Sauvegarde réussie';

  @override
  String backup_failed(String error) {
    return 'Échec de la sauvegarde : $error';
  }

  @override
  String get restore_data => 'Récupérer les données';

  @override
  String get restore_data_description =>
      'Restaurer toutes les données à partir du fichier de sauvegarde ZIP';

  @override
  String get export_data => 'Exporter les données';

  @override
  String get export_data_description => 'Exporter au format CSV, TXT, SQL';

  @override
  String get import_data => 'Importer des données';

  @override
  String get import_data_description =>
      'Importer des données depuis des fichiers CSV, TXT, SQL';

  @override
  String get alert_settings_description =>
      'Paramètres de rappel du calendrier et de notifications des applications';

  @override
  String get about => 'À propos de';

  @override
  String get about_description => 'Informations sur l\'application et version';

  @override
  String get select_backup_file_first =>
      'Veuillez d\'abord sélectionner le fichier de sauvegarde';

  @override
  String get confirm_restore => 'Confirmer la restauration';

  @override
  String get confirm_restore_message =>
      'La restauration de la sauvegarde effacera toutes les données existantes et les remplacera par les données de la sauvegarde. Cette opération est irréversible. Voulez-vous continuer ?';

  @override
  String get confirm_again => 'Confirmer à nouveau';

  @override
  String get confirm_restore_warning =>
      'Êtes-vous sûr de vouloir effacer toutes les données existantes et restaurer la sauvegarde ? Cette opération est irréversible !';

  @override
  String get confirm_restore_button => 'Confirmer la restauration';

  @override
  String restore_success(int count) {
    return 'Restauration réussie, $count articles au total';
  }

  @override
  String restore_failed(String error) {
    return 'Échec de la restauration : $error';
  }

  @override
  String get select_backup_file => 'Choisir le fichier de sauvegarde';

  @override
  String get restore_backup => 'Restaurer la sauvegarde';

  @override
  String selected_file(String filename) {
    return 'Fichier sélectionné : $filename';
  }

  @override
  String get export_success => 'Exportation des données réussie';

  @override
  String export_failed(String error) {
    return 'Échec de l\'exportation : $error';
  }

  @override
  String get format_csv => 'CSV';

  @override
  String get format_txt => 'TXT';

  @override
  String get format_sql => 'SQL';

  @override
  String get duplicate_data_handling => 'Traitement des données en double';

  @override
  String get duplicate_data_detected =>
      'Données dupliquées détectées, veuillez choisir la méthode de traitement :';

  @override
  String get skip => 'Passer';

  @override
  String get overwrite => 'couvrir';

  @override
  String get skip_all => 'Tout sauter';

  @override
  String get overwrite_all => 'Tout couvrir';

  @override
  String get select_import_format_first =>
      'Veuillez d\'abord choisir le format d\'importation';

  @override
  String get confirm_import => 'Confirmer l\'importation';

  @override
  String get confirm_import_message =>
      'L\'importation des données remplacera les données existantes, cette opération est irréversible. Voulez-vous continuer ?';

  @override
  String import_success(int count) {
    return 'Importation des données réussie, un total de $count articles importés';
  }

  @override
  String import_failed(String error) {
    return 'Échec de l\'importation : $error';
  }

  @override
  String get select_file => 'Choisir un fichier';

  @override
  String get no_data => 'Aucune donnée pour le moment';

  @override
  String get no_data_description =>
      'Il n\'y a actuellement aucune donnée, cliquez sur le bouton ci-dessous pour ajouter le premier enregistrement !';

  @override
  String get load_failed => 'Échec du chargement';

  @override
  String get load_failed_description =>
      'Échec du chargement des données, veuillez vérifier la connexion réseau puis réessayer';

  @override
  String get retry => 'Réessayer';

  @override
  String get network_connection_failed => 'Échec de la connexion réseau';

  @override
  String get network_connection_failed_description =>
      'Veuillez vérifier votre connexion réseau et réessayer';

  @override
  String get no_results => 'Résultat introuvable';

  @override
  String get no_results_description =>
      'Essayez de rechercher avec d\'autres mots-clés';

  @override
  String get clear_search => 'Effacer la recherche';

  @override
  String get insufficient_permission => 'Permissions insuffisantes';

  @override
  String get insufficient_permission_description =>
      'Vous avez besoin des autorisations correspondantes pour utiliser cette fonctionnalité';

  @override
  String get request_permission => 'Demander l\'autorisation';

  @override
  String get app_info => 'Informations sur l\'application';

  @override
  String get version => 'version';

  @override
  String get developer => 'Développeur';

  @override
  String get device_info => 'Informations sur l\'appareil';

  @override
  String get device_model => 'Modèle de l\'appareil';

  @override
  String get brand => 'marque';

  @override
  String get device_name => 'Nom de l\'appareil';

  @override
  String get product => 'produit';

  @override
  String get hardware => 'Matériel';

  @override
  String get android_version => 'Version Android';

  @override
  String get sdk_version => 'Version du SDK';

  @override
  String get system_name => 'Nom du système';

  @override
  String get system_version => 'Version du système';

  @override
  String get device_identifier => 'Identification de l\'appareil';

  @override
  String get computer_name => 'Nom de l\'ordinateur';

  @override
  String get build_number => 'Numéro de version';

  @override
  String error_getting_device_info(String error) {
    return 'Impossible d\'obtenir les informations de l\'appareil : $error';
  }

  @override
  String get features => 'Présentation des fonctions';

  @override
  String get app_description =>
      'Application de gestion des objets intelligents';

  @override
  String get app_description_detail =>
      'Vous aider à gérer les dates d\'expiration, les dates de garantie et d\'autres informations sur vos objets, et fournir une fonction de rappel intelligent.';

  @override
  String get consumable => 'Consommables';

  @override
  String get durable => 'Biens durables';

  @override
  String get sort => 'Tri';

  @override
  String get name_asc => 'Nom par ordre croissant';

  @override
  String get name_desc => 'Nom décroissant';

  @override
  String get date_asc => 'Ordre croissant des dates';

  @override
  String get date_desc => 'Date décroissante';

  @override
  String get price_asc => 'Prix unitaire par ordre croissant';

  @override
  String get price_desc => 'Prix unitaire par ordre décroissant';

  @override
  String get quantity_asc => 'Ordre croissant par quantité';

  @override
  String get quantity_desc => 'Ordre décroissant par quantité';

  @override
  String get total_price_asc => 'Prix total par ordre croissant';

  @override
  String get total_price_desc => 'Prix total décroissant';

  @override
  String get clear_all_filters => 'Effacer tous les filtres';

  @override
  String get scan_barcode => 'Scanner le code pour l\'entrée en stock';

  @override
  String get search_items => 'Rechercher des articles...';

  @override
  String get no_items => 'Aucun objet pour le moment';

  @override
  String get no_items_description =>
      'Cliquez sur le bouton ci-dessous pour ajouter le premier article';

  @override
  String get expired => 'Expiré';

  @override
  String get expiring_soon => 'Bientôt expiré';

  @override
  String get warranty_expired => 'La garantie a expiré';

  @override
  String get warranty_expiring_soon =>
      'La garantie arrive bientôt à expiration';

  @override
  String days_remaining(int count) {
    return 'Il reste $count jours';
  }

  @override
  String expired_days_ago(int count) {
    return 'Expiré depuis $count jours';
  }

  @override
  String get delete_item => 'Supprimer l\'article';

  @override
  String delete_item_confirm(String name) {
    return 'Voulez-vous vraiment supprimer \"$name\" ?';
  }

  @override
  String get item_deleted => 'Objet supprimé';

  @override
  String get failed_to_delete => 'Échec de la suppression';

  @override
  String failed_to_delete_message(String error) {
    return 'Impossible de supprimer l\'objet : $error';
  }

  @override
  String get date_range_filter => 'Filtre par plage de dates';

  @override
  String get price_range_filter => 'Filtre de gamme de prix';

  @override
  String get my_items => 'Mes affaires';

  @override
  String get click_fab_to_add_item =>
      'Cliquez sur le bouton en bas à droite pour ajouter des articles';

  @override
  String get confirm_delete => 'Confirmer la suppression';

  @override
  String get filter_options => 'Options de filtrage';

  @override
  String get filter_by_type_category_location =>
      'Filtrer les objets par type, catégorie et emplacement';

  @override
  String categories_count(int count) {
    return '$count catégories';
  }

  @override
  String get all_categories => 'Toutes les catégories';

  @override
  String get no_category_data => 'Pas de données classées pour le moment';

  @override
  String get storage_location => 'Lieu de stockage';

  @override
  String locations_count(int count) {
    return '$count lieux';
  }

  @override
  String get all_locations => 'Tous les endroits';

  @override
  String get no_location_data =>
      'Pas de données de localisation pour le moment';

  @override
  String get date_range => 'Plage de dates';

  @override
  String get select_date_range => 'Sélectionner la plage de dates';

  @override
  String get price_range => 'Gamme de prix';

  @override
  String get unit_price_range => 'Plage de prix unitaire';

  @override
  String get min_unit_price => 'Prix unitaire minimum';

  @override
  String get max_unit_price => 'Prix unitaire le plus élevé';

  @override
  String get total_price_range => 'Plage de prix total';

  @override
  String get min_total_price => 'Prix total minimum';

  @override
  String get max_total_price => 'Prix total maximum';

  @override
  String get clear_price_filter => 'Effacer le filtre de prix';

  @override
  String get place_barcode_in_frame =>
      'Placez le code-barres dans le cadre pour le scanner';

  @override
  String get item_already_exists => 'Le produit existe déjà';

  @override
  String barcode_with_value(String barcode) {
    return 'Code-barres : $barcode';
  }

  @override
  String name_with_value(String name) {
    return 'Nom : $name';
  }

  @override
  String category_with_value(String category) {
    return 'Catégorie : $category';
  }

  @override
  String current_quantity_with_value(String quantity, String unit) {
    return 'Quantité actuelle : $quantity$unit';
  }

  @override
  String get please_select_operation => 'Veuillez choisir une opération :';

  @override
  String get outbound => 'Sortie de l\'entrepôt';

  @override
  String get inbound => 'Entrée en stock';

  @override
  String get inbound_quantity => 'Quantité en stock';

  @override
  String get outbound_quantity => 'Quantité sortie d\'entrepôt';

  @override
  String get quantity => 'quantité';

  @override
  String get enter_inbound_quantity =>
      'Veuillez saisir la quantité à entrer en stock';

  @override
  String get enter_outbound_quantity =>
      'Veuillez saisir la quantité à sortir de l\'entrepôt';

  @override
  String item_increased(String name, String quantity, String unit) {
    return 'A ajouté $name $quantity$unit';
  }

  @override
  String delete_item_confirm_with_irreversible(String name) {
    return 'Voulez-vous vraiment supprimer «$name» ? Cette action est irréversible.';
  }

  @override
  String item_decreased(String name, String quantity, String unit) {
    return 'A réduit $name $quantity$unit';
  }

  @override
  String get database_reset =>
      'La base de données a été réinitialisée et la structure des tables sera recréée';

  @override
  String database_reset_error(String error) {
    return 'Erreur lors de la réinitialisation de la base de données : $error';
  }

  @override
  String mock_data_init_failed(String error) {
    return 'Échec de l\'initialisation des données simulées : $error';
  }

  @override
  String get solution_steps => 'Solution :';

  @override
  String get solution_step_1 =>
      '1. Désinstaller l\'application et la réinstaller';

  @override
  String get solution_step_2 => '2. Ou effacer les données de l\'application';

  @override
  String get solution_step_3 =>
      '3. Ou réexécutez après avoir défini resetDatabaseOnStart sur true';

  @override
  String notification_service_init_failed(String error) {
    return 'Échec de l\'initialisation du service de rappel : $error';
  }

  @override
  String check_calendar_account_failed(String error) {
    return 'Échec de la vérification du compte de calendrier : $error';
  }

  @override
  String create_calendar_failed(String error) {
    return 'Échec de la création du calendrier : $error';
  }

  @override
  String add_calendar_event_failed(String error) {
    return 'Échec de l\'ajout de l\'événement au calendrier : $error';
  }

  @override
  String delete_calendar_event_failed(String error) {
    return 'Échec de la suppression de l\'événement du calendrier : $error';
  }

  @override
  String set_permission_message_failed(String error) {
    return 'Échec de la configuration du message d\'invite de permission : $error';
  }

  @override
  String mock_data_init_success(int count) {
    return 'Initialization réussie de $count données simulées';
  }

  @override
  String database_has_data(int count) {
    return 'La base de données contient déjà $count enregistrements, passer l\'initialisation des données simulées';
  }

  @override
  String get database_structure_mismatch =>
      'Il est possible que la structure de la base de données ne corresponde pas, il est conseillé de vider les données de l\'application ou de la réinstaller';

  @override
  String get old_database_deleted =>
      'Ancien fichier de base de données supprimé';

  @override
  String get backup_data_empty => 'Les données de sauvegarde sont vides';

  @override
  String get backup_file_not_found => 'Le fichier de sauvegarde n\'existe pas';

  @override
  String file_not_utf8(String error) {
    return 'Le codage du fichier n\'est pas au format UTF-8 valide. Veuillez vous assurer que le fichier est enregistré en utilisant l\'encodage UTF-8. Détails de l\'erreur : $error';
  }

  @override
  String file_not_found(String filePath) {
    return 'Fichier inexistant : $filePath';
  }

  @override
  String file_empty(String filePath) {
    return 'Le fichier est vide : $filePath';
  }

  @override
  String get file_content_empty =>
      'Le contenu du fichier est vide après décodage, il se peut que l\'encodage ne corresponde pas';

  @override
  String field_cannot_be_empty(String fieldName) {
    return '$fieldName ne peut pas être vide';
  }

  @override
  String field_min_length(String fieldName, int minLength) {
    return 'La longueur de $fieldName ne peut pas être inférieure à $minLength caractères';
  }

  @override
  String field_max_length(String fieldName, int maxLength) {
    return 'La longueur de $fieldName ne peut pas dépasser $maxLength caractères';
  }

  @override
  String field_invalid_email(String fieldName) {
    return 'Veuillez entrer une adresse $fieldName valide';
  }

  @override
  String field_invalid_number(String fieldName, String numberType) {
    return '$fieldName doit être $numberType';
  }

  @override
  String field_min_value(String fieldName, double min) {
    return '$fieldName ne peut pas être inférieur à $min';
  }

  @override
  String field_max_value(String fieldName, double max) {
    return '$fieldName ne peut pas être supérieur à $max';
  }

  @override
  String field_positive_integer(String fieldName) {
    return '$fieldName doit être un entier positif';
  }

  @override
  String field_greater_than_zero(String fieldName) {
    return '$fieldName doit être supérieur à 0';
  }

  @override
  String field_positive_number(String fieldName) {
    return '$fieldName doit être un nombre positif';
  }

  @override
  String field_invalid_date(String fieldName) {
    return 'Veuillez saisir un $fieldName valide';
  }

  @override
  String field_date_not_past(String fieldName) {
    return '$fieldName ne peut pas être une date passée';
  }

  @override
  String field_date_not_before(String fieldName, String minDate) {
    return '$fieldName ne peut pas être avant $minDate';
  }

  @override
  String field_date_not_after(String fieldName, String maxDate) {
    return '$fieldName ne peut pas être plus tard que $maxDate';
  }

  @override
  String field_invalid_value(String fieldName) {
    return 'Veuillez saisir un $fieldName valide';
  }

  @override
  String password_min_length(String fieldName) {
    return 'La longueur de $fieldName ne peut pas être inférieure à 8 caractères';
  }

  @override
  String password_uppercase_required(String fieldName) {
    return '$fieldName doit contenir au moins une lettre majuscule';
  }

  @override
  String password_lowercase_required(String fieldName) {
    return '$fieldName doit contenir au moins une lettre minuscule';
  }

  @override
  String password_digit_required(String fieldName) {
    return '$fieldName doit contenir au moins un chiffre';
  }

  @override
  String password_special_char_required(String fieldName) {
    return '$fieldName doit contenir au moins un caractère spécial';
  }

  @override
  String get passwords_not_match =>
      'Les mots de passe saisis deux fois ne correspondent pas';

  @override
  String get item_name_cannot_be_empty =>
      'Le nom de l\'article ne peut pas être vide';

  @override
  String name_max_length(int maxLength) {
    return 'Le nom ne peut pas dépasser $maxLength caractères';
  }

  @override
  String quantity_min(int minQuantity) {
    return 'La quantité ne peut pas être inférieure à $minQuantity';
  }

  @override
  String quantity_max(int maxQuantity) {
    return 'La quantité ne peut pas dépasser $maxQuantity';
  }

  @override
  String get unit_price_not_negative =>
      'Le prix unitaire ne peut pas être négatif';

  @override
  String unit_price_max(double maxUnitPrice) {
    return 'Le prix unitaire ne peut pas dépasser $maxUnitPrice';
  }

  @override
  String get set_production_expiry_for_validity =>
      'Veuillez définir la date de production et la durée de conservation pour calculer automatiquement la date de péremption.';

  @override
  String get set_purchase_warranty_for_validity =>
      'Veuillez définir la date d\'achat et la durée de conservation pour calculer automatiquement la période de garantie';

  @override
  String get calendar_account_creation_failed =>
      'Impossible de créer un compte de calendrier, veuillez vérifier les paramètres du calendrier du système';

  @override
  String get test_notification => 'Notification de test';

  @override
  String get test_notification_description =>
      'Ceci est une notification de test, utilisée pour vérifier la fonction de rappel local';

  @override
  String get day_unit => 'ciel';

  @override
  String days_with_value(int days) {
    return '$days jours';
  }

  @override
  String get item_saved => 'Objet sauvegardé';

  @override
  String get item_updated => 'Objet mis à jour';

  @override
  String get item_added => 'Objet ajouté';

  @override
  String get save_success => 'Enregistrement réussi';

  @override
  String get update_success => 'Mise à jour réussie';

  @override
  String get delete_success => 'Suppression réussie';

  @override
  String get save_failed => 'Échec de l\'enregistrement';

  @override
  String get update_failed => 'Échec de la mise à jour';

  @override
  String get delete_failed => 'Échec de la suppression';
}
