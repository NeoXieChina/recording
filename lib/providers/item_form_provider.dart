import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:recording/constants.dart';
import 'package:recording/data/datasources/app_database.dart';
import 'package:recording/data/models/item.dart';

class ItemFormProvider extends ChangeNotifier {
  final AppDatabase _db = AppDatabase();

  String? _editingId;
  String name = '';
  String category = '其他';
  ItemType itemType = ItemType.consumable;
  int quantity = 1;
  String unit = '个';
  double unitPrice = 0.0;
  DateTime? expiryDate;
  DateTime? warrantyDate;
  List<String> imagePaths = [];
  String? notes;

  bool _isSaving = false;

  bool get isSaving => _isSaving;

  String? nameError;
  String? quantityError;
  String? unitPriceError;
  String? dateError;

  double get totalPrice => unitPrice * quantity;

  bool get isEditing => _editingId != null;

  void setItemType(ItemType type) {
    itemType = type;
    if (type == ItemType.consumable) {
      warrantyDate = null;
    } else {
      expiryDate = null;
    }
    clearErrors();
    notifyListeners();
  }

  void setName(String value) {
    name = value;
    nameError = null;
    notifyListeners();
  }

  void setCategory(String value) {
    category = value;
    notifyListeners();
  }

  void setQuantity(int value) {
    quantity = value;
    quantityError = null;
    notifyListeners();
  }

  void setUnit(String value) {
    unit = value;
    notifyListeners();
  }

  void setUnitPrice(double value) {
    unitPrice = value;
    unitPriceError = null;
    notifyListeners();
  }

  void setExpiryDate(DateTime? value) {
    expiryDate = value;
    dateError = null;
    notifyListeners();
  }

  void setWarrantyDate(DateTime? value) {
    warrantyDate = value;
    dateError = null;
    notifyListeners();
  }

  void setNotes(String? value) {
    notes = value;
    notifyListeners();
  }

  Future<void> pickImages() async {
    final picker = ImagePicker();
    final images = await picker.pickMultiImage(
      imageQuality: AppConstants.imageQuality,
    );
    if (images.isEmpty) return;

    final appDir = await getApplicationDocumentsDirectory();
    final imageDir = Directory('${appDir.path}/${AppConstants.imageDirectory}');
    if (!imageDir.existsSync()) {
      imageDir.createSync(recursive: true);
    }

    for (final xFile in images) {
      final fileName =
          '${DateTime.now().millisecondsSinceEpoch}_${p.basename(xFile.path)}';
      final destPath = '${imageDir.path}/$fileName';
      await File(xFile.path).copy(destPath);
      imagePaths.add(destPath);
    }
    notifyListeners();
  }

  void removeImage(int index) {
    if (index >= 0 && index < imagePaths.length) {
      final path = imagePaths[index];
      final file = File(path);
      if (file.existsSync()) file.deleteSync();
      imagePaths.removeAt(index);
      notifyListeners();
    }
  }

  void loadItem(Item item) {
    _editingId = item.id;
    name = item.name;
    category = item.category;
    itemType = item.itemType;
    quantity = item.quantity;
    unit = item.unit;
    unitPrice = item.unitPrice;
    expiryDate = item.expiryDate;
    warrantyDate = item.warrantyDate;
    imagePaths = List.from(item.imagePaths);
    notes = item.notes;
    clearErrors();
    notifyListeners();
  }

  void reset() {
    _editingId = null;
    name = '';
    category = '其他';
    itemType = ItemType.consumable;
    quantity = 1;
    unit = '个';
    unitPrice = 0.0;
    expiryDate = null;
    warrantyDate = null;
    imagePaths = [];
    notes = null;
    clearErrors();
    notifyListeners();
  }

  void clearErrors() {
    nameError = null;
    quantityError = null;
    unitPriceError = null;
    dateError = null;
  }

  bool validate() {
    clearErrors();
    bool isValid = true;

    if (name.trim().isEmpty) {
      nameError = '物品名称不能为空';
      isValid = false;
    } else if (name.length > AppConstants.maxNameLength) {
      nameError = '名称不能超过${AppConstants.maxNameLength}个字符';
      isValid = false;
    }

    if (quantity < AppConstants.minQuantity) {
      quantityError = '数量不能小于${AppConstants.minQuantity}';
      isValid = false;
    } else if (quantity > AppConstants.maxQuantity) {
      quantityError = '数量不能超过${AppConstants.maxQuantity}';
      isValid = false;
    }

    if (unitPrice < AppConstants.minUnitPrice) {
      unitPriceError = '单价不能为负数';
      isValid = false;
    } else if (unitPrice > AppConstants.maxUnitPrice) {
      unitPriceError = '单价不能超过${AppConstants.maxUnitPrice}';
      isValid = false;
    }

    if (itemType == ItemType.consumable && expiryDate == null) {
      dateError = '请选择有效期';
      isValid = false;
    }
    if (itemType == ItemType.durable && warrantyDate == null) {
      dateError = '请选择保修期';
      isValid = false;
    }

    notifyListeners();
    return isValid;
  }

  Future<Item?> save() async {
    if (!validate()) return null;

    _isSaving = true;
    notifyListeners();

    try {
      final item = Item(
        id: _editingId,
        name: name.trim(),
        category: category,
        itemType: itemType,
        quantity: quantity,
        unit: unit,
        unitPrice: unitPrice,
        expiryDate: expiryDate,
        warrantyDate: warrantyDate,
        imagePaths: imagePaths,
        notes: notes?.trim().isNotEmpty == true ? notes!.trim() : null,
      );

      if (_editingId != null) {
        await _db.updateItem(item);
      } else {
        await _db.insertItem(item);
      }

      _isSaving = false;
      notifyListeners();
      return item;
    } catch (e) {
      _isSaving = false;
      notifyListeners();
      return null;
    }
  }
}
