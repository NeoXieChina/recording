import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image/image.dart' as img;
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:recording/constants.dart';
import 'package:recording/data/datasources/app_database.dart';
import 'package:recording/data/models/item.dart';
import 'package:recording/generated/l10n/app_localizations.dart';

class ItemFormProvider extends ChangeNotifier {
  final AppDatabase _db = AppDatabase();

  String? _editingId;
  String name = '';
  String category = '';
  ItemType itemType = ItemType.consumable;
  int quantity = 1;
  String unit = '个';
  double unitPrice = 0.0;
  String currencySymbol = AppConstants.currencySymbol;
  DateTime? expiryDate;
  DateTime? warrantyDate;
  DateTime? purchaseDate;
  DateTime? productionDate;
  int? shelfLifeMonths;
  int? shelfLifeDays;
  bool usePurchaseDateForCalculation = false;
  bool useProductionDateForCalculation = false;
  bool useManualDateEntry = false; // true表示手动输入最终日期，false表示自动计算
  bool noShelfLife = false; // true表示无保质期/保修期
  bool noDate = false; // true表示无日期（隐藏所有日期相关输入）
  String storageLocation = '';
  String barcode = '';
  List<String> imagePaths = [];
  String? notes;
  bool enableAlert = true;
  int alertMethod = 0; // 0: 仅应用内, 1: 仅日历, 2: 两者
  int? alertDaysBefore;

  bool _isSaving = false;
  bool _isDirty = false;

  bool get isSaving => _isSaving;
  bool get isDirty => _isDirty;

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
      noDate = false;
      noShelfLife = false; // 消耗品必须有保质期
    } else if (type == ItemType.durable) {
      expiryDate = null;
      noDate = false;
      noShelfLife = false; // 耐用品必须有保修期
    } else if (type == ItemType.none) {
      // 无日期选项：清除所有日期相关字段
      expiryDate = null;
      warrantyDate = null;
      purchaseDate = null;
      productionDate = null;
      shelfLifeMonths = null;
      shelfLifeDays = null;
      noDate = true;
      noShelfLife = true; // 无日期类型无保质期
      enableAlert = false; // 无日期类型禁用提醒
    }
    clearErrors();
    markDirty();
    notifyListeners();
  }

  void setName(String value) {
    name = value;
    nameError = null;
    markDirty();
    notifyListeners();
  }

  void setCategory(String value) {
    category = value;
    markDirty();
    notifyListeners();
  }

  void setQuantity(int value) {
    quantity = value;
    quantityError = null;
    markDirty();
    notifyListeners();
  }

  void setUnit(String value) {
    unit = value;
    markDirty();
    notifyListeners();
  }

  void setUnitPrice(double value) {
    unitPrice = value;
    unitPriceError = null;
    markDirty();
    notifyListeners();
  }

  void setCurrencySymbol(String value) {
    currencySymbol = value;
    markDirty();
    notifyListeners();
  }

  void setExpiryDate(DateTime? value) {
    expiryDate = value;
    // 手动设置有效期时，启用手动输入模式
    useManualDateEntry = true;
    markDirty();
    notifyListeners();
  }

  void setWarrantyDate(DateTime? value) {
    warrantyDate = value;
    // 手动设置保修期时，启用手动输入模式
    useManualDateEntry = true;
    markDirty();
    notifyListeners();
  }

  void setPurchaseDate(DateTime? value) {
    purchaseDate = value;
    // 切换到自动计算模式
    usePurchaseDateForCalculation = value != null;
    useProductionDateForCalculation = false;
    useManualDateEntry = false;
    _calculateExpiryOrWarrantyDate();
    markDirty();
    notifyListeners();
  }

  void setProductionDate(DateTime? value) {
    productionDate = value;
    // 切换到自动计算模式
    useProductionDateForCalculation = value != null;
    usePurchaseDateForCalculation = false;
    useManualDateEntry = false;
    _calculateExpiryOrWarrantyDate();
    markDirty();
    notifyListeners();
  }

  void setShelfLifeMonths(int? value) {
    shelfLifeMonths = value;
    // 切换到自动计算模式
    useManualDateEntry = false;
    _calculateExpiryOrWarrantyDate();
    markDirty();
    notifyListeners();
  }

  void setShelfLifeDays(int? value) {
    shelfLifeDays = value;
    // 切换到自动计算模式
    useManualDateEntry = false;
    _calculateExpiryOrWarrantyDate();
    markDirty();
    notifyListeners();
  }

  void setStorageLocation(String value) {
    storageLocation = value;
    markDirty();
    notifyListeners();
  }

  void setBarcode(String value) {
    barcode = value;
    markDirty();
    notifyListeners();
  }

  void setNotes(String? value) {
    notes = value;
    markDirty();
    notifyListeners();
  }

  void setEnableAlert(bool value) {
    if (noShelfLife && value) {
      // 无保质期时不允许启用提醒
      return;
    }
    enableAlert = value;
    markDirty();
    notifyListeners();
  }

  void setAlertMethod(int value) {
    alertMethod = value;
    markDirty();
    notifyListeners();
  }

  void setAlertDaysBefore(int? value) {
    alertDaysBefore = value;
    notifyListeners();
  }

  void setUseManualDateEntry(bool value) {
    useManualDateEntry = value;
    // 如果切换到自动模式，重新计算日期
    if (!value) {
      _calculateExpiryOrWarrantyDate();
    }
    markDirty();
    notifyListeners();
  }

  void setNoShelfLife(bool value) {
    // 只有无日期类型可以设置无保质期
    if (itemType == ItemType.none) {
      noShelfLife = value;
      if (value) {
        // 清除保质期相关字段
        shelfLifeMonths = null;
        shelfLifeDays = null;
        expiryDate = null;
        warrantyDate = null;
        // 切换到自动计算模式（无保质期意味着无需计算）
        useManualDateEntry = false;
        // 无保质期时自动禁用提醒
        enableAlert = false;
      }
      markDirty();
      notifyListeners();
    }
    // 消耗品和耐用品不允许设置无保质期
  }

  Future<void> pickImages() async {
    final picker = ImagePicker();
    final images = await picker.pickMultiImage(
      imageQuality: AppConstants.imageQuality,
    );
    if (images.isEmpty) return;

    // 只取第一张图片，限制最多1张
    final xFile = images.first;

    final appDir = await getApplicationDocumentsDirectory();
    final imageDir = Directory('${appDir.path}/${AppConstants.imageDirectory}');
    if (!imageDir.existsSync()) {
      imageDir.createSync(recursive: true);
    }

    // 如果已有图片，先删除旧图片
    if (imagePaths.isNotEmpty) {
      for (final path in imagePaths) {
        final file = File(path);
        if (file.existsSync()) file.deleteSync();
      }
      imagePaths.clear();
    }

    final fileName =
        '${DateTime.now().millisecondsSinceEpoch}_${p.basename(xFile.path)}';
    final destPath = '${imageDir.path}/$fileName';

    try {
      // 读取原始图片
      final originalBytes = await File(xFile.path).readAsBytes();
      final originalImage = img.decodeImage(originalBytes);

      if (originalImage != null) {
        // 计算缩放尺寸，保持宽高比，限制最大尺寸为720p（1280x720）
        final maxWidth = AppConstants.imageMaxWidth;
        final maxHeight = AppConstants.imageMaxHeight;

        int targetWidth = originalImage.width;
        int targetHeight = originalImage.height;

        // 如果图片宽度超过最大宽度，按比例缩放
        if (targetWidth > maxWidth) {
          final ratio = maxWidth / targetWidth;
          targetWidth = maxWidth;
          targetHeight = (targetHeight * ratio).round();
        }

        // 如果缩放后高度超过最大高度，再次按比例缩放
        if (targetHeight > maxHeight) {
          final ratio = maxHeight / targetHeight;
          targetHeight = maxHeight;
          targetWidth = (targetWidth * ratio).round();
        }

        // 如果图片尺寸已经小于最大尺寸，保持原尺寸
        if (targetWidth < originalImage.width ||
            targetHeight < originalImage.height) {
          final resizedImage = img.copyResize(
            originalImage,
            width: targetWidth,
            height: targetHeight,
            maintainAspect: true,
          );

          // 保存为JPEG格式，使用指定质量
          final compressedBytes = img.encodeJpg(
            resizedImage,
            quality: AppConstants.imageQuality,
          );
          await File(destPath).writeAsBytes(compressedBytes);
        } else {
          // 图片尺寸已经合适，直接复制
          await File(xFile.path).copy(destPath);
        }
      } else {
        // 图片解码失败，直接复制原始文件
        await File(xFile.path).copy(destPath);
      }
    } catch (e) {
      // 处理过程中出现错误，直接复制原始文件
      await File(xFile.path).copy(destPath);
    }

    imagePaths.add(destPath);
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
    currencySymbol = item.currencySymbol;
    expiryDate = item.expiryDate;
    warrantyDate = item.warrantyDate;
    purchaseDate = item.purchaseDate;
    productionDate = item.productionDate;
    shelfLifeMonths = item.shelfLifeMonths;
    shelfLifeDays = item.shelfLifeDays;
    // 设置无日期标志
    noDate = item.itemType == ItemType.none;
    // 设置无保质期标志
    if (item.itemType == ItemType.none) {
      noShelfLife = true;
    } else {
      // 消耗品和耐用品必须有保质期/保修期
      noShelfLife = false;
    }
    // 自动设置计算标志
    usePurchaseDateForCalculation =
        item.itemType == ItemType.durable && item.purchaseDate != null;
    useProductionDateForCalculation =
        item.itemType == ItemType.consumable && item.productionDate != null;
    // 不再使用手动输入模式
    useManualDateEntry = false;
    storageLocation = item.storageLocation;
    barcode = item.barcode ?? '';
    imagePaths = List.from(item.imagePaths);
    notes = item.notes;
    enableAlert = item.enableAlert;
    alertMethod = item.alertMethod;
    alertDaysBefore = item.alertDaysBefore;
    clearErrors();
    resetDirty();
    notifyListeners();
  }

  void reset() {
    _editingId = null;
    name = '';
    category = '';
    itemType = ItemType.consumable;
    quantity = 1;
    unit = '个';
    unitPrice = 0.0;
    currencySymbol = AppConstants.currencySymbol;
    expiryDate = null;
    warrantyDate = null;
    purchaseDate = null;
    productionDate = null;
    shelfLifeMonths = null;
    shelfLifeDays = null;
    usePurchaseDateForCalculation = false;
    useProductionDateForCalculation = false;
    useManualDateEntry = false;
    noShelfLife = false;
    noDate = false;
    storageLocation = '';
    barcode = '';
    imagePaths = [];
    notes = null;
    enableAlert = true;
    alertMethod = 0;
    alertDaysBefore = null;
    clearErrors();
    resetDirty();
    notifyListeners();
  }

  void clearErrors() {
    nameError = null;
    quantityError = null;
    unitPriceError = null;
    dateError = null;
  }

  void markDirty() {
    _isDirty = true;
    notifyListeners();
  }

  void resetDirty() {
    _isDirty = false;
    notifyListeners();
  }

  bool validate(BuildContext context) {
    clearErrors();
    bool isValid = true;

    if (name.trim().isEmpty) {
      nameError = AppLocalizations.of(context).item_name_cannot_be_empty;
      isValid = false;
    } else if (name.length > AppConstants.maxNameLength) {
      nameError = AppLocalizations.of(
        context,
      ).name_max_length(AppConstants.maxNameLength);
      isValid = false;
    }

    if (quantity < AppConstants.minQuantity) {
      quantityError = AppLocalizations.of(
        context,
      ).quantity_min(AppConstants.minQuantity);
      isValid = false;
    } else if (quantity > AppConstants.maxQuantity) {
      quantityError = AppLocalizations.of(
        context,
      ).quantity_max(AppConstants.maxQuantity);
      isValid = false;
    }

    if (unitPrice < AppConstants.minUnitPrice) {
      unitPriceError = AppLocalizations.of(context).unit_price_not_negative;
      isValid = false;
    } else if (unitPrice > AppConstants.maxUnitPrice) {
      unitPriceError = AppLocalizations.of(
        context,
      ).unit_price_max(AppConstants.maxUnitPrice);
      isValid = false;
    }

    if (category.trim().isEmpty) {
      nameError = AppLocalizations.of(context).item_category_cannot_be_empty;
      isValid = false;
    }

    if (storageLocation.trim().isEmpty) {
      nameError = AppLocalizations.of(context).storage_location_cannot_be_empty;
      isValid = false;
    }

    if (itemType == ItemType.consumable) {
      // 总是自动计算模式：检查是否有足够的计算信息
      if (expiryDate == null && !_canCalculateExpiryDate()) {
        dateError = AppLocalizations.of(
          context,
        ).set_production_expiry_for_validity;
        isValid = false;
      }
    } else if (itemType == ItemType.durable) {
      // 总是自动计算模式：检查是否有足够的计算信息
      if (warrantyDate == null && !_canCalculateWarrantyDate()) {
        dateError = AppLocalizations.of(
          context,
        ).set_purchase_warranty_for_validity;
        isValid = false;
      }
    }
    // ItemType.none 不需要日期验证

    notifyListeners();
    return isValid;
  }

  Future<Item?> save(BuildContext context) async {
    if (!validate(context)) return null;

    _isSaving = true;
    notifyListeners();

    try {
      final item = Item(
        id: _editingId,
        name: name.trim(),
        category: category.trim().isEmpty ? '其他' : category.trim(),
        itemType: itemType,
        quantity: quantity,
        unit: unit,
        unitPrice: unitPrice,
        currencySymbol: currencySymbol,
        expiryDate: expiryDate,
        warrantyDate: warrantyDate,
        purchaseDate: purchaseDate,
        productionDate: productionDate,
        shelfLifeMonths: noShelfLife ? null : shelfLifeMonths,
        shelfLifeDays: noShelfLife ? null : shelfLifeDays,
        usePurchaseDateForCalculation: usePurchaseDateForCalculation,
        useProductionDateForCalculation: useProductionDateForCalculation,
        storageLocation: storageLocation.trim().isEmpty ? '未设置' : storageLocation.trim(),
        barcode: barcode.trim().isNotEmpty ? barcode.trim() : null,
        imagePaths: imagePaths,
        notes: notes?.trim().isNotEmpty == true ? notes!.trim() : null,
        enableAlert: noShelfLife ? false : enableAlert,
        alertMethod: alertMethod,
        alertDaysBefore: noShelfLife ? null : alertDaysBefore,
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
    if (useManualDateEntry) return;
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
    if (useManualDateEntry) return;
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
