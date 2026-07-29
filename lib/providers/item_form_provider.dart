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
  DateTime? purchaseDate;
  DateTime? productionDate;
  int? shelfLifeMonths;
  int? shelfLifeDays;
  bool usePurchaseDateForCalculation = false;
  bool useProductionDateForCalculation = false;
  bool useManualDateEntry = false; // true表示手动输入最终日期，false表示自动计算
  String storageLocation = '';
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
    // 用户手动选择日期，设置为手动输入模式
    if (value != null) {
      useManualDateEntry = true;
      usePurchaseDateForCalculation = false;
      useProductionDateForCalculation = false;
    }
    notifyListeners();
  }

  void setWarrantyDate(DateTime? value) {
    warrantyDate = value;
    dateError = null;
    // 用户手动选择日期，设置为手动输入模式
    if (value != null) {
      useManualDateEntry = true;
      usePurchaseDateForCalculation = false;
      useProductionDateForCalculation = false;
    }
    notifyListeners();
  }

  void setPurchaseDate(DateTime? value) {
    purchaseDate = value;
    if (value != null && (usePurchaseDateForCalculation || useProductionDateForCalculation)) {
      useManualDateEntry = false;
    }
    _calculateExpiryOrWarrantyDate();
    notifyListeners();
  }

  void setProductionDate(DateTime? value) {
    productionDate = value;
    if (value != null && (usePurchaseDateForCalculation || useProductionDateForCalculation)) {
      useManualDateEntry = false;
    }
    _calculateExpiryOrWarrantyDate();
    notifyListeners();
  }

  void setShelfLifeMonths(int? value) {
    shelfLifeMonths = value;
    if (value != null && (usePurchaseDateForCalculation || useProductionDateForCalculation)) {
      useManualDateEntry = false;
    }
    _calculateExpiryOrWarrantyDate();
    notifyListeners();
  }

  void setShelfLifeDays(int? value) {
    shelfLifeDays = value;
    if (value != null && (usePurchaseDateForCalculation || useProductionDateForCalculation)) {
      useManualDateEntry = false;
    }
    _calculateExpiryOrWarrantyDate();
    notifyListeners();
  }

  void setUsePurchaseDateForCalculation(bool value) {
    usePurchaseDateForCalculation = value;
    if (value) {
      useProductionDateForCalculation = false;
      useManualDateEntry = false;
    }
    _calculateExpiryOrWarrantyDate();
    notifyListeners();
  }

  void setUseProductionDateForCalculation(bool value) {
    useProductionDateForCalculation = value;
    if (value) {
      usePurchaseDateForCalculation = false;
      useManualDateEntry = false;
    }
    _calculateExpiryOrWarrantyDate();
    notifyListeners();
  }

  void setUseManualDateEntry(bool value) {
    useManualDateEntry = value;
    // 如果切换到手动输入，清除自动计算标志
    if (value) {
      usePurchaseDateForCalculation = false;
      useProductionDateForCalculation = false;
    }
    notifyListeners();
  }

  void setStorageLocation(String value) {
    storageLocation = value;
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
    purchaseDate = item.purchaseDate;
    productionDate = item.productionDate;
    shelfLifeMonths = item.shelfLifeMonths;
    shelfLifeDays = item.shelfLifeDays;
    usePurchaseDateForCalculation = item.usePurchaseDateForCalculation;
    useProductionDateForCalculation = item.useProductionDateForCalculation;
    useManualDateEntry = !item.usePurchaseDateForCalculation && !item.useProductionDateForCalculation;
    storageLocation = item.storageLocation;
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
    purchaseDate = null;
    productionDate = null;
    shelfLifeMonths = null;
    shelfLifeDays = null;
    usePurchaseDateForCalculation = false;
    useProductionDateForCalculation = false;
    useManualDateEntry = false;
    storageLocation = '';
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

    if (itemType == ItemType.consumable) {
      if (useManualDateEntry) {
        // 手动输入模式：检查是否选择了有效期
        if (expiryDate == null) {
          dateError = '请选择有效期';
          isValid = false;
        }
      } else {
        // 自动计算模式：检查是否有足够的计算信息
        if (expiryDate == null && !_canCalculateExpiryDate()) {
          dateError = '请设置购买/生产日期和保质期来自动计算有效期';
          isValid = false;
        }
      }
    }
    if (itemType == ItemType.durable) {
      if (useManualDateEntry) {
        // 手动输入模式：检查是否选择了保修期
        if (warrantyDate == null) {
          dateError = '请选择保修期';
          isValid = false;
        }
      } else {
        // 自动计算模式：检查是否有足够的计算信息
        if (warrantyDate == null && !_canCalculateWarrantyDate()) {
          dateError = '请设置购买/生产日期和保质期来自动计算保修期';
          isValid = false;
        }
      }
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
        purchaseDate: purchaseDate,
        productionDate: productionDate,
        shelfLifeMonths: shelfLifeMonths,
        shelfLifeDays: shelfLifeDays,
        usePurchaseDateForCalculation: usePurchaseDateForCalculation,
        useProductionDateForCalculation: useProductionDateForCalculation,
        storageLocation: storageLocation,
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

  void _calculateExpiryOrWarrantyDate() {
    if (itemType == ItemType.consumable) {
      _calculateExpiryDate();
    } else {
      _calculateWarrantyDate();
    }
  }

  void _calculateExpiryDate() {
    if (!usePurchaseDateForCalculation && !useProductionDateForCalculation) {
      return;
    }

    DateTime? baseDate;
    if (usePurchaseDateForCalculation && purchaseDate != null) {
      baseDate = purchaseDate;
    } else if (useProductionDateForCalculation && productionDate != null) {
      baseDate = productionDate;
    }

    if (baseDate != null &&
        (shelfLifeMonths != null || shelfLifeDays != null)) {
      DateTime calculatedDate = baseDate;
      if (shelfLifeMonths != null && shelfLifeMonths! > 0) {
        calculatedDate = DateTime(
          calculatedDate.year,
          calculatedDate.month + shelfLifeMonths!,
          calculatedDate.day,
        );
      }
      if (shelfLifeDays != null && shelfLifeDays! > 0) {
        calculatedDate = calculatedDate.add(Duration(days: shelfLifeDays!));
      }
      expiryDate = calculatedDate;
    }
  }

  void _calculateWarrantyDate() {
    if (!usePurchaseDateForCalculation && !useProductionDateForCalculation) {
      return;
    }

    DateTime? baseDate;
    if (usePurchaseDateForCalculation && purchaseDate != null) {
      baseDate = purchaseDate;
    } else if (useProductionDateForCalculation && productionDate != null) {
      baseDate = productionDate;
    }

    if (baseDate != null &&
        (shelfLifeMonths != null || shelfLifeDays != null)) {
      DateTime calculatedDate = baseDate;
      if (shelfLifeMonths != null && shelfLifeMonths! > 0) {
        calculatedDate = DateTime(
          calculatedDate.year,
          calculatedDate.month + shelfLifeMonths!,
          calculatedDate.day,
        );
      }
      if (shelfLifeDays != null && shelfLifeDays! > 0) {
        calculatedDate = calculatedDate.add(Duration(days: shelfLifeDays!));
      }
      warrantyDate = calculatedDate;
    }
  }

  bool _canCalculateExpiryDate() {
    if (usePurchaseDateForCalculation &&
        purchaseDate != null &&
        (shelfLifeMonths != null || shelfLifeDays != null)) {
      return true;
    }
    if (useProductionDateForCalculation &&
        productionDate != null &&
        (shelfLifeMonths != null || shelfLifeDays != null)) {
      return true;
    }
    return false;
  }

  bool _canCalculateWarrantyDate() {
    if (usePurchaseDateForCalculation &&
        purchaseDate != null &&
        (shelfLifeMonths != null || shelfLifeDays != null)) {
      return true;
    }
    if (useProductionDateForCalculation &&
        productionDate != null &&
        (shelfLifeMonths != null || shelfLifeDays != null)) {
      return true;
    }
    return false;
  }
}
