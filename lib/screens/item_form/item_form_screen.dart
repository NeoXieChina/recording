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
        DropdownButtonFormField<String>(
          initialValue: provider.category,
          decoration: InputDecoration(
            labelText: '物品分类',
            prefixIcon: const Icon(Icons.category),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          ),
          items: AppConstants.itemCategories
              .map((c) => DropdownMenuItem(value: c, child: Text(c)))
              .toList(),
          onChanged: (v) {
            if (v != null) provider.setCategory(v);
          },
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  labelText: '数量',
                  errorText: provider.quantityError,
                  prefixIcon: const Icon(Icons.numbers),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                keyboardType: TextInputType.number,
                onChanged: (v) {
                  final n = int.tryParse(v);
                  if (n != null) provider.setQuantity(n);
                },
                controller: TextEditingController(
                  text: provider.quantity.toString(),
                ),
              ),
            ),
            const SizedBox(width: 16),
            SizedBox(
              width: 80,
              child: DropdownButtonFormField<String>(
                initialValue: provider.unit,
                decoration: InputDecoration(
                  labelText: '单位',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                items: const ['个', '件', '箱', '包', '瓶', '盒', '套', 'kg', 'g', 'L']
                    .map((u) => DropdownMenuItem(value: u, child: Text(u)))
                    .toList(),
                onChanged: (v) {
                  if (v != null) provider.setUnit(v);
                },
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  labelText: '单价',
                  errorText: provider.unitPriceError,
                  prefixIcon: const Icon(Icons.attach_money),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
                onChanged: (v) {
                  final n = double.tryParse(v);
                  if (n != null) provider.setUnitPrice(n);
                },
                controller: TextEditingController(
                  text: provider.unitPrice == 0
                      ? ''
                      : provider.unitPrice.toStringAsFixed(2),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Center(
          child: Text(
            '总价：${FormatUtils.formatPrice(provider.totalPrice)}',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.bold,
            ),
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
        if (provider.itemType == ItemType.consumable) ...[
          _buildDatePicker(
            context: context,
            label: '有效期',
            icon: Icons.event,
            date: provider.expiryDate,
            errorText: provider.dateError,
            onPicked: provider.setExpiryDate,
          ),
        ] else ...[
          _buildDatePicker(
            context: context,
            label: '保修到期日',
            icon: Icons.verified_user,
            date: provider.warrantyDate,
            errorText: provider.dateError,
            onPicked: provider.setWarrantyDate,
          ),
        ],
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
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () async {
            final picked = await showDatePicker(
              context: context,
              initialDate: date ?? DateTime.now(),
              firstDate: DateTime(2000),
              lastDate: DateTime(2100),
            );
            onPicked(picked);
          },
          borderRadius: BorderRadius.circular(12),
          child: InputDecorator(
            decoration: InputDecoration(
              labelText: label,
              prefixIcon: Icon(icon),
              errorText: errorText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Text(
              date != null ? FormatUtils.formatDate(date) : '请选择日期',
              style: date != null
                  ? null
                  : TextStyle(color: Theme.of(context).hintColor),
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
