import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
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
                        type == ItemType.consumable
                            ? Icons.local_grocery_store
                            : Icons.construction,
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
                  final hasLocationFilter =
                      provider.filterLocation != null &&
                      provider.filterLocation!.isNotEmpty;
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
                icon: const Icon(Icons.qr_code_scanner),
                onPressed: _scanBarcode,
                tooltip: '扫码入库',
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
        isC ? '消耗品' : '耐用品',
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
                    leading: Icon(
                      Icons.all_inbox,
                      color: currentTypeFilter == null
                          ? Theme.of(context).colorScheme.primary
                          : Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                    title: Text(
                      '全部',
                      style: TextStyle(
                        fontWeight: currentTypeFilter == null
                            ? FontWeight.bold
                            : FontWeight.normal,
                        color: currentTypeFilter == null
                            ? Theme.of(context).colorScheme.primary
                            : null,
                      ),
                    ),
                    trailing: currentTypeFilter == null
                        ? Icon(
                            Icons.check,
                            color: Theme.of(context).colorScheme.primary,
                          )
                        : null,
                    selected: currentTypeFilter == null,
                    onTap: () {
                      provider.setFilterType(null);
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.local_grocery_store,
                      color: currentTypeFilter == ItemType.consumable
                          ? Theme.of(context).colorScheme.primary
                          : Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                    title: Text(
                      '消耗品',
                      style: TextStyle(
                        fontWeight: currentTypeFilter == ItemType.consumable
                            ? FontWeight.bold
                            : FontWeight.normal,
                        color: currentTypeFilter == ItemType.consumable
                            ? Theme.of(context).colorScheme.primary
                            : null,
                      ),
                    ),
                    trailing: currentTypeFilter == ItemType.consumable
                        ? Icon(
                            Icons.check,
                            color: Theme.of(context).colorScheme.primary,
                          )
                        : null,
                    selected: currentTypeFilter == ItemType.consumable,
                    onTap: () {
                      provider.setFilterType(ItemType.consumable);
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.construction,
                      color: currentTypeFilter == ItemType.durable
                          ? Theme.of(context).colorScheme.primary
                          : Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                    title: Text(
                      '耐用品',
                      style: TextStyle(
                        fontWeight: currentTypeFilter == ItemType.durable
                            ? FontWeight.bold
                            : FontWeight.normal,
                        color: currentTypeFilter == ItemType.durable
                            ? Theme.of(context).colorScheme.primary
                            : null,
                      ),
                    ),
                    trailing: currentTypeFilter == ItemType.durable
                        ? Icon(
                            Icons.check,
                            color: Theme.of(context).colorScheme.primary,
                          )
                        : null,
                    selected: currentTypeFilter == ItemType.durable,
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
      // 条码已存在，询问用户是否相同商品入库
      final isSameItem = await showDialog<bool>(
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
              const Text('是否相同商品入库？'),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context, false),
              child: const Text('否，继续扫码'),
            ),
            FilledButton(
              onPressed: () => Navigator.pop(context, true),
              child: const Text('是，相同商品'),
            ),
          ],
        ),
      );
      
      if (isSameItem == true) {
        if (!mounted) return;
        // 询问入库数量
        final quantityController = TextEditingController(text: '1');
        final quantity = await showDialog<int>(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('入库数量'),
            content: TextField(
              controller: quantityController,
              decoration: const InputDecoration(
                labelText: '数量',
                hintText: '请输入入库数量',
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
          await provider.updateItemQuantity(existingItem.id, quantity);
          if (mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('已增加 ${existingItem.name} $quantity${existingItem.unit}'),
                duration: const Duration(seconds: 2),
              ),
            );
          }
        }
      } else {
        // 用户选择"否，继续扫码"，重新扫描
        _scanBarcode();
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
