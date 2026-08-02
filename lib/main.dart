import 'package:flutter/material.dart';
import 'package:recording/app.dart';
import 'package:recording/data/datasources/app_database.dart';
import 'package:recording/services/alert_service.dart';
import 'package:recording/services/mock_data_service.dart';
import 'package:recording/utils/log_localization.dart';

/// 调试模式标志 - 控制是否启用模拟数据
///
/// 设置为 true：应用首次启动时自动插入20条模拟数据，便于调试和演示
/// 设置为 false：禁用模拟数据，适用于生产环境
///
/// 上线前请务必将此标志设为 false
const bool enableMockData = false;

/// 开发工具：重置数据库标志
/// 设置为 true 将在启动时删除并重新创建数据库
/// 注意：这将清除所有用户数据！
const bool resetDatabaseOnStart = false;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // 开发工具：重置数据库（仅在需要时启用）
  if (resetDatabaseOnStart && enableMockData) {
    try {
      final db = AppDatabase();
      final mockService = MockDataService(db);
      await mockService.resetDatabaseForDebug();
      debugPrint('🗑️ ${LogLocalization.databaseReset}');
    } catch (e) {
      debugPrint('❌ ${LogLocalization.databaseResetError(e.toString())}');
    }
  }

  // 初始化模拟数据（仅在调试模式启用）
  if (enableMockData) {
    try {
      final db = AppDatabase();
      final mockService = MockDataService(db);
      await mockService.initializeMockData();
    } catch (e) {
      // 使用 debugPrint 代替 print，避免在生产环境中输出
      debugPrint('❌ ${LogLocalization.mockDataInitFailed(e.toString())}');
      debugPrint('💡 ${LogLocalization.solutionSteps}');
      debugPrint(LogLocalization.solutionStep1);
      debugPrint(LogLocalization.solutionStep2);
      debugPrint(LogLocalization.solutionStep3);
    }
  }

  // 初始化提醒服务
  try {
    await AlertService().initialize();
  } catch (e) {
    debugPrint(
      '❌ ${LogLocalization.notificationServiceInitFailed(e.toString())}',
    );
  }

  runApp(const App());
}
