import 'package:flutter/material.dart';
import 'package:recording/app.dart';
import 'package:recording/data/datasources/app_database.dart';
import 'package:recording/services/alert_service.dart';
import 'package:recording/services/mock_data_service.dart';

/// 调试模式标志 - 控制是否启用模拟数据
///
/// 设置为 true：应用首次启动时自动插入20条模拟数据，便于调试和演示
/// 设置为 false：禁用模拟数据，适用于生产环境
///
/// 上线前请务必将此标志设为 false
const bool enableMockData = true;

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
      debugPrint('🗑️ 数据库已重置，将重新创建表结构');
    } catch (e) {
      debugPrint('❌ 重置数据库时出错: $e');
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
      debugPrint('模拟数据初始化失败: $e');
      debugPrint('💡 解决方案：');
      debugPrint('1. 卸载应用重新安装');
      debugPrint('2. 或清除应用数据');
      debugPrint('3. 或将 resetDatabaseOnStart 设为 true 后重新运行');
    }
  }

  // 初始化提醒服务
  try {
    await AlertService().initialize();
  } catch (e) {
    debugPrint('提醒服务初始化失败: $e');
  }

  runApp(const App());
}
