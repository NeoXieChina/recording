import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recording/generated/l10n/app_localizations.dart';
import 'package:recording/data/models/location.dart';
import 'package:recording/providers/item_list_provider.dart';
import 'package:recording/providers/location_provider.dart';
import 'package:recording/providers/settings_provider.dart';

class LocationManagementScreen extends StatefulWidget {
  const LocationManagementScreen({super.key});

  @override
  State<LocationManagementScreen> createState() => _LocationManagementScreenState();
}

class _LocationManagementScreenState extends State<LocationManagementScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await _syncExistingLocations();
      if (mounted) {
        context.read<LocationProvider>().loadLocations();
      }
    });
  }

  Future<void> _syncExistingLocations() async {
    final locationProvider = context.read<LocationProvider>();
    final itemListProvider = context.read<ItemListProvider>();
    final settingsProvider = context.read<SettingsProvider>();

    final locations = itemListProvider.getLocations();
    final defaultManager = settingsProvider.appSettings.defaultManager;

    for (final locationName in locations) {
      final existingLocation = await locationProvider.getLocationByName(locationName);
      if (existingLocation == null) {
        await locationProvider.addLocation(Location(
          name: locationName,
          isPublic: false,
          manager: defaultManager.isNotEmpty ? defaultManager : null,
        ));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: Text(l10n.location_management),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(24),
            sliver: Consumer<LocationProvider>(
              builder: (context, locationProvider, _) {
                if (locationProvider.isLoading) {
                  return const SliverFillRemaining(
                    child: Center(child: CircularProgressIndicator()),
                  );
                }

                final locations = locationProvider.locations;
                final publicLocations = locationProvider.getPublicLocations();
                final privateLocations = locationProvider.getPrivateLocations();

                if (locations.isEmpty) {
                  return SliverFillRemaining(
                    child: Center(
                      child: Text(
                        l10n.no_location_data,
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ),
                  );
                }

                return SliverList(
                  delegate: SliverChildListDelegate([
                    Consumer<SettingsProvider>(
                      builder: (context, settingsProvider, _) {
                        return Card(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          color: Theme.of(context).colorScheme.surfaceContainerLow,
                          child: ListTile(
                            leading: Icon(Icons.person, color: Theme.of(context).colorScheme.primary),
                            title: Text(l10n.default_manager),
                            subtitle: Text(
                              settingsProvider.appSettings.defaultManager.isEmpty
                                  ? l10n.not_set
                                  : settingsProvider.appSettings.defaultManager,
                            ),
                            trailing: const Icon(Icons.chevron_right),
                            onTap: () => _showDefaultManagerDialog(context),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 12),
                    if (privateLocations.isNotEmpty) ...[
                      _buildSectionHeader(l10n.private_warehouses),
                      ...privateLocations.map((location) => _buildLocationTile(context, location)),
                    ],
                    if (publicLocations.isNotEmpty) ...[
                      _buildSectionHeader(l10n.public_warehouses),
                      ...publicLocations.map((location) => _buildLocationTile(context, location)),
                    ],
                  ]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium?.copyWith(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildLocationTile(BuildContext context, location) {
    final l10n = AppLocalizations.of(context);
    final colorScheme = Theme.of(context).colorScheme;
    return ListTile(
      leading: Icon(
        location.isPublic ? Icons.warehouse : Icons.lock,
        color: colorScheme.primary,
      ),
      title: Text(location.name),
      subtitle: location.isPublic
          ? Text(l10n.no_manager)
          : Text('${l10n.manager}: ${location.manager ?? l10n.not_set}'),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: const Icon(Icons.edit),
            color: colorScheme.onSurfaceVariant,
            onPressed: () => _showEditLocationDialog(context, location),
          ),
          IconButton(
            icon: const Icon(Icons.delete),
            color: colorScheme.onSurfaceVariant,
            onPressed: () => _confirmDeleteLocation(context, location),
          ),
        ],
      ),
    );
  }

  void _showDefaultManagerDialog(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final controller = TextEditingController(
      text: context.read<SettingsProvider>().appSettings.defaultManager,
    );

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l10n.default_manager),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(l10n.default_manager_desc),
            const SizedBox(height: 16),
            TextField(
              controller: controller,
              decoration: InputDecoration(
                labelText: l10n.enter_default_manager,
                border: const OutlineInputBorder(),
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(l10n.cancel),
          ),
          FilledButton(
            onPressed: () {
              context
                  .read<SettingsProvider>()
                  .updateDefaultManager(controller.text.trim());
              Navigator.pop(context);
            },
            child: Text(l10n.save),
          ),
        ],
      ),
    );
  }

  void _showEditLocationDialog(BuildContext context, location) {
    final l10n = AppLocalizations.of(context);
    bool isPublic = location.isPublic;
    final managerController = TextEditingController(text: location.manager ?? '');

    showDialog(
      context: context,
      builder: (context) => StatefulBuilder(
        builder: (context, setDialogState) {
          return AlertDialog(
            title: Text(l10n.edit_location),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(l10n.location_name),
                const SizedBox(height: 4),
                Text(
                  location.name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                SwitchListTile(
                  title: Text(l10n.is_public_warehouse),
                  subtitle: Text(l10n.public_warehouse_desc),
                  value: isPublic,
                  onChanged: (value) {
                    setDialogState(() {
                      isPublic = value;
                    });
                  },
                ),
                if (!isPublic) ...[
                  const SizedBox(height: 8),
                  TextField(
                    controller: managerController,
                    decoration: InputDecoration(
                      labelText: l10n.manager_name,
                      hintText: l10n.enter_manager_name,
                      border: const OutlineInputBorder(),
                    ),
                  ),
                ],
              ],
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text(l10n.cancel),
              ),
              FilledButton(
                onPressed: () async {
                  if (!isPublic && managerController.text.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(l10n.manager_name_required)),
                    );
                    return;
                  }
                  final updatedLocation = location.copyWith(
                    isPublic: isPublic,
                    manager: isPublic ? null : managerController.text.trim(),
                  );
                  await context.read<LocationProvider>().updateLocation(updatedLocation);
                  if (context.mounted) {
                    Navigator.pop(context);
                  }
                },
                child: Text(l10n.save),
              ),
            ],
          );
        },
      ),
    );
  }

  void _confirmDeleteLocation(BuildContext context, location) {
    final l10n = AppLocalizations.of(context);
    final provider = context.read<ItemListProvider>();
    final itemsInLocation = provider.items.where((i) => i.storageLocation == location.name).toList();
    
    if (itemsInLocation.isNotEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(l10n.delete_location_has_items),
          duration: const Duration(seconds: 3),
        ),
      );
      return;
    }

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l10n.confirm_delete),
        content: Text(l10n.delete_location_confirm(location.name)),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(l10n.cancel),
          ),
          FilledButton(
            onPressed: () async {
              await context.read<LocationProvider>().deleteLocation(location.id);
              if (context.mounted) {
                Navigator.pop(context);
              }
            },
            style: FilledButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.error,
            ),
            child: Text(l10n.delete),
          ),
        ],
      ),
    );
  }
}
