import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:provider/provider.dart';
import 'package:recording/data/models/item.dart';
import 'package:recording/generated/l10n/app_localizations.dart';
import 'package:recording/providers/item_list_provider.dart';
import 'package:recording/screens/item_form/item_form_screen.dart';
import 'package:recording/screens/settings/settings_screen.dart';
import 'package:recording/utils/format.dart';

class ItemListScreen extends StatefulWidget {
  final bool isEmbedded;
  final String? selectedItemId;
  final ValueChanged<Item>? onItemTap;
  final VoidCallback? onAddTap;
  final ValueChanged<String>? onAddWithBarcode;
  final ValueChanged<String>? onItemDeleted;
  final VoidCallback? onSettingsRequested;
  final VoidCallback? onScanRequested;

  const ItemListScreen({
    super.key,
    this.isEmbedded = false,
    this.selectedItemId,
    this.onItemTap,
    this.onAddTap,
    this.onAddWithBarcode,
    this.onItemDeleted,
    this.onSettingsRequested,
    this.onScanRequested,
  });

  @override
  State<ItemListScreen> createState() => _ItemListScreenState();
}

class _ItemListScreenState extends State<ItemListScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool _typeExpanded = false;
  bool _locationExpanded = false;
  bool _dateExpanded = false;
  bool _priceExpanded = false;

  bool _isSelectionMode = false;
  final Set<String> _selectedItemIds = {};

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        context.read<ItemListProvider>().loadItems();
      }
    });
  }

  Widget _buildTitle(
    BuildContext context,
    ItemListProvider provider,
    TextStyle? textStyle, {
    bool showIcon = true,
  }) {
    if (_isSelectionMode) {
      return Row(
        children: [
          Expanded(
            child: Text(
              '已选择 ${_selectedItemIds.length} 项',
              style: textStyle,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      );
    }

    final l10n = AppLocalizations.of(context);
    final location = provider.filterLocation;
    final type = provider.filterType;
    final category = provider.filterCategory;
    final dateRange = provider.dateRange;
    final hasPriceFilter =
        provider.minUnitPrice != null ||
        provider.maxUnitPrice != null ||
        provider.minTotalPrice != null ||
        provider.maxTotalPrice != null;

    if (location != null && location.isNotEmpty) {
      return Row(
        children: [
          if (showIcon)
            Icon(
              Icons.place,
              size: 20,
              color: Theme.of(context).colorScheme.primary,
            ),
          if (showIcon) const SizedBox(width: 8),
          Expanded(
            child: Text(
              location,
              style: textStyle,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      );
    } else if (type != null) {
      final typeName = type == ItemType.consumable
          ? l10n.consumable
          : l10n.durable;
      return Row(
        children: [
          if (showIcon)
            Icon(
              type == ItemType.consumable
                  ? Icons.local_grocery_store
                  : Icons.construction,
              size: 20,
              color: Theme.of(context).colorScheme.primary,
            ),
          if (showIcon) const SizedBox(width: 8),
          Expanded(
            child: Text(
              typeName,
              style: textStyle,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      );
    } else if (category != null && category.isNotEmpty) {
      return Row(
        children: [
          if (showIcon)
            Icon(
              Icons.category,
              size: 20,
              color: Theme.of(context).colorScheme.primary,
            ),
          if (showIcon) const SizedBox(width: 8),
          Expanded(
            child: Text(
              category,
              style: textStyle,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      );
    } else if (dateRange != null) {
      return Row(
        children: [
          if (showIcon)
            Icon(
              Icons.date_range,
              size: 20,
              color: Theme.of(context).colorScheme.primary,
            ),
          if (showIcon) const SizedBox(width: 8),
          Expanded(
            child: Text(
              l10n.date_range_filter,
              style: textStyle,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      );
    } else if (hasPriceFilter) {
      return Row(
        children: [
          if (showIcon)
            Icon(
              Icons.attach_money,
              size: 20,
              color: Theme.of(context).colorScheme.primary,
            ),
          if (showIcon) const SizedBox(width: 8),
          Expanded(
            child: Text(
              l10n.price_range_filter,
              style: textStyle,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      );
    }

    return Text(l10n.my_items, style: textStyle);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Scaffold(
      key: _scaffoldKey,
      drawer: _buildLocationDrawer(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: Consumer<ItemListProvider>(
              builder: (context, provider, _) {
                return _buildTitle(context, provider, null, showIcon: true);
              },
            ),
            leading: _isSelectionMode
                ? IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: _exitSelectionMode,
                    tooltip: l10n.cancel,
                  )
                : IconButton(
                    icon: const Icon(Icons.menu),
                    onPressed: () => _scaffoldKey.currentState?.openDrawer(),
                  ),
            actions: _isSelectionMode
                ? [
                    Consumer<ItemListProvider>(
                      builder: (context, provider, _) {
                        return IconButton(
                          icon: _selectedItemIds.length < provider.items.length
                              ? const Icon(Icons.select_all)
                              : const Icon(Icons.deselect),
                          onPressed: _toggleSelectAll,
                          tooltip: _selectedItemIds.length < provider.items.length
                              ? '全选'
                              : '取消全选',
                        );
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.location_on),
                      onPressed: _selectedItemIds.isEmpty ? null : _batchChangeLocation,
                      tooltip: '批量调换存储地点',
                    ),
                    IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: _selectedItemIds.isEmpty ? null : _batchDelete,
                      tooltip: l10n.delete,
                    ),
                  ]
                : [
                    Consumer<ItemListProvider>(
                      builder: (context, provider, _) {
                        final l10n = AppLocalizations.of(context);
                        IconData getSortIcon() {
                          switch (provider.sortField) {
                            case 'name':
                              return Icons.sort_by_alpha;
                            case 'date':
                              return Icons.calendar_today;
                            case 'price':
                              return Icons.attach_money;
                            case 'quantity':
                              return Icons.format_list_numbered;
                            case 'totalPrice':
                              return Icons.money;
                            default:
                              return Icons.sort;
                          }
                        }

                        return PopupMenuButton<String>(
                          icon: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                getSortIcon(),
                                color: Theme.of(context).colorScheme.primary,
                              ),
                              const SizedBox(width: 2),
                              Icon(
                                provider.sortAscending
                                    ? Icons.arrow_upward
                                    : Icons.arrow_downward,
                                size: 14,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ],
                          ),
                          tooltip: l10n.sort,
                          onSelected: (value) {
                            final parts = value.split('_');
                            final field = parts[0];
                            final ascending = parts[1] == 'asc';
                            provider.setSort(field, ascending);
                          },
                          itemBuilder: (context) => [
                            PopupMenuItem<String>(
                              value: 'name_asc',
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.sort_by_alpha,
                                    size: 20,
                                    color: provider.sortField == 'name' &&
                                            provider.sortAscending
                                        ? Theme.of(context).colorScheme.primary
                                        : null,
                                  ),
                                  const SizedBox(width: 8),
                                  Text(l10n.name_asc),
                                  if (provider.sortField == 'name' &&
                                      provider.sortAscending)
                                    Icon(
                                      Icons.check,
                                      size: 16,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                ],
                              ),
                            ),
                            PopupMenuItem<String>(
                              value: 'name_desc',
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.sort_by_alpha,
                                    size: 20,
                                    color: provider.sortField == 'name' &&
                                            !provider.sortAscending
                                        ? Theme.of(context).colorScheme.primary
                                        : null,
                                  ),
                                  const SizedBox(width: 8),
                                  Text(l10n.name_desc),
                                  if (provider.sortField == 'name' &&
                                      !provider.sortAscending)
                                    Icon(
                                      Icons.check,
                                      size: 16,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                ],
                              ),
                            ),
                            const PopupMenuDivider(),
                            PopupMenuItem<String>(
                              value: 'date_asc',
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.calendar_today,
                                    size: 20,
                                    color: provider.sortField == 'date' &&
                                            provider.sortAscending
                                        ? Theme.of(context).colorScheme.primary
                                        : null,
                                  ),
                                  const SizedBox(width: 8),
                                  Text(l10n.date_asc),
                                  if (provider.sortField == 'date' &&
                                      provider.sortAscending)
                                    Icon(
                                      Icons.check,
                                      size: 16,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                ],
                              ),
                            ),
                            PopupMenuItem<String>(
                              value: 'date_desc',
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.calendar_today,
                                    size: 20,
                                    color: provider.sortField == 'date' &&
                                            !provider.sortAscending
                                        ? Theme.of(context).colorScheme.primary
                                        : null,
                                  ),
                                  const SizedBox(width: 8),
                                  Text(l10n.date_desc),
                                  if (provider.sortField == 'date' &&
                                      !provider.sortAscending)
                                    Icon(
                                      Icons.check,
                                      size: 16,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                ],
                              ),
                            ),
                            const PopupMenuDivider(),
                            PopupMenuItem<String>(
                              value: 'price_asc',
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.attach_money,
                                    size: 20,
                                    color: provider.sortField == 'price' &&
                                            provider.sortAscending
                                        ? Theme.of(context).colorScheme.primary
                                        : null,
                                  ),
                                  const SizedBox(width: 8),
                                  Text(l10n.price_asc),
                                  if (provider.sortField == 'price' &&
                                      provider.sortAscending)
                                    Icon(
                                      Icons.check,
                                      size: 16,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                ],
                              ),
                            ),
                            PopupMenuItem<String>(
                              value: 'price_desc',
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.attach_money,
                                    size: 20,
                                    color: provider.sortField == 'price' &&
                                            !provider.sortAscending
                                        ? Theme.of(context).colorScheme.primary
                                        : null,
                                  ),
                                  const SizedBox(width: 8),
                                  Text(l10n.price_desc),
                                  if (provider.sortField == 'price' &&
                                      !provider.sortAscending)
                                    Icon(
                                      Icons.check,
                                      size: 16,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                ],
                              ),
                            ),
                            PopupMenuItem<String>(
                              value: 'quantity_asc',
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.format_list_numbered,
                                    size: 20,
                                    color: provider.sortField == 'quantity' &&
                                            provider.sortAscending
                                        ? Theme.of(context).colorScheme.primary
                                        : null,
                                  ),
                                  const SizedBox(width: 8),
                                  Text(l10n.quantity_asc),
                                  if (provider.sortField == 'quantity' &&
                                      provider.sortAscending)
                                    Icon(
                                      Icons.check,
                                      size: 16,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                ],
                              ),
                            ),
                            PopupMenuItem<String>(
                              value: 'quantity_desc',
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.format_list_numbered,
                                    size: 20,
                                    color: provider.sortField == 'quantity' &&
                                            !provider.sortAscending
                                        ? Theme.of(context).colorScheme.primary
                                        : null,
                                  ),
                                  const SizedBox(width: 8),
                                  Text(l10n.quantity_desc),
                                  if (provider.sortField == 'quantity' &&
                                      !provider.sortAscending)
                                    Icon(
                                      Icons.check,
                                      size: 16,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                ],
                              ),
                            ),
                            PopupMenuItem<String>(
                              value: 'totalPrice_asc',
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.money,
                                    size: 20,
                                    color: provider.sortField == 'totalPrice' &&
                                            provider.sortAscending
                                        ? Theme.of(context).colorScheme.primary
                                        : null,
                                  ),
                                  const SizedBox(width: 8),
                                  Text(l10n.total_price_asc),
                                  if (provider.sortField == 'totalPrice' &&
                                      provider.sortAscending)
                                    Icon(
                                      Icons.check,
                                      size: 16,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                ],
                              ),
                            ),
                            PopupMenuItem<String>(
                              value: 'totalPrice_desc',
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.money,
                                    size: 20,
                                    color: provider.sortField == 'totalPrice' &&
                                            !provider.sortAscending
                                        ? Theme.of(context).colorScheme.primary
                                        : null,
                                  ),
                                  const SizedBox(width: 8),
                                  Text(l10n.total_price_desc),
                                  if (provider.sortField == 'totalPrice' &&
                                      !provider.sortAscending)
                                    Icon(
                                      Icons.check,
                                      size: 16,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                    Consumer<ItemListProvider>(
                      builder: (context, provider, _) {
                        final l10n = AppLocalizations.of(context);
                        final hasLocationFilter =
                            provider.filterLocation != null &&
                            provider.filterLocation!.isNotEmpty;
                        final hasTypeFilter = provider.filterType != null;
                        final hasCategoryFilter =
                            provider.filterCategory != null &&
                            provider.filterCategory!.isNotEmpty;
                        final hasDateFilter = provider.dateRange != null;
                        final hasPriceFilter =
                            provider.minUnitPrice != null ||
                            provider.maxUnitPrice != null ||
                            provider.minTotalPrice != null ||
                            provider.maxTotalPrice != null;
                        if (hasLocationFilter ||
                            hasTypeFilter ||
                            hasCategoryFilter ||
                            hasDateFilter ||
                            hasPriceFilter) {
                          return IconButton(
                            icon: const Icon(Icons.clear),
                            onPressed: () {
                              provider.clearAllFilters();
                            },
                            tooltip: l10n.clear_all_filters,
                          );
                        }
                        return const SizedBox.shrink();
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.qr_code_scanner),
                      onPressed: widget.onScanRequested ?? _scanBarcode,
                      tooltip: l10n.scan_barcode,
                    ),
                    IconButton(
                      icon: const Icon(Icons.settings),
                      onPressed: widget.onSettingsRequested ??
                          () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => const SettingsScreen()),
                              ),
                    ),
                  ],
          ),
          SliverToBoxAdapter(child: _buildSearchBar()),
          Consumer<ItemListProvider>(
            builder: (context, provider, _) {
              final l10n = AppLocalizations.of(context);
              if (provider.isLoading) {
                return const SliverFillRemaining(
                  child: Center(child: CircularProgressIndicator()),
                );
              }
              if (provider.items.isEmpty) {
                return SliverFillRemaining(
                  child: Center(
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
                          l10n.no_items,
                          style: Theme.of(context).textTheme.titleMedium
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.outline,
                              ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          l10n.click_fab_to_add_item,
                          style: Theme.of(context).textTheme.bodySmall
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.outline,
                              ),
                        ),
                      ],
                    ),
                  ),
                );
              }
              return SliverPadding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) =>
                        _buildItemCard(provider.items[index], provider),
                    childCount: provider.items.length,
                  ),
                ),
              );
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _navigateToAdd(),
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildSearchBar() {
    return Consumer<ItemListProvider>(
      builder: (context, provider, _) {
        final l10n = AppLocalizations.of(context);
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: TextField(
            decoration: InputDecoration(
              hintText: l10n.search_items,
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50.0),
              ),
              contentPadding: const EdgeInsets.symmetric(
                vertical: 12.0,
                horizontal: 16.0,
              ),
              filled: true,
              fillColor: Theme.of(context).colorScheme.surface,
            ),
            onChanged: provider.setSearchQuery,
          ),
        );
      },
    );
  }

  Widget _buildItemCard(Item item, ItemListProvider provider) {
    final cs = Theme.of(context).colorScheme;
    final isWarning = item.isExpiringSoon || item.isWarrantyExpiringSoon;
    final isDanger = item.isExpired || item.isWarrantyExpired;
    final isSelected = widget.isEmbedded && widget.selectedItemId == item.id;
    final isMultiSelected = _selectedItemIds.contains(item.id);

    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Slidable(
        endActionPane: ActionPane(
          motion: const ScrollMotion(),
          extentRatio: 0.18,
          children: [
            Center(
              child: Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  color: cs.error,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: GestureDetector(
                  onTap: () => _confirmDelete(item, provider),
                  child: Center(
                    child: Icon(Icons.delete, color: cs.onError, size: 24),
                  ),
                ),
              ),
            ),
          ],
        ),
        child: Card(
          clipBehavior: Clip.antiAlias,
          margin: const EdgeInsets.symmetric(horizontal: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: isSelected || isMultiSelected
                ? BorderSide(
                    color: cs.primary,
                    width: 2,
                  )
                : BorderSide.none,
          ),
          color: isSelected || isMultiSelected ? cs.primaryContainer : null,
          child: InkWell(
            onTap: () {
              if (_isSelectionMode) {
                _toggleItemSelection(item);
              } else {
                _navigateToEdit(item);
              }
            },
            onLongPress: () {
              _enterSelectionMode(item);
            },
            borderRadius: BorderRadius.circular(12),
            child: IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  if (_isSelectionMode)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Center(
                        child: Checkbox(
                          value: isMultiSelected,
                          onChanged: (_) => _toggleItemSelection(item),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      ),
                    ),
                  _buildThumbnail(item),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        item.name,
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium
                                            ?.copyWith(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700,
                                              color: Theme.of(
                                                context,
                                              ).colorScheme.primary,
                                            ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 8,
                                        vertical: 2,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Theme.of(
                                          context,
                                        ).colorScheme.surfaceContainerHighest,
                                        borderRadius: BorderRadius.circular(12),
                                        border: Border.all(
                                          color: Theme.of(
                                            context,
                                          ).colorScheme.outline,
                                          width: 1,
                                        ),
                                      ),
                                      child: Text(
                                        item.category,
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall
                                            ?.copyWith(
                                              color: Theme.of(
                                                context,
                                              ).colorScheme.onSurfaceVariant,
                                              fontSize: 10,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 8),
                              _buildTypeChip(item),
                            ],
                          ),
                          const SizedBox(height: 4),
                          Row(
                            children: [
                              Expanded(
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '${item.quantity}${item.unit}',
                                    style: Theme.of(context).textTheme.bodySmall
                                        ?.copyWith(
                                          color: cs.outline,
                                          fontSize: 12,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 6),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Expanded(
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    FormatUtils.formatPrice(item.totalPrice),
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleSmall
                                        ?.copyWith(
                                          color: cs.primary,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14,
                                        ),
                                  ),
                                ),
                              ),
                              if (item.expiryDate != null ||
                                  item.warrantyDate != null) ...[
                                const SizedBox(width: 8),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: _buildDateStatus(
                                    item,
                                    isWarning,
                                    isDanger,
                                  ),
                                ),
                              ],
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildThumbnail(Item item) {
    return SizedBox(
      width: 100,
      height: 100,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(8),
          bottomLeft: Radius.circular(8),
        ),
        child:
            item.imagePaths.isNotEmpty &&
                File(item.imagePaths.first).existsSync()
            ? Image.file(
                File(item.imagePaths.first),
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
                errorBuilder: (_, _, _) => _defaultThumb(),
              )
            : _defaultThumb(),
      ),
    );
  }

  Widget _defaultThumb() {
    return Container(
      color: Theme.of(context).colorScheme.surfaceContainerHighest,
      child: Center(
        child: Icon(
          Icons.inventory_2_outlined,
          size: 48,
          color: Theme.of(context).colorScheme.outline,
        ),
      ),
    );
  }

  Widget _buildTypeChip(Item item) {
    final l10n = AppLocalizations.of(context);
    final isC = item.itemType == ItemType.consumable;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 1),
      decoration: BoxDecoration(
        color: isC
            ? Theme.of(context).colorScheme.tertiaryContainer
            : Theme.of(context).colorScheme.secondaryContainer,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        isC ? l10n.consumable : l10n.durable,
        style: Theme.of(context).textTheme.labelSmall?.copyWith(
          fontSize: 10,
          color: isC
              ? Theme.of(context).colorScheme.onTertiaryContainer
              : Theme.of(context).colorScheme.onSecondaryContainer,
        ),
      ),
    );
  }

  Widget _buildDateStatus(Item item, bool isWarning, bool isDanger) {
    final date = item.itemType == ItemType.consumable
        ? item.expiryDate
        : item.warrantyDate;
    if (date == null) return const SizedBox.shrink();
    Color color = isDanger
        ? Theme.of(context).colorScheme.error
        : isWarning
        ? Theme.of(context).colorScheme.tertiary
        : Theme.of(context).colorScheme.outline;
    final isWarranty = item.itemType == ItemType.durable;
    final text = FormatUtils.formatRemainingDays(date, isWarranty: isWarranty);

    // 使用更鲜艳的颜色
    Color vibrantColor = isDanger
        ? Colors.redAccent
        : isWarning
        ? Colors.orangeAccent
        : Colors.blueAccent;

    // 使用正则表达式匹配数字
    final RegExp digitRegExp = RegExp(r'\d+');
    final match = digitRegExp.firstMatch(text);

    if (match != null) {
      final numberStart = match.start;
      final numberEnd = match.end;
      final numberText = match.group(0)!;
      final beforeNumber = text.substring(0, numberStart);
      final afterNumber = text.substring(numberEnd);

      final baseStyle =
          Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: color,
            fontSize: 8,
            fontWeight: FontWeight.w700,
          ) ??
          TextStyle(color: color, fontSize: 8, fontWeight: FontWeight.w700);

      return RichText(
        text: TextSpan(
          style: baseStyle,
          children: [
            TextSpan(text: beforeNumber),
            TextSpan(
              text: numberText,
              style: TextStyle(
                color: vibrantColor,
                fontSize: 21,
                fontWeight: FontWeight.w900,
              ),
            ),
            TextSpan(text: afterNumber),
          ],
        ),
      );
    } else {
      // 如果没有数字，返回普通文本
      final baseStyle =
          Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: color,
            fontSize: 8,
            fontWeight: FontWeight.w700,
          ) ??
          TextStyle(color: color, fontSize: 8, fontWeight: FontWeight.w700);

      return Text(text, style: baseStyle);
    }
  }

  void _confirmDelete(Item item, ItemListProvider provider) {
    final l10n = AppLocalizations.of(context);
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l10n.confirm_delete),
        content: Text(l10n.delete_item_confirm_with_irreversible(item.name)),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: Text(l10n.cancel),
          ),
            FilledButton(
              onPressed: () {
                Navigator.pop(ctx);
                provider.deleteItem(item.id);
                widget.onItemDeleted?.call(item.id);
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

  String _formatDate(DateTime date) {
    return DateFormat('yyyy-MM-dd').format(date);
  }

  Widget _buildLocationDrawer() {
    return Drawer(
      child: Consumer<ItemListProvider>(
        builder: (context, provider, _) {
          final l10n = AppLocalizations.of(context);
          final locations = provider.getLocations();
          final categories = provider.getCategories();
          final currentLocationFilter = provider.filterLocation;
          final currentCategoryFilter = provider.filterCategory;

          return ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primaryContainer,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.filter_alt,
                      size: 40,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      l10n.filter_options,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                      ),
                    ),
                    Text(
                      l10n.filter_by_type_category_location,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                      ),
                    ),
                  ],
                ),
              ),

              // 物品类型筛选部分
              ExpansionTile(
                initiallyExpanded: _typeExpanded,
                onExpansionChanged: (expanded) {
                  setState(() {
                    _typeExpanded = expanded;
                  });
                },
                tilePadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                childrenPadding: const EdgeInsets.only(bottom: 8),
                shape: const RoundedRectangleBorder(),
                title: Row(
                  children: [
                    Icon(
                      Icons.category,
                      size: 20,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        l10n.item_categories,
                        style: Theme.of(context).textTheme.titleMedium
                            ?.copyWith(
                              color: Theme.of(context).colorScheme.primary,
                              fontWeight: FontWeight.bold,
                            ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      l10n.categories_count(categories.length),
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Theme.of(context).colorScheme.outline,
                      ),
                    ),
                  ],
                ),
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.all_inbox,
                      color: currentCategoryFilter == null
                          ? Theme.of(context).colorScheme.primary
                          : Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                    title: Text(
                      l10n.all_categories,
                      style: TextStyle(
                        fontWeight: currentCategoryFilter == null
                            ? FontWeight.bold
                            : FontWeight.normal,
                        color: currentCategoryFilter == null
                            ? Theme.of(context).colorScheme.primary
                            : null,
                      ),
                    ),
                    trailing: currentCategoryFilter == null
                        ? Icon(
                            Icons.check,
                            color: Theme.of(context).colorScheme.primary,
                          )
                        : null,
                    selected: currentCategoryFilter == null,
                    onTap: () {
                      provider.setFilterCategory(null);
                      Navigator.pop(context);
                    },
                  ),
                  ...categories.map(
                    (category) => ListTile(
                      leading: Icon(
                        Icons.category,
                        color: currentCategoryFilter == category
                            ? Theme.of(context).colorScheme.primary
                            : Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                      title: Text(
                        category,
                        style: TextStyle(
                          fontWeight: currentCategoryFilter == category
                              ? FontWeight.bold
                              : FontWeight.normal,
                          color: currentCategoryFilter == category
                              ? Theme.of(context).colorScheme.primary
                              : null,
                        ),
                      ),
                      trailing: currentCategoryFilter == category
                          ? Icon(
                              Icons.check,
                              color: Theme.of(context).colorScheme.primary,
                            )
                          : null,
                      selected: currentCategoryFilter == category,
                      onTap: () {
                        provider.setFilterCategory(category);
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  if (categories.isEmpty) ...[
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        l10n.no_category_data,
                        style: const TextStyle(color: Colors.grey),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ],
              ),

              // 地点筛选部分
              ExpansionTile(
                initiallyExpanded: _locationExpanded,
                onExpansionChanged: (expanded) {
                  setState(() {
                    _locationExpanded = expanded;
                  });
                },
                tilePadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                childrenPadding: const EdgeInsets.only(bottom: 8),
                shape: const RoundedRectangleBorder(),
                title: Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      size: 20,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        l10n.storage_locations,
                        style: Theme.of(context).textTheme.titleMedium
                            ?.copyWith(
                              color: Theme.of(context).colorScheme.primary,
                              fontWeight: FontWeight.bold,
                            ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      l10n.locations_count(locations.length),
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Theme.of(context).colorScheme.outline,
                      ),
                    ),
                  ],
                ),
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.all_inbox,
                      color: currentLocationFilter == null
                          ? Theme.of(context).colorScheme.primary
                          : Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                    title: Text(
                      l10n.all_locations,
                      style: TextStyle(
                        fontWeight: currentLocationFilter == null
                            ? FontWeight.bold
                            : FontWeight.normal,
                        color: currentLocationFilter == null
                            ? Theme.of(context).colorScheme.primary
                            : null,
                      ),
                    ),
                    trailing: currentLocationFilter == null
                        ? Icon(
                            Icons.check,
                            color: Theme.of(context).colorScheme.primary,
                          )
                        : null,
                    selected: currentLocationFilter == null,
                    onTap: () {
                      provider.setFilterLocation(null);
                      Navigator.pop(context);
                    },
                  ),
                  ...locations.map(
                    (location) => ListTile(
                      leading: Icon(
                        Icons.place,
                        color: currentLocationFilter == location
                            ? Theme.of(context).colorScheme.primary
                            : Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                      title: Text(
                        location,
                        style: TextStyle(
                          fontWeight: currentLocationFilter == location
                              ? FontWeight.bold
                              : FontWeight.normal,
                          color: currentLocationFilter == location
                              ? Theme.of(context).colorScheme.primary
                              : null,
                        ),
                      ),
                      trailing: currentLocationFilter == location
                          ? Icon(
                              Icons.check,
                              color: Theme.of(context).colorScheme.primary,
                            )
                          : null,
                      selected: currentLocationFilter == location,
                      onTap: () {
                        provider.setFilterLocation(location);
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  if (locations.isEmpty) ...[
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        l10n.no_location_data,
                        style: const TextStyle(color: Colors.grey),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ],
              ),

              // 日期范围筛选部分
              ExpansionTile(
                initiallyExpanded: _dateExpanded,
                onExpansionChanged: (expanded) {
                  setState(() {
                    _dateExpanded = expanded;
                  });
                },
                tilePadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                childrenPadding: const EdgeInsets.only(bottom: 8),
                shape: const RoundedRectangleBorder(),
                title: Row(
                  children: [
                    Icon(
                      Icons.calendar_today,
                      size: 20,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        l10n.date_range,
                        style: Theme.of(context).textTheme.titleMedium
                            ?.copyWith(
                              color: Theme.of(context).colorScheme.primary,
                              fontWeight: FontWeight.bold,
                            ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.date_range,
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                    title: Text(
                      provider.dateRange == null
                          ? l10n.select_date_range
                          : '${_formatDate(provider.dateRange!.start)} - ${_formatDate(provider.dateRange!.end)}',
                      style: TextStyle(
                        color: provider.dateRange == null
                            ? Theme.of(context).colorScheme.onSurfaceVariant
                            : Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    trailing: provider.dateRange != null
                        ? IconButton(
                            icon: Icon(
                              Icons.clear,
                              color: Theme.of(context).colorScheme.error,
                            ),
                            onPressed: () {
                              provider.setDateRange(null);
                            },
                          )
                        : null,
                    onTap: () async {
                      final now = DateTime.now();
                      final initialDateRange =
                          provider.dateRange ??
                          DateTimeRange(
                            start: now,
                            end: now.add(const Duration(days: 30)),
                          );
                      final pickedRange = await showDateRangePicker(
                        context: context,
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2100),
                        initialDateRange: initialDateRange,
                      );
                      if (pickedRange != null) {
                        provider.setDateRange(pickedRange);
                      }
                    },
                  ),
                ],
              ),

              // 价格范围筛选部分
              ExpansionTile(
                initiallyExpanded: _priceExpanded,
                onExpansionChanged: (expanded) {
                  setState(() {
                    _priceExpanded = expanded;
                  });
                },
                tilePadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                childrenPadding: const EdgeInsets.only(bottom: 8),
                shape: const RoundedRectangleBorder(),
                title: Row(
                  children: [
                    Icon(
                      Icons.attach_money,
                      size: 20,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        l10n.price_range,
                        style: Theme.of(context).textTheme.titleMedium
                            ?.copyWith(
                              color: Theme.of(context).colorScheme.primary,
                              fontWeight: FontWeight.bold,
                            ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                children: [
                  // 单价范围
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          l10n.unit_price_range,
                          style: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Expanded(
                              child: TextField(
                                controller: TextEditingController(
                                  text:
                                      provider.minUnitPrice?.toStringAsFixed(
                                        2,
                                      ) ??
                                      '',
                                ),
                                decoration: InputDecoration(
                                  hintText: l10n.min_unit_price,
                                  prefixText: '¥',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 12,
                                  ),
                                ),
                                keyboardType: TextInputType.numberWithOptions(
                                  decimal: true,
                                ),
                                onChanged: (value) {
                                  final min = double.tryParse(value);
                                  provider.setUnitPriceRange(
                                    min,
                                    provider.maxUnitPrice,
                                  );
                                },
                              ),
                            ),
                            const SizedBox(width: 8),
                            Text(
                              '~',
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: TextField(
                                controller: TextEditingController(
                                  text:
                                      provider.maxUnitPrice?.toStringAsFixed(
                                        2,
                                      ) ??
                                      '',
                                ),
                                decoration: InputDecoration(
                                  hintText: l10n.max_unit_price,
                                  prefixText: '¥',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 12,
                                  ),
                                ),
                                keyboardType: TextInputType.numberWithOptions(
                                  decimal: true,
                                ),
                                onChanged: (value) {
                                  final max = double.tryParse(value);
                                  provider.setUnitPriceRange(
                                    provider.minUnitPrice,
                                    max,
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // 总价范围
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          l10n.total_price_range,
                          style: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Expanded(
                              child: TextField(
                                controller: TextEditingController(
                                  text:
                                      provider.minTotalPrice?.toStringAsFixed(
                                        2,
                                      ) ??
                                      '',
                                ),
                                decoration: InputDecoration(
                                  hintText: l10n.min_total_price,
                                  prefixText: '¥',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 12,
                                  ),
                                ),
                                keyboardType: TextInputType.numberWithOptions(
                                  decimal: true,
                                ),
                                onChanged: (value) {
                                  final min = double.tryParse(value);
                                  provider.setTotalPriceRange(
                                    min,
                                    provider.maxTotalPrice,
                                  );
                                },
                              ),
                            ),
                            const SizedBox(width: 8),
                            Text(
                              '~',
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: TextField(
                                controller: TextEditingController(
                                  text:
                                      provider.maxTotalPrice?.toStringAsFixed(
                                        2,
                                      ) ??
                                      '',
                                ),
                                decoration: InputDecoration(
                                  hintText: l10n.max_total_price,
                                  prefixText: '¥',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 12,
                                  ),
                                ),
                                keyboardType: TextInputType.numberWithOptions(
                                  decimal: true,
                                ),
                                onChanged: (value) {
                                  final max = double.tryParse(value);
                                  provider.setTotalPriceRange(
                                    provider.minTotalPrice,
                                    max,
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // 清除价格筛选按钮
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8.0,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: OutlinedButton.icon(
                            onPressed: () {
                              provider.setUnitPriceRange(null, null);
                              provider.setTotalPriceRange(null, null);
                            },
                            icon: const Icon(Icons.clear_all, size: 16),
                            label: Text(l10n.clear_price_filter),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              // 清除筛选按钮
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: FilledButton.icon(
                  onPressed: () {
                    provider.clearAllFilters();
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.clear_all),
                  label: Text(l10n.clear_all_filters),
                  style: FilledButton.styleFrom(
                    minimumSize: const Size(double.infinity, 48),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Future<void> _scanBarcode() async {
    bool scanned = false;
    final l10n = AppLocalizations.of(context);
    final provider = context.read<ItemListProvider>();

    final barcodeResult = await Navigator.of(context).push<String>(
      MaterialPageRoute(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: Text(l10n.scan_to_stock),
            backgroundColor: Theme.of(context).colorScheme.primary,
            foregroundColor: Theme.of(context).colorScheme.onPrimary,
            actions: [
              IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
          body: Stack(
            children: [
              MobileScanner(
                controller: MobileScannerController(
                  formats: [BarcodeFormat.all],
                  returnImage: false,
                ),
                onDetect: (capture) {
                  if (!scanned) {
                    scanned = true;
                    final barcodes = capture.barcodes;
                    if (barcodes.isNotEmpty) {
                      final barcode = barcodes.first.rawValue;
                      if (barcode != null) {
                        Navigator.pop(context, barcode);
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
                    style: TextStyle(
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
        ),
      ),
    );

    if (barcodeResult == null || barcodeResult.isEmpty) {
      return; // 用户取消了扫描
    }

    final existingItem = await provider.getItemByBarcode(barcodeResult);

    if (existingItem != null) {
      if (!mounted) return;
      // 条码已存在，询问用户是入库还是出库
      final operation = await showDialog<String>(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(AppLocalizations.of(context).item_already_exists),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('${l10n.barcode_label}：$barcodeResult'),
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
              onPressed: () => Navigator.pop(context, null),
              child: Text(AppLocalizations.of(context).cancel),
            ),
            FilledButton(
              onPressed: () => Navigator.pop(context, 'inbound'),
              child: Text(AppLocalizations.of(context).inbound),
            ),
            FilledButton(
              onPressed: () => Navigator.pop(context, 'outbound'),
              child: Text(AppLocalizations.of(context).outbound),
            ),
          ],
        ),
      );

    if (operation == null) {
      // 用户取消，返回
      return;
    }

      if (!mounted) return;
      // 询问数量
      final quantityController = TextEditingController(text: '1');
      final quantity = await showDialog<int>(
        context: context,
        builder: (context) => AlertDialog(
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
              onPressed: () => Navigator.pop(context),
              child: Text(AppLocalizations.of(context).cancel),
            ),
            FilledButton(
              onPressed: () {
                final quantity = int.tryParse(quantityController.text.trim());
                if (quantity != null && quantity > 0) {
                  Navigator.pop(context, quantity);
                }
              },
              child: Text(AppLocalizations.of(context).confirm),
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
      if (!mounted) return;
      if (widget.onAddWithBarcode != null) {
        widget.onAddWithBarcode!(barcodeResult);
      } else {
        await Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => ItemFormScreen(initialBarcode: barcodeResult),
          ),
        ).then((_) {
          if (mounted) {
            provider.refresh();
          }
        });
      }
    }
  }

  Future<void> _navigateToAdd() async {
    if (widget.onAddTap != null) {
      widget.onAddTap!();
      return;
    }
    await Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => const ItemFormScreen()),
    );
    if (mounted) {
      context.read<ItemListProvider>().refresh();
    }
  }

  Future<void> _navigateToEdit(Item item) async {
    if (widget.onItemTap != null) {
      widget.onItemTap!(item);
      return;
    }
    await Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => ItemFormScreen(item: item)),
    );
    if (mounted) {
      context.read<ItemListProvider>().refresh();
    }
  }

  void _enterSelectionMode(Item item) {
    setState(() {
      _isSelectionMode = true;
      _selectedItemIds.clear();
      _selectedItemIds.add(item.id);
    });
  }

  void _toggleItemSelection(Item item) {
    setState(() {
      if (_selectedItemIds.contains(item.id)) {
        _selectedItemIds.remove(item.id);
        if (_selectedItemIds.isEmpty) {
          _isSelectionMode = false;
        }
      } else {
        _selectedItemIds.add(item.id);
      }
    });
  }

  void _exitSelectionMode() {
    setState(() {
      _isSelectionMode = false;
      _selectedItemIds.clear();
    });
  }

  void _toggleSelectAll() {
    final provider = context.read<ItemListProvider>();
    setState(() {
      if (_selectedItemIds.length < provider.items.length) {
        _selectedItemIds.addAll(provider.items.map((item) => item.id));
      } else {
        _selectedItemIds.clear();
        _isSelectionMode = false;
      }
    });
  }

  void _batchDelete() {
    final provider = context.read<ItemListProvider>();
    final l10n = AppLocalizations.of(context);
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l10n.confirm_delete),
        content: Text('确定删除选中的 ${_selectedItemIds.length} 个物品吗？'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: Text(l10n.cancel),
          ),
          FilledButton(
            onPressed: () {
              Navigator.pop(ctx);
              for (final itemId in _selectedItemIds) {
                provider.deleteItem(itemId);
              }
              _exitSelectionMode();
              if (mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('已删除 ${_selectedItemIds.length} 个物品'),
                    duration: const Duration(seconds: 2),
                  ),
                );
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

  void _batchChangeLocation() {
    final provider = context.read<ItemListProvider>();
    final l10n = AppLocalizations.of(context);
    final locations = provider.getLocations();

    if (locations.isEmpty) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('暂无存储地点可选'),
            duration: Duration(seconds: 2),
          ),
        );
      }
      return;
    }

    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('批量调换存储地点'),
        content: SizedBox(
          width: double.maxFinite,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: locations.length,
            itemBuilder: (context, index) {
              final location = locations[index];
              return ListTile(
                title: Text(location),
                onTap: () {
                  Navigator.pop(ctx);
                  final count = _selectedItemIds.length;
                  for (final itemId in _selectedItemIds) {
                    final item = provider.items.firstWhere((i) => i.id == itemId);
                    provider.updateItem(item.copyWith(storageLocation: location));
                  }
                  _exitSelectionMode();
                  if (mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('已将 $count 个物品移动到 $location'),
                        duration: const Duration(seconds: 2),
                      ),
                    );
                  }
                },
              );
            },
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: Text(l10n.cancel),
          ),
        ],
      ),
    );
  }
}
