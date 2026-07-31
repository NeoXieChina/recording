import 'package:flutter/material.dart';
import 'package:recording/routes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: Text(
              '设置',
              style: theme.textTheme.titleLarge,
            ),
            centerTitle: false,
            elevation: 0,
            pinned: true,
          ),
          SliverPadding(
            padding: const EdgeInsets.all(24),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                // 数据管理卡片
                Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  color: colorScheme.surfaceContainerLow,
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(
                          Icons.backup,
                          color: colorScheme.primary,
                        ),
                        title: const Text('备份数据'),
                        subtitle: const Text('将全部数据打包为ZIP文件备份'),
                        onTap: () => Navigator.pushNamed(context, AppRoutes.backup),
                      ),
                      Divider(height: 1, indent: 16, endIndent: 16, color: colorScheme.outlineVariant),
                      ListTile(
                        leading: Icon(
                          Icons.restore,
                          color: colorScheme.primary,
                        ),
                        title: const Text('恢复数据'),
                        subtitle: const Text('从ZIP备份文件恢复全部数据'),
                        onTap: () => Navigator.pushNamed(context, AppRoutes.restore),
                      ),
                      Divider(height: 1, indent: 16, endIndent: 16, color: colorScheme.outlineVariant),
                      ListTile(
                        leading: Icon(
                          Icons.download,
                          color: colorScheme.primary,
                        ),
                        title: const Text('导出数据'),
                        subtitle: const Text('导出为CSV、TXT、SQL格式'),
                        onTap: () => Navigator.pushNamed(context, AppRoutes.export),
                      ),
                      Divider(height: 1, indent: 16, endIndent: 16, color: colorScheme.outlineVariant),
                      ListTile(
                        leading: Icon(
                          Icons.upload,
                          color: colorScheme.primary,
                        ),
                        title: const Text('导入数据'),
                        subtitle: const Text('从CSV、TXT、SQL文件导入数据'),
                        onTap: () => Navigator.pushNamed(context, AppRoutes.import),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                
                // 预警设置卡片
                Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
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
                    borderRadius: BorderRadius.circular(25),
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
              ]),
            ),
          ),
        ],
      ),
    );
  }
}