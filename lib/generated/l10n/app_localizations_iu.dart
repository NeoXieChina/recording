// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Inuktitut (`iu`).
class AppLocalizationsIu extends AppLocalizations {
  AppLocalizationsIu([String locale = 'iu']) : super(locale);

  @override
  String get app_name => 'ᐱᒻᒪᕆᐊᓗᒃ ᓂᕈᑭᑦᑐᒥ';

  @override
  String get cancel => 'ᓄᖅᑲᖅᑎᓪᓗᒍᑦ';

  @override
  String get confirm => 'ᓇᓗᓇᐃᕐᓗᒍ';

  @override
  String get save => 'ᐱᐅᖅᓱᐊᕐᓗᒍ';

  @override
  String get delete => 'ᐲᕐᓗᒍ';

  @override
  String get edit => 'ᐋᖅᑭᒋᐊᕐᓗᒍ';

  @override
  String get add => 'ᐃᓚᓗᒍ';

  @override
  String get edit_item => 'ᐋᖅᑭᒋᐊᕐᓗᒍ ᐱᔾᔪᑕᐅᔪᖅ';

  @override
  String get add_item => 'ᐃᓚᓗᒍ';

  @override
  String get search => 'ᕿᓂᕐᓂᖅ';

  @override
  String get settings => 'ᐋᖅᑭᒃᓯᒪᓂᖏᑦ';

  @override
  String get language_settings => 'ᐅᖃᐅᓰᑦ ᐋᖅᑭᒃᓯᒪᓂᖏᑦ';

  @override
  String get language_settings_description =>
      'ᐋᖅᑭᒡᓗᒍ ᖃᕋᓴᐅᔭᒃᑰᕈᑎᐅᑉ ᓴᖅᑭᔮᖅᑎᑕᖓᑕ ᐅᖃᐅᓯᖅᑕᖓ';

  @override
  String get system_default => 'ᐱᓕᕆᔾᔪᓰᑦ ᐊᔪᓕᖅᓯᒪᔪᑦ';

  @override
  String get use_system_language => 'ᐊᑐᕐᓗᒍ ᐊᑐᖅᑕᐅᕙᒃᑐᖅ ᐅᖃᐅᓯᖅᑕᖅ';

  @override
  String get language_change_hint =>
      'ᐅᖃᐅᓯᖅᑕᖅ ᐊᓯᔾᔨᖅᑕᐅᓂᖓ ᐊᑐᓕᕐᓂᐊᖅᑐᖅ ᐱᓇᔫᑦ ᐱᒋᐊᒃᑲᓐᓂᓚᐅᖅᑎᓪᓗᒍ.';

  @override
  String get back => 'ᐅᑎᕐᕕᒋᓗᒍ';

  @override
  String get next => 'ᑭᖑᓪᓕᕐᒥ ᐱᓕᕆᐊᖑᔪᒃᓴᑦ';

  @override
  String get done => 'ᐱᐊᓂᒃᑕᖅ';

  @override
  String get loading => 'ᐴᖅᑲᐃᕙᓪᓕᐊᓂᖅ...';

  @override
  String get error => 'ᑕᒻᒪᕐᓂᖅ';

  @override
  String get success => 'ᑲᔪᓯᑦᑎᐊᕐᓂᖅ';

  @override
  String get warning => 'ᐃᓂᖅᑎᕆᓂᖅ';

  @override
  String get info => 'ᑐᓴᐅᒪᔾᔪᑎᒃᓴᑦ';

  @override
  String get select_alert_days => 'ᓂᕈᐊᕐᓗᑎᑦ ᐃᖅᑲᐃᓯᒋᐊᕈᑎᑦ ᐅᓪᓗᖏᓐᓂᑦ';

  @override
  String get custom => 'ᐃᓕᖅᑯᓯᒃᑯᑦ';

  @override
  String custom_days(int days) {
    return 'ᐃᓕᖅᑯᓯᒃᑯᑦ ($days ᐅᓪᓗᐃᑦ)';
  }

  @override
  String current_selection(int days) {
    return 'ᒫᓐᓇ ᓂᕈᐊᖅᑕᐅᔪᑦ: $days ᐅᓪᓗᐃᑦ';
  }

  @override
  String alert_days_range(int min, int max) {
    return 'ᐃᖅᑲᐃᓯᒋᐊᕈᑎ ᐅᓪᓗᐃᑦ: $min-$max ᐅᓪᓗᐃᑦ';
  }

  @override
  String get enter_days => 'ᑎᑎᕋᕐᓗᒋᑦ ᐃᖅᑲᐃᓯᒋᐊᕈᑎᑦ ᐅᓪᓗᐃᑦ';

  @override
  String get days => 'ᐅᓪᓗᐃᑦ ᖃᔅᓯᐅᓂᖏᑦ';

  @override
  String enter_valid_days(int min, int max) {
    return 'ᓈᓴᐅᑎᒥᒃ ᑎᑎᕋᕐᓗᑎᑦ $min ᐊᒻᒪ $max';
  }

  @override
  String get alert_settings => 'ᖃᐅᔨᓴᕈᑎᑦ ᐋᖅᑭᒃᓯᒪᓂᖏᑦ';

  @override
  String get calendar_settings => 'ᐅᓪᓗᖅᓯᐅᑎᐅᑉ ᐋᖅᑭᒃᓯᒪᓂᖓ';

  @override
  String get calendar_sync => 'ᐅᓪᓗᖅᓯᐅᑎᑦ ᐊᑕᐅᑦᑎᒃᑰᖅᑎᑕᐅᓂᖏᑦ';

  @override
  String get calendar_sync_desc =>
      'ᑐᒃᓯᕋᕐᓂᐊᖅᑐᖅ ᐅᓪᓗᖅᓯᐅᑎᒧᑦ ᐱᔪᓐᓇᖅᑎᑕᐅᓂᕐᒥᒃ ᐊᔪᕈᓐᓃᖅᑎᑕᐅᒃᐸᑦ';

  @override
  String get add_test_calendar_event => 'ᐃᓚᓗᒍ ᖃᐅᔨᓴᕈᑎ ᐅᓪᓗᖅᓯᐅᑎᒧᑦ ᖃᓄᐃᓕᐅᕐᓂᐅᔪᖅ';

  @override
  String get enable_calendar_sync_first =>
      'ᓇᕿᖅᑳᕐᓗᒍ \'ᐅᓪᓗᖅᓯᐅᑎᒧᑦ ᐊᑕᐅᑦᑎᒃᑰᓕᖅᑎᑦᑎᓂᖅ\' ᐃᑭᑦᑕᐅᑎᖓ';

  @override
  String get app_alert_settings => 'App ᖃᐅᔨᒃᑲᐃᓂᕐᒧᑦ ᐋᖅᑭᒃᓯᒪᓂᖏᑦ';

  @override
  String get local_alerts => 'ᓄᓇᓕᖕᓂ ᐃᖅᑲᐃᓯᒋᐊᕈᑎ';

  @override
  String get local_alerts_desc =>
      'ᐱᖃᑦᑕᕐᓗᑎᑦ ᐃᓗᐊᒍᑦ ᐊᑐᕈᓐᓃᕐᓂᕐᒧᑦ ᐃᖅᑲᐃᓯᒋᐊᕈᑎᓂᒃ ᐊᔪᕈᓐᓃᖅᑎᑕᐅᕌᓪᓚᓚᐅᕐᓗᓂ';

  @override
  String get send_test_notification => 'ᓇᒃᓯᐅᑎᓗᒍ ᖃᐅᔨᓴᕈᑎᒧᑦ ᖃᐅᔨᒃᑲᐃᔾᔪᑎ';

  @override
  String get enable_local_alerts_first =>
      'ᐃᑭᖅᑳᕐᓗᒍ \'Local Notifications\' ᐃᑭᑦᑕᐅᑎᖓ';

  @override
  String get alert_days_settings => 'ᐃᖅᑲᐃᓯᒋᐊᕈᑎ ᐅᓪᓗᐃᑦ ᐋᖅᑭᒃᓯᒪᓂᖓ';

  @override
  String get advance_alert_days => 'ᐅᓪᓗᑦ ᖃᔅᓯᐅᓂᖏᑦ ᓯᕗᓂᐊᒍᑦ ᖃᐅᔨᒃᑲᐃᔾᔪᑎ';

  @override
  String get advance_alert_days_desc =>
      'ᐋᖅᑭᒃᓯᓗᑎᑦ ᖃᔅᓯᓂᒃ ᐅᓪᓗᓂᒃ ᓯᕗᓂᐊᒍᑦ ᐃᖅᑲᐃᓯᓂᐊᕐᓗᒍ ᐱᖁᑎ ᐃᓱᓕᕝᕕᒃᓴᖓ ᐅᕝᕙᓘᓐᓃᑦ ᓇᓪᓕᐅᒃᑯᒫᖓ ᐃᓱᓕᕝᕕᒃᓴᖓ';

  @override
  String get calendar_permission_request => 'ᐅᓪᓗᖅᓯᐅᑎᒧᑦ ᐊᖏᖅᑕᐅᓂᕐᒧᑦ ᑐᒃᓯᕋᐅᑦ';

  @override
  String get calendar_permission_desc =>
      'ᐊᑐᕈᓐᓇᕐᓂᖅ ᐅᓪᓗᖅᓯᐅᑎᒥᒃ ᐱᔭᐅᔭᕆᐊᖃᖅᐳᖅ ᐊᑕᐅᑦᑎᒃᑰᓕᖅᑎᑦᑎᓂᐊᕐᓗᓂ ᐱᖁᑎᓄᑦ ᐃᖅᑲᐃᓯᔾᔪᑎᓂᒃ. ᐱᔪᓐᓇᖅᑎᑦᑎᕚ?';

  @override
  String get allow => 'ᐱᕕᖃᖅᑎᑦᓯᓂᖅ';

  @override
  String get calendar_permission_granted =>
      'ᐅᓪᓗᖅᓯᐅᑎᓄᑦ ᐱᔪᓐᓇᖅᑎᑕᐅᔪᑦ ᑐᓂᔭᐅᓯᒪᓕᖅᑐᑦ, ᐅᓪᓗᖅᓯᐅᑎᓪᓗ ᐊᑕᐅᑦᑎᒃᑰᖅᑎᑕᐅᓂᖏᑦ ᐊᔪᕈᓐᓃᖅᑎᑕᐅᓪᓗᑎᒃ';

  @override
  String get calendar_permission_denied =>
      'ᐅᓪᓗᖅᓯᐅᑎᒧᑦ ᐱᔪᓐᓇᖅᑎᑕᐅᓂᖅ ᐋᒃᑳᖅᑕᐅᓚᐅᖅᐳᖅ, ᐊᔪᖅᑎᑦᑎᓪᓗᓂ ᐅᓪᓗᖅᓯᐅᑎᒥᒃ ᐊᑕᐅᑦᑎᒃᑰᓕᖅᑎᑦᑎᓂᕐᒥᒃ';

  @override
  String get calendar_permission_permanently_denied =>
      'ᐱᔪᓐᓇᖅᑎᑕᐅᓂᖅ ᐋᒃᑳᖅᑕᐅᖏᓐᓇᖅᑐᖅ';

  @override
  String get calendar_permission_permanently_denied_desc =>
      'ᐅᓪᓗᖅᓯᐅᑎᒧᑦ ᐊᖏᖅᑕᐅᓂᖅ ᐋᒃᑳᖅᑕᐅᖏᓐᓇᐅᔭᖅᑐᖅ. ᐊᒡᒐᒃᑯᑦ ᓇᕿᓪᓗᒍ ᐱᔪᓐᓇᖅᑎᑦᑎᔾᔪᑎ ᐊᑐᖃᑦᑕᖅᑕᖓᑕ ᐋᖅᑭᒃᓯᒪᓂᖏᓐᓂ.';

  @override
  String get go_to_settings => 'Settings ᐅᕗᙵᕐᓗᑎᑦ';

  @override
  String get calendar_account_failed =>
      'ᐅᓪᓗᖅᓯᐅᑎᓄᑦ ᐱᔪᓐᓇᖅᑎᑕᐅᔪᑦ ᑐᓂᔭᐅᓯᒪᓕᖅᑐᑦ, ᑭᓯᐊᓂ ᐅᓪᓗᖅᓯᐅᑎᒧᑦ ᐃᓯᕈᓐᓇᐅᑎᒥᒃ ᓴᖅᑭᑦᑎᔪᓐᓇᙱᑦᑐᑦ. ᖃᐅᔨᒋᐊᕐᓗᒍ ᐊᑐᖅᑕᐅᖃᑦᑕᖅᑐᖅ ᐅᓪᓗᖅᓯᐅᑎᖓᑕ ᐋᖅᑭᒃᓯᒪᓂᖏᑦ.';

  @override
  String get calendar_account_created =>
      'ᐅᓪᓗᖅᓯᐅᑎᓄᑦ ᐱᔪᓐᓇᖅᑎᑕᐅᔪᑦ ᑐᓂᔭᐅᓯᒪᓕᖅᑐᑦ, ᐊᒻᒪᓗ ᓄᓇᓕᖕᒥ ᐅᓪᓗᖅᓯᐅᑎᒧᑦ ᐃᓯᕈᓐᓇᐅᑎᒥᒃ ᐋᖅᑭᒃᓯᓯᒪᓕᖅᖢᑎᒃ';

  @override
  String get calendar_account_creating =>
      'ᐅᓪᓗᖅᓯᐅᑎᒧᑦ ᑐᖅᑯᖅᓯᕕᒃ ᓴᖅᑭᑕᐅᑦᑎᐊᓚᐅᖅᐳᖅ, ᑭᓯᐊᓂ ᐱᓕᕆᔾᔪᓯᖅ ᐊᑯᓂᑲᓪᓚᒃ ᐊᑐᓕᕋᓱᑐᐃᓐᓇᕆᐊᓕᒃ.';

  @override
  String get test_calendar_event_added => 'ᖃᐅᔨᓴᕈᑎ ᐅᓪᓗᖅᓯᐅᑎ ᐃᓚᔭᐅᑦᑎᐊᖅᑐᖅ';

  @override
  String get test_calendar_event_failed =>
      'ᐃᓚᓯᔪᓐᓇᙱᖦᖢᖓ ᖃᐅᔨᓴᕈᑎᒥᒃ ᐅᓪᓗᖅᓯᐅᑎᒧᑦ ᖃᓄᐃᓕᐅᕐᓂᐅᓂᐊᖅᑐᒥᒃ, ᖃᐅᔨᒋᐊᕐᓗᒍ ᐅᓪᓗᖅᓯᐅᑎᕕᑦ ᐋᖅᑭᒃᓯᒪᓂᕆᔭᖓ';

  @override
  String get calendar_permission_required =>
      'ᐅᓪᓗᖅᓯᐅᑎᒧᑦ ᐊᖏᖅᑕᐅᔭᕆᐊᖃᖅᐳᖅ ᐃᓚᓯᓂᐊᕐᓗᓂ ᖃᐅᔨᓴᕈᑎᒥᒃ';

  @override
  String get test_notification_sent => 'ᖃᐅᔨᓴᖅᑕᐅᓂᕐᒧᑦ ᖃᐅᔨᒃᑲᐃᔾᔪᑎ ᓇᒃᓯᐅᔾᔭᐅᓯᒪᓕᖅᑐᖅ';

  @override
  String test_notification_failed(String error) {
    return 'ᓇᒃᓯᐅᔾᔨᓚᐅᙱᑦᑐᖅ ᖃᐅᔨᓴᕈᑎᒧᑦ ᖃᐅᔨᒃᑲᐃᔾᔪᑎᒥᒃ: $error';
  }

  @override
  String get notification_permission_required =>
      'ᖃᐅᔨᒃᑲᐃᓂᕐᒧᑦ ᐱᔪᓐᓇᐅᑎᑦ ᐱᔭᐅᔭᕆᐊᖃᖅᐳᑦ ᐊᔪᖅᑎᑦᑎᔪᒪᙱᒃᑯᑎᒃ ᓄᓇᓕᖕᓂ ᐃᖅᑲᐃᓯᒋᐊᕈᑎᓂᒃ';

  @override
  String operation_failed(String error) {
    return 'ᐊᐅᓚᓂᖓ ᑲᔪᓯᓚᐅᙱᑦᑐᖅ: $error';
  }

  @override
  String get notification_channel_name => 'ᐅᔾᔨᖅᓱᖁᔨᓂᕐᒧᑦ ᖃᐅᔨᒃᑲᐃᔾᔪᑎ';

  @override
  String get notification_channel_description =>
      'ᐱᖁᑎᐅᑉ ᐃᓱᓕᕝᕕᒃᓴᖓ ᐊᓯᔾᔨᖅᑕᐅᔪᓐᓇᕈᑖᓄᓪᓘᓐᓃᑦ ᐃᖅᑲᐃᑎᑦᑎᔾᔪᑎ';

  @override
  String get item_category_food => 'ᓂᖀᑦ';

  @override
  String get item_category_daily_necessities => 'ᖃᐅᑕᒫᑦ ᐊᑐᕆᐊᓕᑦ';

  @override
  String get item_category_cosmetics => 'ᐱᐅᓴᐅᑎᑦ';

  @override
  String get item_category_medicine => 'ᐃᓅᓕᓴᐅᑎᑦ';

  @override
  String get item_category_electronics => 'ᐅᐊᔭᒨᖅᑐᑦ ᐱᖁᑎᑦ';

  @override
  String get item_category_furniture => 'ᐃᒡᓗᒥᓯᐅᑎᑦ';

  @override
  String get item_category_clothing => 'ᐊᓐᓄᕌᑦ';

  @override
  String get item_category_books => 'ᐅᖃᓕᒫᒐᑦ';

  @override
  String get item_category_other => 'ᐊᓯᖏᑦ';

  @override
  String get purchase_channel_online_mall => 'ᐃᑭᐊᖅᑭᕕᒃᑯᑦ ᓂᐅᕕᕐᕕᒃ';

  @override
  String get purchase_channel_physical_store => 'ᓂᐅᕕᕐᕕᒃ';

  @override
  String get purchase_channel_supermarket => 'ᓂᐅᕕᕐᕕᒃ';

  @override
  String get purchase_channel_specialty_store => 'ᓂᐅᕕᕐᕕᑐᐊᖅ';

  @override
  String get purchase_channel_secondhand_market => 'ᐊᑐᕐᓂᑯᓂᒃ ᓂᐅᕕᐊᒃᓴᖃᕐᓂᖅ';

  @override
  String get purchase_channel_other => 'ᐊᓯᖏᑦ';

  @override
  String get default_category => 'ᐊᓯᖏᑦ';

  @override
  String get default_purchase_channel => 'ᐃᑭᐊᖅᑭᕕᒃᑯᑦ ᓂᐅᕕᕐᕕᒃ';

  @override
  String get item_category => 'ᐱᖁᑎᑦ ᓇᓃᓐᓂᖏᑦ';

  @override
  String get custom_category => 'ᐃᓕᖅᑯᓯᒃᑯᑦ ᖃᓄᐃᑦᑑᓂᖓ';

  @override
  String get backup_data => 'ᑭᖑᕝᕕᐅᑎᔪᒃᓴᑦ ᑎᑎᖅᑲᑦ';

  @override
  String get backup_data_description =>
      'ᑲᑎᖅᓱᕐᓗᒋᑦ ᑎᑎᖅᑲᓕᒫᑦ (ᐊᔾᔨᙳᐊᑦ ᐃᓚᐅᓗᑎᒃ) ZIP ᑐᖅᑯᖅᓯᒪᕝᕕᖕᒧᑦ ᑭᖑᕝᕕᐅᑎᓂᐊᕐᓗᒋᑦ';

  @override
  String get backup_all_data => 'ᑭᖑᕝᕕᐅᑎᓗᒋᑦ ᑎᑎᖅᑲᓕᒫᑦ';

  @override
  String get backup_success => 'ᑭᖑᕝᕕᐅᑎᓂᖅ ᑲᔪᓯᓂᖃᑦᑎᐊᖅᑐᖅ';

  @override
  String backup_failed(String error) {
    return 'ᑭᖑᕝᕕᐅᑎᔪᒃᓴᖅ ᐊᔪᖅᑐᖅ: $error';
  }

  @override
  String get restore_data => 'ᐅᑎᖅᑎᑉᐸᒡᓗᒋᑦ ᑎᑎᕋᖅᓯᒪᔪᑦ ᖃᐅᔨᓴᖅᑕᐅᓂᑯᐃᑦ';

  @override
  String get restore_data_description =>
      'ᐅᑎᖅᑎᑕᐃᓐᓇᕆᓗᒋᑦ ᑎᑎᕋᖅᓯᒪᔪᑦ ZIP ᑭᖑᕝᕕᐅᑎᔪᒃᓴᑦ ᑐᖅᑯᖅᓯᒪᕝᕕᖕᒥ';

  @override
  String get export_data => 'ᐊᐅᓪᓚᖅᑎᑦᑎᖃᑦᑕᕐᓂᕐᒧᑦ ᑎᑎᕋᖅᓯᒪᔪᑦ ᖃᐅᔨᓴᖅᑕᐅᓂᑯᐃᑦ';

  @override
  String get export_data_description => 'ᓇᒃᓯᐅᑎᓗᒋᑦ CSV, TXT, SQL ᐋᖅᑭᒃᓯᒪᓂᖓᒍᑦ';

  @override
  String get import_data => 'ᑲᓇᑕᐅᑉ ᓯᓚᑖᓂᙶᖅᑐᑦ ᑎᑎᕋᖅᓯᒪᔪᑦ ᖃᐅᔨᓴᖅᑕᐅᓂᑯᐃᑦ';

  @override
  String get import_data_description =>
      'ᐃᓕᐅᖅᑲᐃᓂᖅ ᑎᑎᖅᑲᓂᒃ CSV, TXT, SQL ᑐᖅᑯᖅᑕᐅᓯᒪᔪᓂᑦ';

  @override
  String get alert_settings_description =>
      'ᐅᓪᓗᖅᓯᐅᑎᓄᑦ ᐃᖅᑲᐃᓯᒋᐊᕈᑎᑦ ᐊᒻᒪ ᖃᕋᓴᐅᔭᒃᑰᕈᑎᒧᑦ ᖃᐅᔨᒃᑲᐃᔾᔪᑎᑦ ᐋᖅᑭᒃᓯᒪᓂᖏᑦ';

  @override
  String get about => 'ᒥᒃᓵᓄᑦ';

  @override
  String get about_description => 'App Information and Version';

  @override
  String get select_backup_file_first => 'ᓂᕈᐊᖅᑳᕐᓗᑎᑦ ᑭᖑᕝᕕᐅᑎᔪᒃᓴᒥᒃ ᑐᖅᑯᖅᓯᓯᒪᕝᕕᖕᒥ';

  @override
  String get confirm_restore => 'ᓇᓗᓇᐃᕐᓗᒍ ᐅᑎᖅᑎᑕᐅᓂᖓ';

  @override
  String get confirm_restore_message =>
      'ᐅᑎᖅᑎᑉᐸᒡᓗᒋᑦ ᓇᓪᓕᐅᒃᑯᒫᑦ ᐲᔭᖅᑕᐅᓇᔭᖅᑐᑦ ᑎᑎᖅᑲᓕᒫᑦ ᐃᓇᖏᖅᑕᐅᓗᑎᒡᓗ ᑭᖑᕝᕕᐅᑎᔪᒃᓴᓄᑦ ᑎᑎᖅᑲᓄᑦ. ᑕᒪᓐᓇ ᐱᓕᕆᓂᐅᔪᖅ ᓄᖅᑲᖅᑎᑕᐅᔪᓐᓇᙱᓚᖅ. ᑲᔪᓰᓐᓇᕈᒪᕖᑦ?';

  @override
  String get confirm_again => 'ᓇᓗᓇᐃᒃᑲᓐᓂᕐᓗᒍ';

  @override
  String get confirm_restore_warning =>
      'ᖃᐅᔨᒪᑦᑎᐊᖅᐲᑦ ᐲᔭᕈᒪᔭᐃᓐᓇᕆᓗᒋᑦ ᐱᑕᖃᖅᐸᒌᖅᑐᑦ ᑎᑎᕋᖅᓯᒪᔪᑦ ᐅᑎᖅᑎᓪᓗᒋᓪᓗ ᓇᓪᓕᐅᒃᑯᒫᑦ? ᑕᒪᓐᓇ ᖃᓄᐃᓕᐅᕐᓂᐅᔪᖅ ᓄᖅᑲᖅᑎᑕᐅᔪᓐᓇᙱᓚᖅ!';

  @override
  String get confirm_restore_button => 'ᓇᓗᓇᐃᕐᓗᒍ ᐅᑎᖅᑎᑕᐅᓂᖓ';

  @override
  String restore_success(int count) {
    return 'ᓴᓇᔭᐅᒃᑲᓐᓂᕐᓂᖓ ᑲᔪᓯᑦᑎᐊᖅᑐᖅ, ᑲᑎᖦᖢᒋᑦ $count ᐱᖁᑎᑦ';
  }

  @override
  String restore_failed(String error) {
    return 'ᐅᑎᖅᑎᑦᑎᔪᓐᓇᓚᐅᙱᓚᖅ: $error';
  }

  @override
  String get select_backup_file => 'ᓂᕈᐊᕐᓗᒍ ᑭᖑᕝᕕᐅᑎᔪᒃᓴᖅ ᑐᖅᑯᖅᓯᒪᕝᕕᒃ';

  @override
  String get restore_backup => 'ᐅᑎᖅᑎᒃᑲᓐᓂᕐᓗᒍ ᑭᖑᕝᕕᐅᑎᔪᒃᓴᖅ';

  @override
  String selected_file(String filename) {
    return 'ᓂᕈᐊᖅᑕᐅᔪᖅ ᑎᑎᖅᑲᒃᑯᕕᒃ: $filename';
  }

  @override
  String get export_success => 'ᑎᑎᕋᖅᓯᒪᔪᑦ ᖃᐅᔨᓴᖅᑕᐅᓂᑯᐃᑦ ᐊᐅᓪᓚᖅᑎᑕᖏᑦ ᑲᔪᓯᑦᑎᐊᖅᑐᑦ';

  @override
  String export_failed(String error) {
    return 'ᐊᐅᓪᓚᖅᑎᑦᑎᔪᓐᓇᓚᐅᙱᑦᑐᑦ: $error';
  }

  @override
  String get format_csv => 'CSV';

  @override
  String get format_txt => 'TXT';

  @override
  String get format_sql => 'SQL';

  @override
  String get duplicate_data_handling => 'ᐊᔾᔨᖏᓐᓂᒃ ᑎᑎᕋᖅᓯᒪᔪᓂᒃ ᐱᓕᕆᕙᓪᓕᐊᓂᖅ';

  @override
  String get duplicate_data_detected =>
      'ᐊᔾᔨᖏᓐᓂᒃ ᑎᑎᕋᖅᓯᒪᔪᓂᒃ ᖃᐅᔨᔭᐅᔪᖃᖅᐸᑦ, ᓂᕈᐊᕐᓗᑎᑦ ᑲᒪᒋᔭᖃᕐᓂᕐᒧᑦ ᐊᑐᖅᑕᐅᔪᓐᓇᖅᑐᒥᒃ:';

  @override
  String get skip => 'ᐊᓪᓗᕐᓗᒍ';

  @override
  String get overwrite => 'ᖄᖓ';

  @override
  String get skip_all => 'ᖄᖏᖅᑕᐃᓐᓇᕆᓗᒋᑦ';

  @override
  String get overwrite_all => 'ᐊᑕᖏᖅᖢᒍ ᐅᖃᐅᓯᐅᓯᒪᔪᖅ';

  @override
  String get select_import_format_first => 'ᓂᕈᐊᖅᑳᕐᓗᒍ ᓇᒃᓯᐅᔾᔨᓂᕐᒧᑦ ᐋᖅᑭᒃᓯᒪᓂᖓ';

  @override
  String get confirm_import => 'ᓇᓗᓇᐃᕐᓗᒍ ᑲᓇᑕᐅᑉ ᓯᓚᑖᓂᙶᖅᑐᖅ';

  @override
  String get confirm_import_message =>
      'ᐃᓕᐅᖅᑲᐃᓂᖅ ᑎᑎᕋᖅᓯᒪᔪᓂᒃ ᖄᖏᐅᑎᓂᐊᖅᐳᖅ ᐱᑕᖃᖅᐸᒌᖅᑐᓂᒃ ᑎᑎᕋᖅᓯᒪᔪᓂᒃ. ᑕᒪᓐᓇ ᐱᓕᕆᓂᐅᔪᖅ ᓄᖅᑲᖅᑎᑕᐅᔪᓐᓇᙱᓚᖅ. ᑲᔪᓰᓐᓇᕈᒪᕖᑦ?';

  @override
  String import_success(int count) {
    return 'ᑎᑎᕋᖅᓯᒪᔪᑦ ᖃᐅᔨᓴᖅᑕᐅᓂᑯᐃᑦ ᐃᓕᐅᖅᑲᖅᑕᐅᑦᑎᐊᓚᐅᖅᑐᑦ, ᑲᑎᖦᖢᒋᑦ $count ᐱᖁᑎᑦ ᑎᑭᑎᑕᐅᓚᐅᖅᑐᑦ';
  }

  @override
  String import_failed(String error) {
    return 'ᑎᑭᑎᑕᐅᓂᖓ ᐊᔪᖅᑐᖅ: $error';
  }

  @override
  String get select_file => 'ᓂᕈᐊᕐᓗᒍ ᑐᖅᑯᖅᓯᒪᕝᕕᒃ';

  @override
  String get no_data => 'ᑎᑎᕋᖅᓯᒪᔪᓂᑦ ᖃᐅᔨᓴᖅᑕᐅᓂᑯᓂᑦ ᐊᑐᐃᓐᓇᖅᑕᖃᙱᑦᑐᖅ';

  @override
  String get no_data_description =>
      'ᒫᓐᓇ ᑎᑎᕋᖅᓯᒪᔪᖅᑕᖃᙱᓚᖅ. ᓇᕿᓪᓗᒍ ᓇᕿᑦᑕᒐᖅ ᐊᑖᓃᑦᑐᖅ ᐃᓚᓯᔪᒪᒍᕕᑦ ᓯᕗᓪᓕᖅᐹᒥᑦ ᓂᐱᓕᐅᖅᓯᒪᔪᒥᑦ!';

  @override
  String get load_failed => 'ᐴᖅᑲᐃᓂᖅ ᐊᔪᖅᑐᖅ';

  @override
  String get load_failed_description =>
      'ᑎᑎᕋᖅᓯᒪᔪᑦ ᖃᐅᔨᓴᖅᑕᐅᓂᑯᐃᑦ ᐊᔪᖅᑐᖅ, ᖃᐅᔨᒋᐊᕐᓗᒍ ᑲᓱᖃᑎᒌᑦᓯᒪᔾᔪᑎ ᐱᒋᐊᒃᑲᓐᓂᕐᓗᒍᓗ';

  @override
  String get retry => 'ᐱᒋᐊᒃᑲᓐᓂᕐᓂᖅ';

  @override
  String get network_connection_failed => 'ᑲᓱᖃᑎᒌᑦᓯᒪᔾᔪᑦ ᐊᔪᓕᖅᑐᖅ';

  @override
  String get network_connection_failed_description =>
      'ᖃᐅᔨᒋᐊᕐᓗᒍ ᐃᑭᐊᖅᑭᕕᒃᑰᕈᓐᓇᐅᑎᑦ ᐆᒃᑐᒃᑲᓐᓂᕐᓗᒍᓗ';

  @override
  String get no_results => 'ᓇᓂᓯᔪᖃᓚᐅᙱᑦᑐᖅ';

  @override
  String get no_results_description => 'ᕿᓂᕋᓱᒃᐸᒡᓗᑎᑦ ᐊᓯᖏᓐᓂᒃ ᐅᖃᐅᓯᕐᓂᒃ';

  @override
  String get clear_search => 'ᑐᑭᓯᓇᑦᑎᐊᖅᑐᒥᒃ ᕿᓂᕐᓂᖅ';

  @override
  String get insufficient_permission => 'ᓈᒻᒪᙱᓗᐊᖅᑐᑦ ᐱᔪᓐᓇᖅᑎᑕᐅᔪᑦ';

  @override
  String get insufficient_permission_description =>
      'ᓈᒻᒪᒃᑐᓂᒃ ᐱᔪᓐᓇᐅᑎᖃᕆᐊᖃᖅᐳᑎᑦ ᐊᑐᕐᓂᐊᕐᓗᒍ ᑖᓐᓇ ᐊᑐᖅᑕᐅᔪᓐᓇᖅᑐᖅ';

  @override
  String get request_permission => 'ᑐᒃᓯᕋᕐᓂᖅ ᐱᔪᓐᓇᖅᑎᑕᐅᓂᕐᒥᒃ';

  @override
  String get app_info => 'ᐱᓇᔫᑦ ᑐᑭᓯᒋᐊᕈᑎᖏᑦ';

  @override
  String get version => 'ᖃᓄᐃᑦᑑᓂᖓ';

  @override
  String get developer => 'ᐱᕙᓪᓕᐊᑎᑦᑎᔨ';

  @override
  String get device_info => 'ᐅᖃᓘᑎᐅᑉ ᒥᒃᓵᓅᖓᔪᑦ';

  @override
  String get device_model => 'ᐱᖁᑎᐅᑉ ᖃᓄᐃᑦᑑᓂᖓ';

  @override
  String get brand => 'ᖃᓄᐃᑦᑑᓂᖓ';

  @override
  String get device_name => 'ᐱᖁᑎᐅᑉ ᐊᑎᖓ';

  @override
  String get product => 'ᐱᖁᑎ';

  @override
  String get hardware => 'ᓴᓇᕐᕈᑎᑦ';

  @override
  String get android_version => 'Android version';

  @override
  String get sdk_version => 'SDK Version';

  @override
  String get system_name => 'ᐱᓕᕆᔾᔪᓯᐅᑉ ᐊᑎᖓ';

  @override
  String get operating_system => 'ᐊᐅᓚᑦᑎᔾᔪᑎᑦ';

  @override
  String get system_version => 'ᐱᓕᕆᔾᔪᓯᐅᑉ ᖃᓄᐃᓕᖓᓂᖓ';

  @override
  String get dart_version => 'ᓇᐅᒃᑲᖅᑕᐅᑎᙳᐊᖅ';

  @override
  String get device_identifier => 'ᐱᖁᑎᐅᑉ ᓇᓗᓇᐃᒃᑯᑕᖓ';

  @override
  String get computer_name => 'ᖃᕆᑕᐅᔭᐅᑉ ᐊᑎᖓ';

  @override
  String get build_number => 'ᑎᑎᕋᖅᓯᒪᓂᖓᑕ ᓈᓴᐅᑖ';

  @override
  String error_getting_device_info(String error) {
    return 'ᖃᕆᑕᐅᔭᒃᑰᕈᑎᐅᑉ ᒥᒃᓵᓅᖓᔪᓂᒃ ᐱᔪᓐᓇᙱᑦᑐᖓ: $error';
  }

  @override
  String get features => 'ᖃᓄᐃᓕᐅᕐᓂᐅᔪᒧᑦ ᓇᓗᓇᐃᔭᐅᑎ';

  @override
  String get app_description => 'Smart Item ᐊᐅᓚᑦᑎᔾᔪᑎᓄᑦ ᐱᓇᔫᑎ';

  @override
  String get app_description_detail =>
      'ᐃᓕᖕᓂᒃ ᐃᑲᔪᖅᐸᒃᐳᖅ ᐊᐅᓚᑦᑎᕝᕕᖃᕐᓂᕐᒥᒃ ᑐᓴᖅᑕᐅᔪᒃᓴᓂᒃ ᓲᕐᓗ ᐃᓱᓕᕝᕕᒃᓴᖏᑕ ᐅᓪᓗᖏᓐᓂᒃ ᓇᓪᓕᐅᒃᑯᒫᖅᑖᕈᓐᓇᕐᓂᖏᓐᓂᒡᓗ ᐱᖁᑎᑦ, ᐱᑎᑦᑎᕙᒃᖢᓂᓗ ᐃᓱᒪᑐᔪᓂᒃ ᐃᖅᑲᐃᑎᑦᑎᔾᔪᑎᓂᒃ.';

  @override
  String get consumable => 'ᓄᖑᑕᐅᕙᓪᓕᐊᕙᒃᑐᑦ';

  @override
  String get durable => 'ᓱᕋᒃᓴᕋᐃᙱᑦᑐᑦ ᐱᖁᑎᑦ';

  @override
  String get sort => 'ᐋᖅᑭᒃᓱᐃᓂᖅ';

  @override
  String get name_asc => 'ᐊᑎᖓ ᖁᕝᕙᖅᐸᓪᓕᐊᔪᖅ';

  @override
  String get name_desc => 'ᐊᑎᖓ ᐊᒻᒧᒃᐸᓪᓕᐊᔪᖅ';

  @override
  String get date_asc => 'ᐅᓪᓗᖅ ᖁᕝᕙᖅᐸᓪᓕᐊᔪᖅ';

  @override
  String get date_desc => 'ᐅᓪᓗᖅ ᐊᑦᑎᒃᓯᕙᓪᓕᐊᔪᖅ';

  @override
  String get price_asc => 'ᐃᒡᓗᒧᑦ ᐊᑭᖓ ᖁᕝᕙᖅᐸᓪᓕᐊᔪᖅ';

  @override
  String get price_desc => 'ᐊᑕᐅᓯᖅ ᐊᑭᖓ ᐊᑦᑎᒃᓯᕙᓪᓕᐊᔪᖅ';

  @override
  String get quantity_asc => 'ᖁᕝᕙᖅᐸᓪᓕᐊᔪᑦ ᐅᓄᕐᓂᖏᑦ';

  @override
  String get quantity_desc => 'ᖃᔅᓯᐅᓂᖏᑦ ᐅᓄᕈᓐᓃᖅᐸᓪᓕᐊᔪᑦ';

  @override
  String get total_price_asc => 'ᑲᑎᖦᖢᒋᑦ ᐊᑭᖓ ᖁᕝᕙᖅᐸᓪᓕᐊᔪᖅ';

  @override
  String get total_price_desc => 'ᑲᑎᖦᖢᒋᑦ ᐊᑭᖓ ᐊᑦᑎᒃᓯᕙᓪᓕᐊᔪᖅ';

  @override
  String get clear_all_filters => 'ᓱᕈᔾᔭᐃᒃᑯᑎᓕᒫᑦ ᐲᔭᕐᓗᒋᑦ';

  @override
  String get scan_barcode =>
      'ᐊᔾᔨᓕᐅᕐᓗᒍ ᓇᓗᓇᐃᒃᑯᑖ ᑎᑎᕋᕐᓂᐊᕐᓗᒍ ᓈᓴᖅᓯᒪᔪᑦ ᓇᖕᒥᓂᖁᑎᒋᔭᑦ ᐱᖁᑎᖏᑦ';

  @override
  String get search_items => 'ᕿᓂᕐᕖᑦ...';

  @override
  String get no_items => 'ᒫᓐᓇ ᐱᔭᒃᓴᖅᑕᖃᙱᑦᑐᖅ';

  @override
  String get no_items_description => 'ᓇᕿᓪᓗᒍ ᓇᕿᑦᑕᒐᖅ ᐊᑖᓃᑦᑐᖅ ᐃᓚᓯᔪᒪᒍᕕᑦ ᓯᕗᓪᓕᖅᐹᒥᒃ';

  @override
  String get expired => 'ᐃᓱᓕᑦᑐᖅ';

  @override
  String get expiring_soon => 'ᐃᓱᓕᕝᕕᒃᓴᓕᒃ';

  @override
  String get warranty_expired => 'ᐊᓯᔾᔨᖅᑕᐅᔪᓐᓇᕈᑖ ᐃᓱᓕᑦᑐᖅ';

  @override
  String get warranty_expiring_soon => 'ᓇᓪᓕᐅᒃᑯᒫᖓ ᐃᓱᓕᓕᒑᓕᖅᐳᖅ';

  @override
  String days_remaining(int count) {
    return '$count ᐊᒥᐊᒃᑯᑦ';
  }

  @override
  String expired_days_ago(int count) {
    return 'ᐅᓪᓗᑦ $count ᐃᓱᓕᑦᑐᑦ';
  }

  @override
  String get delete_item => 'ᐲᕐᓗᒍ ᐱᔾᔪᑕᐅᔪᖅ';

  @override
  String delete_item_confirm(String name) {
    return 'ᐲᖅᓯᔪᒪᓪᓚᑦᑖᖅᐲᑦ \"$name\"?';
  }

  @override
  String get item_deleted => 'ᐱᖁᑎ ᐲᖅᑕᐅᓯᒪᔪᖅ';

  @override
  String get failed_to_delete => 'ᐲᖅᓯᓂᖅ ᑲᔪᓯᓚᐅᙱᑦᑐᖅ';

  @override
  String failed_to_delete_message(String error) {
    return 'ᐲᖅᓯᔪᓐᓇᙱᑦᑐᖅ ᐱᖁᑎᒥᒃ: $error';
  }

  @override
  String get date_range_filter => 'ᐅᓪᓗᖓᑕ ᓇᓃᓐᓂᖓᓄᑦ ᖃᐅᔨᓴᕈᑎ';

  @override
  String get price_range_filter => 'ᐊᑭᖏᑕ ᐊᔾᔨᒌᙱᓐᓂᖏᓐᓄᑦ ᖃᐅᔨᓴᕈᑎ';

  @override
  String get my_items => 'ᐱᖁᑎᒃᑲ';

  @override
  String get click_fab_to_add_item =>
      'ᓇᕿᓪᓗᒍ ᓇᕿᑦᑕᒐᖅ ᐊᑖᓂ ᑕᓕᖅᐱᐊᓂ ᑎᕆᖅᑯᐊᓂ ᐃᓚᓯᔪᒪᒍᕕᑦ ᐱᖁᑎᒥᒃ';

  @override
  String get confirm_delete => 'ᓇᓗᓇᐃᕐᓗᒍ ᐲᖅᑕᐅᓂᖓ';

  @override
  String get filter_options => 'ᓱᕈᔾᔭᐃᒃᑯᑎᓄᑦ ᓇᓖᕌᒐᒃᓴᑦ';

  @override
  String get filter_by_type_category_location =>
      'ᐋᖅᑭᒃᓱᕐᓗᒋᑦ ᐱᖁᑎᑦ ᖃᓄᐃᑦᑑᓂᖏᑦᑎᒍᑦ, ᖃᓄᐃᑦᑑᓂᖏᑦᑎᒍᑦ, ᓇᓃᓐᓂᖏᓪᓗ';

  @override
  String categories_count(int count) {
    return '$count ᖃᓄᐃᑦᑑᓂᖏᑦ';
  }

  @override
  String get all_categories => 'ᑕᒪᕐᒥᒃ ᖃᓄᐃᑦᑑᓂᖏᑦ';

  @override
  String get no_category_data => 'ᖃᓄᐃᑦᑑᓂᖏᓐᓄᑦ ᑎᑎᕋᖅᓯᒪᔪᑦ ᖃᐅᔨᓴᖅᑕᐅᓂᑯᐃᑦ ᐊᑐᐃᓐᓇᐅᖏᑦᑐᑦ';

  @override
  String get storage_location => 'ᓯᕐᓗᐊᖃᕐᕕᐅᑉ ᐃᓂᖓ';

  @override
  String locations_count(int count) {
    return '$count ᓇᓃᓐᓂᖏᑦ';
  }

  @override
  String get all_locations => 'ᑕᒪᕐᒥᑦᑎᐊᖅ ᐃᓂᒋᔭᐅᔪᑦ';

  @override
  String get no_location_data => 'ᓇᓃᓐᓂᖏᓐᓄᑦ ᑎᑎᕋᖅᓯᒪᔪᑦ ᖃᐅᔨᓴᖅᑕᐅᓂᑯᐃᑦ ᐊᑐᐃᓐᓇᐅᙱᑦᑐᑦ';

  @override
  String get date_range => 'ᐅᓪᓗᖏᑦ';

  @override
  String get select_date_range => 'ᓂᕈᐊᕐᓗᒍ ᐅᓪᓗᖓ';

  @override
  String get price_range => 'ᐊᑭᖓ';

  @override
  String get unit_price_range => 'ᐃᒡᓗᒧᑦ ᐊᑭᖓ';

  @override
  String get min_unit_price => 'ᐊᑭᑭᓛᖅ ᐊᑕᐅᓯᖅ ᐊᑭᖓ';

  @override
  String get max_unit_price => 'ᐊᑭᑐᓛᖅ ᐃᒡᓗᒧᑦ ᐊᑭᖓ';

  @override
  String get total_price_range => 'ᑲᑎᖦᖢᒋᑦ ᐊᑭᖏᑦ';

  @override
  String get min_total_price => 'ᐊᑭᑭᓛᖓ ᑲᑎᖦᖢᒍ ᐊᑭᖓ';

  @override
  String get max_total_price => 'ᐊᑭᑐᓛᖓ ᑲᑎᖦᖢᒍ ᐊᑭᖓ';

  @override
  String get clear_price_filter => 'ᑐᑭᓯᓇᑦᑎᐊᖅᑐᖅ ᐊᑭᖓᓄᑦ ᖃᐅᔨᓴᕈᑎ';

  @override
  String get place_barcode_in_frame => 'ᐃᓕᓗᒍ ᓇᓗᓇᐃᒃᑯᑖ ᐃᓗᐊᒍᑦ ᐊᔾᔨᓕᐅᕐᓂᐊᕐᓗᒍ';

  @override
  String get item_already_exists => 'ᐱᖁᑎ ᐱᑕᖃᖅᐸᒌᖅᑐᖅ';

  @override
  String barcode_with_value(String barcode) {
    return 'ᓇᓗᓇᐃᒃᑯᑖ: $barcode';
  }

  @override
  String name_with_value(String name) {
    return 'ᐊᑎᖓ: $name';
  }

  @override
  String category_with_value(String category) {
    return 'ᖃᓄᐃᑦᑑᓂᖓ: $category';
  }

  @override
  String current_quantity_with_value(String quantity, String unit) {
    return 'ᒫᓐᓇ ᖃᔅᓯᐅᓂᖓ: $quantity$unit';
  }

  @override
  String get please_select_operation => 'ᓂᕈᐊᕐᕕᒋᓗᒍ:';

  @override
  String get outbound => 'ᓯᕐᓗᐊᕐᒦᙶᖅᑐᑦ';

  @override
  String get inbound => 'ᓯᕐᓗᐊᖅ ᐃᓯᕐᕕᒃ';

  @override
  String get inbound_quantity => 'ᑎᑭᑉᐸᓪᓕᐊᔪᑦ ᖃᔅᓯᐅᓂᖏᑦ';

  @override
  String get outbound_quantity => 'ᐊᓂᕙᓪᓕᐊᔪᑦ ᖃᔅᓯᐅᓂᖏᑦ';

  @override
  String get quantity => 'ᖃᔅᓯᐅᓂᖏᑦ';

  @override
  String get enter_inbound_quantity => 'ᑎᑎᕋᕐᓗᒍ ᖃᔅᓯᐅᓂᖏᑦ ᐱᓯᒪᔭᐅᓂᐊᖅᑐᑦ';

  @override
  String get enter_outbound_quantity => 'ᑎᑎᕋᕐᓗᒍ ᖃᔅᓯᐅᓂᖓ ᐊᐅᓪᓚᖅᑎᑕᐅᓂᐊᖅᑐᖅ';

  @override
  String delete_item_confirm_with_irreversible(String name) {
    return 'ᐲᖅᓯᔪᒪᓪᓚᑦᑖᖅᐲᑦ \"$name\"? ᑕᒪᓐᓇ ᐱᓕᕆᓂᐅᔪᖅ ᓄᖅᑲᖅᑎᑕᐅᔪᓐᓇᙱᓚᖅ.';
  }

  @override
  String get database_reset =>
      'ᖃᕆᓴᐅᔭᒃᑯᑦ ᑐᖅᑯᖅᑐᐃᕕᒃ ᐋᖅᑭᒃᑕᐅᒃᑲᓐᓂᓚᐅᖅᐳᖅ, ᑭᑉᐹᕆᒃᓯᓕᖅᓯᒪᔪᓪᓗ ᐋᖅᑭᒃᓯᒪᓂᕆᔭᖓ ᐋᖅᑭᒃᑕᐅᒃᑲᓐᓂᓛᖅᖢᓂ.';

  @override
  String database_reset_error(String error) {
    return 'ᑕᒻᒪᖅᓯᒪᔪᖅ ᐋᖅᑭᒋᐊᖅᓯᒃᑲᓐᓂᕐᓂᕐᒧᑦ ᑐᖅᑯᖅᑐᐃᕝᕕᒃ: $error';
  }

  @override
  String mock_data_init_failed(String error) {
    return 'ᐊᔾᔨᙳᐊᖅ ᑎᑎᕋᖅᓯᒪᔪᑦ ᖃᐅᔨᓴᖅᑕᐅᓂᑯᐃᑦ ᐱᒋᐊᕐᓂᖓᓂ ᐊᔪᓚᐅᖅᐳᖅ: $error';
  }

  @override
  String get solution_steps => 'ᐋᖅᑭᒋᐊᕈᑎᒃᓴᖅ:';

  @override
  String get solution_step_1 => '1. ᐃᓕᐅᖅᑲᕐᓗᒍ ᖃᕋᓴᐅᔭᒃᑰᕈᑎ ᐃᓕᒃᑲᓐᓂᕐᓗᒍᓗ';

  @override
  String get solution_step_2 => '2. ᐲᔭᕐᓗᒍᓘᓐᓃᑦ ᖃᕋᓴᐅᔭᒃᑰᕈᑎᐅᑉ ᑎᑎᖅᑲᖏᑦ';

  @override
  String get solution_step_3 =>
      '3. ᐅᕝᕙᓘᓐᓃᑦ ᐋᖅᑭᒡᓗᒍ resetDatabaseOnStart true ᐊᒻᒪ ᐱᒋᐊᒃᑲᓐᓂᕐᓗᓂ';

  @override
  String notification_service_init_failed(String error) {
    return 'ᐃᖅᑲᐃᓯᔾᔪᑎ ᐱᔨᑦᑎᕋᐅᑎ ᐱᒋᐊᕐᓂᖓ ᐊᔪᓚᐅᖅᐳᖅ: $error';
  }

  @override
  String check_calendar_account_failed(String error) {
    return 'ᖃᐅᔨᒋᐊᙱᖦᖢᒍ ᐅᓪᓗᖅᓯᐅᑎᐅᑉ ᓇᓕᖅᑲᖓ: $error';
  }

  @override
  String create_calendar_failed(String error) {
    return 'ᐅᓪᓗᖅᓯᐅᑎᓕᐅᕈᓐᓇᙱᑦᑐᖓ: $error';
  }

  @override
  String add_calendar_event_failed(String error) {
    return 'ᐃᓚᓕᐅᑎᙱᖦᖢᒍ ᐅᓪᓗᖅᓯᐅᑎᒧᑦ ᖃᓄᐃᓕᐅᕐᓂᐅᔪᖅ: $error';
  }

  @override
  String delete_calendar_event_failed(String error) {
    return 'ᐲᖅᓯᔪᓐᓇᙱᖦᖢᖓ ᐅᓪᓗᖅᓯᐅᑎᒧᑦ ᖃᓄᐃᓕᐅᕐᓂᐅᓚᐅᖅᑐᒧᑦ: $error';
  }

  @override
  String set_permission_message_failed(String error) {
    return 'ᐋᖅᑭᒃᓯᔪᓐᓇᙱᖦᖢᓂ ᐱᔪᓐᓇᖅᑎᑦᑎᔾᔪᑎᒥᒃ ᑐᓴᖅᑎᑦᑎᔾᔪᑎᒥᒃ: $error';
  }

  @override
  String mock_data_init_success(int count) {
    return 'ᑲᔪᓯᓂᖃᑦᑎᐊᖅᑐᒃᑯᑦ ᐱᒋᐊᖅᓯᓂᖅ $count ᐱᙳᐊᖅᑕᐅᔪᓂᒃ ᑎᑎᕋᖅᓯᒪᔪᓂᒃ';
  }

  @override
  String database_has_data(int count) {
    return 'ᖃᕆᓴᐅᔭᒃᑯᑦ ᑐᖅᑯᖅᑐᐃᕕᒃ $count-ᓂᒃ ᑎᑎᕋᖅᓯᒪᔪᖃᖅᐸᒌᖅᐳᖅ, ᖄᖏᖦᖢᒍ ᐱᙳᐊᖅᑕᐅᙳᐊᖅᑐᑦ ᑎᑎᕋᖅᓯᒪᔪᑦ ᖃᐅᔨᓴᖅᑕᐅᓂᑯᐃᑦ ᐱᒋᐊᕐᓂᖓᓂ';
  }

  @override
  String get database_structure_mismatch =>
      'ᐱᔾᔪᑎᖃᑐᐃᓐᓇᕆᐊᓕᒃ ᐊᔾᔨᒌᙱᓐᓂᖏᓐᓄᑦ ᖃᕆᓴᐅᔭᒃᑯᑦ ᑐᖅᑯᖅᑐᐃᕕᐅᑉ ᐋᖅᑭᒃᓯᒪᓂᖓ. ᐊᑐᖁᔭᐅᔪᖅ ᐲᕐᓗᒍ ᖃᕋᓴᐅᔭᒃᑰᕈᑎ ᑲᑎᖅᓱᖅᓯᒪᔪᑦ ᐃᓕᒃᑲᓐᓂᕐᓗᒍᓘᓐᓃᑦ.';

  @override
  String get old_database_deleted => 'ᓄᑕᐅᙱᑦᑐᑦ ᖃᕆᓴᐅᔭᒃᑯᑦ ᑐᖅᑯᖅᑕᐅᓯᒪᔪᑦ ᐲᔭᖅᑕᐅᓯᒪᓕᖅᑐᑦ';

  @override
  String get backup_data_empty => 'ᑭᖑᕝᕕᐅᑎᔪᒃᓴᑦ ᑎᑎᖅᑲᑦ ᐃᓗᓕᖃᙱᑦᑐᑦ';

  @override
  String get backup_file_not_found => 'ᑭᖑᕝᕕᐅᑎᔪᒃᓴᖅ ᑐᖅᑯᖅᓯᒪᕝᕕᒃ ᐱᑕᖃᙱᑦᑐᖅ';

  @override
  String file_not_utf8(String error) {
    return 'ᑐᖅᑯᐃᕕᒃ ᓇᓗᓇᐃᒃᑯᑦᑎᖅᓱᐃᓂᖅ ᐊᑐᙱᑦᑐᖅ UTF-8 ᐋᖅᑭᒃᓯᒪᓂᖓᓂᒃ. ᖃᐅᔨᒪᒋᐊᕐᓂᐊᖅᐳᑎᑦ ᑐᖅᑯᖅᑕᐅᓯᒪᒐᓗᐊᕐᒪᖔᑦ UTF-8 ᓇᓗᓇᐃᒃᑯᑦᑎᖅᓱᐃᔾᔪᑎᒥᒃ. ᑕᒻᒪᖅᓯᒪᔪᑦ ᓇᓗᓇᐃᖅᓯᒪᔪᑦ: $error';
  }

  @override
  String file_not_found(String filePath) {
    return 'ᑎᑎᖅᑲᑦ ᐱᑕᖃᙱᑦᑐᑦ: $filePath';
  }

  @override
  String file_empty(String filePath) {
    return 'ᑎᑎᖅᑲᒃᑯᕕᒃ ᐃᓗᓕᖃᙱᑦᑐᖅ: $filePath';
  }

  @override
  String get file_content_empty =>
      'ᑎᑎᖅᑲᑦ ᐃᓗᓕᖏᑦ ᐃᓗᓕᖃᙱᑦᑐᑦ ᓇᓗᓇᐃᒃᑯᑦᑎᖅᑕᐅᓚᐅᖅᑎᓪᓗᒋᑦ, ᐃᒻᒪᖄ ᓇᓗᓇᐃᒃᑯᑦᑎᖅᓱᐃᓂᕐᒧᑦ ᐊᔾᔨᒌᙱᓐᓂᖏᓐᓄᑦ';

  @override
  String field_cannot_be_empty(String fieldName) {
    return '$fieldName ᑭᓱᖃᙱᑦᑑᔪᓐᓇᙱᓚᖅ';
  }

  @override
  String field_min_length(String fieldName, int minLength) {
    return '$fieldName ᑕᑭᓂᖓ ᑐᖔᓃᑦᑕᕆᐊᖃᙱᓚᖅ $minLength ᑎᑎᖅᑲᓂᒃ';
  }

  @override
  String field_max_length(String fieldName, int maxLength) {
    return '$fieldName ᐅᖓᑖᓅᕆᐊᖃᙱᓚᖅ $maxLength';
  }

  @override
  String field_invalid_email(String fieldName) {
    return 'ᑎᑎᕋᕐᓗᒍ ᐊᑐᕈᓐᓇᖅᑐᖅ $fieldName ᑐᕌᕈᑖ';
  }

  @override
  String field_invalid_number(String fieldName, String numberType) {
    return '$fieldName $numberType';
  }

  @override
  String field_min_value(String fieldName, double min) {
    return '$fieldName ᑐᖔᓃᑦᑕᕆᐊᖃᙱᓚᖅ $min';
  }

  @override
  String field_max_value(String fieldName, double max) {
    return '$fieldName ᐊᖏᓂᖅᓴᐅᔪᓐᓇᙱᓚᖅ $max';
  }

  @override
  String field_positive_integer(String fieldName) {
    return '$fieldName ᐱᐅᔪᒥᒃ ᓈᓴᐅᑎᖃᕆᐊᓕᒃ';
  }

  @override
  String field_greater_than_zero(String fieldName) {
    return '$fieldName ᐊᖏᓂᖅᓴᐅᔭᕆᐊᓕᒃ 0−ᒥᑦ';
  }

  @override
  String field_positive_number(String fieldName) {
    return '$fieldName ᓈᓴᐅᑎᐅᔭᕆᐊᖃᖅᐳᖅ';
  }

  @override
  String field_invalid_date(String fieldName) {
    return 'ᑎᑎᕋᕐᓗᒍ ᐊᑐᕈᓐᓇᖅᑐᖅ $fieldName';
  }

  @override
  String field_date_not_past(String fieldName) {
    return '$fieldName ᖄᖏᐅᑎᓯᒪᔭᕆᐊᖃᙱᓚᖅ';
  }

  @override
  String field_date_not_before(String fieldName, String minDate) {
    return '$fieldName ᓯᕗᓂᐊᒍᑦ $minDate';
  }

  @override
  String field_date_not_after(String fieldName, String maxDate) {
    return '$fieldName ᐅᖓᑖᓅᕆᐊᖃᙱᓚᖅ $maxDate';
  }

  @override
  String field_invalid_value(String fieldName) {
    return 'ᑎᑎᕋᕐᓗᒍ ᐊᑐᕈᓐᓇᖅᑐᖅ $fieldName';
  }

  @override
  String password_min_length(String fieldName) {
    return '$fieldName 8 ᑐᖔᓃᑦᑕᕆᐊᖃᙱᓚᖅ';
  }

  @override
  String password_uppercase_required(String fieldName) {
    return '$fieldName ᐊᑕᐅᓯᕐᒥᒃ ᐊᖏᔫᑕᐅᓂᖅᓴᓂᒃ ᑎᑎᖅᑲᖃᕆᐊᓕᒃ';
  }

  @override
  String password_lowercase_required(String fieldName) {
    return '$fieldName ᐊᑕᐅᓯᕐᒥᒃ ᒥᑭᑦᑑᑎᓂᒃ ᑎᑎᖅᑲᖃᕆᐊᓕᒃ';
  }

  @override
  String password_digit_required(String fieldName) {
    return '$fieldName ᐊᑕᐅᓯᕐᒥᒃ ᓈᓴᐅᑎᖃᕆᐊᓕᒃ';
  }

  @override
  String password_special_char_required(String fieldName) {
    return '$fieldName ᐊᑕᐅᓯᕐᒥᒃ ᐊᔾᔨᐅᙱᑦᑐᒥᒃ ᑎᑎᖅᑲᖃᕆᐊᓕᒃ';
  }

  @override
  String get passwords_not_match => 'ᒪᕐᕉᒃ ᐃᓯᕈᓐᓇᐅᑏᒃ ᐊᔾᔨᒌᙱᑦᑑᒃ';

  @override
  String get item_name_cannot_be_empty => 'ᐱᖁᑎᐅᑉ ᐊᑎᖓ ᐃᓗᓕᖃᕈᓐᓇᙱᓚᖅ';

  @override
  String name_max_length(int maxLength) {
    return 'ᐊᑎᖓ ᐅᖓᑖᓅᕆᐊᖃᙱᑦᑐᖅ $maxLength ᑎᑎᖅᑲᓂᒃ';
  }

  @override
  String quantity_min(int minQuantity) {
    return 'ᖃᔅᓯᐅᓂᖏᑦ ᑐᖔᓃᑦᑕᕆᐊᖃᙱᓚᑦ $minQuantity';
  }

  @override
  String quantity_max(int maxQuantity) {
    return 'ᖃᔅᓯᐅᓂᖏᑦ ᖄᖏᐅᑎᔭᕆᐊᖃᙱᑦᑐᑦ $maxQuantity';
  }

  @override
  String get unit_price_not_negative => 'ᐊᑕᐅᓯᖅ ᐊᑭᖓ ᐊᑭᓕᒃᓴᐅᔪᓐᓇᙱᓚᖅ';

  @override
  String unit_price_max(double maxUnitPrice) {
    return 'ᐊᑕᐅᓯᖅ ᐊᑭᖓ ᖄᖏᐅᑎᔭᕆᐊᖃᙱᓚᖅ $maxUnitPrice';
  }

  @override
  String get set_production_expiry_for_validity =>
      'ᐋᕿᒃᓱᕐᓗᒍ ᓴᓇᔭᐅᓂᖓᑕ ᐅᓪᓗᖓ ᐊᒻᒪᓗ ᖃᓄᖅ ᐊᑯᓂᐅᑎᒋᔪᖅ ᐃᓕᔭᐅᓯᒪᓂᐊᕐᒪᖔᑦ ᖃᐅᔨᑲᐅᑎᒋᓂᐊᕋᕕᐅᒃ ᐊᑐᕈᓐᓇᕐᓂᖓ';

  @override
  String get set_purchase_warranty_for_validity =>
      'ᓂᐅᕕᐊᖑᓂᐊᖅᑑᑉ ᐅᓪᓗᖓ ᐊᒻᒪ ᖃᓄᖅ ᐊᑯᓂᐅᑎᒋᔪᖅ ᐋᖅᑭᒃᑕᐅᓯᒪᓂᐊᕐᒪᖔᑦ ᐋᖅᑭᒃᑕᐅᑲᐅᑎᒋᓂᐊᕐᒪᑦ ᓇᓪᓕᐅᒃᑯᒫᖓ';

  @override
  String get calendar_account_creation_failed =>
      'ᐅᓪᓗᖅᓯᐅᑎᓕᐅᕈᓐᓇᙱᒃᑯᕕᑦ, ᖃᐅᔨᒋᐊᕐᓗᒍ ᐊᑐᖅᑕᐅᖃᑦᑕᖅᑐᖅ ᐅᓪᓗᖅᓯᐅᑎᐅᑉ ᐋᖅᑭᒃᓯᒪᓂᖓ';

  @override
  String get test_notification => 'ᖃᐅᔨᓴᖅᑕᐅᓂᕐᒧᑦ ᖃᐅᔨᒃᑲᐃᔾᔪᑎ';

  @override
  String get test_notification_description =>
      'ᑖᓐᓇ ᖃᐅᔨᓴᕈᑕᐅᓪᓗᓂ ᖃᐅᔨᒃᑲᐃᔾᔪᑎ, ᐊᑐᖅᑕᐅᕙᒃᖢᓂ ᓇᓗᓇᐃᖅᓯᔾᔪᑕᐅᓪᓗᓂ ᓄᓇᓕᖕᓂ ᐃᖅᑲᐃᑎᑦᑎᔾᔪᑎ';

  @override
  String get day_unit => 'ᓯᓚ';

  @override
  String days_with_value(int days) {
    return '$days ᐅᓪᓗᐃᑦ';
  }

  @override
  String get item_saved => 'ᐱᖁᑎ ᑐᖅᑯᖅᑕᐅᓯᒪᓕᖅᑐᖅ';

  @override
  String get item_updated => 'ᐱᖁᑎ ᓄᑖᙳᕆᐊᖅᑕᐅᓯᒪᔪᖅ';

  @override
  String get item_added => 'ᐱᖁᑎ ᐃᓚᔭᐅᓯᒪᔪᖅ';

  @override
  String get save_success => 'ᑐᖅᑯᖅᑕᐅᑦᑎᐊᖅᑐᖅ';

  @override
  String get update_success => 'ᓄᑖᙳᕆᐊᖅᑎᑕᐅᔪᖅ ᑲᔪᓯᓂᖃᑦᑎᐊᖅᑐᖅ';

  @override
  String get delete_success => 'ᐲᖅᑕᐅᑦᑎᐊᖅᑐᖅ';

  @override
  String get save_failed => 'ᑐᖅᑯᐃᓂᖅ ᐊᔪᖅᑐᖅ';

  @override
  String get update_failed => 'ᓄᑖᙳᕆᐊᖅᑎᑕᐅᔪᖅ ᑲᔪᓯᓚᐅᙱᑦᑐᖅ';

  @override
  String get delete_failed => 'ᐲᖅᓯᓂᖅ ᑲᔪᓯᓚᐅᙱᑦᑐᖅ';

  @override
  String get test_calendar_event => 'ᖃᐅᔨᓴᕐᓂᕐᒧᑦ ᐅᓪᓗᖅᓯᐅᑎᒧᑦ ᖃᓄᐃᓕᐅᕐᓂᐅᔪᖅ';

  @override
  String get test_calendar_event_description =>
      'ᑖᓐᓇ ᖃᐅᔨᓴᕈᑕᐅᕗᖅ ᐊᑐᖅᑕᐅᕙᒃᖢᓂ ᓇᓗᓇᐃᖅᓯᔾᔪᑕᐅᓪᓗᓂ ᐅᓪᓗᖅᓯᐅᑎᐅᑉ ᐊᐅᓚᓂᖓᓂᒃ';

  @override
  String get in_app => 'ᖃᕋᓴᐅᔭᒃᑰᕈᑎᒃᑯᑦ';

  @override
  String get enable_alert => 'ᐊᑐᓕᖅᑎᓪᓗᒍ ᐃᓱᓕᕝᕕᒃᓴᖓᓄᑦ ᐃᖅᑲᐃᑎᑦᑎᔾᔪᑎ';

  @override
  String get alert_method => 'ᐃᖅᑲᐃᓯᒋᐊᕈᑎ';

  @override
  String get alert_method_in_app => 'ᖃᕋᓴᐅᔭᒃᑰᕈᑎᑐᐊᑦ';

  @override
  String get alert_method_calendar => 'ᐅᓪᓗᖅᓯᐅᑎᑐᐊᑦ';

  @override
  String get alert_method_both => 'ᑕᒪᕐᒥᒃ';

  @override
  String get alert_days_before => 'ᐅᓪᓗᑦ ᖃᔅᓯᐅᓂᖏᑦ ᓯᕗᓂᐊᒍᑦ ᖃᐅᔨᒃᑲᐃᔾᔪᑎ';

  @override
  String get use_global_setting => 'ᐊᑐᕐᓗᒋᑦ ᓄᓇᕐᔪᐊᓕᒫᒥ ᐋᖅᑭᒃᓯᒪᔪᑦ';

  @override
  String get barcode_label => 'ᓇᓗᓇᐃᒃᑯᑖ';

  @override
  String get name_label => 'ᐊᑎᖓ';

  @override
  String get category_label => 'ᓇᓃᓐᓂᖓ';

  @override
  String get current_quantity => 'ᒫᓐᓇ ᖃᔅᓯᐅᓂᖏᑦ';

  @override
  String get select_operation => 'ᓂᕈᐊᕐᓗᒍ ᐊᐅᓚᓂᐅᔪᖅ';

  @override
  String get unit => 'ᐃᒡᓗ';

  @override
  String get custom_unit => 'Custom Unit';

  @override
  String get enter_unit => 'ᑎᑎᕋᕐᓗᒍ ᐃᒡᓗ';

  @override
  String get custom_location => 'ᐃᓂᒋᒐᔪᒃᑕᖓ';

  @override
  String get enter_storage_location => 'ᑐᖅᑯᐃᕝᕕᐅᑉ ᐃᓂᒋᔭᖓ ᑎᑎᕋᕐᓗᒍ';

  @override
  String get scan => 'ᐊᔾᔨᓕᐅᕐᓗᒍ QR ᓇᓗᓇᐃᒃᑯᑕᖅ';

  @override
  String get scan_to_stock =>
      'ᐊᔾᔨᓕᐅᕐᓗᒍ ᓇᓗᓇᐃᒃᑯᑖ ᑎᑎᕋᕐᓂᐊᕐᓗᒍ ᓈᓴᖅᓯᒪᔪᑦ ᓇᖕᒥᓂᖁᑎᒋᔭᑦ ᐱᖁᑎᖏᑦ';

  @override
  String get item_categories => 'ᐱᖁᑎᑦ ᓇᓃᓐᓂᖏᑦ';

  @override
  String get storage_locations => 'ᓯᕐᓗᐊᖃᕐᕕᐅᑉ ᐃᓂᖓ';

  @override
  String get place_barcode_in_frame_to_scan => 'ᐃᓕᓗᒍ ᓇᓗᓇᐃᒃᑯᑖ ᐃᓗᐊᒍᑦ ᐊᔾᔨᓕᐅᕐᓂᐊᕐᓗᒍ';

  @override
  String get barcode => 'ᓇᓗᓇᐃᒃᑯᑖ';

  @override
  String get enter_barcode_or_scan => 'ᐃᓕᓗᒍ ᓇᓗᓇᐃᒃᑯᑖ ᐊᔾᔨᓕᐅᕐᓗᒍᓘᓐᓃᑦ ᓇᓗᓇᐃᒃᑯᑖ';

  @override
  String get basic_information => 'ᑐᓴᖅᑕᐅᑎᑦᑎᔾᔪᑎᓪᓗᐊᑕᑦ';

  @override
  String get item_name => 'ᐱᖁᑎᐅᑉ ᐊᑎᖓ';

  @override
  String get enter_item_name => 'ᑎᑎᕋᕐᓗᒍ ᐱᖁᑎᐅᑉ ᐊᑎᖓ';

  @override
  String get enter_category_name => 'ᑎᑎᕋᕐᓗᒍ ᖃᓄᐃᑦᑑᓂᖓᑕ ᐊᑎᖓ';

  @override
  String item_increased(String itemName, String quantity, String unit) {
    return '$itemName $quantity$unit ᐃᓚᔭᐅᓯᒪᓕᖅᑐᖅ';
  }

  @override
  String item_decreased(String itemName, String quantity, String unit) {
    return 'ᒥᒃᖠᕚᓪᓕᖅᓯᒪᕗᖅ $itemName $quantity$unit';
  }

  @override
  String get unsaved_changes => 'ᑐᖅᑯᖅᑕᐅᓯᒪᙱᑦᑐᑦ ᐊᓯᔾᔨᖅᑐᑦ';

  @override
  String get unsaved_changes_message =>
      'ᐊᓯᙳᖅᑎᓯᒪᙱᑕᕐᓂᒃ ᐱᑕᖃᕈᕕᑦ, ᓂᕈᐊᕐᓗᑎᑦ ᖃᓄᐃᓕᐅᕈᑎᒃᓴᒥᒃ:';

  @override
  String get discard => 'ᓴᐱᓕᕐᓂᖅ';

  @override
  String get unit_piece => 'ᐃᓚᖓ';

  @override
  String get unit_item => 'ᐃᓚᖓ';

  @override
  String get unit_box => 'ᑎᑎᖅᑲᒃᑯᕕᐊ';

  @override
  String get unit_package => 'ᐴᖅ';

  @override
  String get unit_bottle => 'ᐊᓕᒍᖅ';

  @override
  String get unit_carton => 'ᑎᑎᖅᑲᒃᑯᕕᐊ';

  @override
  String get unit_set => 'ᑲᑎᙵᔪᑦ';

  @override
  String get unit_kg => 'ᑭᓗᒍᕌᒻ';

  @override
  String get unit_g => 'g';

  @override
  String get unit_l => 'L';

  @override
  String get unit_ml => 'ml';

  @override
  String get unit_m => 'm';

  @override
  String get unit_cm => 'ᓴᓐᑕᒦᑕ';

  @override
  String get quantity_label => 'ᖃᔅᓯᐅᓂᖏᑦ';

  @override
  String get unit_price_label => 'ᐊᑕᐅᓯᖅ ᐊᑭᖓ';

  @override
  String get currency_label => 'ᑮᓇᐅᔭᖅ';

  @override
  String get total_price_label => 'ᑲᑎᖦᖢᒋᑦ ᐊᑭᖏᑦ:';

  @override
  String get storage_location_label => 'ᓯᕐᓗᐊᖃᕐᕕᐅᑉ ᐃᓂᖓ';

  @override
  String get item_properties => 'ᐱᖁᑎᐅᑉ ᖃᓄᐃᑦᑑᓂᖏᑦ';

  @override
  String get expiry_date_label => 'ᐊᑐᕈᓐᓇᕐᓂᖓ ᐊᑯᓂᐅᑎᒋᓂᖓ';

  @override
  String get warranty_expiry_date_label => 'ᐊᓯᔾᔨᖅᑕᐅᔪᓐᓇᕈᑖ ᐃᓱᓕᕝᕕᒃᓴᖓᑕ ᐅᓪᓗᖓ';

  @override
  String get production_date_label => 'ᓴᓇᔭᐅᓂᖓᑕ ᐅᓪᓗᖓ';

  @override
  String get purchase_date_label => 'ᓂᐅᕕᖅᑕᐅᓂᖓᑕ ᐅᓪᓗᖓ';

  @override
  String auto_calculated_from(String dateType) {
    return 'ᓈᓴᐅᓯᕆᑲᐅᑎᒋᓂᖅ ᑐᙵᕕᖃᖅᑎᑕᐅᓪᓗᓂ $dateType ᐊᑯᓂᐅᑎᒋᔪᓐᓇᕐᓂᖓᓗ';
  }

  @override
  String get auto_calculated => 'ᓈᓴᐅᓯᕆᑲᐅᑎᒋᓂᖅ';

  @override
  String get images_label => 'ᐊᔾᔨᙳᐊᖅ';

  @override
  String get notes_label => 'ᐅᖃᐅᓯᒃᓴᑦ';

  @override
  String get add_notes_hint => 'ᐅᖃᐅᓯᒃᓴᑦ ᐃᓚᓗᒋᑦ (ᐃᓱᒪᖅᓲᑕᐅᔪᖅ)';

  @override
  String get year_label => 'ᐊᕐᕌᒍ';

  @override
  String get month_label => 'ᑕᖅᑭᖅ';

  @override
  String get day_label => 'ᓯᓚ';

  @override
  String selected_count(int count) {
    return '$count ᓂᕈᐊᖅᑕᐅᔪᑦ';
  }

  @override
  String get select_all => 'ᓂᕈᐊᖅᑕᐃᓐᓇᕆᓗᒋᑦ';

  @override
  String get deselect_all => 'ᓂᕈᐊᖅᑕᐃᓐᓇᕆᓗᒋᑦ';

  @override
  String get batch_change_location => 'ᑲᑎᙵᔪᑦ ᑕᐅᖅᓰᓂᕐᒧᑦ ᑐᖅᑯᐃᕝᕖᑦ';

  @override
  String confirm_delete_selected(int count) {
    return 'ᐲᖅᓯᔪᒪᓪᓚᑦᑖᖅᐲᑦ ᓂᕈᐊᖅᑕᕐᓂᒃ $count ᐱᖁᑎᓂᒃ?';
  }

  @override
  String deleted_count_items(int count) {
    return '$count ᐲᖅᑕᐅᓯᒪᔫᒃ';
  }

  @override
  String get no_storage_location_available => 'ᓯᕐᓗᐊᖃᙱᑦᑐᖅ';

  @override
  String get batch_change_location_title => 'ᑲᑎᙵᔪᑦ ᑕᐅᖅᓰᓂᕐᒧᑦ ᑐᖅᑯᐃᕝᕖᑦ';

  @override
  String moved_count_items_to_location(int count, String location) {
    return '$count ᓅᑕᐅᓯᒪᓕᖅᑐᑦ $location';
  }

  @override
  String get operation_type_create => 'ᐃᓯᕆᑦ';

  @override
  String get operation_type_update => 'ᐋᖅᑭᒋᐊᕐᓗᒍ';

  @override
  String get operation_type_delete => 'ᐲᕐᓗᒍ';

  @override
  String get operation_type_inbound => 'ᓯᕐᓗᐊᖅ ᐃᓯᕐᕕᒃ';

  @override
  String get operation_type_outbound => 'ᐊᐅᓪᓚᖅᐸᓪᓕᐊᔪᑦ';

  @override
  String export_failed_message(String error) {
    return 'ᐊᐅᓪᓚᖅᑎᑦᑎᔪᓐᓇᓚᐅᙱᑦᑐᑦ: $error';
  }

  @override
  String get clear_logs => 'ᑎᑎᕋᖅᐸᓪᓕᐊᔪᑦ ᐲᔭᕐᓗᒋᑦ';

  @override
  String get confirm_clear_logs =>
      'ᖃᐅᔨᒪᑦᑎᐊᖅᐲᑦ ᐲᖅᓯᔪᒪᖕᒪᖔᖅᐱᑦ ᑕᒪᐃᓐᓂᑦᑎᐊᖅ ᐊᐅᓚᑦᑎᓂᕐᒧᑦ ᑎᑎᕋᖅᓯᒪᔪᓂᒃ? ᑕᒪᓐᓇ ᐱᓕᕆᓂᐅᔪᖅ ᓄᖅᑲᖅᑎᑕᐅᔪᓐᓇᙱᓚᖅ.';

  @override
  String get logs_cleared => 'ᑎᑎᕋᕐᓯᒪᔪᑦ ᐲᔭᖅᑕᐅᓯᒪᓕᕐᑐᑦ';

  @override
  String get operation_logs_title => 'ᐊᐅᓚᓂᐅᔪᓄᑦ ᑎᑎᕋᕐᕕᒃ';

  @override
  String get export_logs => 'ᐊᐅᓪᓚᖅᑎᑦᑎᕙᖕᓂᕐᒧᑦ ᑎᑎᕋᕐᕕᒃ';

  @override
  String get clear_logs_tooltip => 'ᑎᑎᕋᖅᐸᓪᓕᐊᔪᑦ ᐲᔭᕐᓗᒋᑦ';

  @override
  String get no_operation_logs => 'ᐊᐅᓚᓂᕐᒧᑦ ᑎᑎᕋᖅᓯᒪᔪᓂᒃ ᐊᑐᐃᓐᓇᖅᑕᖃᙱᑦᑐᖅ';

  @override
  String get log_item_label => 'ᑭᓲᓂᖓ:';

  @override
  String get log_category_label => 'ᖃᓄᐃᑦᑑᓂᖓ:';

  @override
  String get log_type_label => 'ᖃᓄᐃᑦᑑᓂᖓ:';

  @override
  String get log_quantity_label => 'ᖃᔅᓯᐅᓂᖏᑦ:';

  @override
  String get log_unit_price_label => 'ᐊᑕᐅᓯᖅ ᐊᑭᖓ:';

  @override
  String get log_total_price_label => 'ᑲᑎᖦᖢᒋᑦ ᐊᑭᖏᑦ:';

  @override
  String get log_expiry_date_label => 'ᐃᓱᓕᕝᕕᒃᓴᖓᑕ ᐅᓪᓗᐊ:';

  @override
  String get log_warranty_date_label => 'ᐊᓯᔾᔨᖅᑕᐅᔪᓐᓇᕈᑖᑕ ᐅᓪᓗᖓ:';

  @override
  String get log_purchase_date_label => 'ᓂᐅᕕᖅᑕᐅᓂᖓᑕ ᐅᓪᓗᖓ:';

  @override
  String get log_production_date_label => 'ᓴᓇᔭᐅᓂᖓᑕ ᐅᓪᓗᖓ:';

  @override
  String get log_shelf_life_label => 'ᖃᓄᖅ ᐊᑯᓂᐅᑎᒋᔪᖅ ᐃᓕᔭᐅᓯᒪᔪᓐᓇᕐᓂᖓ:';

  @override
  String get log_storage_location_label => 'ᓯᕐᓗᐊᖃᕐᕕᐅᑉ ᐃᓂᖓ:';

  @override
  String get log_barcode_label => 'ᓇᓗᓇᐃᒃᑯᑖ:';

  @override
  String get log_notes_label => 'ᖃᐅᔨᒪᔭᕆᐊᓕᒃ:';

  @override
  String get log_alert_label => 'ᐅᔾᔨᕆᔭᐅᓕ:';

  @override
  String get log_alert_days_label => 'ᐅᔾᔨᖅᓱᖁᔨᓂᕐᒧᑦ ᐅᓪᓗᐃᑦ:';

  @override
  String get log_quantity_change_label => 'ᖃᔅᓯᐅᓂᖏᑦ ᐊᓯᔾᔨᖅᑐᑦ:';

  @override
  String get log_field_changes_label => 'ᐊᓯᔾᔨᕐᓗᒍ ᐃᓂᖓ:';

  @override
  String get log_not_set => 'ᐋᖅᑭᒃᑕᐅᓯᒪᙱᑦᑐᖅ';

  @override
  String get log_empty => 'ᐃᓗᓕᖃᙱᑦᑐᖅ';

  @override
  String get log_alert_enabled => 'ᐃᑭᓪᓗᒍ';

  @override
  String get log_alert_disabled => 'ᖃᓂᑦᑐᖅ';

  @override
  String get operation_logs_menu => 'ᐊᐅᓚᓂᐅᔪᓄᑦ ᑎᑎᕋᕐᕕᒃ';

  @override
  String get operation_logs_description => 'ᕿᒥᕐᕈᓗᒋᑦ ᐅᑎᖅᑎᓪᓗᒋᓪᓗ ᐊᐅᓚᓂᕐᒧᑦ ᑎᑎᖅᑲᑦ';

  @override
  String operation_failed_message(String error) {
    return 'ᐊᐅᓚᓂᖓ ᑲᔪᓯᓚᐅᙱᑦᑐᖅ: $error';
  }

  @override
  String get no_date => 'ᐅᓪᓗᓕᖅᓯᒪᙱᑦᑐᖅ';

  @override
  String get shelf_life_months_suffix => 'ᑕᖅᑭᖅ(ᖏᑦ)';

  @override
  String get shelf_life_days_suffix => 'ᓯᓚ';

  @override
  String get alert_days_suffix => 'ᓯᓚ';

  @override
  String get unknown => 'ᖃᐅᔨᒪᔭᐅᖏᑦᑐᖅ';

  @override
  String get developer_name => 'ᓕᐅ';

  @override
  String get log_operation_date_label => 'ᐊᐅᓚᑕᐅᓂᖓᑕ ᐅᓪᓗᖓ:';

  @override
  String get uncategorized => 'ᓇᓗᓇᐃᖅᑕᐅᓯᒪᙱᑦᑐᑦ';

  @override
  String get no_location => 'ᐃᓂᖃᙱᑦᑐᖅ';

  @override
  String get item_category_cannot_be_empty => 'ᐱᖁᑏᑦ ᖃᓄᐃᑦᑑᓂᖏᑦ ᐃᓗᓕᖃᕈᓐᓇᖏᑦᑐᑦ';

  @override
  String get storage_location_cannot_be_empty => 'ᓯᕐᓗᐊᖅ ᐃᓄᖃᙱᑦᑐᖃᕆᐊᖃᙱᓚᖅ';

  @override
  String get created_at_asc => 'ᐋᖅᑭᒃᓱᕐᓗᒋᑦ ᐃᓚᓯᓂᖅ ᓯᕿᙳᔭᖅ ᖁᕝᕙᖅᐸᓪᓕᐊᔪᖅ';

  @override
  String get created_at_desc => 'ᐃᓚᓗᒍ ᓯᕿᙳᔭᖅ ᐊᑦᑎᒃᓯᕙᓪᓕᐊᑎᓪᓗᒍ';
}
