import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_id.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ms.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ro.dart';
import 'app_localizations_th.dart';
import 'app_localizations_vi.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('zh'),
    Locale('en'),
    Locale('de'),
    Locale('es'),
    Locale('fr'),
    Locale('id'),
    Locale('it'),
    Locale('ms'),
    Locale('pt'),
    Locale('ro'),
    Locale('th'),
    Locale('vi'),
  ];

  /// No description provided for @app_name.
  ///
  /// In zh, this message translates to:
  /// **'藏物方寸'**
  String get app_name;

  /// No description provided for @cancel.
  ///
  /// In zh, this message translates to:
  /// **'取消'**
  String get cancel;

  /// No description provided for @confirm.
  ///
  /// In zh, this message translates to:
  /// **'确定'**
  String get confirm;

  /// No description provided for @save.
  ///
  /// In zh, this message translates to:
  /// **'保存'**
  String get save;

  /// No description provided for @delete.
  ///
  /// In zh, this message translates to:
  /// **'删除'**
  String get delete;

  /// No description provided for @edit.
  ///
  /// In zh, this message translates to:
  /// **'编辑'**
  String get edit;

  /// No description provided for @add.
  ///
  /// In zh, this message translates to:
  /// **'添加'**
  String get add;

  /// No description provided for @search.
  ///
  /// In zh, this message translates to:
  /// **'搜索'**
  String get search;

  /// No description provided for @settings.
  ///
  /// In zh, this message translates to:
  /// **'设置'**
  String get settings;

  /// No description provided for @back.
  ///
  /// In zh, this message translates to:
  /// **'返回'**
  String get back;

  /// No description provided for @next.
  ///
  /// In zh, this message translates to:
  /// **'下一步'**
  String get next;

  /// No description provided for @done.
  ///
  /// In zh, this message translates to:
  /// **'完成'**
  String get done;

  /// No description provided for @loading.
  ///
  /// In zh, this message translates to:
  /// **'加载中...'**
  String get loading;

  /// No description provided for @error.
  ///
  /// In zh, this message translates to:
  /// **'错误'**
  String get error;

  /// No description provided for @success.
  ///
  /// In zh, this message translates to:
  /// **'成功'**
  String get success;

  /// No description provided for @warning.
  ///
  /// In zh, this message translates to:
  /// **'警告'**
  String get warning;

  /// No description provided for @info.
  ///
  /// In zh, this message translates to:
  /// **'信息'**
  String get info;

  /// No description provided for @select_alert_days.
  ///
  /// In zh, this message translates to:
  /// **'选择提醒天数'**
  String get select_alert_days;

  /// No description provided for @custom.
  ///
  /// In zh, this message translates to:
  /// **'自定义'**
  String get custom;

  /// 自定义天数带参数
  ///
  /// In zh, this message translates to:
  /// **'自定义（{days}天）'**
  String custom_days(Object days);

  /// 提醒天数范围带参数
  ///
  /// In zh, this message translates to:
  /// **'提醒天数范围：{min}-{max}天'**
  String alert_days_range(Object min, Object max);

  /// No description provided for @enter_days.
  ///
  /// In zh, this message translates to:
  /// **'请输入提醒天数'**
  String get enter_days;

  /// No description provided for @days.
  ///
  /// In zh, this message translates to:
  /// **'天数'**
  String get days;

  /// 天数输入验证消息
  ///
  /// In zh, this message translates to:
  /// **'请输入{min}-{max}之间的数字'**
  String enter_valid_days(Object min, Object max);

  /// No description provided for @alert_settings.
  ///
  /// In zh, this message translates to:
  /// **'预警设置'**
  String get alert_settings;

  /// No description provided for @calendar_settings.
  ///
  /// In zh, this message translates to:
  /// **'日历设置'**
  String get calendar_settings;

  /// No description provided for @calendar_sync.
  ///
  /// In zh, this message translates to:
  /// **'日历同步'**
  String get calendar_sync;

  /// No description provided for @calendar_sync_desc.
  ///
  /// In zh, this message translates to:
  /// **'开启后将请求日历权限'**
  String get calendar_sync_desc;

  /// No description provided for @add_test_calendar_event.
  ///
  /// In zh, this message translates to:
  /// **'添加测试日历事件'**
  String get add_test_calendar_event;

  /// No description provided for @enable_calendar_sync_first.
  ///
  /// In zh, this message translates to:
  /// **'请先开启\"日历同步\"开关'**
  String get enable_calendar_sync_first;

  /// No description provided for @app_alert_settings.
  ///
  /// In zh, this message translates to:
  /// **'App提醒设置'**
  String get app_alert_settings;

  /// No description provided for @local_alerts.
  ///
  /// In zh, this message translates to:
  /// **'本地提醒'**
  String get local_alerts;

  /// No description provided for @local_alerts_desc.
  ///
  /// In zh, this message translates to:
  /// **'开启后接收应用内过期提醒'**
  String get local_alerts_desc;

  /// No description provided for @send_test_notification.
  ///
  /// In zh, this message translates to:
  /// **'发送测试通知'**
  String get send_test_notification;

  /// No description provided for @enable_local_alerts_first.
  ///
  /// In zh, this message translates to:
  /// **'请先开启\"本地提醒\"开关'**
  String get enable_local_alerts_first;

  /// No description provided for @alert_days_settings.
  ///
  /// In zh, this message translates to:
  /// **'提醒天数设置'**
  String get alert_days_settings;

  /// No description provided for @advance_alert_days.
  ///
  /// In zh, this message translates to:
  /// **'提前提醒天数'**
  String get advance_alert_days;

  /// No description provided for @advance_alert_days_desc.
  ///
  /// In zh, this message translates to:
  /// **'设置提前多少天提醒物品过期或保修到期'**
  String get advance_alert_days_desc;

  /// No description provided for @calendar_permission_request.
  ///
  /// In zh, this message translates to:
  /// **'日历权限请求'**
  String get calendar_permission_request;

  /// No description provided for @calendar_permission_desc.
  ///
  /// In zh, this message translates to:
  /// **'需要访问日历权限来同步物品提醒。是否允许？'**
  String get calendar_permission_desc;

  /// No description provided for @allow.
  ///
  /// In zh, this message translates to:
  /// **'允许'**
  String get allow;

  /// No description provided for @calendar_permission_granted.
  ///
  /// In zh, this message translates to:
  /// **'日历权限已授予，日历同步已开启'**
  String get calendar_permission_granted;

  /// No description provided for @calendar_permission_denied.
  ///
  /// In zh, this message translates to:
  /// **'日历权限被拒绝，无法开启日历同步'**
  String get calendar_permission_denied;

  /// No description provided for @calendar_permission_permanently_denied.
  ///
  /// In zh, this message translates to:
  /// **'权限被永久拒绝'**
  String get calendar_permission_permanently_denied;

  /// No description provided for @calendar_permission_permanently_denied_desc.
  ///
  /// In zh, this message translates to:
  /// **'日历权限被永久拒绝，请在系统设置中手动开启权限。'**
  String get calendar_permission_permanently_denied_desc;

  /// No description provided for @go_to_settings.
  ///
  /// In zh, this message translates to:
  /// **'去设置'**
  String get go_to_settings;

  /// No description provided for @calendar_account_failed.
  ///
  /// In zh, this message translates to:
  /// **'日历权限已授予，但无法创建日历账户。请检查系统日历设置'**
  String get calendar_account_failed;

  /// No description provided for @calendar_account_created.
  ///
  /// In zh, this message translates to:
  /// **'日历权限已授予，已创建本地日历账户'**
  String get calendar_account_created;

  /// No description provided for @calendar_account_creating.
  ///
  /// In zh, this message translates to:
  /// **'日历账户创建成功，但系统可能需要一些时间生效'**
  String get calendar_account_creating;

  /// No description provided for @test_calendar_event_added.
  ///
  /// In zh, this message translates to:
  /// **'测试日历事件添加成功'**
  String get test_calendar_event_added;

  /// No description provided for @test_calendar_event_failed.
  ///
  /// In zh, this message translates to:
  /// **'添加测试日历事件失败，请检查日历设置'**
  String get test_calendar_event_failed;

  /// No description provided for @calendar_permission_required.
  ///
  /// In zh, this message translates to:
  /// **'需要日历权限才能添加测试事件'**
  String get calendar_permission_required;

  /// No description provided for @test_notification_sent.
  ///
  /// In zh, this message translates to:
  /// **'测试通知已发送'**
  String get test_notification_sent;

  /// 通知错误消息
  ///
  /// In zh, this message translates to:
  /// **'发送测试通知失败: {error}'**
  String test_notification_failed(Object error);

  /// No description provided for @notification_permission_required.
  ///
  /// In zh, this message translates to:
  /// **'需要通知权限才能启用本地提醒'**
  String get notification_permission_required;

  /// 通用操作错误消息
  ///
  /// In zh, this message translates to:
  /// **'操作失败: {error}'**
  String operation_failed(Object error);

  /// No description provided for @notification_channel_name.
  ///
  /// In zh, this message translates to:
  /// **'物品预警通知'**
  String get notification_channel_name;

  /// No description provided for @notification_channel_description.
  ///
  /// In zh, this message translates to:
  /// **'物品过期或过保提醒'**
  String get notification_channel_description;

  /// No description provided for @item_category_food.
  ///
  /// In zh, this message translates to:
  /// **'食品'**
  String get item_category_food;

  /// No description provided for @item_category_daily_necessities.
  ///
  /// In zh, this message translates to:
  /// **'日用品'**
  String get item_category_daily_necessities;

  /// No description provided for @item_category_cosmetics.
  ///
  /// In zh, this message translates to:
  /// **'化妆品'**
  String get item_category_cosmetics;

  /// No description provided for @item_category_medicine.
  ///
  /// In zh, this message translates to:
  /// **'药品'**
  String get item_category_medicine;

  /// No description provided for @item_category_electronics.
  ///
  /// In zh, this message translates to:
  /// **'电子产品'**
  String get item_category_electronics;

  /// No description provided for @item_category_furniture.
  ///
  /// In zh, this message translates to:
  /// **'家具'**
  String get item_category_furniture;

  /// No description provided for @item_category_clothing.
  ///
  /// In zh, this message translates to:
  /// **'服装'**
  String get item_category_clothing;

  /// No description provided for @item_category_books.
  ///
  /// In zh, this message translates to:
  /// **'书籍'**
  String get item_category_books;

  /// No description provided for @item_category_other.
  ///
  /// In zh, this message translates to:
  /// **'其他'**
  String get item_category_other;

  /// No description provided for @purchase_channel_online_mall.
  ///
  /// In zh, this message translates to:
  /// **'线上商城'**
  String get purchase_channel_online_mall;

  /// No description provided for @purchase_channel_physical_store.
  ///
  /// In zh, this message translates to:
  /// **'实体店'**
  String get purchase_channel_physical_store;

  /// No description provided for @purchase_channel_supermarket.
  ///
  /// In zh, this message translates to:
  /// **'超市'**
  String get purchase_channel_supermarket;

  /// No description provided for @purchase_channel_specialty_store.
  ///
  /// In zh, this message translates to:
  /// **'专卖店'**
  String get purchase_channel_specialty_store;

  /// No description provided for @purchase_channel_secondhand_market.
  ///
  /// In zh, this message translates to:
  /// **'二手市场'**
  String get purchase_channel_secondhand_market;

  /// No description provided for @purchase_channel_other.
  ///
  /// In zh, this message translates to:
  /// **'其他'**
  String get purchase_channel_other;

  /// No description provided for @default_category.
  ///
  /// In zh, this message translates to:
  /// **'其他'**
  String get default_category;

  /// No description provided for @default_purchase_channel.
  ///
  /// In zh, this message translates to:
  /// **'线上商城'**
  String get default_purchase_channel;

  /// No description provided for @item_category.
  ///
  /// In zh, this message translates to:
  /// **'物品分类'**
  String get item_category;

  /// No description provided for @custom_category.
  ///
  /// In zh, this message translates to:
  /// **'自定义分类'**
  String get custom_category;

  /// No description provided for @backup_data.
  ///
  /// In zh, this message translates to:
  /// **'备份数据'**
  String get backup_data;

  /// No description provided for @backup_data_description.
  ///
  /// In zh, this message translates to:
  /// **'将全部数据（包括图片）打包为ZIP文件备份'**
  String get backup_data_description;

  /// No description provided for @backup_all_data.
  ///
  /// In zh, this message translates to:
  /// **'备份全部数据'**
  String get backup_all_data;

  /// No description provided for @backup_success.
  ///
  /// In zh, this message translates to:
  /// **'备份成功'**
  String get backup_success;

  /// 备份失败错误消息
  ///
  /// In zh, this message translates to:
  /// **'备份失败：{error}'**
  String backup_failed(Object error);

  /// No description provided for @restore_data.
  ///
  /// In zh, this message translates to:
  /// **'恢复数据'**
  String get restore_data;

  /// No description provided for @restore_data_description.
  ///
  /// In zh, this message translates to:
  /// **'从ZIP备份文件恢复全部数据'**
  String get restore_data_description;

  /// No description provided for @export_data.
  ///
  /// In zh, this message translates to:
  /// **'导出数据'**
  String get export_data;

  /// No description provided for @export_data_description.
  ///
  /// In zh, this message translates to:
  /// **'导出为CSV、TXT、SQL格式'**
  String get export_data_description;

  /// No description provided for @import_data.
  ///
  /// In zh, this message translates to:
  /// **'导入数据'**
  String get import_data;

  /// No description provided for @import_data_description.
  ///
  /// In zh, this message translates to:
  /// **'从CSV、TXT、SQL文件导入数据'**
  String get import_data_description;

  /// No description provided for @alert_settings_description.
  ///
  /// In zh, this message translates to:
  /// **'日历提醒和App推送提醒设置'**
  String get alert_settings_description;

  /// No description provided for @about.
  ///
  /// In zh, this message translates to:
  /// **'关于'**
  String get about;

  /// No description provided for @about_description.
  ///
  /// In zh, this message translates to:
  /// **'应用信息和版本'**
  String get about_description;

  /// No description provided for @select_backup_file_first.
  ///
  /// In zh, this message translates to:
  /// **'请先选择备份文件'**
  String get select_backup_file_first;

  /// No description provided for @confirm_restore.
  ///
  /// In zh, this message translates to:
  /// **'确认恢复'**
  String get confirm_restore;

  /// No description provided for @confirm_restore_message.
  ///
  /// In zh, this message translates to:
  /// **'恢复备份将清空所有现有数据并替换为备份数据，此操作不可撤销。确定要继续吗？'**
  String get confirm_restore_message;

  /// No description provided for @confirm_again.
  ///
  /// In zh, this message translates to:
  /// **'再次确认'**
  String get confirm_again;

  /// No description provided for @confirm_restore_warning.
  ///
  /// In zh, this message translates to:
  /// **'您确定要清空所有现有数据并恢复备份吗？此操作将无法恢复！'**
  String get confirm_restore_warning;

  /// No description provided for @confirm_restore_button.
  ///
  /// In zh, this message translates to:
  /// **'确定恢复'**
  String get confirm_restore_button;

  /// 恢复成功消息
  ///
  /// In zh, this message translates to:
  /// **'恢复成功，共{count}条物品'**
  String restore_success(Object count);

  /// 恢复失败错误消息
  ///
  /// In zh, this message translates to:
  /// **'恢复失败：{error}'**
  String restore_failed(Object error);

  /// No description provided for @select_backup_file.
  ///
  /// In zh, this message translates to:
  /// **'选择备份文件'**
  String get select_backup_file;

  /// No description provided for @restore_backup.
  ///
  /// In zh, this message translates to:
  /// **'恢复备份'**
  String get restore_backup;

  /// 已选择文件消息
  ///
  /// In zh, this message translates to:
  /// **'已选择文件：{filename}'**
  String selected_file(Object filename);

  /// No description provided for @export_success.
  ///
  /// In zh, this message translates to:
  /// **'数据导出成功'**
  String get export_success;

  /// 导出失败错误消息
  ///
  /// In zh, this message translates to:
  /// **'导出失败：{error}'**
  String export_failed(Object error);

  /// No description provided for @format_csv.
  ///
  /// In zh, this message translates to:
  /// **'CSV'**
  String get format_csv;

  /// No description provided for @format_txt.
  ///
  /// In zh, this message translates to:
  /// **'TXT'**
  String get format_txt;

  /// No description provided for @format_sql.
  ///
  /// In zh, this message translates to:
  /// **'SQL'**
  String get format_sql;

  /// No description provided for @duplicate_data_handling.
  ///
  /// In zh, this message translates to:
  /// **'重复数据处理'**
  String get duplicate_data_handling;

  /// No description provided for @duplicate_data_detected.
  ///
  /// In zh, this message translates to:
  /// **'检测到重复数据，请选择处理方式：'**
  String get duplicate_data_detected;

  /// No description provided for @skip.
  ///
  /// In zh, this message translates to:
  /// **'跳过'**
  String get skip;

  /// No description provided for @overwrite.
  ///
  /// In zh, this message translates to:
  /// **'覆盖'**
  String get overwrite;

  /// No description provided for @skip_all.
  ///
  /// In zh, this message translates to:
  /// **'全部跳过'**
  String get skip_all;

  /// No description provided for @overwrite_all.
  ///
  /// In zh, this message translates to:
  /// **'全部覆盖'**
  String get overwrite_all;

  /// No description provided for @select_import_format_first.
  ///
  /// In zh, this message translates to:
  /// **'请先选择导入格式'**
  String get select_import_format_first;

  /// No description provided for @confirm_import.
  ///
  /// In zh, this message translates to:
  /// **'确认导入'**
  String get confirm_import;

  /// No description provided for @confirm_import_message.
  ///
  /// In zh, this message translates to:
  /// **'导入数据将覆盖现有数据，此操作不可撤销。确定要继续吗？'**
  String get confirm_import_message;

  /// 导入成功消息
  ///
  /// In zh, this message translates to:
  /// **'数据导入成功，共导入{count}条物品'**
  String import_success(Object count);

  /// 导入失败错误消息
  ///
  /// In zh, this message translates to:
  /// **'导入失败：{error}'**
  String import_failed(Object error);

  /// No description provided for @select_file.
  ///
  /// In zh, this message translates to:
  /// **'选择文件'**
  String get select_file;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'de',
    'en',
    'es',
    'fr',
    'id',
    'it',
    'ms',
    'pt',
    'ro',
    'th',
    'vi',
    'zh',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'de':
      return AppLocalizationsDe();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fr':
      return AppLocalizationsFr();
    case 'id':
      return AppLocalizationsId();
    case 'it':
      return AppLocalizationsIt();
    case 'ms':
      return AppLocalizationsMs();
    case 'pt':
      return AppLocalizationsPt();
    case 'ro':
      return AppLocalizationsRo();
    case 'th':
      return AppLocalizationsTh();
    case 'vi':
      return AppLocalizationsVi();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
