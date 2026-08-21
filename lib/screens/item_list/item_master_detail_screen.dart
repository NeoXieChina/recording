import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:provider/provider.dart';
import 'package:recording/data/models/item.dart';
import 'package:recording/generated/l10n/app_localizations.dart';
import 'package:recording/providers/item_list_provider.dart';
import 'package:recording/routes.dart';
import 'package:recording/screens/item_form/item_form_screen.dart';
import 'package:recording/screens/item_list/item_list_screen.dart';
import 'package:recording/screens/settings/about_screen.dart';
import 'package:recording/screens/settings/alerts_settings_screen.dart';
import 'package:recording/screens/settings/backup_screen.dart';
import 'package:recording/screens/settings/export_screen.dart';
import 'package:recording/screens/settings/import_screen.dart';
import 'package:recording/screens/settings/language_selection_screen.dart';
import 'package:recording/screens/settings/operation_log_screen.dart';
import 'package:recording/screens/settings/restore_screen.dart';
import 'package:recording/screens/settings/settings_screen.dart';

class ItemMasterDetailScreen extends StatefulWidget {
  const ItemMasterDetailScreen({super.key});

  @override
  State<ItemMasterDetailScreen> createState() =>
      _ItemMasterDetailScreenState();
}

class _ItemMasterDetailScreenState extends State<ItemMasterDetailScreen> {
  Item? _selectedItem;
  bool _isAdding = false;
  String? _initialBarcodeForAdd;
  int _addKeyCounter = 0;
  bool _isScanning = false;
  int _scanKeyCounter = 0;

  bool _showSettings = false;
  String? _selectedSettingsRoute;

  static const double _wideBreakpoint = 600;

  bool _isWideLayout(BuildContext context) {
    return MediaQuery.sizeOf(context).shortestSide >= _wideBreakpoint;
  }

  void _handleItemSelected(Item item) {
    setState(() {
      _selectedItem = item;
      _isAdding = false;
      _initialBarcodeForAdd = null;
      _isScanning = false;
      _showSettings = false;
      _selectedSettingsRoute = null;
    });
  }

  void _handleAddRequested() {
    setState(() {
      _selectedItem = null;
      _isAdding = true;
      _initialBarcodeForAdd = null;
      _addKeyCounter++;
      _isScanning = false;
      _showSettings = false;
      _selectedSettingsRoute = null;
    });
  }

  void _handleAddWithBarcodeRequested(String barcode) {
    setState(() {
      _selectedItem = null;
      _isAdding = true;
      _initialBarcodeForAdd = barcode;
      _addKeyCounter++;
      _isScanning = false;
      _showSettings = false;
      _selectedSettingsRoute = null;
    });
  }

  void _handleDetailClosed() {
    setState(() {
      _selectedItem = null;
      _isAdding = false;
      _initialBarcodeForAdd = null;
      _isScanning = false;
      _selectedSettingsRoute = null;
    });
  }

  void _handleItemSaved(Item item) {
    setState(() {
      _selectedItem = item;
      _isAdding = false;
      _initialBarcodeForAdd = null;
      _isScanning = false;
    });
    context.read<ItemListProvider>().refresh();
  }

  void _handleItemDeleted(String itemId) {
    if (_selectedItem?.id == itemId) {
      setState(() {
        _selectedItem = null;
        _isAdding = false;
        _initialBarcodeForAdd = null;
      });
    }
  }

  void _handleScanRequested() {
    setState(() {
      _selectedItem = null;
      _isAdding = false;
      _initialBarcodeForAdd = null;
      _isScanning = true;
      _scanKeyCounter++;
      _showSettings = false;
      _selectedSettingsRoute = null;
    });
  }

  void _handleScanResult(String barcode) async {
    final provider = context.read<ItemListProvider>();
    final existingItem = await provider.getItemByBarcode(barcode);

    if (!mounted) return;

    if (existingItem != null) {
      setState(() {
        _isScanning = false;
      });
      if (!mounted) return;
      final l10n = AppLocalizations.of(context);
      final operation = await showDialog<String>(
        context: context,
        builder: (ctx) => AlertDialog(
          title: Text(l10n.item_already_exists),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('${l10n.barcode_label}：$barcode'),
              const SizedBox(height: 8),
              Text('${l10n.name_label}：${existingItem.name}'),
              Text('${l10n.category_label}：${existingItem.category}'),
              Text(
                l10n.current_quantity_with_value(
                  existingItem.quantity.toString(),
                  existingItem.unit,
                ),
              ),
              const SizedBox(height: 16),
              Text(l10n.please_select_operation),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(ctx, null),
              child: Text(l10n.cancel),
            ),
            FilledButton(
              onPressed: () => Navigator.pop(ctx, 'outbound'),
              child: Text(l10n.outbound),
            ),
            FilledButton(
              onPressed: () => Navigator.pop(ctx, 'inbound'),
              child: Text(l10n.inbound),
            ),
          ],
        ),
      );

      if (operation == null) return;

      if (!mounted) return;
      final quantityController = TextEditingController(text: '1');
      final quantity = await showDialog<int>(
        context: context,
        builder: (ctx) => AlertDialog(
          title: Text(
            operation == 'inbound'
                ? l10n.inbound_quantity
                : l10n.outbound_quantity,
          ),
          content: TextField(
            controller: quantityController,
            decoration: InputDecoration(
              labelText: l10n.quantity,
              hintText: operation == 'inbound'
                  ? l10n.enter_inbound_quantity
                  : l10n.enter_outbound_quantity,
            ),
            keyboardType: TextInputType.number,
            autofocus: true,
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(ctx),
              child: Text(l10n.cancel),
            ),
            FilledButton(
              onPressed: () {
                final q = int.tryParse(quantityController.text.trim());
                if (q != null && q > 0) {
                  Navigator.pop(ctx, q);
                }
              },
              child: Text(l10n.confirm),
            ),
          ],
        ),
      );

      if (quantity != null && quantity > 0) {
        final adjustedQuantity = operation == 'inbound' ? quantity : -quantity;
        await provider.updateItemQuantity(existingItem.id, adjustedQuantity);
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                operation == 'inbound'
                    ? l10n.item_increased(
                        existingItem.name,
                        quantity.toString(),
                        existingItem.unit,
                      )
                    : l10n.item_decreased(
                        existingItem.name,
                        quantity.toString(),
                        existingItem.unit,
                      ),
              ),
              duration: const Duration(seconds: 2),
            ),
          );
        }
      }
    } else {
      _handleAddWithBarcodeRequested(barcode);
    }
  }

  void _handleSettingsRequested() {
    setState(() {
      _showSettings = true;
      _selectedItem = null;
      _isAdding = false;
      _initialBarcodeForAdd = null;
      _isScanning = false;
      _selectedSettingsRoute = null;
    });
  }

  void _handleSettingsBack() {
    setState(() {
      _showSettings = false;
      _selectedSettingsRoute = null;
    });
  }

  void _handleSettingsRouteSelected(String route) {
    setState(() {
      _selectedSettingsRoute = route;
    });
  }

  @override
  Widget build(BuildContext context) {
    final isWide = _isWideLayout(context);

    if (!isWide) {
      return const ItemListScreen();
    }

    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: _buildMasterPane(context),
          ),
          const VerticalDivider(width: 1, thickness: 1),
          Expanded(
            child: _buildDetailPane(context),
          ),
        ],
      ),
    );
  }

  Widget _buildMasterPane(BuildContext context) {
    if (_showSettings) {
      return SettingsScreen(
        isEmbedded: true,
        selectedRoute: _selectedSettingsRoute,
        onRouteSelected: _handleSettingsRouteSelected,
        onBack: _handleSettingsBack,
      );
    }

    return ItemListScreen(
      isEmbedded: true,
      selectedItemId: _selectedItem?.id,
      onItemTap: _handleItemSelected,
      onAddTap: _handleAddRequested,
      onAddWithBarcode: _handleAddWithBarcodeRequested,
      onItemDeleted: _handleItemDeleted,
      onSettingsRequested: _handleSettingsRequested,
      onScanRequested: _handleScanRequested,
    );
  }

  Widget _buildDetailPane(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final pages = <Page<void>>[];

    pages.add(MaterialPage<void>(
      key: const ValueKey('base'),
      child: _showSettings
          ? _buildSettingsEmptyPane(context, l10n)
          : _buildEmptyPane(context, l10n),
    ));

    if (_showSettings && _selectedSettingsRoute != null) {
      pages.add(MaterialPage<void>(
        key: ValueKey(_selectedSettingsRoute),
        child: _buildSettingsSubPage(_selectedSettingsRoute!),
      ));
    } else if (!_showSettings) {
      if (_isScanning) {
        pages.add(MaterialPage<void>(
          key: ValueKey('scan-$_scanKeyCounter'),
          child: _EmbeddedBarcodeScanner(
            onScanned: _handleScanResult,
            onCancelled: _handleDetailClosed,
          ),
        ));
      } else if (_isAdding) {
        pages.add(MaterialPage<void>(
          key: ValueKey('add-$_addKeyCounter'),
          child: ItemFormScreen(
            initialBarcode: _initialBarcodeForAdd,
            isEmbedded: true,
            onSaved: _handleItemSaved,
            onClosed: _handleDetailClosed,
          ),
        ));
      } else if (_selectedItem != null) {
        pages.add(MaterialPage<void>(
          key: ValueKey(_selectedItem!.id),
          child: ItemFormScreen(
            item: _selectedItem,
            isEmbedded: true,
            onSaved: _handleItemSaved,
            onClosed: _handleDetailClosed,
          ),
        ));
      }
    }

    return Navigator(
      pages: pages,
      onDidRemovePage: (page) {
        _handleDetailClosed();
      },
    );
  }

  Widget _buildSettingsEmptyPane(BuildContext context, AppLocalizations l10n) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.settings_outlined,
            size: 80,
            color: Theme.of(context).colorScheme.outline,
          ),
          const SizedBox(height: 16),
          Text(
            l10n.settings,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Theme.of(context).colorScheme.outline,
                ),
          ),
        ],
      ),
    );
  }

  Widget _buildSettingsSubPage(String route) {
    switch (route) {
      case AppRoutes.backup:
        return const BackupScreen();
      case AppRoutes.restore:
        return const RestoreScreen();
      case AppRoutes.export:
        return const ExportScreen();
      case AppRoutes.import:
        return const ImportScreen();
      case AppRoutes.alertsSettings:
        return const AlertsSettingsScreen();
      case AppRoutes.about:
        return const AboutScreen();
      case AppRoutes.languageSettings:
        return const LanguageSelectionScreen();
      case AppRoutes.operationLog:
        return const OperationLogScreen();
      default:
        return const SizedBox.shrink();
    }
  }

  Widget _buildEmptyPane(BuildContext context, AppLocalizations l10n) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.inventory_2_outlined,
            size: 80,
            color: Theme.of(context).colorScheme.outline,
          ),
          const SizedBox(height: 16),
          Text(
            l10n.my_items,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Theme.of(context).colorScheme.outline,
                ),
          ),
          const SizedBox(height: 8),
          Text(
            l10n.click_fab_to_add_item,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Theme.of(context).colorScheme.outline,
                ),
          ),
        ],
      ),
    );
  }
}

class _EmbeddedBarcodeScanner extends StatefulWidget {
  final ValueChanged<String> onScanned;
  final VoidCallback onCancelled;

  const _EmbeddedBarcodeScanner({
    required this.onScanned,
    required this.onCancelled,
  });

  @override
  State<_EmbeddedBarcodeScanner> createState() =>
      _EmbeddedBarcodeScannerState();
}

class _EmbeddedBarcodeScannerState extends State<_EmbeddedBarcodeScanner> {
  bool _scanned = false;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.scan_to_stock),
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: widget.onCancelled,
        ),
      ),
      body: Stack(
        children: [
          MobileScanner(
            controller: MobileScannerController(
              formats: [BarcodeFormat.all],
              returnImage: false,
            ),
            onDetect: (capture) {
              if (!_scanned) {
                _scanned = true;
                final barcodes = capture.barcodes;
                if (barcodes.isNotEmpty) {
                  final barcode = barcodes.first.rawValue;
                  if (barcode != null) {
                    widget.onScanned(barcode);
                  }
                }
              }
            },
          ),
          Positioned(
            bottom: 16,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Text(
                l10n.place_barcode_in_frame_to_scan,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.black54,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
