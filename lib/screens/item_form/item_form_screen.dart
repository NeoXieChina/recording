import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:provider/provider.dart';
import 'package:recording/constants.dart';
import 'package:recording/data/models/item.dart';
import 'package:recording/generated/l10n/app_localizations.dart';
import 'package:recording/providers/item_form_provider.dart';
import 'package:recording/providers/item_list_provider.dart';
import 'package:recording/utils/format.dart';

class ItemFormScreen extends StatelessWidget {
  final Item? item;
  final String? initialBarcode;
  final bool isEmbedded;
  final ValueChanged<Item>? onSaved;
  final VoidCallback? onClosed;

  const ItemFormScreen({
    super.key,
    this.item,
    this.initialBarcode,
    this.isEmbedded = false,
    this.onSaved,
    this.onClosed,
  });

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) {
        final provider = ItemFormProvider();
        if (item != null) {
          provider.loadItem(item!);
        } else if (initialBarcode != null &&
            initialBarcode!.trim().isNotEmpty) {
          provider.setBarcode(initialBarcode!.trim());
        }
        return provider;
      },
      child: Consumer<ItemFormProvider>(
        builder: (context, provider, _) {
          final scaffold = Scaffold(
            appBar: AppBar(
              leading: isEmbedded
                  ? IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () => _handleClose(context, provider),
                    )
                  : null,
              title: Text(
                provider.isEditing
                    ? AppLocalizations.of(context).edit_item
                    : AppLocalizations.of(context).add_item,
              ),
              actions: [
                IconButton(
                  icon: provider.isSaving
                      ? const SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        )
                      : const Icon(Icons.check),
                  onPressed: provider.isSaving
                      ? null
                      : () async {
                          final savedItem = await provider.save(context);
                          if (savedItem != null && context.mounted) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  provider.isEditing
                                      ? AppLocalizations.of(context)
                                          .item_updated
                                      : AppLocalizations.of(context)
                                          .item_added,
                                ),
                              ),
                            );
                            if (isEmbedded) {
                              onSaved?.call(savedItem);
                            } else {
                              Navigator.pop(context);
                            }
                          }
                        },
                ),
              ],
            ),
            body: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildBasicInfoSection(context, provider),
                  const SizedBox(height: 24),
                  _buildTypeSwitchSection(context, provider),
                  const SizedBox(height: 24),
                  _buildMediaSection(context, provider),
                  const SizedBox(height: 24),
                  _buildAlertSettingsSection(context, provider),
                  const SizedBox(height: 24),
                  _buildNotesSection(context, provider),
                ],
              ),
            ),
          );

          if (isEmbedded) {
            return scaffold;
          }

          return PopScope(
            canPop: !provider.isDirty,
            onPopInvokedWithResult: (bool didPop, Object? result) async {
              if (!didPop && provider.isDirty) {
                final dialogResult = await showDialog<int>(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('未保存的更改'),
                    content: Text('您有未保存的更改，请选择操作：'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context, 0),
                        child: Text(AppLocalizations.of(context).cancel),
                      ),
                      TextButton(
                        onPressed: () => Navigator.pop(context, 1),
                        child: Text('放弃'),
                      ),
                    ],
                  ),
                );

                if (dialogResult == 1) {
                  if (context.mounted) {
                    Navigator.pop(context);
                  }
                }
              }
            },
            child: scaffold,
          );
        },
      ),
    );
  }

  Future<void> _handleClose(
      BuildContext context, ItemFormProvider provider) async {
    if (provider.isDirty) {
      final dialogResult = await showDialog<int>(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('未保存的更改'),
          content: Text('您有未保存的更改，请选择操作：'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context, 0),
              child: Text(AppLocalizations.of(context).cancel),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 1),
              child: Text('放弃'),
            ),
          ],
        ),
      );
      if (dialogResult == 1 && context.mounted) {
        onClosed?.call();
      }
    } else {
      onClosed?.call();
    }
  }

  String _mapCategoryToDisplay(String category) {
    // 如果 category 是预定义分类键，返回对应的中文分类名
    final index = AppConstants.itemCategoryKeys.indexOf(category);
    if (index != -1) {
      return AppConstants.itemCategories[index];
    }
    // 否则直接返回 category（可能是中文分类名或自定义分类）
    return category;
  }

  Widget _buildCategoryInput({
    required BuildContext context,
    required String value,
    required ValueChanged<String> onChanged,
  }) {
    return Consumer<ItemListProvider>(
      builder: (context, itemListProvider, _) {
        final l10n = AppLocalizations.of(context);
        // 预定义分类使用中文名称
        final predefinedCategories = AppConstants.itemCategories;
        // 自定义分类（可能包含键或中文名称）
        final customCategories = itemListProvider.getCategories();

        // 将自定义分类中的键转换为中文名称，以便显示
        final customDisplayCategories = customCategories.map((c) => _mapCategoryToDisplay(c)).toSet();

        // 所有分类（显示用）
        final allDisplayCategories = <String>{}
          ..addAll(predefinedCategories)
          ..addAll(customDisplayCategories)
          ..removeWhere((c) => c.isEmpty);

        // 映射：显示名称 -> 原始值（用于保存）
        final displayToOriginalMap = <String, String>{};
        for (final c in predefinedCategories) {
          displayToOriginalMap[c] = c; // 预定义分类原始值就是中文名称
        }
        for (final c in customCategories) {
          displayToOriginalMap[_mapCategoryToDisplay(c)] = c;
        }

        // 当前值的显示文本
        final displayValue = _mapCategoryToDisplay(value);
        final hasCustomCategory =
            !allDisplayCategories.contains(displayValue) && value.isNotEmpty;

        return _buildStyledDropdownButtonFormField<String>(
          context: context,
          label: l10n.item_category,
          value: hasCustomCategory ? 'custom' : displayValue,
          items: [
            ...allDisplayCategories.map(
              (display) => DropdownMenuItem(
                value: display,
                child: Text(
                  display,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            DropdownMenuItem(
              value: 'custom',
              child: Text(
                l10n.custom_category,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
          onChanged: (v) {
            if (v != null) {
              if (v == 'custom') {
                // 显示自定义输入对话框
                _showCustomCategoryDialog(context, value, (newCategory) {
                  if (newCategory.isNotEmpty) {
                    // 添加到自定义分类列表
                    itemListProvider.addCustomCategory(newCategory);
                    // 更新表单值
                    onChanged(newCategory);
                  }
                });
              } else {
                // 根据显示名称找到原始值
                final original = displayToOriginalMap[v] ?? v;
                onChanged(original);
              }
            }
          },
          icon: Icons.category,
          width: double.infinity,
        );
      },
    );
  }

  void _showCustomCategoryDialog(
    BuildContext context,
    String currentValue,
    ValueChanged<String> onChanged,
  ) {
    final l10n = AppLocalizations.of(context);
    final controller = TextEditingController(text: currentValue);
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l10n.custom_category),
        content: TextField(
          controller: controller,
          decoration: InputDecoration(hintText: l10n.enter_category_name),
          autofocus: true,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(AppLocalizations.of(context).cancel),
          ),
          TextButton(
            onPressed: () {
              final newValue = controller.text.trim();
              if (newValue.isNotEmpty) {
                onChanged(newValue);
              }
              Navigator.pop(context);
            },
            child: Text(AppLocalizations.of(context).confirm),
          ),
        ],
      ),
    );
  }

  Widget _buildUnitInput({
    required BuildContext context,
    required String value,
    required ValueChanged<String> onChanged,
  }) {
    return Consumer<ItemListProvider>(
      builder: (context, itemListProvider, _) {
        final l10n = AppLocalizations.of(context);
        final predefinedUnits = const [
          '个',
          '件',
          '箱',
          '包',
          '瓶',
          '盒',
          '套',
          'kg',
          'g',
          'L',
          'ml',
          'm',
          'cm',
        ];
        final customUnits = itemListProvider.getUnits();
        final allUnits = <String>{}
          ..addAll(predefinedUnits)
          ..addAll(customUnits)
          ..removeWhere((u) => u.isEmpty);

        final hasCustomUnit = !allUnits.contains(value) && value.isNotEmpty;

        return _buildStyledDropdownButtonFormField<String>(
          context: context,
          label: l10n.unit,
          value: hasCustomUnit ? 'custom' : value,
          items: [
            ...allUnits.map(
              (u) => DropdownMenuItem(
                value: u,
                child: Text(u, overflow: TextOverflow.ellipsis),
              ),
            ),
            DropdownMenuItem(
              value: 'custom',
              child: Text(l10n.custom, overflow: TextOverflow.ellipsis),
            ),
          ],
          onChanged: (v) {
            if (v != null) {
              if (v == 'custom') {
                // 显示自定义输入对话框
                _showCustomUnitDialog(context, value, (newUnit) {
                  if (newUnit.isNotEmpty) {
                    // 添加到自定义单位列表
                    itemListProvider.addCustomUnit(newUnit);
                    // 更新表单值
                    onChanged(newUnit);
                  }
                });
              } else {
                onChanged(v);
              }
            }
          },
          icon: null,
          width: 120,
        );
      },
    );
  }

  void _showCustomUnitDialog(
    BuildContext context,
    String currentValue,
    ValueChanged<String> onChanged,
  ) {
    final l10n = AppLocalizations.of(context);
    final controller = TextEditingController(text: currentValue);
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l10n.custom_unit),
        content: TextField(
          controller: controller,
          decoration: InputDecoration(hintText: l10n.enter_unit),
          autofocus: true,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(AppLocalizations.of(context).cancel),
          ),
          TextButton(
            onPressed: () {
              final newValue = controller.text.trim();
              if (newValue.isNotEmpty) {
                onChanged(newValue);
              }
              Navigator.pop(context);
            },
            child: Text(AppLocalizations.of(context).confirm),
          ),
        ],
      ),
    );
  }

  void _showCustomLocationDialog(
    BuildContext context,
    String currentValue,
    ValueChanged<String> onChanged,
  ) {
    final l10n = AppLocalizations.of(context);
    final controller = TextEditingController(text: currentValue);
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l10n.custom_location),
        content: TextField(
          controller: controller,
          decoration: InputDecoration(hintText: l10n.enter_storage_location),
          autofocus: true,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(AppLocalizations.of(context).cancel),
          ),
          TextButton(
            onPressed: () {
              final newValue = controller.text.trim();
              if (newValue.isNotEmpty) {
                onChanged(newValue);
              }
              Navigator.pop(context);
            },
            child: Text(AppLocalizations.of(context).confirm),
          ),
        ],
      ),
    );
  }

  Widget _buildNumberInputWithButtons({
    required BuildContext context,
    required String label,
    required String? errorText,
    required IconData icon,
    required num? value,
    required ValueChanged<num> onChanged,
    required double step,
    bool isInteger = true,
  }) {
    final displayValue = value ?? 0;
    final controller = TextEditingController(text: displayValue.toString());

    void updateValue(num newValue) {
      if (newValue >= 0) {
        onChanged(newValue);
        controller.text = newValue.toString();
      }
    }

    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        errorText: errorText,
        prefixIcon: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: const Icon(Icons.chevron_left, size: 18),
              onPressed: () {
                final newValue = isInteger
                    ? displayValue.toInt() - step.toInt()
                    : displayValue - step;
                updateValue(newValue);
              },
              style: IconButton.styleFrom(
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                padding: const EdgeInsets.all(4),
                minimumSize: const Size(32, 32),
              ),
            ),
            const SizedBox(width: 4),
          ],
        ),
        suffixIcon: IconButton(
          icon: const Icon(Icons.chevron_right, size: 18),
          onPressed: () {
            final newValue = isInteger
                ? displayValue.toInt() + step.toInt()
                : displayValue + step;
            updateValue(newValue);
          },
          style: IconButton.styleFrom(
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            padding: const EdgeInsets.all(4),
            minimumSize: const Size(32, 32),
          ),
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 16,
        ),
        isDense: true,
      ),
      keyboardType: TextInputType.numberWithOptions(decimal: !isInteger),
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 16),
      onChanged: (v) {
        if (isInteger) {
          final n = int.tryParse(v);
          if (n != null && n >= 0) onChanged(n);
        } else {
          final n = double.tryParse(v);
          if (n != null && n >= 0) onChanged(n);
        }
      },
    );
  }

  Widget _buildBarcodeInput({
    required BuildContext context,
    required String value,
    required ValueChanged<String> onChanged,
  }) {
    final l10n = AppLocalizations.of(context);
    final controller = TextEditingController(text: value);

    Future<void> scanBarcode() async {
      bool scanned = false;

      final result = await Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => Scaffold(
            appBar: AppBar(
              title: Text(l10n.scan),
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

      if (result != null && result is String) {
        controller.text = result;
        onChanged(result);
      }
    }

    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: l10n.barcode,
        hintText: l10n.enter_barcode_or_scan,
        prefixIcon: const Icon(Icons.qr_code),
        suffixIcon: IconButton(
          icon: const Icon(Icons.camera_alt),
          onPressed: scanBarcode,
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 16,
        ),
        isDense: true,
      ),
      onChanged: onChanged,
      keyboardType: TextInputType.text,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 16),
    );
  }

  Widget _buildBasicInfoSection(
    BuildContext context,
    ItemFormProvider provider,
  ) {
    final l10n = AppLocalizations.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          l10n.basic_information,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 16),
        TextField(
          decoration: InputDecoration(
            labelText: l10n.item_name,
            hintText: l10n.enter_item_name,
            errorText: provider.nameError,
            prefixIcon: const Icon(Icons.label),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 16,
            ),
            isDense: true,
          ),
          onChanged: provider.setName,
          controller: TextEditingController(text: provider.name)
            ..selection = TextSelection.fromPosition(
              TextPosition(offset: provider.name.length),
            ),
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 16),
        ),
        const SizedBox(height: 16),
        _buildBarcodeInput(
          context: context,
          value: provider.barcode,
          onChanged: provider.setBarcode,
        ),
        const SizedBox(height: 16),
        _buildCategoryInput(
          context: context,
          value: provider.category,
          onChanged: provider.setCategory,
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: _buildNumberInputWithButtons(
                context: context,
                label: '数量',
                errorText: provider.quantityError,
                icon: Icons.numbers,
                value: provider.quantity,
                onChanged: (value) => provider.setQuantity(value.toInt()),
                step: 1,
                isInteger: true,
              ),
            ),
            const SizedBox(width: 16),
            SizedBox(
              width: 120,
              child: _buildUnitInput(
                context: context,
                value: provider.unit,
                onChanged: provider.setUnit,
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: _buildNumberInputWithButtons(
                context: context,
                label: '单价',
                errorText: provider.unitPriceError,
                icon: Icons.attach_money,
                value: provider.unitPrice,
                onChanged: (value) {
                  final newValue = value.toDouble();
                  if (newValue >= 0) {
                    provider.setUnitPrice(newValue);
                  }
                },
                step: 1,
                isInteger: false,
              ),
            ),
            const SizedBox(width: 16),
            SizedBox(
              width: 120,
              child: _buildStyledDropdownButtonFormField<String>(
                context: context,
                label: '货币',
                value: provider.currencySymbol,
                items: AppConstants.currencySymbols.map((symbol) {
                  return DropdownMenuItem(
                    value: symbol,
                    child: Text(symbol, overflow: TextOverflow.ellipsis),
                  );
                }).toList(),
                onChanged: (value) {
                  if (value != null) {
                    provider.setCurrencySymbol(value);
                  }
                },
                icon: null,
                width: 120,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Center(
          child: Text(
            '总价：${FormatUtils.formatPrice(provider.totalPrice, currencySymbol: provider.currencySymbol)}',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 16),
        Consumer<ItemListProvider>(
          builder: (context, itemListProvider, _) {
            final locations = itemListProvider.getLocations();
            final hasCustomLocation =
                provider.storageLocation.isNotEmpty &&
                !locations.contains(provider.storageLocation);

            return _buildStyledDropdownButtonFormField<String>(
              context: context,
              label: '存储地点',
              value: hasCustomLocation ? 'custom' : provider.storageLocation,
              items: [
                ...locations.map(
                  (location) => DropdownMenuItem(
                    value: location,
                    child: Text(location, overflow: TextOverflow.ellipsis),
                  ),
                ),
                const DropdownMenuItem(
                  value: 'custom',
                  child: Text('自定义地点', overflow: TextOverflow.ellipsis),
                ),
              ],
              onChanged: (value) {
                if (value != null) {
                  if (value == 'custom') {
                    // 显示自定义地点输入对话框
                    _showCustomLocationDialog(
                      context,
                      provider.storageLocation,
                      (newLocation) {
                        if (newLocation.isNotEmpty) {
                          // 添加到自定义地点列表
                          itemListProvider.addCustomLocation(newLocation);
                          // 更新表单值
                          provider.setStorageLocation(newLocation);
                        }
                      },
                    );
                  } else {
                    provider.setStorageLocation(value);
                  }
                }
              },
              icon: Icons.location_on,
              width: double.infinity,
            );
          },
        ),
      ],
    );
  }

  Widget _buildTypeSwitchSection(
    BuildContext context,
    ItemFormProvider provider,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('物品属性', style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 16),
        SegmentedButton<ItemType>(
          segments: const [
            ButtonSegment(
              value: ItemType.consumable,
              label: Text('消耗品'),
              icon: Icon(Icons.local_grocery_store),
            ),
            ButtonSegment(
              value: ItemType.durable,
              label: Text('耐用品'),
              icon: Icon(Icons.chair),
            ),
            ButtonSegment(
              value: ItemType.none,
              label: Text('无日期'),
              icon: Icon(Icons.event_busy),
            ),
          ],
          selected: {provider.itemType},
          onSelectionChanged: (s) => provider.setItemType(s.first),
        ),
        const SizedBox(height: 16),
        if (provider.itemType != ItemType.none)
          _buildDateAndShelfLifeSection(
            context: context,
            provider: provider,
            isConsumable: provider.itemType == ItemType.consumable,
          ),
      ],
    );
  }

  Widget _buildDateAndShelfLifeSection({
    required BuildContext context,
    required ItemFormProvider provider,
    required bool isConsumable,
  }) {
    if (provider.noDate) {
      return const SizedBox.shrink();
    }
    final dateLabel = isConsumable ? '有效期' : '保修到期日';
    final dateIcon = isConsumable ? Icons.event : Icons.verified_user;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 基准日期选择
        _buildDatePicker(
          context: context,
          label: isConsumable ? '生产日期' : '购买日期',
          icon: isConsumable ? Icons.factory : Icons.shopping_cart,
          date: isConsumable ? provider.productionDate : provider.purchaseDate,
          errorText: null,
          onPicked: isConsumable
              ? provider.setProductionDate
              : provider.setPurchaseDate,
          showClearButton: true,
        ),
        const SizedBox(height: 16),

        // 保质期输入
        _buildShelfLifeInputWithUnit(context: context, provider: provider),
        const SizedBox(height: 12),

        // 最终日期显示（自动计算，只读）
        _buildDatePicker(
          context: context,
          label: dateLabel,
          icon: dateIcon,
          date: isConsumable ? provider.expiryDate : provider.warrantyDate,
          errorText: provider.dateError,
          onPicked: isConsumable
              ? provider.setExpiryDate
              : provider.setWarrantyDate,
          readOnly: true,
          // 总是只读，因为自动计算
          showClearButton: false,
          // 不显示清除按钮
          minDate: isConsumable
              ? provider.productionDate
              : provider.purchaseDate,
        ),

        // 自动计算提示
        if (isConsumable
            ? provider.productionDate != null
            : provider.purchaseDate != null)
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(
              '根据${isConsumable ? '生产日期' : '购买日期'}和保质期自动计算',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: Colors.green,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
      ],
    );
  }

  Widget _buildDatePicker({
    required BuildContext context,
    required String label,
    required IconData icon,
    required DateTime? date,
    required String? errorText,
    required ValueChanged<DateTime?> onPicked,
    bool readOnly = false,
    bool showClearButton = true,
    DateTime? minDate,
  }) {
    final currentDate = date ?? DateTime.now();

    void adjustDate(int days) {
      final newDate = currentDate.add(Duration(days: days));
      if (minDate != null && newDate.isBefore(minDate)) {
        return; // 不能早于最小日期
      }
      onPicked(newDate);
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: readOnly
              ? null
              : () async {
                  final picked = await showDatePicker(
                    context: context,
                    initialDate: currentDate,
                    firstDate: minDate ?? DateTime(2000),
                    lastDate: DateTime(2100),
                    builder: (BuildContext context, Widget? child) {
                      return Theme(
                        data: Theme.of(context).copyWith(
                          dialogTheme: DialogThemeData(
                            backgroundColor: Theme.of(
                              context,
                            ).colorScheme.surface,
                          ),
                        ),
                        child: child!,
                      );
                    },
                    initialEntryMode: DatePickerEntryMode.input,
                  );
                  onPicked(picked);
                },
          borderRadius: BorderRadius.circular(12),
          child: InputDecorator(
            decoration: InputDecoration(
              labelText: label,
              prefixIcon: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(width: 8), // 添加左边距
                  Icon(icon, size: 20),
                  if (!readOnly) ...[
                    const SizedBox(width: 8),
                    IconButton(
                      icon: const Icon(Icons.chevron_left, size: 20),
                      onPressed: () => adjustDate(-1),
                      style: IconButton.styleFrom(
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        padding: const EdgeInsets.all(4),
                        minimumSize: const Size(32, 32),
                      ),
                    ),
                  ],
                ],
              ),
              errorText: errorText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              suffixIcon: !readOnly
                  ? IconButton(
                      icon: const Icon(Icons.chevron_right, size: 20),
                      onPressed: () => adjustDate(1),
                      style: IconButton.styleFrom(
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        padding: const EdgeInsets.all(4),
                        minimumSize: const Size(32, 32),
                      ),
                    )
                  : date != null
                  ? const Icon(Icons.calculate, size: 16, color: Colors.green)
                  : null,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 16,
              ),
              // 统一内边距
              isDense: true,
            ),
            child: Text(
              FormatUtils.formatDate(currentDate),
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontSize: 16,
                color: date != null ? null : Theme.of(context).hintColor,
              ),
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        if (readOnly && date != null)
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Text(
              '自动计算',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: Colors.green,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
      ],
    );
  }

  Widget _buildMediaSection(BuildContext context, ItemFormProvider provider) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('图片', style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: [
            ...provider.imagePaths.asMap().entries.map(
              (e) => _buildImageItem(context, e.value, e.key, provider),
            ),
            // 如果没有图片，显示添加按钮
            if (provider.imagePaths.isEmpty)
              GestureDetector(
                onTap: provider.pickImages,
                child: SizedBox(
                  width: 80,
                  height: 80,
                  child: Stack(
                    children: [
                      // 背景
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Theme.of(context).colorScheme.surface,
                        ),
                      ),
                      // 虚线边框
                      CustomPaint(
                        painter: _DashedBorderPainter(
                          color: Theme.of(context).colorScheme.outline,
                          strokeWidth: 1,
                          borderRadius: 8,
                          dashWidth: 4,
                          dashSpace: 4,
                        ),
                        size: const Size(80, 80),
                      ),
                      // 加号图标
                      Center(
                        child: Icon(
                          Icons.add,
                          size: 32,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ],
    );
  }

  Widget _buildImageItem(
    BuildContext context,
    String path,
    int index,
    ItemFormProvider provider,
  ) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: File(path).existsSync()
              ? Image.file(File(path), width: 80, height: 80, fit: BoxFit.cover)
              : Container(
                  width: 80,
                  height: 80,
                  color: Theme.of(context).colorScheme.surfaceContainerHighest,
                ),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: IconButton(
            icon: const Icon(Icons.close, size: 16),
            style: IconButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.errorContainer,
              foregroundColor: Theme.of(context).colorScheme.onErrorContainer,
              minimumSize: const Size(24, 24),
              padding: EdgeInsets.zero,
            ),
            onPressed: () => provider.removeImage(index),
          ),
        ),
      ],
    );
  }

  Widget _buildAlertSettingsSection(
    BuildContext context,
    ItemFormProvider provider,
  ) {
    // 无日期类型不显示提醒设置
    if (provider.itemType == ItemType.none) {
      return const SizedBox.shrink();
    }
    
    final l10n = AppLocalizations.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          l10n.alert_settings,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 16),
        SwitchListTile(
          title: Text(l10n.enable_alert),
          value: provider.enableAlert,
          onChanged: provider.setEnableAlert,
        ),
        if (provider.enableAlert) ...[
          const SizedBox(height: 12),
          Text(
            l10n.alert_method,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 8),
          SegmentedButton<int>(
            segments: [
              ButtonSegment<int>(
                value: 0,
                label: Text(l10n.alert_method_in_app),
              ),
              ButtonSegment<int>(
                value: 1,
                label: Text(l10n.alert_method_calendar),
              ),
              ButtonSegment<int>(value: 2, label: Text(l10n.alert_method_both)),
            ],
            selected: {provider.alertMethod},
            onSelectionChanged: (Set<int> newSelection) {
              provider.setAlertMethod(newSelection.first);
            },
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(child: Text(l10n.alert_days_before)),
              const SizedBox(width: 16),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: l10n.use_global_setting,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 10,
                    ),
                    isDense: true,
                  ),
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    if (value.isEmpty) {
                      provider.setAlertDaysBefore(null);
                    } else {
                      final days = int.tryParse(value);
                      if (days != null && days > 0) {
                        provider.setAlertDaysBefore(days);
                      }
                    }
                  },
                  controller: TextEditingController(
                    text: provider.alertDaysBefore?.toString() ?? '',
                  ),
                ),
              ),
            ],
          ),
        ],
      ],
    );
  }

  Widget _buildNotesSection(BuildContext context, ItemFormProvider provider) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('备注', style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 8),
        TextField(
          decoration: InputDecoration(
            hintText: '添加备注信息（选填）',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 16,
            ),
            isDense: true,
          ),
          maxLines: 3,
          onChanged: provider.setNotes,
          controller: TextEditingController(text: provider.notes ?? '')
            ..selection = TextSelection.fromPosition(
              TextPosition(offset: (provider.notes ?? '').length),
            ),
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 16),
        ),
      ],
    );
  }

  Widget _buildShelfLifeInputWithUnit({
    required BuildContext context,
    required ItemFormProvider provider,
  }) {
    // 从存储的月数和天数计算年、月、日
    final totalMonths = provider.shelfLifeMonths ?? 0;
    final days = provider.shelfLifeDays ?? 0;

    // 计算年、月（1年=12个月）
    final years = totalMonths ~/ 12;
    final remainingMonths = totalMonths % 12;

    return StatefulBuilder(
      builder: (context, setState) {
        // 本地状态和控制器
        int inputYears = years;
        int inputMonths = remainingMonths;
        int inputDays = days;

        final yearController = TextEditingController(
          text: inputYears.toString(),
        );
        final monthController = TextEditingController(
          text: inputMonths.toString(),
        );
        final dayController = TextEditingController(text: inputDays.toString());

        // 更新Provider的值
        void updateProvider() {
          final totalMonths = inputYears * 12 + inputMonths;
          provider.setShelfLifeMonths(totalMonths);
          provider.setShelfLifeDays(inputDays);
        }

        // 更新所有控制器的文本
        void updateControllers() {
          yearController.text = inputYears.toString();
          monthController.text = inputMonths.toString();
          dayController.text = inputDays.toString();
        }

        // 处理年输入变化
        void handleYearChange(String value) {
          final intValue = int.tryParse(value) ?? 0;
          if (intValue >= 0) {
            setState(() {
              inputYears = intValue;
            });
            updateProvider();
            updateControllers();
          }
        }

        // 处理月输入变化
        void handleMonthChange(String value) {
          final intValue = int.tryParse(value) ?? 0;
          if (intValue >= 0) {
            setState(() {
              inputMonths = intValue;
              // 如果月数超过11，自动转换为年
              if (inputMonths >= 12) {
                inputYears += inputMonths ~/ 12;
                inputMonths = inputMonths % 12;
              }
            });
            updateProvider();
            updateControllers();
          }
        }

        // 处理天输入变化
        void handleDayChange(String value) {
          final intValue = int.tryParse(value) ?? 0;
          if (intValue >= 0) {
            setState(() {
              inputDays = intValue;
              // 如果天数超过29，自动转换为月（按30天/月）
              if (inputDays >= 30) {
                final additionalMonths = inputDays ~/ 30;
                final remainingDays = inputDays % 30;

                // 先加到月数
                inputMonths += additionalMonths;
                inputDays = remainingDays;

                // 检查月数是否需要转换为年
                if (inputMonths >= 12) {
                  inputYears += inputMonths ~/ 12;
                  inputMonths = inputMonths % 12;
                }
              }
            });
            updateProvider();
            updateControllers();
          }
        }

        // 构建简单的数字输入框
        Widget buildSimpleNumberInput({
          required String label,
          required TextEditingController controller,
          required ValueChanged<String> onChanged,
        }) {
          return TextField(
            controller: controller,
            decoration: InputDecoration(
              labelText: label,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 16,
              ),
              isDense: true,
            ),
            keyboardType: TextInputType.number,
            onChanged: onChanged,
            onEditingComplete: () {
              // 离开输入框时触发换算
              final value = controller.text;
              onChanged(value);
            },
            textAlign: TextAlign.center,
            style: Theme.of(
              context,
            ).textTheme.bodyLarge?.copyWith(fontSize: 16),
          );
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 年、月、天输入
            Row(
              children: [
                Expanded(
                  child: buildSimpleNumberInput(
                    label: '年',
                    controller: yearController,
                    onChanged: handleYearChange,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: buildSimpleNumberInput(
                    label: '月',
                    controller: monthController,
                    onChanged: handleMonthChange,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: buildSimpleNumberInput(
                    label: '天',
                    controller: dayController,
                    onChanged: handleDayChange,
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }



  Widget _buildStyledDropdownButtonFormField<T>({
    required BuildContext context,
    required String label,
    required T? value,
    required List<DropdownMenuItem<T>> items,
    required void Function(T?) onChanged,
    IconData? icon,
    double? width,
  }) {
    // 查找选中的项目
    Widget? selectedChild;
    String? selectedText;

    for (final item in items) {
      if (item.value == value) {
        selectedChild = item.child;
        if (selectedChild is Text) {
          selectedText = selectedChild.data;
        }
        break;
      }
    }

    if (selectedChild == null && items.isNotEmpty) {
      selectedChild = items.first.child;
      if (selectedChild is Text) {
        selectedText = selectedChild.data;
      }
    }

    // 使用 GlobalKey 获取正确的 RenderBox
    final GlobalKey inkWellKey = GlobalKey();

    return SizedBox(
      width: width,
      child: InkWell(
        key: inkWellKey,
        onTap: () {
          // 使用当前上下文获取 RenderBox 和 MediaQuery
          final BuildContext? currentContext = inkWellKey.currentContext;
          if (currentContext == null) return;

          final RenderBox renderBox =
              currentContext.findRenderObject() as RenderBox;
          final position = renderBox.localToGlobal(Offset.zero);
          final size = renderBox.size;

          // 计算菜单宽度：使用输入框宽度减去图标宽度和左右内边距，限制在80-300之间
          final inputWidth = size.width;
          final leftPadding = 12.0; // contentPadding.horizontal
          final iconWidth = icon != null ? 48.0 : 0.0; // 图标区域宽度
          final menuWidth = inputWidth.isFinite
              ? (inputWidth - iconWidth - leftPadding * 2).clamp(80.0, 300.0)
              : 300.0;

          // 创建弹出菜单项，宽度与菜单匹配
          final menuItems = items.map((item) {
            return PopupMenuItem<T>(
              value: item.value,
              height: 48,
              child: SizedBox(width: menuWidth, child: item.child),
            );
          }).toList();

          // 获取屏幕尺寸
          final screenSize = MediaQuery.of(currentContext).size;

          // 计算内容区域的左侧偏移量
          // 对于有图标的输入框（地点、分类），左侧从图标右侧开始
          // 对于没有图标的输入框（单位、货币），左侧从边框内侧开始
          final contentLeft = position.dx + iconWidth + leftPadding;

          // 计算菜单右侧位置
          final menuRight = contentLeft + menuWidth;

          // 检查下方是否有足够空间显示菜单
          final availableSpaceBelow =
              screenSize.height - (position.dy + size.height);
          final maxMenuHeight = 240.0; // 最大菜单高度
          final itemCount = menuItems.length;
          final menuHeight = (itemCount * 48.0).clamp(0.0, maxMenuHeight);
          final showBelow = availableSpaceBelow >= menuHeight;

          // 计算菜单位置
          final menuTop = showBelow
              ? position.dy +
                    size
                        .height // 显示在输入框下方
              : position.dy - menuHeight; // 显示在输入框上方

          final menuBottom = showBelow
              ? screenSize
                    .height // 菜单可以向下扩展到屏幕底部
              : position.dy; // 菜单顶部到输入框顶部

          showMenu<T>(
            context: currentContext,
            position: RelativeRect.fromLTRB(
              contentLeft,
              menuTop,
              menuRight,
              menuBottom,
            ),
            constraints: BoxConstraints(
              maxHeight: 240, // 5 * 48 = 240，最多显示5项
              minWidth: 80, // 最小宽度
              maxWidth: menuWidth, // 宽度与输入框匹配
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 4,
            items: menuItems,
          ).then((selectedValue) {
            if (selectedValue != null) {
              onChanged(selectedValue);
            }
          });
        },
        borderRadius: BorderRadius.circular(12),
        child: InputDecorator(
          decoration: InputDecoration(
            labelText: label,
            prefixIcon: icon != null ? Icon(icon) : null,
            suffixIcon: Icon(Icons.arrow_drop_down),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 16,
            ),
            isDense: true,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: selectedChild != null
                    ? Align(alignment: Alignment.center, child: selectedChild)
                    : Text(
                        selectedText ?? label,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: Theme.of(
                          context,
                        ).textTheme.bodyLarge?.copyWith(fontSize: 16),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }


}

class _DashedBorderPainter extends CustomPainter {
  final Color color;
  final double strokeWidth;
  final double borderRadius;
  final double dashWidth;
  final double dashSpace;

  _DashedBorderPainter({
    required this.color,
    this.strokeWidth = 1,
    this.borderRadius = 0,
    this.dashWidth = 4,
    this.dashSpace = 4,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.square;

    final rect = Rect.fromLTWH(
      strokeWidth / 2,
      strokeWidth / 2,
      size.width - strokeWidth,
      size.height - strokeWidth,
    );

    final rrect = RRect.fromRectAndRadius(rect, Radius.circular(borderRadius));

    // 绘制虚线边框
    final path = Path()..addRRect(rrect);
    final metrics = path.computeMetrics();

    for (final metric in metrics) {
      double distance = 0;
      while (distance < metric.length) {
        final start =
            metric.getTangentForOffset(distance)?.position ?? Offset.zero;
        final end =
            metric.getTangentForOffset(distance + dashWidth)?.position ??
            Offset.zero;

        if (distance + dashWidth <= metric.length) {
          canvas.drawLine(start, end, paint);
        }

        distance += dashWidth + dashSpace;
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
