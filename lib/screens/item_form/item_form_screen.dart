import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recording/constants.dart';
import 'package:recording/data/models/item.dart';
import 'package:recording/providers/item_form_provider.dart';
import 'package:recording/utils/format.dart';

class ItemFormScreen extends StatelessWidget {
  final Item? item;

  const ItemFormScreen({super.key, this.item});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) {
        final provider = ItemFormProvider();
        if (item != null) provider.loadItem(item!);
        return provider;
      },
      child: Consumer<ItemFormProvider>(
        builder: (context, provider, _) {
          return Scaffold(
            appBar: AppBar(title: Text(provider.isEditing ? '编辑物品' : '添加物品')),
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
                  _buildNotesSection(context, provider),
                  const SizedBox(height: 32),
                  _buildSaveButton(context, provider),
                  const SizedBox(height: 32),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildCategoryInput({
    required BuildContext context,
    required String value,
    required ValueChanged<String> onChanged,
  }) {
    final predefinedCategories = AppConstants.itemCategories;
    final hasCustomCategory =
        !predefinedCategories.contains(value) && value.isNotEmpty;

    return DropdownButtonFormField<String>(
      isExpanded: true,
      initialValue: hasCustomCategory ? 'custom' : value,
      decoration: InputDecoration(
        labelText: '物品分类',
        prefixIcon: const Icon(Icons.category),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      ),
      items: [
        ...predefinedCategories.map(
          (c) => DropdownMenuItem(
            value: c,
            child: Text(
              c,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        const DropdownMenuItem(
          value: 'custom',
          child: Text(
            '自定义分类',
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
      onChanged: (v) {
        if (v != null) {
          if (v == 'custom') {
            // 显示自定义输入对话框
            _showCustomCategoryDialog(context, value, onChanged);
          } else {
            onChanged(v);
          }
        }
      },
    );
  }

  void _showCustomCategoryDialog(
    BuildContext context,
    String currentValue,
    ValueChanged<String> onChanged,
  ) {
    final controller = TextEditingController(text: currentValue);
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('自定义分类'),
        content: TextField(
          controller: controller,
          decoration: const InputDecoration(hintText: '请输入分类名称'),
          autofocus: true,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('取消'),
          ),
          TextButton(
            onPressed: () {
              final newValue = controller.text.trim();
              if (newValue.isNotEmpty) {
                onChanged(newValue);
              }
              Navigator.pop(context);
            },
            child: const Text('确定'),
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
    final hasCustomUnit = !predefinedUnits.contains(value) && value.isNotEmpty;

    return DropdownButtonFormField<String>(
      isExpanded: true,
      initialValue: hasCustomUnit ? 'custom' : value,
      decoration: InputDecoration(
        labelText: '单位',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      ),
      items: [
        ...predefinedUnits.map((u) => DropdownMenuItem(
          value: u,
          child: Text(
            u,
            overflow: TextOverflow.ellipsis,
          ),
        )),
        const DropdownMenuItem(
          value: 'custom',
          child: Text(
            '自定义',
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
      onChanged: (v) {
        if (v != null) {
          if (v == 'custom') {
            // 显示自定义输入对话框
            _showCustomUnitDialog(context, value, onChanged);
          } else {
            onChanged(v);
          }
        }
      },
    );
  }

  void _showCustomUnitDialog(
    BuildContext context,
    String currentValue,
    ValueChanged<String> onChanged,
  ) {
    final controller = TextEditingController(text: currentValue);
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('自定义单位'),
        content: TextField(
          controller: controller,
          decoration: const InputDecoration(hintText: '请输入单位'),
          autofocus: true,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('取消'),
          ),
          TextButton(
            onPressed: () {
              final newValue = controller.text.trim();
              if (newValue.isNotEmpty) {
                onChanged(newValue);
              }
              Navigator.pop(context);
            },
            child: const Text('确定'),
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
              icon: const Icon(Icons.remove, size: 18),
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
            Icon(icon, size: 20),
            const SizedBox(width: 4),
          ],
        ),
        suffixIcon: IconButton(
          icon: const Icon(Icons.add, size: 18),
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
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      keyboardType: TextInputType.numberWithOptions(decimal: !isInteger),
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

  Widget _buildBasicInfoSection(
    BuildContext context,
    ItemFormProvider provider,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('基础信息', style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 16),
        TextField(
          decoration: InputDecoration(
            labelText: '物品名称',
            hintText: '请输入物品名称',
            errorText: provider.nameError,
            prefixIcon: const Icon(Icons.label),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          ),
          onChanged: provider.setName,
          controller: TextEditingController(text: provider.name)
            ..selection = TextSelection.fromPosition(
              TextPosition(offset: provider.name.length),
            ),
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
              flex: 3,
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
            const SizedBox(width: 12),
            Expanded(
              flex: 2,
              child: DropdownButtonFormField<String>(
                isExpanded: true,
                initialValue: provider.currencySymbol,
                decoration: InputDecoration(
                  labelText: '货币',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                ),
                items: AppConstants.currencySymbols.map((symbol) {
                  return DropdownMenuItem(
                    value: symbol,
                    child: Text(
                      symbol,
                      overflow: TextOverflow.ellipsis,
                    ),
                  );
                }).toList(),
                onChanged: (value) {
                  if (value != null) {
                    provider.setCurrencySymbol(value);
                  }
                },
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
        TextField(
          decoration: InputDecoration(
            labelText: '存储地点',
            hintText: '请输入物品存储地点（如：厨房柜子、书房抽屉）',
            prefixIcon: const Icon(Icons.location_on),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          ),
          onChanged: provider.setStorageLocation,
          controller: TextEditingController(text: provider.storageLocation)
            ..selection = TextSelection.fromPosition(
              TextPosition(offset: provider.storageLocation.length),
            ),
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
          ],
          selected: {provider.itemType},
          onSelectionChanged: (s) => provider.setItemType(s.first),
        ),
        const SizedBox(height: 16),
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
          onPicked: isConsumable ? provider.setProductionDate : provider.setPurchaseDate,
          showClearButton: true,
        ),
        const SizedBox(height: 16),

        // 保质期输入
        _buildShelfLifeInputWithUnit(
          context: context,
          provider: provider,
        ),
        const SizedBox(height: 12),

        // 最终日期显示（自动计算，只读）
        _buildDatePicker(
          context: context,
          label: dateLabel,
          icon: dateIcon,
          date: isConsumable ? provider.expiryDate : provider.warrantyDate,
          errorText: provider.dateError,
          onPicked: isConsumable ? provider.setExpiryDate : provider.setWarrantyDate,
          readOnly: true, // 总是只读，因为自动计算
          showClearButton: false, // 不显示清除按钮
          minDate: isConsumable ? provider.productionDate : provider.purchaseDate,
        ),
        
        // 自动计算提示
        if (isConsumable ? provider.productionDate != null : provider.purchaseDate != null)
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
                  if (!readOnly) ...[
                    IconButton(
                      icon: const Icon(Icons.chevron_left, size: 20),
                      onPressed: () => adjustDate(-1),
                      style: IconButton.styleFrom(
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        padding: const EdgeInsets.all(4),
                        minimumSize: const Size(32, 32),
                      ),
                    ),
                    const SizedBox(width: 4),
                  ],
                  Icon(icon, size: 20),
                  if (!readOnly) ...[
                    const SizedBox(width: 4),
                    IconButton(
                      icon: const Icon(Icons.chevron_right, size: 20),
                      onPressed: () => adjustDate(1),
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
              suffixIcon: showClearButton && date != null && !readOnly
                  ? IconButton(
                      icon: const Icon(Icons.clear, size: 16),
                      onPressed: () => onPicked(null),
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(
                        minWidth: 24,
                        minHeight: 24,
                      ),
                    )
                  : null,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    FormatUtils.formatDate(currentDate),
                    style: TextStyle(
                      color: date != null 
                          ? null 
                          : Theme.of(context).hintColor,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                if (readOnly && date != null)
                  const Icon(Icons.calculate, size: 16, color: Colors.green),
              ],
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
            ActionChip(
              avatar: const Icon(Icons.add_photo_alternate),
              label: const Text('添加图片'),
              onPressed: provider.pickImages,
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

  Widget _buildNotesSection(BuildContext context, ItemFormProvider provider) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('备注', style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 8),
        TextField(
          decoration: InputDecoration(
            hintText: '添加备注信息（选填）',
            prefixIcon: const Icon(Icons.notes),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          ),
          maxLines: 3,
          onChanged: provider.setNotes,
          controller: TextEditingController(text: provider.notes ?? '')
            ..selection = TextSelection.fromPosition(
              TextPosition(offset: (provider.notes ?? '').length),
            ),
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
        
        final yearController = TextEditingController(text: inputYears.toString());
        final monthController = TextEditingController(text: inputMonths.toString());
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
              contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
            ),
            keyboardType: TextInputType.number,
            onChanged: onChanged,
            onEditingComplete: () {
              // 离开输入框时触发换算
              final value = controller.text;
              onChanged(value);
            },
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
  


  Widget _buildSaveButton(BuildContext context, ItemFormProvider provider) {
    return SizedBox(
      width: double.infinity,
      child: FilledButton(
        onPressed: provider.isSaving
            ? null
            : () async {
                final item = await provider.save();
                if (item != null && context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(provider.isEditing ? '物品已更新' : '物品已添加'),
                    ),
                  );
                  Navigator.pop(context);
                }
              },
        style: FilledButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: provider.isSaving
            ? const SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(strokeWidth: 2),
              )
            : const Text('保存'),
      ),
    );
  }
}
