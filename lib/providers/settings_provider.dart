import 'package:flutter/material.dart';
import 'package:recording/constants.dart';
import 'package:recording/data/datasources/app_database.dart';
import 'package:recording/data/models/app_settings.dart';
import 'package:recording/services/alert_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsProvider extends ChangeNotifier {
  static const String _localeKey = 'selected_locale';

  bool _calendarSync = false;
  int _alertDays = AppConstants.defaultAlertDays;
  bool _isExporting = false;
  bool _isImporting = false;
  double _importProgress = 0.0;
  bool _localAlertsEnabled = false;
  Locale? _locale;
  AppSettings _appSettings = AppSettings(defaultManager: '');

  bool get calendarSync => _calendarSync;

  int get alertDays => _alertDays;

  bool get isExporting => _isExporting;

  bool get isImporting => _isImporting;

  double get importProgress => _importProgress;

  bool get localAlertsEnabled => _localAlertsEnabled;

  Locale? get locale => _locale;

  AppSettings get appSettings => _appSettings;

  void setCalendarSync(bool value) {
    _calendarSync = value;
    if (value) {
      AlertService().enableCalendarSync();
    } else {
      AlertService().disableCalendarSync();
    }
    notifyListeners();
  }

  Future<void> setLocalAlertsEnabled(bool value) async {
    _localAlertsEnabled = value;
    if (value) {
      final granted = await AlertService().enableLocalAlerts();
      if (!granted) {
        // 权限被拒绝，重置开关状态
        _localAlertsEnabled = false;
      }
    } else {
      await AlertService().disableLocalAlerts();
    }
    notifyListeners();
  }

  void setAlertDays(int days) {
    _alertDays = days.clamp(
      AppConstants.minAlertDays,
      AppConstants.maxAlertDays,
    );
    notifyListeners();
  }

  void setExporting(bool value) {
    _isExporting = value;
    notifyListeners();
  }

  void setImporting(bool value, {double progress = 0.0}) {
    _isImporting = value;
    _importProgress = progress;
    notifyListeners();
  }

  Future<void> loadLocale() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final localeString = prefs.getString(_localeKey);
      if (localeString != null && localeString.isNotEmpty) {
        if (localeString == 'system') {
          _locale = null;
        } else {
          final parts = localeString.split('_');
          if (parts.length == 1) {
            _locale = Locale(parts[0]);
          } else if (parts.length == 2) {
            _locale = Locale(parts[0], parts[1]);
          }
        }
        notifyListeners();
      }
    } catch (e) {
      // 忽略错误，使用默认设置
      // print('Failed to load locale: $e');
    }
  }

  Future<void> setLocale(Locale? locale) async {
    _locale = locale;
    try {
      final prefs = await SharedPreferences.getInstance();
      if (locale == null) {
        await prefs.setString(_localeKey, 'system');
      } else {
        final localeString = locale.countryCode != null
            ? '${locale.languageCode}_${locale.countryCode}'
            : locale.languageCode;
        await prefs.setString(_localeKey, localeString);
      }
    } catch (e) {
      // print('Failed to save locale: $e');
    }
    notifyListeners();
  }

  Future<void> initAlertSettings() async {
    final isEnabled = await AlertService().areAlertsEnabled();
    _calendarSync = isEnabled;
    // 从AlertService加载本地提醒状态
    _localAlertsEnabled = AlertService().localAlertsEnabled;
    notifyListeners();
  }

  Future<void> loadAppSettings() async {
    try {
      _appSettings = await AppDatabase().getSettings();
      notifyListeners();
    } catch (e) {
      // 忽略错误，使用默认设置
    }
  }

  Future<void> updateAppSettings(AppSettings settings) async {
    try {
      _appSettings = await AppDatabase().updateSettings(settings);
      notifyListeners();
    } catch (e) {
      // 忽略错误
    }
  }

  Future<void> updateDefaultManager(String defaultManager) async {
    await updateAppSettings(_appSettings.copyWith(defaultManager: defaultManager));
  }
}
