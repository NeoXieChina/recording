import 'package:flutter/material.dart';
import 'package:recording/constants.dart';
import 'package:recording/services/alert_service.dart';

class SettingsProvider extends ChangeNotifier {
  bool _calendarSync = false;
  int _alertDays = AppConstants.defaultAlertDays;
  bool _isExporting = false;
  bool _isImporting = false;
  double _importProgress = 0.0;
  bool _localAlertsEnabled = false;

  bool get calendarSync => _calendarSync;

  int get alertDays => _alertDays;

  bool get isExporting => _isExporting;

  bool get isImporting => _isImporting;

  double get importProgress => _importProgress;

  bool get localAlertsEnabled => _localAlertsEnabled;

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

  Future<void> initAlertSettings() async {
    final isEnabled = await AlertService().areAlertsEnabled();
    _calendarSync = isEnabled;
    // 从AlertService加载本地提醒状态
    _localAlertsEnabled = AlertService().localAlertsEnabled;
    notifyListeners();
  }
}
