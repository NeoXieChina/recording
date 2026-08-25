import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_af.dart';
import 'app_localizations_am.dart';
import 'app_localizations_ar.dart';
import 'app_localizations_as.dart';
import 'app_localizations_az.dart';
import 'app_localizations_bg.dart';
import 'app_localizations_bn.dart';
import 'app_localizations_bo.dart';
import 'app_localizations_bs.dart';
import 'app_localizations_ca.dart';
import 'app_localizations_cs.dart';
import 'app_localizations_cy.dart';
import 'app_localizations_da.dart';
import 'app_localizations_de.dart';
import 'app_localizations_el.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_et.dart';
import 'app_localizations_fa.dart';
import 'app_localizations_fi.dart';
import 'app_localizations_fil.dart';
import 'app_localizations_fj.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_ga.dart';
import 'app_localizations_gu.dart';
import 'app_localizations_he.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_hr.dart';
import 'app_localizations_ht.dart';
import 'app_localizations_hu.dart';
import 'app_localizations_hy.dart';
import 'app_localizations_id.dart';
import 'app_localizations_is.dart';
import 'app_localizations_it.dart';
import 'app_localizations_iu.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_kk.dart';
import 'app_localizations_km.dart';
import 'app_localizations_kn.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_ky.dart';
import 'app_localizations_mn.dart';
import 'app_localizations_ms.dart';
import 'app_localizations_mww.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_ta.dart';
import 'app_localizations_th.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_ug.dart';
import 'app_localizations_uk.dart';
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
    Locale('af'),
    Locale('am'),
    Locale('ar'),
    Locale('as'),
    Locale('az'),
    Locale('bg'),
    Locale('bn'),
    Locale('bo'),
    Locale('bs'),
    Locale('ca'),
    Locale('cs'),
    Locale('cy'),
    Locale('da'),
    Locale('de'),
    Locale('el'),
    Locale('en'),
    Locale('es'),
    Locale('et'),
    Locale('fa'),
    Locale('fi'),
    Locale('fil'),
    Locale('fj'),
    Locale('fr'),
    Locale('ga'),
    Locale('gu'),
    Locale('he'),
    Locale('hi'),
    Locale('hr'),
    Locale('ht'),
    Locale('hu'),
    Locale('hy'),
    Locale('id'),
    Locale('is'),
    Locale('it'),
    Locale('iu'),
    Locale('ja'),
    Locale('kk'),
    Locale('km'),
    Locale('kn'),
    Locale('ko'),
    Locale('ky'),
    Locale('mn'),
    Locale('ms'),
    Locale('mww'),
    Locale('nl'),
    Locale('pt'),
    Locale('ru'),
    Locale('ta'),
    Locale('th'),
    Locale('tr'),
    Locale('ug'),
    Locale('uk'),
    Locale('vi'),
    Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant'),
  ];

  ///
  ///
  /// In zh, this message translates to:
  /// **'藏物方寸'**
  String get app_name;

  ///
  ///
  /// In zh, this message translates to:
  /// **'取消'**
  String get cancel;

  ///
  ///
  /// In zh, this message translates to:
  /// **'确定'**
  String get confirm;

  ///
  ///
  /// In zh, this message translates to:
  /// **'保存'**
  String get save;

  ///
  ///
  /// In zh, this message translates to:
  /// **'删除'**
  String get delete;

  ///
  ///
  /// In zh, this message translates to:
  /// **'编辑'**
  String get edit;

  ///
  ///
  /// In zh, this message translates to:
  /// **'添加'**
  String get add;

  ///
  ///
  /// In zh, this message translates to:
  /// **'编辑物品'**
  String get edit_item;

  ///
  ///
  /// In zh, this message translates to:
  /// **'添加物品'**
  String get add_item;

  ///
  ///
  /// In zh, this message translates to:
  /// **'搜索'**
  String get search;

  ///
  ///
  /// In zh, this message translates to:
  /// **'设置'**
  String get settings;

  ///
  ///
  /// In zh, this message translates to:
  /// **'语言设置'**
  String get language_settings;

  ///
  ///
  /// In zh, this message translates to:
  /// **'设置应用显示语言'**
  String get language_settings_description;

  ///
  ///
  /// In zh, this message translates to:
  /// **'系统默认'**
  String get system_default;

  ///
  ///
  /// In zh, this message translates to:
  /// **'使用系统语言'**
  String get use_system_language;

  ///
  ///
  /// In zh, this message translates to:
  /// **'语言更改将在应用重启后生效'**
  String get language_change_hint;

  ///
  ///
  /// In zh, this message translates to:
  /// **'返回'**
  String get back;

  ///
  ///
  /// In zh, this message translates to:
  /// **'下一步'**
  String get next;

  ///
  ///
  /// In zh, this message translates to:
  /// **'完成'**
  String get done;

  ///
  ///
  /// In zh, this message translates to:
  /// **'加载中...'**
  String get loading;

  ///
  ///
  /// In zh, this message translates to:
  /// **'错误'**
  String get error;

  ///
  ///
  /// In zh, this message translates to:
  /// **'成功'**
  String get success;

  ///
  ///
  /// In zh, this message translates to:
  /// **'警告'**
  String get warning;

  ///
  ///
  /// In zh, this message translates to:
  /// **'信息'**
  String get info;

  ///
  ///
  /// In zh, this message translates to:
  /// **'选择提醒天数'**
  String get select_alert_days;

  ///
  ///
  /// In zh, this message translates to:
  /// **'自定义'**
  String get custom;

  /// 自定义天数带参数
  ///
  /// In zh, this message translates to:
  /// **'自定义（{days}天）'**
  String custom_days(int days);

  /// 当前选择的天数显示
  ///
  /// In zh, this message translates to:
  /// **'当前选择：{days}天'**
  String current_selection(int days);

  /// 提醒天数范围带参数
  ///
  /// In zh, this message translates to:
  /// **'提醒天数范围：{min}-{max}天'**
  String alert_days_range(int min, int max);

  ///
  ///
  /// In zh, this message translates to:
  /// **'请输入提醒天数'**
  String get enter_days;

  ///
  ///
  /// In zh, this message translates to:
  /// **'天数'**
  String get days;

  /// 天数输入验证消息
  ///
  /// In zh, this message translates to:
  /// **'请输入{min}-{max}之间的数字'**
  String enter_valid_days(int min, int max);

  ///
  ///
  /// In zh, this message translates to:
  /// **'提醒设置'**
  String get alert_settings;

  ///
  ///
  /// In zh, this message translates to:
  /// **'日历设置'**
  String get calendar_settings;

  ///
  ///
  /// In zh, this message translates to:
  /// **'日历同步'**
  String get calendar_sync;

  ///
  ///
  /// In zh, this message translates to:
  /// **'开启后将请求日历权限'**
  String get calendar_sync_desc;

  ///
  ///
  /// In zh, this message translates to:
  /// **'添加测试日历事件'**
  String get add_test_calendar_event;

  ///
  ///
  /// In zh, this message translates to:
  /// **'请先开启\"日历同步\"开关'**
  String get enable_calendar_sync_first;

  ///
  ///
  /// In zh, this message translates to:
  /// **'App提醒设置'**
  String get app_alert_settings;

  ///
  ///
  /// In zh, this message translates to:
  /// **'本地提醒'**
  String get local_alerts;

  ///
  ///
  /// In zh, this message translates to:
  /// **'开启后接收应用内过期提醒'**
  String get local_alerts_desc;

  ///
  ///
  /// In zh, this message translates to:
  /// **'发送测试通知'**
  String get send_test_notification;

  ///
  ///
  /// In zh, this message translates to:
  /// **'请先开启\"本地提醒\"开关'**
  String get enable_local_alerts_first;

  ///
  ///
  /// In zh, this message translates to:
  /// **'提醒天数设置'**
  String get alert_days_settings;

  ///
  ///
  /// In zh, this message translates to:
  /// **'提前提醒天数'**
  String get advance_alert_days;

  ///
  ///
  /// In zh, this message translates to:
  /// **'设置提前多少天提醒物品过期或保修到期'**
  String get advance_alert_days_desc;

  ///
  ///
  /// In zh, this message translates to:
  /// **'日历权限请求'**
  String get calendar_permission_request;

  ///
  ///
  /// In zh, this message translates to:
  /// **'需要访问日历权限来同步物品提醒。是否允许？'**
  String get calendar_permission_desc;

  ///
  ///
  /// In zh, this message translates to:
  /// **'允许'**
  String get allow;

  ///
  ///
  /// In zh, this message translates to:
  /// **'日历权限已授予，日历同步已开启'**
  String get calendar_permission_granted;

  ///
  ///
  /// In zh, this message translates to:
  /// **'日历权限被拒绝，无法开启日历同步'**
  String get calendar_permission_denied;

  ///
  ///
  /// In zh, this message translates to:
  /// **'权限被永久拒绝'**
  String get calendar_permission_permanently_denied;

  ///
  ///
  /// In zh, this message translates to:
  /// **'日历权限被永久拒绝，请在系统设置中手动开启权限。'**
  String get calendar_permission_permanently_denied_desc;

  ///
  ///
  /// In zh, this message translates to:
  /// **'去设置'**
  String get go_to_settings;

  ///
  ///
  /// In zh, this message translates to:
  /// **'日历权限已授予，但无法创建日历账户。请检查系统日历设置'**
  String get calendar_account_failed;

  ///
  ///
  /// In zh, this message translates to:
  /// **'日历权限已授予，已创建本地日历账户'**
  String get calendar_account_created;

  ///
  ///
  /// In zh, this message translates to:
  /// **'日历账户创建成功，但系统可能需要一些时间生效'**
  String get calendar_account_creating;

  ///
  ///
  /// In zh, this message translates to:
  /// **'测试日历事件添加成功'**
  String get test_calendar_event_added;

  ///
  ///
  /// In zh, this message translates to:
  /// **'添加测试日历事件失败，请检查日历设置'**
  String get test_calendar_event_failed;

  ///
  ///
  /// In zh, this message translates to:
  /// **'需要日历权限才能添加测试事件'**
  String get calendar_permission_required;

  ///
  ///
  /// In zh, this message translates to:
  /// **'测试通知已发送'**
  String get test_notification_sent;

  /// 通知错误消息
  ///
  /// In zh, this message translates to:
  /// **'发送测试通知失败: {error}'**
  String test_notification_failed(String error);

  ///
  ///
  /// In zh, this message translates to:
  /// **'需要通知权限才能启用本地提醒'**
  String get notification_permission_required;

  /// 通用操作错误消息
  ///
  /// In zh, this message translates to:
  /// **'操作失败: {error}'**
  String operation_failed(String error);

  ///
  ///
  /// In zh, this message translates to:
  /// **'物品预警通知'**
  String get notification_channel_name;

  ///
  ///
  /// In zh, this message translates to:
  /// **'物品过期或过保提醒'**
  String get notification_channel_description;

  ///
  ///
  /// In zh, this message translates to:
  /// **'食品'**
  String get item_category_food;

  ///
  ///
  /// In zh, this message translates to:
  /// **'日用品'**
  String get item_category_daily_necessities;

  ///
  ///
  /// In zh, this message translates to:
  /// **'化妆品'**
  String get item_category_cosmetics;

  ///
  ///
  /// In zh, this message translates to:
  /// **'药品'**
  String get item_category_medicine;

  ///
  ///
  /// In zh, this message translates to:
  /// **'电子产品'**
  String get item_category_electronics;

  ///
  ///
  /// In zh, this message translates to:
  /// **'家具'**
  String get item_category_furniture;

  ///
  ///
  /// In zh, this message translates to:
  /// **'服装'**
  String get item_category_clothing;

  ///
  ///
  /// In zh, this message translates to:
  /// **'书籍'**
  String get item_category_books;

  ///
  ///
  /// In zh, this message translates to:
  /// **'其他'**
  String get item_category_other;

  ///
  ///
  /// In zh, this message translates to:
  /// **'线上商城'**
  String get purchase_channel_online_mall;

  ///
  ///
  /// In zh, this message translates to:
  /// **'实体店'**
  String get purchase_channel_physical_store;

  ///
  ///
  /// In zh, this message translates to:
  /// **'超市'**
  String get purchase_channel_supermarket;

  ///
  ///
  /// In zh, this message translates to:
  /// **'专卖店'**
  String get purchase_channel_specialty_store;

  ///
  ///
  /// In zh, this message translates to:
  /// **'二手市场'**
  String get purchase_channel_secondhand_market;

  ///
  ///
  /// In zh, this message translates to:
  /// **'其他'**
  String get purchase_channel_other;

  ///
  ///
  /// In zh, this message translates to:
  /// **'其他'**
  String get default_category;

  ///
  ///
  /// In zh, this message translates to:
  /// **'线上商城'**
  String get default_purchase_channel;

  ///
  ///
  /// In zh, this message translates to:
  /// **'物品分类'**
  String get item_category;

  ///
  ///
  /// In zh, this message translates to:
  /// **'自定义分类'**
  String get custom_category;

  ///
  ///
  /// In zh, this message translates to:
  /// **'备份数据'**
  String get backup_data;

  ///
  ///
  /// In zh, this message translates to:
  /// **'将全部数据（包括图片）打包为ZIP文件备份'**
  String get backup_data_description;

  ///
  ///
  /// In zh, this message translates to:
  /// **'备份全部数据'**
  String get backup_all_data;

  ///
  ///
  /// In zh, this message translates to:
  /// **'备份成功'**
  String get backup_success;

  /// 备份失败错误消息
  ///
  /// In zh, this message translates to:
  /// **'备份失败：{error}'**
  String backup_failed(String error);

  ///
  ///
  /// In zh, this message translates to:
  /// **'恢复数据'**
  String get restore_data;

  ///
  ///
  /// In zh, this message translates to:
  /// **'从ZIP备份文件恢复全部数据'**
  String get restore_data_description;

  ///
  ///
  /// In zh, this message translates to:
  /// **'导出数据'**
  String get export_data;

  ///
  ///
  /// In zh, this message translates to:
  /// **'导出为CSV、TXT、SQL格式'**
  String get export_data_description;

  ///
  ///
  /// In zh, this message translates to:
  /// **'导入数据'**
  String get import_data;

  ///
  ///
  /// In zh, this message translates to:
  /// **'从CSV、TXT、SQL文件导入数据'**
  String get import_data_description;

  ///
  ///
  /// In zh, this message translates to:
  /// **'日历提醒和App推送提醒设置'**
  String get alert_settings_description;

  ///
  ///
  /// In zh, this message translates to:
  /// **'关于'**
  String get about;

  ///
  ///
  /// In zh, this message translates to:
  /// **'应用信息和版本'**
  String get about_description;

  ///
  ///
  /// In zh, this message translates to:
  /// **'请先选择备份文件'**
  String get select_backup_file_first;

  ///
  ///
  /// In zh, this message translates to:
  /// **'确认恢复'**
  String get confirm_restore;

  ///
  ///
  /// In zh, this message translates to:
  /// **'恢复备份将清空所有现有数据并替换为备份数据，此操作不可撤销。确定要继续吗？'**
  String get confirm_restore_message;

  ///
  ///
  /// In zh, this message translates to:
  /// **'再次确认'**
  String get confirm_again;

  ///
  ///
  /// In zh, this message translates to:
  /// **'您确定要清空所有现有数据并恢复备份吗？此操作将无法恢复！'**
  String get confirm_restore_warning;

  ///
  ///
  /// In zh, this message translates to:
  /// **'确定恢复'**
  String get confirm_restore_button;

  /// 恢复成功消息
  ///
  /// In zh, this message translates to:
  /// **'恢复成功，共{count}条物品'**
  String restore_success(int count);

  /// 恢复失败错误消息
  ///
  /// In zh, this message translates to:
  /// **'恢复失败：{error}'**
  String restore_failed(String error);

  ///
  ///
  /// In zh, this message translates to:
  /// **'选择备份文件'**
  String get select_backup_file;

  ///
  ///
  /// In zh, this message translates to:
  /// **'恢复备份'**
  String get restore_backup;

  /// 已选择文件消息
  ///
  /// In zh, this message translates to:
  /// **'已选择文件：{filename}'**
  String selected_file(String filename);

  ///
  ///
  /// In zh, this message translates to:
  /// **'数据导出成功'**
  String get export_success;

  /// 导出失败错误消息
  ///
  /// In zh, this message translates to:
  /// **'导出失败：{error}'**
  String export_failed(String error);

  ///
  ///
  /// In zh, this message translates to:
  /// **'CSV'**
  String get format_csv;

  ///
  ///
  /// In zh, this message translates to:
  /// **'TXT'**
  String get format_txt;

  ///
  ///
  /// In zh, this message translates to:
  /// **'SQL'**
  String get format_sql;

  ///
  ///
  /// In zh, this message translates to:
  /// **'重复数据处理'**
  String get duplicate_data_handling;

  ///
  ///
  /// In zh, this message translates to:
  /// **'检测到重复数据，请选择处理方式：'**
  String get duplicate_data_detected;

  ///
  ///
  /// In zh, this message translates to:
  /// **'跳过'**
  String get skip;

  ///
  ///
  /// In zh, this message translates to:
  /// **'覆盖'**
  String get overwrite;

  ///
  ///
  /// In zh, this message translates to:
  /// **'全部跳过'**
  String get skip_all;

  ///
  ///
  /// In zh, this message translates to:
  /// **'全部覆盖'**
  String get overwrite_all;

  ///
  ///
  /// In zh, this message translates to:
  /// **'请先选择导入格式'**
  String get select_import_format_first;

  ///
  ///
  /// In zh, this message translates to:
  /// **'确认导入'**
  String get confirm_import;

  ///
  ///
  /// In zh, this message translates to:
  /// **'导入数据将覆盖现有数据，此操作不可撤销。确定要继续吗？'**
  String get confirm_import_message;

  /// 导入成功消息
  ///
  /// In zh, this message translates to:
  /// **'数据导入成功，共导入{count}条物品'**
  String import_success(int count);

  /// 导入失败错误消息
  ///
  /// In zh, this message translates to:
  /// **'导入失败：{error}'**
  String import_failed(String error);

  ///
  ///
  /// In zh, this message translates to:
  /// **'选择文件'**
  String get select_file;

  ///
  ///
  /// In zh, this message translates to:
  /// **'暂无数据'**
  String get no_data;

  ///
  ///
  /// In zh, this message translates to:
  /// **'当前没有数据，点击下方按钮添加第一条记录吧！'**
  String get no_data_description;

  ///
  ///
  /// In zh, this message translates to:
  /// **'加载失败'**
  String get load_failed;

  ///
  ///
  /// In zh, this message translates to:
  /// **'数据加载失败，请检查网络连接后重试'**
  String get load_failed_description;

  ///
  ///
  /// In zh, this message translates to:
  /// **'重试'**
  String get retry;

  ///
  ///
  /// In zh, this message translates to:
  /// **'网络连接失败'**
  String get network_connection_failed;

  ///
  ///
  /// In zh, this message translates to:
  /// **'请检查网络连接后重试'**
  String get network_connection_failed_description;

  ///
  ///
  /// In zh, this message translates to:
  /// **'未找到结果'**
  String get no_results;

  ///
  ///
  /// In zh, this message translates to:
  /// **'尝试使用其他关键词搜索'**
  String get no_results_description;

  ///
  ///
  /// In zh, this message translates to:
  /// **'清除搜索'**
  String get clear_search;

  ///
  ///
  /// In zh, this message translates to:
  /// **'权限不足'**
  String get insufficient_permission;

  ///
  ///
  /// In zh, this message translates to:
  /// **'需要相关权限才能使用此功能'**
  String get insufficient_permission_description;

  ///
  ///
  /// In zh, this message translates to:
  /// **'请求权限'**
  String get request_permission;

  ///
  ///
  /// In zh, this message translates to:
  /// **'应用信息'**
  String get app_info;

  ///
  ///
  /// In zh, this message translates to:
  /// **'版本'**
  String get version;

  ///
  ///
  /// In zh, this message translates to:
  /// **'开发者'**
  String get developer;

  ///
  ///
  /// In zh, this message translates to:
  /// **'设备信息'**
  String get device_info;

  ///
  ///
  /// In zh, this message translates to:
  /// **'设备型号'**
  String get device_model;

  ///
  ///
  /// In zh, this message translates to:
  /// **'品牌'**
  String get brand;

  ///
  ///
  /// In zh, this message translates to:
  /// **'设备名称'**
  String get device_name;

  ///
  ///
  /// In zh, this message translates to:
  /// **'产品'**
  String get product;

  ///
  ///
  /// In zh, this message translates to:
  /// **'硬件'**
  String get hardware;

  ///
  ///
  /// In zh, this message translates to:
  /// **'Android版本'**
  String get android_version;

  ///
  ///
  /// In zh, this message translates to:
  /// **'SDK版本'**
  String get sdk_version;

  ///
  ///
  /// In zh, this message translates to:
  /// **'系统名称'**
  String get system_name;

  ///
  ///
  /// In zh, this message translates to:
  /// **'操作系统'**
  String get operating_system;

  ///
  ///
  /// In zh, this message translates to:
  /// **'系统版本'**
  String get system_version;

  ///
  ///
  /// In zh, this message translates to:
  /// **'Dart版本'**
  String get dart_version;

  ///
  ///
  /// In zh, this message translates to:
  /// **'设备标识'**
  String get device_identifier;

  ///
  ///
  /// In zh, this message translates to:
  /// **'计算机名'**
  String get computer_name;

  ///
  ///
  /// In zh, this message translates to:
  /// **'版本号'**
  String get build_number;

  /// 设备信息获取错误消息
  ///
  /// In zh, this message translates to:
  /// **'无法获取设备信息: {error}'**
  String error_getting_device_info(String error);

  ///
  ///
  /// In zh, this message translates to:
  /// **'功能介绍'**
  String get features;

  ///
  ///
  /// In zh, this message translates to:
  /// **'智能物品管理应用'**
  String get app_description;

  ///
  ///
  /// In zh, this message translates to:
  /// **'帮助您管理物品的过期日期、保修日期等信息，并提供智能提醒功能。'**
  String get app_description_detail;

  ///
  ///
  /// In zh, this message translates to:
  /// **'消耗品'**
  String get consumable;

  ///
  ///
  /// In zh, this message translates to:
  /// **'耐用品'**
  String get durable;

  ///
  ///
  /// In zh, this message translates to:
  /// **'排序'**
  String get sort;

  ///
  ///
  /// In zh, this message translates to:
  /// **'名称升序'**
  String get name_asc;

  ///
  ///
  /// In zh, this message translates to:
  /// **'名称降序'**
  String get name_desc;

  ///
  ///
  /// In zh, this message translates to:
  /// **'日期升序'**
  String get date_asc;

  ///
  ///
  /// In zh, this message translates to:
  /// **'日期降序'**
  String get date_desc;

  ///
  ///
  /// In zh, this message translates to:
  /// **'单价升序'**
  String get price_asc;

  ///
  ///
  /// In zh, this message translates to:
  /// **'单价降序'**
  String get price_desc;

  ///
  ///
  /// In zh, this message translates to:
  /// **'数量升序'**
  String get quantity_asc;

  ///
  ///
  /// In zh, this message translates to:
  /// **'数量降序'**
  String get quantity_desc;

  ///
  ///
  /// In zh, this message translates to:
  /// **'总价升序'**
  String get total_price_asc;

  ///
  ///
  /// In zh, this message translates to:
  /// **'总价降序'**
  String get total_price_desc;

  ///
  ///
  /// In zh, this message translates to:
  /// **'清除所有筛选'**
  String get clear_all_filters;

  ///
  ///
  /// In zh, this message translates to:
  /// **'扫码入库'**
  String get scan_barcode;

  ///
  ///
  /// In zh, this message translates to:
  /// **'搜索物品...'**
  String get search_items;

  ///
  ///
  /// In zh, this message translates to:
  /// **'暂无物品'**
  String get no_items;

  ///
  ///
  /// In zh, this message translates to:
  /// **'点击下方按钮添加第一个物品'**
  String get no_items_description;

  ///
  ///
  /// In zh, this message translates to:
  /// **'已过期'**
  String get expired;

  ///
  ///
  /// In zh, this message translates to:
  /// **'即将过期'**
  String get expiring_soon;

  ///
  ///
  /// In zh, this message translates to:
  /// **'保修已过期'**
  String get warranty_expired;

  ///
  ///
  /// In zh, this message translates to:
  /// **'保修即将到期'**
  String get warranty_expiring_soon;

  /// 剩余天数带参数
  ///
  /// In zh, this message translates to:
  /// **'剩余{count}天'**
  String days_remaining(int count);

  /// 过期天数带参数
  ///
  /// In zh, this message translates to:
  /// **'已过期{count}天'**
  String expired_days_ago(int count);

  ///
  ///
  /// In zh, this message translates to:
  /// **'删除物品'**
  String get delete_item;

  /// 删除确认消息
  ///
  /// In zh, this message translates to:
  /// **'确定要删除\"{name}\"吗？'**
  String delete_item_confirm(String name);

  ///
  ///
  /// In zh, this message translates to:
  /// **'物品已删除'**
  String get item_deleted;

  ///
  ///
  /// In zh, this message translates to:
  /// **'删除失败'**
  String get failed_to_delete;

  /// 删除错误消息
  ///
  /// In zh, this message translates to:
  /// **'无法删除物品: {error}'**
  String failed_to_delete_message(String error);

  ///
  ///
  /// In zh, this message translates to:
  /// **'日期范围筛选'**
  String get date_range_filter;

  ///
  ///
  /// In zh, this message translates to:
  /// **'价格范围筛选'**
  String get price_range_filter;

  ///
  ///
  /// In zh, this message translates to:
  /// **'我的物品'**
  String get my_items;

  ///
  ///
  /// In zh, this message translates to:
  /// **'点击右下角按钮添加物品'**
  String get click_fab_to_add_item;

  ///
  ///
  /// In zh, this message translates to:
  /// **'确认删除'**
  String get confirm_delete;

  ///
  ///
  /// In zh, this message translates to:
  /// **'筛选选项'**
  String get filter_options;

  ///
  ///
  /// In zh, this message translates to:
  /// **'按类型、分类和地点筛选物品'**
  String get filter_by_type_category_location;

  /// 分类数量显示
  ///
  /// In zh, this message translates to:
  /// **'{count} 个分类'**
  String categories_count(int count);

  ///
  ///
  /// In zh, this message translates to:
  /// **'全部分类'**
  String get all_categories;

  ///
  ///
  /// In zh, this message translates to:
  /// **'暂无分类数据'**
  String get no_category_data;

  ///
  ///
  /// In zh, this message translates to:
  /// **'存储地点'**
  String get storage_location;

  /// 地点数量显示
  ///
  /// In zh, this message translates to:
  /// **'{count} 个地点'**
  String locations_count(int count);

  ///
  ///
  /// In zh, this message translates to:
  /// **'全部地点'**
  String get all_locations;

  ///
  ///
  /// In zh, this message translates to:
  /// **'暂无地点数据'**
  String get no_location_data;

  ///
  ///
  /// In zh, this message translates to:
  /// **'日期范围'**
  String get date_range;

  ///
  ///
  /// In zh, this message translates to:
  /// **'选择日期范围'**
  String get select_date_range;

  ///
  ///
  /// In zh, this message translates to:
  /// **'价格范围'**
  String get price_range;

  ///
  ///
  /// In zh, this message translates to:
  /// **'单价范围'**
  String get unit_price_range;

  ///
  ///
  /// In zh, this message translates to:
  /// **'最低单价'**
  String get min_unit_price;

  ///
  ///
  /// In zh, this message translates to:
  /// **'最高单价'**
  String get max_unit_price;

  ///
  ///
  /// In zh, this message translates to:
  /// **'总价范围'**
  String get total_price_range;

  ///
  ///
  /// In zh, this message translates to:
  /// **'最低总价'**
  String get min_total_price;

  ///
  ///
  /// In zh, this message translates to:
  /// **'最高总价'**
  String get max_total_price;

  ///
  ///
  /// In zh, this message translates to:
  /// **'清除价格筛选'**
  String get clear_price_filter;

  ///
  ///
  /// In zh, this message translates to:
  /// **'将条码放入框内扫描'**
  String get place_barcode_in_frame;

  ///
  ///
  /// In zh, this message translates to:
  /// **'商品已存在'**
  String get item_already_exists;

  /// 条码显示带参数
  ///
  /// In zh, this message translates to:
  /// **'条码：{barcode}'**
  String barcode_with_value(String barcode);

  /// 名称显示带参数
  ///
  /// In zh, this message translates to:
  /// **'名称：{name}'**
  String name_with_value(String name);

  /// 分类显示带参数
  ///
  /// In zh, this message translates to:
  /// **'分类：{category}'**
  String category_with_value(String category);

  /// 当前数量显示带参数
  ///
  /// In zh, this message translates to:
  /// **'当前数量：{quantity}{unit}'**
  String current_quantity_with_value(String quantity, String unit);

  ///
  ///
  /// In zh, this message translates to:
  /// **'请选择操作：'**
  String get please_select_operation;

  ///
  ///
  /// In zh, this message translates to:
  /// **'出库'**
  String get outbound;

  ///
  ///
  /// In zh, this message translates to:
  /// **'入库'**
  String get inbound;

  ///
  ///
  /// In zh, this message translates to:
  /// **'入库数量'**
  String get inbound_quantity;

  ///
  ///
  /// In zh, this message translates to:
  /// **'出库数量'**
  String get outbound_quantity;

  ///
  ///
  /// In zh, this message translates to:
  /// **'数量'**
  String get quantity;

  ///
  ///
  /// In zh, this message translates to:
  /// **'请输入入库数量'**
  String get enter_inbound_quantity;

  ///
  ///
  /// In zh, this message translates to:
  /// **'请输入出库数量'**
  String get enter_outbound_quantity;

  /// 删除确认消息带不可撤销警告
  ///
  /// In zh, this message translates to:
  /// **'确定要删除「{name}」吗？此操作不可撤销。'**
  String delete_item_confirm_with_irreversible(String name);

  ///
  ///
  /// In zh, this message translates to:
  /// **'数据库已重置，将重新创建表结构'**
  String get database_reset;

  /// 数据库重置错误
  ///
  /// In zh, this message translates to:
  /// **'重置数据库时出错: {error}'**
  String database_reset_error(String error);

  /// 模拟数据初始化失败
  ///
  /// In zh, this message translates to:
  /// **'模拟数据初始化失败: {error}'**
  String mock_data_init_failed(String error);

  ///
  ///
  /// In zh, this message translates to:
  /// **'解决方案：'**
  String get solution_steps;

  ///
  ///
  /// In zh, this message translates to:
  /// **'1. 卸载应用重新安装'**
  String get solution_step_1;

  ///
  ///
  /// In zh, this message translates to:
  /// **'2. 或清除应用数据'**
  String get solution_step_2;

  ///
  ///
  /// In zh, this message translates to:
  /// **'3. 或将 resetDatabaseOnStart 设为 true 后重新运行'**
  String get solution_step_3;

  /// 通知服务初始化失败
  ///
  /// In zh, this message translates to:
  /// **'提醒服务初始化失败: {error}'**
  String notification_service_init_failed(String error);

  /// 检查日历账户失败
  ///
  /// In zh, this message translates to:
  /// **'检查日历账户失败: {error}'**
  String check_calendar_account_failed(String error);

  /// 创建日历失败
  ///
  /// In zh, this message translates to:
  /// **'创建日历失败: {error}'**
  String create_calendar_failed(String error);

  /// 添加日历事件失败
  ///
  /// In zh, this message translates to:
  /// **'添加日历事件失败: {error}'**
  String add_calendar_event_failed(String error);

  /// 删除日历事件失败
  ///
  /// In zh, this message translates to:
  /// **'删除日历事件失败: {error}'**
  String delete_calendar_event_failed(String error);

  /// 设置权限提示消息失败
  ///
  /// In zh, this message translates to:
  /// **'设置权限提示消息失败: {error}'**
  String set_permission_message_failed(String error);

  /// 模拟数据初始化成功
  ///
  /// In zh, this message translates to:
  /// **'已成功初始化 {count} 条模拟数据'**
  String mock_data_init_success(int count);

  /// 数据库已有数据
  ///
  /// In zh, this message translates to:
  /// **'数据库已有 {count} 条数据，跳过模拟数据初始化'**
  String database_has_data(int count);

  ///
  ///
  /// In zh, this message translates to:
  /// **'可能是数据库结构不匹配，建议清除应用数据或重新安装'**
  String get database_structure_mismatch;

  ///
  ///
  /// In zh, this message translates to:
  /// **'已删除旧数据库文件'**
  String get old_database_deleted;

  ///
  ///
  /// In zh, this message translates to:
  /// **'备份数据为空'**
  String get backup_data_empty;

  ///
  ///
  /// In zh, this message translates to:
  /// **'备份文件不存在'**
  String get backup_file_not_found;

  /// 文件编码错误
  ///
  /// In zh, this message translates to:
  /// **'文件编码不是有效的UTF-8格式。请确保文件使用UTF-8编码保存。错误详情: {error}'**
  String file_not_utf8(String error);

  /// 文件不存在错误
  ///
  /// In zh, this message translates to:
  /// **'文件不存在: {filePath}'**
  String file_not_found(String filePath);

  /// 文件为空错误
  ///
  /// In zh, this message translates to:
  /// **'文件为空: {filePath}'**
  String file_empty(String filePath);

  ///
  ///
  /// In zh, this message translates to:
  /// **'文件内容解码后为空，可能是编码不匹配'**
  String get file_content_empty;

  /// 字段不能为空验证
  ///
  /// In zh, this message translates to:
  /// **'{fieldName}不能为空'**
  String field_cannot_be_empty(String fieldName);

  /// 字段最小长度验证
  ///
  /// In zh, this message translates to:
  /// **'{fieldName}长度不能少于{minLength}个字符'**
  String field_min_length(String fieldName, int minLength);

  /// 字段最大长度验证
  ///
  /// In zh, this message translates to:
  /// **'{fieldName}长度不能超过{maxLength}个字符'**
  String field_max_length(String fieldName, int maxLength);

  /// 邮箱格式验证
  ///
  /// In zh, this message translates to:
  /// **'请输入有效的{fieldName}地址'**
  String field_invalid_email(String fieldName);

  /// 数字格式验证
  ///
  /// In zh, this message translates to:
  /// **'{fieldName}必须是{numberType}'**
  String field_invalid_number(String fieldName, String numberType);

  /// 最小值验证
  ///
  /// In zh, this message translates to:
  /// **'{fieldName}不能小于{min}'**
  String field_min_value(String fieldName, double min);

  /// 最大值验证
  ///
  /// In zh, this message translates to:
  /// **'{fieldName}不能大于{max}'**
  String field_max_value(String fieldName, double max);

  /// 正整数验证
  ///
  /// In zh, this message translates to:
  /// **'{fieldName}必须是正整数'**
  String field_positive_integer(String fieldName);

  /// 大于零验证
  ///
  /// In zh, this message translates to:
  /// **'{fieldName}必须大于0'**
  String field_greater_than_zero(String fieldName);

  /// 正数验证
  ///
  /// In zh, this message translates to:
  /// **'{fieldName}必须是正数'**
  String field_positive_number(String fieldName);

  /// 日期格式验证
  ///
  /// In zh, this message translates to:
  /// **'请输入有效的{fieldName}'**
  String field_invalid_date(String fieldName);

  /// 日期不能是过去
  ///
  /// In zh, this message translates to:
  /// **'{fieldName}不能是过去日期'**
  String field_date_not_past(String fieldName);

  /// 日期不能早于指定日期
  ///
  /// In zh, this message translates to:
  /// **'{fieldName}不能早于{minDate}'**
  String field_date_not_before(String fieldName, String minDate);

  /// 日期不能晚于指定日期
  ///
  /// In zh, this message translates to:
  /// **'{fieldName}不能晚于{maxDate}'**
  String field_date_not_after(String fieldName, String maxDate);

  /// 无效值验证
  ///
  /// In zh, this message translates to:
  /// **'请输入有效的{fieldName}'**
  String field_invalid_value(String fieldName);

  /// 密码最小长度验证
  ///
  /// In zh, this message translates to:
  /// **'{fieldName}长度不能少于8个字符'**
  String password_min_length(String fieldName);

  /// 密码必须包含大写字母
  ///
  /// In zh, this message translates to:
  /// **'{fieldName}必须包含至少一个大写字母'**
  String password_uppercase_required(String fieldName);

  /// 密码必须包含小写字母
  ///
  /// In zh, this message translates to:
  /// **'{fieldName}必须包含至少一个小写字母'**
  String password_lowercase_required(String fieldName);

  /// 密码必须包含数字
  ///
  /// In zh, this message translates to:
  /// **'{fieldName}必须包含至少一个数字'**
  String password_digit_required(String fieldName);

  /// 密码必须包含特殊字符
  ///
  /// In zh, this message translates to:
  /// **'{fieldName}必须包含至少一个特殊字符'**
  String password_special_char_required(String fieldName);

  ///
  ///
  /// In zh, this message translates to:
  /// **'两次输入的密码不一致'**
  String get passwords_not_match;

  ///
  ///
  /// In zh, this message translates to:
  /// **'物品名称不能为空'**
  String get item_name_cannot_be_empty;

  /// 名称最大长度验证
  ///
  /// In zh, this message translates to:
  /// **'名称不能超过{maxLength}个字符'**
  String name_max_length(int maxLength);

  /// 数量最小值验证
  ///
  /// In zh, this message translates to:
  /// **'数量不能小于{minQuantity}'**
  String quantity_min(int minQuantity);

  /// 数量最大值验证
  ///
  /// In zh, this message translates to:
  /// **'数量不能超过{maxQuantity}'**
  String quantity_max(int maxQuantity);

  ///
  ///
  /// In zh, this message translates to:
  /// **'单价不能为负数'**
  String get unit_price_not_negative;

  /// 单价最大值验证
  ///
  /// In zh, this message translates to:
  /// **'单价不能超过{maxUnitPrice}'**
  String unit_price_max(double maxUnitPrice);

  ///
  ///
  /// In zh, this message translates to:
  /// **'请设置生产日期和保质期来自动计算有效期'**
  String get set_production_expiry_for_validity;

  ///
  ///
  /// In zh, this message translates to:
  /// **'请设置购买日期和保质期来自动计算保修期'**
  String get set_purchase_warranty_for_validity;

  ///
  ///
  /// In zh, this message translates to:
  /// **'无法创建日历账户，请检查系统日历设置'**
  String get calendar_account_creation_failed;

  ///
  ///
  /// In zh, this message translates to:
  /// **'测试通知'**
  String get test_notification;

  ///
  ///
  /// In zh, this message translates to:
  /// **'这是一个测试通知，用于验证本地提醒功能'**
  String get test_notification_description;

  ///
  ///
  /// In zh, this message translates to:
  /// **'天'**
  String get day_unit;

  /// 天数带参数
  ///
  /// In zh, this message translates to:
  /// **'{days}天'**
  String days_with_value(int days);

  ///
  ///
  /// In zh, this message translates to:
  /// **'物品已保存'**
  String get item_saved;

  ///
  ///
  /// In zh, this message translates to:
  /// **'物品已更新'**
  String get item_updated;

  ///
  ///
  /// In zh, this message translates to:
  /// **'物品已添加'**
  String get item_added;

  ///
  ///
  /// In zh, this message translates to:
  /// **'保存成功'**
  String get save_success;

  ///
  ///
  /// In zh, this message translates to:
  /// **'更新成功'**
  String get update_success;

  ///
  ///
  /// In zh, this message translates to:
  /// **'删除成功'**
  String get delete_success;

  ///
  ///
  /// In zh, this message translates to:
  /// **'保存失败'**
  String get save_failed;

  ///
  ///
  /// In zh, this message translates to:
  /// **'更新失败'**
  String get update_failed;

  ///
  ///
  /// In zh, this message translates to:
  /// **'删除失败'**
  String get delete_failed;

  ///
  ///
  /// In zh, this message translates to:
  /// **'测试日历事件'**
  String get test_calendar_event;

  ///
  ///
  /// In zh, this message translates to:
  /// **'这是一个测试事件，用于验证日历功能'**
  String get test_calendar_event_description;

  ///
  ///
  /// In zh, this message translates to:
  /// **'应用内'**
  String get in_app;

  ///
  ///
  /// In zh, this message translates to:
  /// **'启用到期提醒'**
  String get enable_alert;

  ///
  ///
  /// In zh, this message translates to:
  /// **'提醒方式'**
  String get alert_method;

  ///
  ///
  /// In zh, this message translates to:
  /// **'仅应用内'**
  String get alert_method_in_app;

  ///
  ///
  /// In zh, this message translates to:
  /// **'仅日历'**
  String get alert_method_calendar;

  ///
  ///
  /// In zh, this message translates to:
  /// **'两者'**
  String get alert_method_both;

  ///
  ///
  /// In zh, this message translates to:
  /// **'提前提醒天数'**
  String get alert_days_before;

  ///
  ///
  /// In zh, this message translates to:
  /// **'使用全局设置'**
  String get use_global_setting;

  ///
  ///
  /// In zh, this message translates to:
  /// **'条码'**
  String get barcode_label;

  ///
  ///
  /// In zh, this message translates to:
  /// **'名称'**
  String get name_label;

  ///
  ///
  /// In zh, this message translates to:
  /// **'分类'**
  String get category_label;

  ///
  ///
  /// In zh, this message translates to:
  /// **'当前数量'**
  String get current_quantity;

  ///
  ///
  /// In zh, this message translates to:
  /// **'请选择操作'**
  String get select_operation;

  ///
  ///
  /// In zh, this message translates to:
  /// **'单位'**
  String get unit;

  ///
  ///
  /// In zh, this message translates to:
  /// **'自定义单位'**
  String get custom_unit;

  ///
  ///
  /// In zh, this message translates to:
  /// **'请输入单位'**
  String get enter_unit;

  ///
  ///
  /// In zh, this message translates to:
  /// **'自定义地点'**
  String get custom_location;

  ///
  ///
  /// In zh, this message translates to:
  /// **'请输入存储地点'**
  String get enter_storage_location;

  ///
  ///
  /// In zh, this message translates to:
  /// **'扫码'**
  String get scan;

  ///
  ///
  /// In zh, this message translates to:
  /// **'扫码入库'**
  String get scan_to_stock;

  ///
  ///
  /// In zh, this message translates to:
  /// **'物品分类'**
  String get item_categories;

  ///
  ///
  /// In zh, this message translates to:
  /// **'存储地点'**
  String get storage_locations;

  ///
  ///
  /// In zh, this message translates to:
  /// **'将条码放入框内扫描'**
  String get place_barcode_in_frame_to_scan;

  ///
  ///
  /// In zh, this message translates to:
  /// **'条码'**
  String get barcode;

  ///
  ///
  /// In zh, this message translates to:
  /// **'请输入条码或扫码'**
  String get enter_barcode_or_scan;

  ///
  ///
  /// In zh, this message translates to:
  /// **'基础信息'**
  String get basic_information;

  ///
  ///
  /// In zh, this message translates to:
  /// **'物品名称'**
  String get item_name;

  ///
  ///
  /// In zh, this message translates to:
  /// **'请输入物品名称'**
  String get enter_item_name;

  ///
  ///
  /// In zh, this message translates to:
  /// **'请输入分类名称'**
  String get enter_category_name;

  /// 物品增加通知消息
  ///
  /// In zh, this message translates to:
  /// **'已增加 {itemName} {quantity}{unit}'**
  String item_increased(String itemName, String quantity, String unit);

  /// 物品减少通知消息
  ///
  /// In zh, this message translates to:
  /// **'已减少 {itemName} {quantity}{unit}'**
  String item_decreased(String itemName, String quantity, String unit);

  ///
  ///
  /// In zh, this message translates to:
  /// **'未保存的更改'**
  String get unsaved_changes;

  ///
  ///
  /// In zh, this message translates to:
  /// **'您有未保存的更改，请选择操作：'**
  String get unsaved_changes_message;

  ///
  ///
  /// In zh, this message translates to:
  /// **'放弃'**
  String get discard;

  ///
  ///
  /// In zh, this message translates to:
  /// **'个'**
  String get unit_piece;

  ///
  ///
  /// In zh, this message translates to:
  /// **'件'**
  String get unit_item;

  ///
  ///
  /// In zh, this message translates to:
  /// **'箱'**
  String get unit_box;

  ///
  ///
  /// In zh, this message translates to:
  /// **'包'**
  String get unit_package;

  ///
  ///
  /// In zh, this message translates to:
  /// **'瓶'**
  String get unit_bottle;

  ///
  ///
  /// In zh, this message translates to:
  /// **'盒'**
  String get unit_carton;

  ///
  ///
  /// In zh, this message translates to:
  /// **'套'**
  String get unit_set;

  ///
  ///
  /// In zh, this message translates to:
  /// **'kg'**
  String get unit_kg;

  ///
  ///
  /// In zh, this message translates to:
  /// **'g'**
  String get unit_g;

  ///
  ///
  /// In zh, this message translates to:
  /// **'L'**
  String get unit_l;

  ///
  ///
  /// In zh, this message translates to:
  /// **'ml'**
  String get unit_ml;

  ///
  ///
  /// In zh, this message translates to:
  /// **'m'**
  String get unit_m;

  ///
  ///
  /// In zh, this message translates to:
  /// **'cm'**
  String get unit_cm;

  ///
  ///
  /// In zh, this message translates to:
  /// **'数量'**
  String get quantity_label;

  ///
  ///
  /// In zh, this message translates to:
  /// **'单价'**
  String get unit_price_label;

  ///
  ///
  /// In zh, this message translates to:
  /// **'货币'**
  String get currency_label;

  ///
  ///
  /// In zh, this message translates to:
  /// **'总价：'**
  String get total_price_label;

  ///
  ///
  /// In zh, this message translates to:
  /// **'存储地点'**
  String get storage_location_label;

  ///
  ///
  /// In zh, this message translates to:
  /// **'物品属性'**
  String get item_properties;

  ///
  ///
  /// In zh, this message translates to:
  /// **'有效期'**
  String get expiry_date_label;

  ///
  ///
  /// In zh, this message translates to:
  /// **'保修到期日'**
  String get warranty_expiry_date_label;

  ///
  ///
  /// In zh, this message translates to:
  /// **'生产日期'**
  String get production_date_label;

  ///
  ///
  /// In zh, this message translates to:
  /// **'购买日期'**
  String get purchase_date_label;

  ///
  ///
  /// In zh, this message translates to:
  /// **'根据{dateType}和保质期自动计算'**
  String auto_calculated_from(String dateType);

  ///
  ///
  /// In zh, this message translates to:
  /// **'自动计算'**
  String get auto_calculated;

  ///
  ///
  /// In zh, this message translates to:
  /// **'图片'**
  String get images_label;

  ///
  ///
  /// In zh, this message translates to:
  /// **'备注'**
  String get notes_label;

  ///
  ///
  /// In zh, this message translates to:
  /// **'添加备注信息（选填）'**
  String get add_notes_hint;

  ///
  ///
  /// In zh, this message translates to:
  /// **'年'**
  String get year_label;

  ///
  ///
  /// In zh, this message translates to:
  /// **'月'**
  String get month_label;

  ///
  ///
  /// In zh, this message translates to:
  /// **'天'**
  String get day_label;

  ///
  ///
  /// In zh, this message translates to:
  /// **'已选择 {count} 项'**
  String selected_count(int count);

  ///
  ///
  /// In zh, this message translates to:
  /// **'全选'**
  String get select_all;

  ///
  ///
  /// In zh, this message translates to:
  /// **'取消全选'**
  String get deselect_all;

  ///
  ///
  /// In zh, this message translates to:
  /// **'批量调换存储地点'**
  String get batch_change_location;

  ///
  ///
  /// In zh, this message translates to:
  /// **'确定删除选中的 {count} 个物品吗？'**
  String confirm_delete_selected(int count);

  ///
  ///
  /// In zh, this message translates to:
  /// **'已删除 {count} 个物品'**
  String deleted_count_items(int count);

  ///
  ///
  /// In zh, this message translates to:
  /// **'暂无存储地点可选'**
  String get no_storage_location_available;

  ///
  ///
  /// In zh, this message translates to:
  /// **'批量调换存储地点'**
  String get batch_change_location_title;

  ///
  ///
  /// In zh, this message translates to:
  /// **'已将 {count} 个物品移动到 {location}'**
  String moved_count_items_to_location(int count, String location);

  ///
  ///
  /// In zh, this message translates to:
  /// **'录入'**
  String get operation_type_create;

  ///
  ///
  /// In zh, this message translates to:
  /// **'编辑'**
  String get operation_type_update;

  ///
  ///
  /// In zh, this message translates to:
  /// **'删除'**
  String get operation_type_delete;

  ///
  ///
  /// In zh, this message translates to:
  /// **'入库'**
  String get operation_type_inbound;

  ///
  ///
  /// In zh, this message translates to:
  /// **'出库'**
  String get operation_type_outbound;

  ///
  ///
  /// In zh, this message translates to:
  /// **'导出失败：{error}'**
  String export_failed_message(String error);

  ///
  ///
  /// In zh, this message translates to:
  /// **'清空日志'**
  String get clear_logs;

  ///
  ///
  /// In zh, this message translates to:
  /// **'确定要清空所有操作日志吗？此操作不可恢复。'**
  String get confirm_clear_logs;

  ///
  ///
  /// In zh, this message translates to:
  /// **'日志已清空'**
  String get logs_cleared;

  ///
  ///
  /// In zh, this message translates to:
  /// **'操作日志'**
  String get operation_logs_title;

  ///
  ///
  /// In zh, this message translates to:
  /// **'导出日志'**
  String get export_logs;

  ///
  ///
  /// In zh, this message translates to:
  /// **'清空日志'**
  String get clear_logs_tooltip;

  ///
  ///
  /// In zh, this message translates to:
  /// **'暂无操作日志'**
  String get no_operation_logs;

  ///
  ///
  /// In zh, this message translates to:
  /// **'物品：'**
  String get log_item_label;

  ///
  ///
  /// In zh, this message translates to:
  /// **'分类：'**
  String get log_category_label;

  ///
  ///
  /// In zh, this message translates to:
  /// **'类型：'**
  String get log_type_label;

  ///
  ///
  /// In zh, this message translates to:
  /// **'数量：'**
  String get log_quantity_label;

  ///
  ///
  /// In zh, this message translates to:
  /// **'单价：'**
  String get log_unit_price_label;

  ///
  ///
  /// In zh, this message translates to:
  /// **'总价：'**
  String get log_total_price_label;

  ///
  ///
  /// In zh, this message translates to:
  /// **'过期日期：'**
  String get log_expiry_date_label;

  ///
  ///
  /// In zh, this message translates to:
  /// **'保修日期：'**
  String get log_warranty_date_label;

  ///
  ///
  /// In zh, this message translates to:
  /// **'购买日期：'**
  String get log_purchase_date_label;

  ///
  ///
  /// In zh, this message translates to:
  /// **'生产日期：'**
  String get log_production_date_label;

  ///
  ///
  /// In zh, this message translates to:
  /// **'保质期：'**
  String get log_shelf_life_label;

  ///
  ///
  /// In zh, this message translates to:
  /// **'存储地点：'**
  String get log_storage_location_label;

  ///
  ///
  /// In zh, this message translates to:
  /// **'条码：'**
  String get log_barcode_label;

  ///
  ///
  /// In zh, this message translates to:
  /// **'备注：'**
  String get log_notes_label;

  ///
  ///
  /// In zh, this message translates to:
  /// **'预警：'**
  String get log_alert_label;

  ///
  ///
  /// In zh, this message translates to:
  /// **'预警天数：'**
  String get log_alert_days_label;

  ///
  ///
  /// In zh, this message translates to:
  /// **'数量变化：'**
  String get log_quantity_change_label;

  ///
  ///
  /// In zh, this message translates to:
  /// **'修改字段：'**
  String get log_field_changes_label;

  ///
  ///
  /// In zh, this message translates to:
  /// **'未设置'**
  String get log_not_set;

  ///
  ///
  /// In zh, this message translates to:
  /// **'空'**
  String get log_empty;

  ///
  ///
  /// In zh, this message translates to:
  /// **'开启'**
  String get log_alert_enabled;

  ///
  ///
  /// In zh, this message translates to:
  /// **'关闭'**
  String get log_alert_disabled;

  ///
  ///
  /// In zh, this message translates to:
  /// **'操作日志'**
  String get operation_logs_menu;

  ///
  ///
  /// In zh, this message translates to:
  /// **'查看和恢复操作记录'**
  String get operation_logs_description;

  ///
  ///
  /// In zh, this message translates to:
  /// **'操作失败：{error}'**
  String operation_failed_message(String error);

  ///
  ///
  /// In zh, this message translates to:
  /// **'无日期'**
  String get no_date;

  ///
  ///
  /// In zh, this message translates to:
  /// **'个月'**
  String get shelf_life_months_suffix;

  ///
  ///
  /// In zh, this message translates to:
  /// **'天'**
  String get shelf_life_days_suffix;

  ///
  ///
  /// In zh, this message translates to:
  /// **'天'**
  String get alert_days_suffix;

  ///
  ///
  /// In zh, this message translates to:
  /// **'未知'**
  String get unknown;

  ///
  ///
  /// In zh, this message translates to:
  /// **'雷欧'**
  String get developer_name;

  ///
  ///
  /// In zh, this message translates to:
  /// **'操作日期：'**
  String get log_operation_date_label;

  ///
  ///
  /// In zh, this message translates to:
  /// **'未分类'**
  String get uncategorized;

  ///
  ///
  /// In zh, this message translates to:
  /// **'无地点'**
  String get no_location;

  ///
  ///
  /// In zh, this message translates to:
  /// **'物品分类不能为空'**
  String get item_category_cannot_be_empty;

  ///
  ///
  /// In zh, this message translates to:
  /// **'存储地点不能为空'**
  String get storage_location_cannot_be_empty;

  ///
  ///
  /// In zh, this message translates to:
  /// **'添加时间升序'**
  String get created_at_asc;

  ///
  ///
  /// In zh, this message translates to:
  /// **'添加时间降序'**
  String get created_at_desc;
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
    'af',
    'am',
    'ar',
    'as',
    'az',
    'bg',
    'bn',
    'bo',
    'bs',
    'ca',
    'cs',
    'cy',
    'da',
    'de',
    'el',
    'en',
    'es',
    'et',
    'fa',
    'fi',
    'fil',
    'fj',
    'fr',
    'ga',
    'gu',
    'he',
    'hi',
    'hr',
    'ht',
    'hu',
    'hy',
    'id',
    'is',
    'it',
    'iu',
    'ja',
    'kk',
    'km',
    'kn',
    'ko',
    'ky',
    'mn',
    'ms',
    'mww',
    'nl',
    'pt',
    'ru',
    'ta',
    'th',
    'tr',
    'ug',
    'uk',
    'vi',
    'zh',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when language+script codes are specified.
  switch (locale.languageCode) {
    case 'zh':
      {
        switch (locale.scriptCode) {
          case 'Hant':
            return AppLocalizationsZhHant();
        }
        break;
      }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'af':
      return AppLocalizationsAf();
    case 'am':
      return AppLocalizationsAm();
    case 'ar':
      return AppLocalizationsAr();
    case 'as':
      return AppLocalizationsAs();
    case 'az':
      return AppLocalizationsAz();
    case 'bg':
      return AppLocalizationsBg();
    case 'bn':
      return AppLocalizationsBn();
    case 'bo':
      return AppLocalizationsBo();
    case 'bs':
      return AppLocalizationsBs();
    case 'ca':
      return AppLocalizationsCa();
    case 'cs':
      return AppLocalizationsCs();
    case 'cy':
      return AppLocalizationsCy();
    case 'da':
      return AppLocalizationsDa();
    case 'de':
      return AppLocalizationsDe();
    case 'el':
      return AppLocalizationsEl();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'et':
      return AppLocalizationsEt();
    case 'fa':
      return AppLocalizationsFa();
    case 'fi':
      return AppLocalizationsFi();
    case 'fil':
      return AppLocalizationsFil();
    case 'fj':
      return AppLocalizationsFj();
    case 'fr':
      return AppLocalizationsFr();
    case 'ga':
      return AppLocalizationsGa();
    case 'gu':
      return AppLocalizationsGu();
    case 'he':
      return AppLocalizationsHe();
    case 'hi':
      return AppLocalizationsHi();
    case 'hr':
      return AppLocalizationsHr();
    case 'ht':
      return AppLocalizationsHt();
    case 'hu':
      return AppLocalizationsHu();
    case 'hy':
      return AppLocalizationsHy();
    case 'id':
      return AppLocalizationsId();
    case 'is':
      return AppLocalizationsIs();
    case 'it':
      return AppLocalizationsIt();
    case 'iu':
      return AppLocalizationsIu();
    case 'ja':
      return AppLocalizationsJa();
    case 'kk':
      return AppLocalizationsKk();
    case 'km':
      return AppLocalizationsKm();
    case 'kn':
      return AppLocalizationsKn();
    case 'ko':
      return AppLocalizationsKo();
    case 'ky':
      return AppLocalizationsKy();
    case 'mn':
      return AppLocalizationsMn();
    case 'ms':
      return AppLocalizationsMs();
    case 'mww':
      return AppLocalizationsMww();
    case 'nl':
      return AppLocalizationsNl();
    case 'pt':
      return AppLocalizationsPt();
    case 'ru':
      return AppLocalizationsRu();
    case 'ta':
      return AppLocalizationsTa();
    case 'th':
      return AppLocalizationsTh();
    case 'tr':
      return AppLocalizationsTr();
    case 'ug':
      return AppLocalizationsUg();
    case 'uk':
      return AppLocalizationsUk();
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
