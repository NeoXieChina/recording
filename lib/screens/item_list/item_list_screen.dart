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
  const ItemListScreen({super.key});

  @override
  State<ItemListScreen> createState() => _ItemListScreenState();
}

class _ItemListScreenState extends State<ItemListScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool _typeExpanded = false;
  bool _locationExpanded = false;
  bool _dateExpanded = false;
  bool _priceExpanded = false;

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
            leading: IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () => _scaffoldKey.currentState?.openDrawer(),
            ),
            actions: [
              // 排序按钮
              Consumer<ItemListProvider>(
                builder: (context, provider, _) {
                  final l10n = AppLocalizations.of(context);
                  // 根据排序字段选择图标
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
                              color:
                                  provider.sortField == 'name' &&
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
                                color: Theme.of(context).colorScheme.primary,
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
                              color:
                                  provider.sortField == 'name' &&
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
                                color: Theme.of(context).colorScheme.primary,
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
                              color:
                                  provider.sortField == 'date' &&
                                      provider.sortAscending
                                  ? Theme.of(context).colorScheme.primary
                                  : null,
                            ),
                            const SizedBox(width: 8),
                            Text('日期升序'),
                            if (provider.sortField == 'date' &&
                                provider.sortAscending)
                              Icon(
                                Icons.check,
                                size: 16,
                                color: Theme.of(context).colorScheme.primary,
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
                              color:
                                  provider.sortField == 'date' &&
                                      !provider.sortAscending
                                  ? Theme.of(context).colorScheme.primary
                                  : null,
                            ),
                            const SizedBox(width: 8),
                            Text('日期降序'),
                            if (provider.sortField == 'date' &&
                                !provider.sortAscending)
                              Icon(
                                Icons.check,
                                size: 16,
                                color: Theme.of(context).colorScheme.primary,
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
                              color:
                                  provider.sortField == 'price' &&
                                      provider.sortAscending
                                  ? Theme.of(context).colorScheme.primary
                                  : null,
                            ),
                            const SizedBox(width: 8),
                            Text('单价升序'),
                            if (provider.sortField == 'price' &&
                                provider.sortAscending)
                              Icon(
                                Icons.check,
                                size: 16,
                                color: Theme.of(context).colorScheme.primary,
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
                              color:
                                  provider.sortField == 'price' &&
                                      !provider.sortAscending
                                  ? Theme.of(context).colorScheme.primary
                                  : null,
                            ),
                            const SizedBox(width: 8),
                            Text('单价降序'),
                            if (provider.sortField == 'price' &&
                                !provider.sortAscending)
                              Icon(
                                Icons.check,
                                size: 16,
                                color: Theme.of(context).colorScheme.primary,
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
                              color:
                                  provider.sortField == 'quantity' &&
                                      provider.sortAscending
                                  ? Theme.of(context).colorScheme.primary
                                  : null,
                            ),
                            const SizedBox(width: 8),
                            Text('数量升序'),
                            if (provider.sortField == 'quantity' &&
                                provider.sortAscending)
                              Icon(
                                Icons.check,
                                size: 16,
                                color: Theme.of(context).colorScheme.primary,
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
                              color:
                                  provider.sortField == 'quantity' &&
                                      !provider.sortAscending
                                  ? Theme.of(context).colorScheme.primary
                                  : null,
                            ),
                            const SizedBox(width: 8),
                            Text('数量降序'),
                            if (provider.sortField == 'quantity' &&
                                !provider.sortAscending)
                              Icon(
                                Icons.check,
                                size: 16,
                                color: Theme.of(context).colorScheme.primary,
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
                              color:
                                  provider.sortField == 'totalPrice' &&
                                      provider.sortAscending
                                  ? Theme.of(context).colorScheme.primary
                                  : null,
                            ),
                            const SizedBox(width: 8),
                            Text('总价升序'),
                            if (provider.sortField == 'totalPrice' &&
                                provider.sortAscending)
                              Icon(
                                Icons.check,
                                size: 16,
                                color: Theme.of(context).colorScheme.primary,
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
                              color:
                                  provider.sortField == 'totalPrice' &&
                                      !provider.sortAscending
                                  ? Theme.of(context).colorScheme.primary
                                  : null,
                            ),
                            const SizedBox(width: 8),
                            Text('总价降序'),
                            if (provider.sortField == 'totalPrice' &&
                                !provider.sortAscending)
                              Icon(
                                Icons.check,
                                size: 16,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
              // 清除筛选按钮
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
                onPressed: _scanBarcode,
                tooltip: l10n.scan_barcode,
              ),
              IconButton(
                icon: const Icon(Icons.settings),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const SettingsScreen()),
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
          ),
          child: InkWell(
            onTap: () {
              _navigateToEdit(item);
            },
            borderRadius: BorderRadius.circular(12),
            child: IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // 左侧图片区域 - 固定宽度正方形
                  _buildThumbnail(item),
                  // 右侧内容区域
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
                    Text(
                      '物品分类',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      '${categories.length} 个分类',
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
                      '全部分类',
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
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        '暂无分类数据',
                        style: TextStyle(color: Colors.grey),
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
                    Text(
                      '存储地点',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      '${locations.length} 个地点',
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
                      '全部地点',
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
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        '暂无地点数据',
                        style: TextStyle(color: Colors.grey),
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
                    Text(
                      '日期范围',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold,
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
                          ? '选择日期范围'
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
                    Text(
                      '价格范围',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold,
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
                          '单价范围',
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
                                  hintText: '最低单价',
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
                                  hintText: '最高单价',
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
                          '总价范围',
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
                                  hintText: '最低总价',
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
                                  hintText: '最高总价',
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
                            label: const Text('清除价格筛选'),
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
                  label: const Text('清除所有筛选'),
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
    final provider = context.read<ItemListProvider>();

    final barcodeResult = await Navigator.of(context).push<String>(
      MaterialPageRoute(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: const Text('扫码入库'),
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
                    '将条码放入框内扫描',
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
          title: const Text('商品已存在'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('条码：$barcodeResult'),
              const SizedBox(height: 8),
              Text('名称：${existingItem.name}'),
              Text('分类：${existingItem.category}'),
              Text('当前数量：${existingItem.quantity}${existingItem.unit}'),
              const SizedBox(height: 16),
              const Text('请选择操作：'),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context, null),
              child: const Text('取消'),
            ),
            FilledButton(
              onPressed: () => Navigator.pop(context, 'outbound'),
              child: const Text('出库'),
            ),
            FilledButton(
              onPressed: () => Navigator.pop(context, 'inbound'),
              child: const Text('入库'),
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
          title: Text(operation == 'inbound' ? '入库数量' : '出库数量'),
          content: TextField(
            controller: quantityController,
            decoration: InputDecoration(
              labelText: '数量',
              hintText: operation == 'inbound' ? '请输入入库数量' : '请输入出库数量',
            ),
            keyboardType: TextInputType.number,
            autofocus: true,
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('取消'),
            ),
            FilledButton(
              onPressed: () {
                final quantity = int.tryParse(quantityController.text.trim());
                if (quantity != null && quantity > 0) {
                  Navigator.pop(context, quantity);
                }
              },
              child: const Text('确定'),
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
                    ? '已增加 ${existingItem.name} $quantity${existingItem.unit}'
                    : '已减少 ${existingItem.name} $quantity${existingItem.unit}',
              ),
              duration: const Duration(seconds: 2),
            ),
          );
        }
      }
    } else {
      if (!mounted) return;
      // 新商品，跳转到添加页面并预填条码
      await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => ItemFormScreen(initialBarcode: barcodeResult),
        ),
      ).then((_) {
        // 返回后刷新列表
        if (mounted) {
          provider.refresh();
        }
      });
    }
  }

  Future<void> _navigateToAdd() async {
    await Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => const ItemFormScreen()),
    );
    if (mounted) {
      context.read<ItemListProvider>().refresh();
    }
  }

  Future<void> _navigateToEdit(Item item) async {
    await Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => ItemFormScreen(item: item)),
    );
    if (mounted) {
      context.read<ItemListProvider>().refresh();
    }
  }
}
