import 'package:flutter/material.dart';
import 'package:recording/generated/l10n/app_localizations.dart';
import 'package:recording/routes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: Text(
              AppLocalizations.of(context).settings,
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
                        leading: Icon(Icons.backup, color: colorScheme.primary),
                        title: Text(l10n.backup_data),
                        subtitle: Text(l10n.backup_data_description),
                        onTap: () =>
                            Navigator.pushNamed(context, AppRoutes.backup),
                      ),
                      Divider(
                        height: 1,
                        indent: 16,
                        endIndent: 16,
                        color: colorScheme.outlineVariant,
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.restore,
                          color: colorScheme.primary,
                        ),
                        title: Text(l10n.restore_data),
                        subtitle: Text(l10n.restore_data_description),
                        onTap: () =>
                            Navigator.pushNamed(context, AppRoutes.restore),
                      ),
                      Divider(
                        height: 1,
                        indent: 16,
                        endIndent: 16,
                        color: colorScheme.outlineVariant,
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.download,
                          color: colorScheme.primary,
                        ),
                        title: Text(l10n.export_data),
                        subtitle: Text(l10n.export_data_description),
                        onTap: () =>
                            Navigator.pushNamed(context, AppRoutes.export),
                      ),
                      Divider(
                        height: 1,
                        indent: 16,
                        endIndent: 16,
                        color: colorScheme.outlineVariant,
                      ),
                      ListTile(
                        leading: Icon(Icons.upload, color: colorScheme.primary),
                        title: Text(l10n.import_data),
                        subtitle: Text(l10n.import_data_description),
                        onTap: () =>
                            Navigator.pushNamed(context, AppRoutes.import),
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
                    title: Text(l10n.alert_settings),
                    subtitle: Text(l10n.alert_settings_description),
                    onTap: () =>
                        Navigator.pushNamed(context, AppRoutes.alertsSettings),
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
                    leading: Icon(Icons.info, color: colorScheme.primary),
                    title: Text(l10n.about),
                    subtitle: Text(l10n.about_description),
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
