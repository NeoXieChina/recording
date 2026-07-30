import 'package:recording/constants.dart';
import 'package:uuid/uuid.dart';

enum ItemType { consumable, durable }

class Item {
  final String id;
  final String name;
  final String category;
  final ItemType itemType;
  final int quantity;
  final String unit;
  final double unitPrice;
  final String currencySymbol;

  double get totalPrice => unitPrice * quantity;
  final DateTime? expiryDate;
  final DateTime? warrantyDate;
  final DateTime? purchaseDate;
  final DateTime? productionDate;
  final int? shelfLifeMonths;
  final int? shelfLifeDays;
  final bool usePurchaseDateForCalculation;
  final bool useProductionDateForCalculation;
  final String storageLocation;
  final String? barcode;
  final List<String> imagePaths;
  final String? notes;
  final DateTime createdAt;
  final DateTime updatedAt;

  Item({
    String? id,
    required this.name,
    this.category = '其他',
    this.itemType = ItemType.consumable,
    this.quantity = 1,
    this.unit = '个',
    this.unitPrice = 0.0,
    this.currencySymbol = AppConstants.currencySymbol,
    this.expiryDate,
    this.warrantyDate,
    this.purchaseDate,
    this.productionDate,
    this.shelfLifeMonths,
    this.shelfLifeDays,
    this.usePurchaseDateForCalculation = false,
    this.useProductionDateForCalculation = false,
    this.storageLocation = '',
    this.barcode,
    this.imagePaths = const [],
    this.notes,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) : id = id ?? const Uuid().v4(),
       createdAt = createdAt ?? DateTime.now(),
       updatedAt = updatedAt ?? DateTime.now();

  Item copyWith({
    String? name,
    String? category,
    ItemType? itemType,
    int? quantity,
    String? unit,
    double? unitPrice,
    String? currencySymbol,
    DateTime? expiryDate,
    DateTime? warrantyDate,
    DateTime? purchaseDate,
    DateTime? productionDate,
    int? shelfLifeMonths,
    int? shelfLifeDays,
    bool? usePurchaseDateForCalculation,
    bool? useProductionDateForCalculation,
    String? storageLocation,
    String? barcode,
    List<String>? imagePaths,
    String? notes,
  }) {
    return Item(
      id: id,
      name: name ?? this.name,
      category: category ?? this.category,
      itemType: itemType ?? this.itemType,
      quantity: quantity ?? this.quantity,
      unit: unit ?? this.unit,
      unitPrice: unitPrice ?? this.unitPrice,
      currencySymbol: currencySymbol ?? this.currencySymbol,
      expiryDate: expiryDate ?? this.expiryDate,
      warrantyDate: warrantyDate ?? this.warrantyDate,
      purchaseDate: purchaseDate ?? this.purchaseDate,
      productionDate: productionDate ?? this.productionDate,
      shelfLifeMonths: shelfLifeMonths ?? this.shelfLifeMonths,
      shelfLifeDays: shelfLifeDays ?? this.shelfLifeDays,
      usePurchaseDateForCalculation:
          usePurchaseDateForCalculation ?? this.usePurchaseDateForCalculation,
      useProductionDateForCalculation:
          useProductionDateForCalculation ??
          this.useProductionDateForCalculation,
      storageLocation: storageLocation ?? this.storageLocation,
      barcode: barcode ?? this.barcode,
      imagePaths: imagePaths ?? this.imagePaths,
      notes: notes ?? this.notes,
      createdAt: createdAt,
      updatedAt: DateTime.now(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'category': category,
      'itemType': itemType.index,
      'quantity': quantity,
      'unit': unit,
      'unitPrice': unitPrice,
      'currencySymbol': currencySymbol,
      'expiryDate': expiryDate?.millisecondsSinceEpoch,
      'warrantyDate': warrantyDate?.millisecondsSinceEpoch,
      'purchaseDate': purchaseDate?.millisecondsSinceEpoch,
      'productionDate': productionDate?.millisecondsSinceEpoch,
      'shelfLifeMonths': shelfLifeMonths,
      'shelfLifeDays': shelfLifeDays,
      'usePurchaseDateForCalculation': usePurchaseDateForCalculation ? 1 : 0,
      'useProductionDateForCalculation': useProductionDateForCalculation
          ? 1
          : 0,
      'storageLocation': storageLocation,
      'barcode': barcode,
      'imagePaths': imagePaths.join(';'),
      'notes': notes,
      'createdAt': createdAt.millisecondsSinceEpoch,
      'updatedAt': updatedAt.millisecondsSinceEpoch,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id'] as String,
      name: map['name'] as String,
      category: map['category'] as String,
      itemType: ItemType.values[map['itemType'] as int],
      quantity: map['quantity'] as int,
      unit: map['unit'] as String,
      unitPrice: (map['unitPrice'] as num).toDouble(),
      currencySymbol:
          (map['currencySymbol'] as String?) ?? AppConstants.currencySymbol,
      expiryDate: map['expiryDate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['expiryDate'] as int)
          : null,
      warrantyDate: map['warrantyDate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['warrantyDate'] as int)
          : null,
      purchaseDate: map['purchaseDate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['purchaseDate'] as int)
          : null,
      productionDate: map['productionDate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['productionDate'] as int)
          : null,
      shelfLifeMonths: map['shelfLifeMonths'] as int?,
      shelfLifeDays: map['shelfLifeDays'] as int?,
      usePurchaseDateForCalculation:
          (map['usePurchaseDateForCalculation'] as int?) == 1,
      useProductionDateForCalculation:
          (map['useProductionDateForCalculation'] as int?) == 1,
      storageLocation: map['storageLocation'] as String? ?? '',
      barcode: map['barcode'] as String?,
      imagePaths: (map['imagePaths'] as String).isNotEmpty
          ? (map['imagePaths'] as String).split(';')
          : [],
      notes: map['notes'] as String?,
      createdAt: DateTime.fromMillisecondsSinceEpoch(map['createdAt'] as int),
      updatedAt: DateTime.fromMillisecondsSinceEpoch(map['updatedAt'] as int),
    );
  }

  bool get isExpiringSoon {
    if (itemType == ItemType.consumable && expiryDate != null) {
      final days = expiryDate!.difference(DateTime.now()).inDays;
      return days >= 0 && days <= 7;
    }
    return false;
  }

  bool get isExpired {
    if (itemType == ItemType.consumable && expiryDate != null) {
      return expiryDate!.isBefore(DateTime.now());
    }
    return false;
  }

  bool get isWarrantyExpiringSoon {
    if (itemType == ItemType.durable && warrantyDate != null) {
      final days = warrantyDate!.difference(DateTime.now()).inDays;
      return days >= 0 && days <= 30;
    }
    return false;
  }

  bool get isWarrantyExpired {
    if (itemType == ItemType.durable && warrantyDate != null) {
      return warrantyDate!.isBefore(DateTime.now());
    }
    return false;
  }
}
