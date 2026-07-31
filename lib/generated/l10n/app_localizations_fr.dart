// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get app_name => 'Conserver les objets dans un petit espace';

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
  String get success => 'réussite';

  @override
  String get warning => 'Avertissement';

  @override
  String get info => 'information';

  @override
  String get select_alert_days => 'Choisir le nombre de jours de rappel';

  @override
  String get custom => 'Personnalisé';

  @override
  String custom_days(Object days) {
    return 'Personnalisé ($days jours)';
  }

  @override
  String alert_days_range(Object min, Object max) {
    return 'Plage de jours de rappel : $min-$max jours';
  }

  @override
  String get enter_days => 'Veuillez entrer le nombre de jours de rappel';

  @override
  String get days => 'jours';

  @override
  String enter_valid_days(Object min, Object max) {
    return 'Veuillez entrer un nombre compris entre $min et $max';
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
  String get alert_days_settings => 'Paramètres du nombre de jours de rappel';

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
      'Permission refusée de manière permanente';

  @override
  String get calendar_permission_permanently_denied_desc =>
      'L\'accès au calendrier a été refusé de manière permanente, veuillez activer les autorisations manuellement dans les paramètres du système.';

  @override
  String get go_to_settings => 'Aller aux réglages';

  @override
  String get calendar_account_failed =>
      'Les autorisations du calendrier ont été accordées, mais il est impossible de créer un compte de calendrier. Veuillez vérifier les paramètres du calendrier du système.';

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
  String test_notification_failed(Object error) {
    return 'Échec de l\'envoi de la notification de test : $error';
  }

  @override
  String get notification_permission_required =>
      'Les autorisations de notification sont nécessaires pour activer les rappels locaux';

  @override
  String operation_failed(Object error) {
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
  String backup_failed(Object error) {
    return 'Sauvegarde échouée : $error';
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
  String restore_success(Object count) {
    return 'Restauration réussie, $count articles en tout';
  }

  @override
  String restore_failed(Object error) {
    return 'Échec de la restauration : $error';
  }

  @override
  String get select_backup_file => 'Choisir le fichier de sauvegarde';

  @override
  String get restore_backup => 'Restaurer la sauvegarde';

  @override
  String selected_file(Object filename) {
    return 'Fichier sélectionné : $filename';
  }

  @override
  String get export_success => 'Exportation des données réussie';

  @override
  String export_failed(Object error) {
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
      'Importer des données écrasera les données existantes, cette opération est irréversible. Voulez-vous continuer ?';

  @override
  String import_success(Object count) {
    return 'Importation des données réussie, un total de $count articles importés';
  }

  @override
  String import_failed(Object error) {
    return 'Échec de l\'importation : $error';
  }

  @override
  String get select_file => 'Choisir un fichier';
}
