import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';
import 'package:recording/data/models/item.dart';
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
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        context.read<ItemListProvider>().loadItems();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: const Text('我的物品'),
            actions: [
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
          SliverToBoxAdapter(child: _buildCategoryFilter()),
          Consumer<ItemListProvider>(
            builder: (context, provider, _) {
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
                          '暂无物品',
                          style: Theme.of(context).textTheme.titleMedium
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.outline,
                              ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          '点击右下角按钮添加物品',
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
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _navigateToAdd(),
        icon: const Icon(Icons.add),
        label: const Text('添加物品'),
      ),
    );
  }

  Widget _buildSearchBar() {
    return Consumer<ItemListProvider>(
      builder: (context, provider, _) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: SearchBar(
            hintText: '搜索物品...',
            leading: const Icon(Icons.search),
            onChanged: provider.setSearchQuery,
          ),
        );
      },
    );
  }

  Widget _buildCategoryFilter() {
    return Consumer<ItemListProvider>(
      builder: (context, provider, _) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _buildFilterChip('全部', null, provider),
                const SizedBox(width: 8),
                _buildFilterChip('消耗品', ItemType.consumable, provider),
                const SizedBox(width: 8),
                _buildFilterChip('耐用品', ItemType.durable, provider),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildFilterChip(
    String label,
    ItemType? type,
    ItemListProvider provider,
  ) {
    final isSelected = provider.filterType == type;
    return FilterChip(
      label: Text(label),
      selected: isSelected,
      onSelected: (_) => provider.setFilterType(isSelected ? null : type),
    );
  }

  Widget _buildItemCard(Item item, ItemListProvider provider) {
    final cs = Theme.of(context).colorScheme;
    final isWarning = item.isExpiringSoon || item.isWarrantyExpiringSoon;
    final isDanger = item.isExpired || item.isWarrantyExpired;

    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Slidable(
        endActionPane: ActionPane(
          motion: const ScrollMotion(),
          extentRatio: 0.25,
          children: [
            SlidableAction(
              onPressed: (_) => _confirmDelete(item, provider),
              backgroundColor: cs.error,
              foregroundColor: cs.onError,
              icon: Icons.delete,
              label: '删除',
              borderRadius: BorderRadius.circular(12),
            ),
          ],
        ),
        child: Card(
          clipBehavior: Clip.antiAlias,
          child: InkWell(
            onTap: () { _navigateToEdit(item); },
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  _buildThumbnail(item),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                item.name,
                                style: Theme.of(context).textTheme.titleSmall,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            _buildTypeChip(item),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Text(
                          item.category,
                          style: Theme.of(
                            context,
                          ).textTheme.bodySmall?.copyWith(color: cs.outline),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Text(
                              '${item.quantity}${item.unit}',
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            const Spacer(),
                            Text(
                              FormatUtils.formatPrice(item.totalPrice),
                              style: Theme.of(context).textTheme.titleSmall
                                  ?.copyWith(
                                    color: cs.primary,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ],
                        ),
                        if (item.expiryDate != null ||
                            item.warrantyDate != null) ...[
                          const SizedBox(height: 4),
                          _buildDateStatus(item, isWarning, isDanger),
                        ],
                      ],
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
    if (item.imagePaths.isNotEmpty &&
        File(item.imagePaths.first).existsSync()) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.file(
          File(item.imagePaths.first),
          width: 56,
          height: 56,
          fit: BoxFit.cover,
          errorBuilder: (_, _, _) => _defaultThumb(),
        ),
      );
    }
    return _defaultThumb();
  }

  Widget _defaultThumb() {
    return Container(
      width: 56,
      height: 56,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Icon(
        Icons.inventory_2_outlined,
        color: Theme.of(context).colorScheme.outline,
      ),
    );
  }

  Widget _buildTypeChip(Item item) {
    final isC = item.itemType == ItemType.consumable;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        color: isC
            ? Theme.of(context).colorScheme.tertiaryContainer
            : Theme.of(context).colorScheme.secondaryContainer,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        isC ? '消耗品' : '耐用品',
        style: Theme.of(context).textTheme.labelSmall?.copyWith(
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
    return Text(
      FormatUtils.formatRemainingDays(date),
      style: Theme.of(context).textTheme.bodySmall?.copyWith(color: color),
    );
  }

  void _confirmDelete(Item item, ItemListProvider provider) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('确认删除'),
        content: Text('确定要删除「${item.name}」吗？此操作不可撤销。'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: const Text('取消'),
          ),
          FilledButton(
            onPressed: () {
              Navigator.pop(ctx);
              provider.deleteItem(item.id);
            },
            style: FilledButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.error,
            ),
            child: const Text('删除'),
          ),
        ],
      ),
    );
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
