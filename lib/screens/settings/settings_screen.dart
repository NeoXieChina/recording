import 'package:flutter/material.dart';
import 'package:recording/generated/l10n/app_localizations.dart';
import 'package:recording/routes.dart';

class SettingsScreen extends StatefulWidget {
  final bool isEmbedded;
  final String? selectedRoute;
  final ValueChanged<String>? onRouteSelected;
  final VoidCallback? onBack;

  const SettingsScreen({
    super.key,
    this.isEmbedded = false,
    this.selectedRoute,
    this.onRouteSelected,
    this.onBack,
  });

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            leading: widget.isEmbedded
                ? IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: widget.onBack,
                  )
                : null,
            title: Text(AppLocalizations.of(context).settings),
            centerTitle: false,
            elevation: 0,
            pinned: true,
          ),
          SliverPadding(
            padding: const EdgeInsets.all(24),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  color: colorScheme.surfaceContainerLow,
                  child: Column(
                    children: [
                      _buildSettingsTile(
                        context: context,
                        icon: Icons.backup,
                        title: l10n.backup_data,
                        subtitle: l10n.backup_data_description,
                        route: AppRoutes.backup,
                      ),
                      Divider(
                        height: 1,
                        indent: 16,
                        endIndent: 16,
                        color: colorScheme.outlineVariant,
                      ),
                      _buildSettingsTile(
                        context: context,
                        icon: Icons.restore,
                        title: l10n.restore_data,
                        subtitle: l10n.restore_data_description,
                        route: AppRoutes.restore,
                      ),
                      Divider(
                        height: 1,
                        indent: 16,
                        endIndent: 16,
                        color: colorScheme.outlineVariant,
                      ),
                      _buildSettingsTile(
                        context: context,
                        icon: Icons.download,
                        title: l10n.export_data,
                        subtitle: l10n.export_data_description,
                        route: AppRoutes.export,
                      ),
                      Divider(
                        height: 1,
                        indent: 16,
                        endIndent: 16,
                        color: colorScheme.outlineVariant,
                      ),
                      _buildSettingsTile(
                        context: context,
                        icon: Icons.upload,
                        title: l10n.import_data,
                        subtitle: l10n.import_data_description,
                        route: AppRoutes.import,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  color: colorScheme.surfaceContainerLow,
                  child: Column(
                    children: [
                      _buildSettingsTile(
                        context: context,
                        icon: Icons.warehouse,
                        title: l10n.location_management,
                        subtitle: '',
                        route: '/settings/location',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  color: colorScheme.surfaceContainerLow,
                  child: _buildSettingsTile(
                    context: context,
                    icon: Icons.notifications_active,
                    title: l10n.alert_settings,
                    subtitle: l10n.alert_settings_description,
                    route: AppRoutes.alertsSettings,
                  ),
                ),
                const SizedBox(height: 12),
                Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  color: colorScheme.surfaceContainerLow,
                  child: _buildSettingsTile(
                    context: context,
                    icon: Icons.history,
                    title: l10n.operation_logs_menu,
                    subtitle: l10n.operation_logs_description,
                    route: AppRoutes.operationLog,
                  ),
                ),
                const SizedBox(height: 12),
                Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  color: colorScheme.surfaceContainerLow,
                  child: _buildSettingsTile(
                    context: context,
                    icon: Icons.language,
                    title: l10n.language_settings,
                    subtitle: l10n.language_settings_description,
                    route: AppRoutes.languageSettings,
                  ),
                ),
                const SizedBox(height: 12),
                Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  color: colorScheme.surfaceContainerLow,
                  child: _buildSettingsTile(
                    context: context,
                    icon: Icons.info,
                    title: l10n.about,
                    subtitle: l10n.about_description,
                    route: AppRoutes.about,
                  ),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSettingsTile({
    required BuildContext context,
    required IconData icon,
    required String title,
    required String subtitle,
    required String route,
  }) {
    final colorScheme = Theme.of(context).colorScheme;
    final isSelected = widget.isEmbedded && widget.selectedRoute == route;

    return ListTile(
      leading: Icon(icon, color: colorScheme.primary),
      title: Text(
        title,
        style: isSelected
            ? TextStyle(
                fontWeight: FontWeight.bold,
                color: colorScheme.primary,
              )
            : null,
      ),
      subtitle: subtitle.isNotEmpty ? Text(subtitle) : null,
      selected: isSelected,
      selectedTileColor: colorScheme.primaryContainer.withValues(alpha: 0.3),
      onTap: () {
        if (widget.isEmbedded && widget.onRouteSelected != null) {
          widget.onRouteSelected!(route);
        } else {
          Navigator.pushNamed(context, route);
        }
      },
    );
  }
}
