import 'package:flutter/material.dart';
import 'package:recording/routes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    
    return Scaffold(
      appBar: AppBar(title: const Text('设置')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // 数据管理卡片（合并备份与恢复、导入与导出）
          Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            color: colorScheme.surfaceContainerLow,
            child: Column(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.backup,
                    color: colorScheme.primary,
                  ),
                  title: const Text('备份与恢复'),
                  subtitle: const Text('备份全部数据或从备份恢复'),
                  onTap: () => Navigator.pushNamed(context, AppRoutes.backupRestore),
                ),
                Divider(height: 1, indent: 16, endIndent: 16, color: colorScheme.outlineVariant),
                ListTile(
                  leading: Icon(
                    Icons.import_export,
                    color: colorScheme.primary,
                  ),
                  title: const Text('导入与导出'),
                  subtitle: const Text('导入或导出CSV、TXT、SQL格式数据'),
                  onTap: () => Navigator.pushNamed(context, AppRoutes.exportImport),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          
          // 预警设置卡片
          Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            color: colorScheme.surfaceContainerLow,
            child: ListTile(
              leading: Icon(
                Icons.notifications_active,
                color: colorScheme.primary,
              ),
              title: const Text('预警设置'),
              subtitle: const Text('日历提醒和App推送提醒设置'),
              onTap: () => Navigator.pushNamed(context, AppRoutes.alertsSettings),
            ),
          ),
          const SizedBox(height: 12),
          
          // 关于卡片
          Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            color: colorScheme.surfaceContainerLow,
            child: ListTile(
              leading: Icon(
                Icons.info,
                color: colorScheme.primary,
              ),
              title: const Text('关于'),
              subtitle: const Text('应用信息和版本'),
              onTap: () => Navigator.pushNamed(context, AppRoutes.about),
            ),
          ),
        ],
      ),
    );
  }
}