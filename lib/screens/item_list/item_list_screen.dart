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
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

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
      key: _scaffoldKey,
      drawer: _buildLocationDrawer(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: Consumer<ItemListProvider>(
              builder: (context, provider, _) {
                final location = provider.filterLocation;
                final type = provider.filterType;
                
                if (location != null && location.isNotEmpty) {
                  return Row(
                    children: [
                      Icon(
                        Icons.place,
                        size: 20,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          location,
                          style: Theme.of(context).textTheme.titleLarge,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  );
                } else if (type != null) {
                  final typeName = type == ItemType.consumable ? '消耗品' : '耐用品';
                  return Row(
                    children: [
                      Icon(
                        type == ItemType.consumable ? Icons.local_grocery_store : Icons.construction,
                        size: 20,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          typeName,
                          style: Theme.of(context).textTheme.titleLarge,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  );
                }
                return const Text('我的物品');
              },
            ),
            leading: IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () => _scaffoldKey.currentState?.openDrawer(),
            ),
            actions: [
              Consumer<ItemListProvider>(
                builder: (context, provider, _) {
                  final hasLocationFilter = provider.filterLocation != null && provider.filterLocation!.isNotEmpty;
                  final hasTypeFilter = provider.filterType != null;
                  if (hasLocationFilter || hasTypeFilter) {
                    return IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: () {
                        provider.setFilterLocation(null);
                        provider.setFilterType(null);
                      },
                      tooltip: '清除所有筛选',
                    );
                  }
                  return const SizedBox.shrink();
                },
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
      floatingActionButton: FloatingActionButton(
        onPressed: () => _navigateToAdd(),
        child: const Icon(Icons.add),
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
            onTap: () {
              _navigateToEdit(item);
            },
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

  Widget _buildLocationDrawer() {
    return Drawer(
      child: Consumer<ItemListProvider>(
        builder: (context, provider, _) {
          final locations = provider.getLocations();
          final currentLocationFilter = provider.filterLocation;
          final currentTypeFilter = provider.filterType;
          
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
                      '筛选选项',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                      ),
                    ),
                    Text(
                      '按类型和地点筛选物品',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                      ),
                    ),
                  ],
                ),
              ),
              
              // 物品类型筛选部分
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
                child: Text(
                  '物品类型',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Column(
                children: [
                  ListTile(
                    leading: Radio<ItemType?>(
                      value: null,
                      groupValue: currentTypeFilter,
                      onChanged: (ItemType? value) {
                        provider.setFilterType(value);
                        Navigator.pop(context);
                      },
                    ),
                    title: const Text('全部'),
                    trailing: const Icon(Icons.all_inbox),
                    onTap: () {
                      provider.setFilterType(null);
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: Radio<ItemType?>(
                      value: ItemType.consumable,
                      groupValue: currentTypeFilter,
                      onChanged: (ItemType? value) {
                        provider.setFilterType(value);
                        Navigator.pop(context);
                      },
                    ),
                    title: const Text('消耗品'),
                    trailing: const Icon(Icons.local_grocery_store),
                    onTap: () {
                      provider.setFilterType(ItemType.consumable);
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: Radio<ItemType?>(
                      value: ItemType.durable,
                      groupValue: currentTypeFilter,
                      onChanged: (ItemType? value) {
                        provider.setFilterType(value);
                        Navigator.pop(context);
                      },
                    ),
                    title: const Text('耐用品'),
                    trailing: const Icon(Icons.construction),
                    onTap: () {
                      provider.setFilterType(ItemType.durable);
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
              
              const Divider(height: 1),
              
              // 地点筛选部分
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
                child: Row(
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
              ),
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
                    fontWeight: currentLocationFilter == null ? FontWeight.bold : FontWeight.normal,
                    color: currentLocationFilter == null
                        ? Theme.of(context).colorScheme.primary
                        : null,
                  ),
                ),
                selected: currentLocationFilter == null,
                onTap: () {
                  provider.setFilterLocation(null);
                  Navigator.pop(context);
                },
              ),
              ...locations.map((location) => ListTile(
                leading: Icon(
                  Icons.place,
                  color: currentLocationFilter == location
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.onSurfaceVariant,
                ),
                title: Text(
                  location,
                  style: TextStyle(
                    fontWeight: currentLocationFilter == location ? FontWeight.bold : FontWeight.normal,
                    color: currentLocationFilter == location
                        ? Theme.of(context).colorScheme.primary
                        : null,
                  ),
                ),
                selected: currentLocationFilter == location,
                onTap: () {
                  provider.setFilterLocation(location);
                  Navigator.pop(context);
                },
              )),
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
              
              // 清除筛选按钮
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: FilledButton.icon(
                  onPressed: () {
                    provider.setFilterType(null);
                    provider.setFilterLocation(null);
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
