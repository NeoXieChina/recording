// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get app_name => '藏物方寸';

  @override
  String get cancel => '取消';

  @override
  String get confirm => '确定';

  @override
  String get save => '保存';

  @override
  String get delete => '删除';

  @override
  String get edit => '编辑';

  @override
  String get add => '添加';

  @override
  String get search => '搜索';

  @override
  String get settings => '设置';

  @override
  String get back => '返回';

  @override
  String get next => '下一步';

  @override
  String get done => '完成';

  @override
  String get loading => '加载中...';

  @override
  String get error => '错误';

  @override
  String get success => '成功';

  @override
  String get warning => '警告';

  @override
  String get info => '信息';

  @override
  String get select_alert_days => '选择提醒天数';

  @override
  String get custom => '自定义';

  @override
  String custom_days(Object days) {
    return '自定义（$days天）';
  }

  @override
  String alert_days_range(Object min, Object max) {
    return '提醒天数范围：$min-$max天';
  }

  @override
  String get enter_days => '请输入提醒天数';

  @override
  String get days => '天数';

  @override
  String enter_valid_days(Object min, Object max) {
    return '请输入$min-$max之间的数字';
  }

  @override
  String get alert_settings => '预警设置';

  @override
  String get calendar_settings => '日历设置';

  @override
  String get calendar_sync => '日历同步';

  @override
  String get calendar_sync_desc => '开启后将请求日历权限';

  @override
  String get add_test_calendar_event => '添加测试日历事件';

  @override
  String get enable_calendar_sync_first => '请先开启\"日历同步\"开关';

  @override
  String get app_alert_settings => 'App提醒设置';

  @override
  String get local_alerts => '本地提醒';

  @override
  String get local_alerts_desc => '开启后接收应用内过期提醒';

  @override
  String get send_test_notification => '发送测试通知';

  @override
  String get enable_local_alerts_first => '请先开启\"本地提醒\"开关';

  @override
  String get alert_days_settings => '提醒天数设置';

  @override
  String get advance_alert_days => '提前提醒天数';

  @override
  String get advance_alert_days_desc => '设置提前多少天提醒物品过期或保修到期';

  @override
  String get calendar_permission_request => '日历权限请求';

  @override
  String get calendar_permission_desc => '需要访问日历权限来同步物品提醒。是否允许？';

  @override
  String get allow => '允许';

  @override
  String get calendar_permission_granted => '日历权限已授予，日历同步已开启';

  @override
  String get calendar_permission_denied => '日历权限被拒绝，无法开启日历同步';

  @override
  String get calendar_permission_permanently_denied => '权限被永久拒绝';

  @override
  String get calendar_permission_permanently_denied_desc =>
      '日历权限被永久拒绝，请在系统设置中手动开启权限。';

  @override
  String get go_to_settings => '去设置';

  @override
  String get calendar_account_failed => '日历权限已授予，但无法创建日历账户。请检查系统日历设置';

  @override
  String get calendar_account_created => '日历权限已授予，已创建本地日历账户';

  @override
  String get calendar_account_creating => '日历账户创建成功，但系统可能需要一些时间生效';

  @override
  String get test_calendar_event_added => '测试日历事件添加成功';

  @override
  String get test_calendar_event_failed => '添加测试日历事件失败，请检查日历设置';

  @override
  String get calendar_permission_required => '需要日历权限才能添加测试事件';

  @override
  String get test_notification_sent => '测试通知已发送';

  @override
  String test_notification_failed(Object error) {
    return '发送测试通知失败: $error';
  }

  @override
  String get notification_permission_required => '需要通知权限才能启用本地提醒';

  @override
  String operation_failed(Object error) {
    return '操作失败: $error';
  }

  @override
  String get notification_channel_name => '物品预警通知';

  @override
  String get notification_channel_description => '物品过期或过保提醒';

  @override
  String get item_category_food => '食品';

  @override
  String get item_category_daily_necessities => '日用品';

  @override
  String get item_category_cosmetics => '化妆品';

  @override
  String get item_category_medicine => '药品';

  @override
  String get item_category_electronics => '电子产品';

  @override
  String get item_category_furniture => '家具';

  @override
  String get item_category_clothing => '服装';

  @override
  String get item_category_books => '书籍';

  @override
  String get item_category_other => '其他';

  @override
  String get purchase_channel_online_mall => '线上商城';

  @override
  String get purchase_channel_physical_store => '实体店';

  @override
  String get purchase_channel_supermarket => '超市';

  @override
  String get purchase_channel_specialty_store => '专卖店';

  @override
  String get purchase_channel_secondhand_market => '二手市场';

  @override
  String get purchase_channel_other => '其他';

  @override
  String get default_category => '其他';

  @override
  String get default_purchase_channel => '线上商城';

  @override
  String get item_category => '物品分类';

  @override
  String get custom_category => '自定义分类';

  @override
  String get backup_data => '备份数据';

  @override
  String get backup_data_description => '将全部数据（包括图片）打包为ZIP文件备份';

  @override
  String get backup_all_data => '备份全部数据';

  @override
  String get backup_success => '备份成功';

  @override
  String backup_failed(Object error) {
    return '备份失败：$error';
  }

  @override
  String get restore_data => '恢复数据';

  @override
  String get restore_data_description => '从ZIP备份文件恢复全部数据';

  @override
  String get export_data => '导出数据';

  @override
  String get export_data_description => '导出为CSV、TXT、SQL格式';

  @override
  String get import_data => '导入数据';

  @override
  String get import_data_description => '从CSV、TXT、SQL文件导入数据';

  @override
  String get alert_settings_description => '日历提醒和App推送提醒设置';

  @override
  String get about => '关于';

  @override
  String get about_description => '应用信息和版本';

  @override
  String get select_backup_file_first => '请先选择备份文件';

  @override
  String get confirm_restore => '确认恢复';

  @override
  String get confirm_restore_message => '恢复备份将清空所有现有数据并替换为备份数据，此操作不可撤销。确定要继续吗？';

  @override
  String get confirm_again => '再次确认';

  @override
  String get confirm_restore_warning => '您确定要清空所有现有数据并恢复备份吗？此操作将无法恢复！';

  @override
  String get confirm_restore_button => '确定恢复';

  @override
  String restore_success(Object count) {
    return '恢复成功，共$count条物品';
  }

  @override
  String restore_failed(Object error) {
    return '恢复失败：$error';
  }

  @override
  String get select_backup_file => '选择备份文件';

  @override
  String get restore_backup => '恢复备份';

  @override
  String selected_file(Object filename) {
    return '已选择文件：$filename';
  }

  @override
  String get export_success => '数据导出成功';

  @override
  String export_failed(Object error) {
    return '导出失败：$error';
  }

  @override
  String get format_csv => 'CSV';

  @override
  String get format_txt => 'TXT';

  @override
  String get format_sql => 'SQL';

  @override
  String get duplicate_data_handling => '重复数据处理';

  @override
  String get duplicate_data_detected => '检测到重复数据，请选择处理方式：';

  @override
  String get skip => '跳过';

  @override
  String get overwrite => '覆盖';

  @override
  String get skip_all => '全部跳过';

  @override
  String get overwrite_all => '全部覆盖';

  @override
  String get select_import_format_first => '请先选择导入格式';

  @override
  String get confirm_import => '确认导入';

  @override
  String get confirm_import_message => '导入数据将覆盖现有数据，此操作不可撤销。确定要继续吗？';

  @override
  String import_success(Object count) {
    return '数据导入成功，共导入$count条物品';
  }

  @override
  String import_failed(Object error) {
    return '导入失败：$error';
  }

  @override
  String get select_file => '选择文件';
}
