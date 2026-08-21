import 'package:flutter/material.dart';
import 'package:lpinyin/lpinyin.dart';
import 'package:recording/data/datasources/app_database.dart';
import 'package:recording/data/models/item.dart';
import 'package:recording/data/models/operation_log.dart';
import 'package:recording/providers/operation_log_provider.dart';

class ItemListProvider extends ChangeNotifier {
  final AppDatabase _db = AppDatabase();
  final OperationLogProvider _logProvider = OperationLogProvider();

  List<Item> _items = [];
  final Set<String> _customLocations = {};
  final Set<String> _customCategories = {};
  final Set<String> _customUnits = {};

  List<Item> get items => _filteredItems;

  String _searchQuery = '';
  ItemType? _filterType;
  String? _filterLocation;
  String? _filterCategory;
  DateTimeRange? _dateRange;
  double? _minUnitPrice;
  double? _maxUnitPrice;
  double? _minTotalPrice;
  double? _maxTotalPrice;
  String _sortField = 'name'; // name, date, price, quantity, totalPrice
  bool _sortAscending = true;
  bool _isLoading = false;
  String? _error;

  bool get isLoading => _isLoading;

  String? get error => _error;

  ItemType? get filterType => _filterType;

  String? get filterLocation => _filterLocation;

  String? get filterCategory => _filterCategory;

  DateTimeRange? get dateRange => _dateRange;

  double? get minUnitPrice => _minUnitPrice;

  double? get maxUnitPrice => _maxUnitPrice;

  double? get minTotalPrice => _minTotalPrice;

  double? get maxTotalPrice => _maxTotalPrice;

  String get sortField => _sortField;

  bool get sortAscending => _sortAscending;

  List<Item> get _filteredItems {
    var result = _items;
    if (_filterType != null) {
      result = result.where((i) => i.itemType == _filterType).toList();
    }
    if (_filterLocation != null && _filterLocation!.isNotEmpty) {
      result = result
          .where((i) => i.storageLocation == _filterLocation)
          .toList();
    }
    if (_filterCategory != null && _filterCategory!.isNotEmpty) {
      result = result.where((i) => i.category == _filterCategory).toList();
    }
    // 日期范围筛选（同时检查过期日期和保修日期）
    if (_dateRange != null) {
      result = result.where((i) {
        // 检查过期日期是否在范围内
        final expiryInRange =
            i.expiryDate != null &&
            i.expiryDate!.isAfter(_dateRange!.start) &&
            i.expiryDate!.isBefore(_dateRange!.end);
        // 检查保修日期是否在范围内
        final warrantyInRange =
            i.warrantyDate != null &&
            i.warrantyDate!.isAfter(_dateRange!.start) &&
            i.warrantyDate!.isBefore(_dateRange!.end);
        // 只要有一个日期在范围内就保留
        return expiryInRange || warrantyInRange;
      }).toList();
    }
    // 单价范围筛选
    if (_minUnitPrice != null || _maxUnitPrice != null) {
      result = result.where((i) {
        final price = i.unitPrice;
        if (_minUnitPrice != null && price < _minUnitPrice!) return false;
        if (_maxUnitPrice != null && price > _maxUnitPrice!) return false;
        return true;
      }).toList();
    }
    // 总价范围筛选
    if (_minTotalPrice != null || _maxTotalPrice != null) {
      result = result.where((i) {
        final totalPrice = i.quantity * i.unitPrice;
        if (_minTotalPrice != null && totalPrice < _minTotalPrice!) {
          return false;
        }
        if (_maxTotalPrice != null && totalPrice > _maxTotalPrice!) {
          return false;
        }
        return true;
      }).toList();
    }
    if (_searchQuery.isNotEmpty) {
      final query = _searchQuery.toLowerCase();
      result = result.where((i) {
        return i.name.toLowerCase().contains(query) ||
            i.category.toLowerCase().contains(query) ||
            i.storageLocation.toLowerCase().contains(query) ||
            (i.notes?.toLowerCase().contains(query) ?? false);
      }).toList();
    }

    // 排序逻辑
    result.sort((a, b) {
      int compare = 0;
      switch (_sortField) {
        case 'name':
          compare = _compareChineseStrings(a.name, b.name);
          break;
        case 'date':
          // 按日期排序：优先按过期日期，相同时按保修日期
          // 处理过期日期
          if (a.expiryDate == null && b.expiryDate == null) {
            // 两者都没有过期日期，比较保修日期
            if (a.warrantyDate == null && b.warrantyDate == null) {
              compare = 0;
            } else if (a.warrantyDate == null) {
              compare = 1;
            } else if (b.warrantyDate == null) {
              compare = -1;
            } else {
              compare = a.warrantyDate!.compareTo(b.warrantyDate!);
            }
          } else if (a.expiryDate == null) {
            compare = 1; // a没有过期日期，放在后面
          } else if (b.expiryDate == null) {
            compare = -1; // b没有过期日期，放在后面
          } else {
            // 两者都有过期日期，比较过期日期
            compare = a.expiryDate!.compareTo(b.expiryDate!);
            // 如果过期日期相同，比较保修日期
            if (compare == 0) {
              if (a.warrantyDate == null && b.warrantyDate == null) {
                compare = 0;
              } else if (a.warrantyDate == null) {
                compare = 1;
              } else if (b.warrantyDate == null) {
                compare = -1;
              } else {
                compare = a.warrantyDate!.compareTo(b.warrantyDate!);
              }
            }
          }
          break;
        case 'price':
          compare = a.unitPrice.compareTo(b.unitPrice);
          break;
        case 'quantity':
          compare = a.quantity.compareTo(b.quantity);
          break;
        case 'totalPrice':
          final totalPriceA = a.quantity * a.unitPrice;
          final totalPriceB = b.quantity * b.unitPrice;
          compare = totalPriceA.compareTo(totalPriceB);
          break;
        default:
          compare = _compareChineseStrings(a.name, b.name);
      }
      return _sortAscending ? compare : -compare;
    });

    return result;
  }

  Future<void> loadItems() async {
    _isLoading = true;
    _error = null;
    notifyListeners();
    try {
      _items = await _db.getItems();
      _isLoading = false;
      notifyListeners();
    } catch (e) {
      _error = e.toString();
      _isLoading = false;
      notifyListeners();
    }
  }

  void setSearchQuery(String query) {
    _searchQuery = query;
    notifyListeners();
  }

  void setFilterType(ItemType? type) {
    _filterType = type;
    notifyListeners();
  }

  void setFilterLocation(String? location) {
    _filterLocation = location;
    notifyListeners();
  }

  void setFilterCategory(String? category) {
    _filterCategory = category;
    notifyListeners();
  }

  void setDateRange(DateTimeRange? range) {
    _dateRange = range;
    notifyListeners();
  }

  void setUnitPriceRange(double? min, double? max) {
    _minUnitPrice = min;
    _maxUnitPrice = max;
    notifyListeners();
  }

  void setTotalPriceRange(double? min, double? max) {
    _minTotalPrice = min;
    _maxTotalPrice = max;
    notifyListeners();
  }

  void setSort(String field, bool ascending) {
    _sortField = field;
    _sortAscending = ascending;
    notifyListeners();
  }

  void clearAllFilters() {
    _filterType = null;
    _filterLocation = null;
    _filterCategory = null;
    _dateRange = null;
    _minUnitPrice = null;
    _maxUnitPrice = null;
    _minTotalPrice = null;
    _maxTotalPrice = null;
    notifyListeners();
  }

  Future<void> addItem(Item item) async {
    try {
      final newItem = await _db.insertItem(item);
      _items.insert(0, newItem);
      await _logProvider.logOperation(OperationType.create, newItem);
      notifyListeners();
    } catch (e) {
      _error = e.toString();
      notifyListeners();
    }
  }

  Future<void> updateItem(Item item, {bool logOperation = true}) async {
    try {
      await _db.updateItem(item);
      final index = _items.indexWhere((i) => i.id == item.id);
      if (index != -1) {
        final oldItem = _items[index];
        _items[index] = item;
        if (logOperation) {
          await _logProvider.logOperation(
            OperationType.update,
            item,
            oldItem: oldItem,
          );
        }
      }
      notifyListeners();
    } catch (e) {
      _error = e.toString();
      notifyListeners();
    }
  }

  Future<void> deleteItem(String id) async {
    try {
      final item = _items.firstWhere((i) => i.id == id);
      await _db.deleteItem(id);
      await _logProvider.logOperation(OperationType.delete, item);
      _items.removeWhere((i) => i.id == id);
      notifyListeners();
    } catch (e) {
      _error = e.toString();
      notifyListeners();
    }
  }

  Future<void> refresh() async {
    await loadItems();
  }

  /// 获取所有物品的唯一地点列表，包括自定义地点
  List<String> getLocations() {
    final locations = <String>{};
    locations.addAll(
      _items
          .map((item) => item.storageLocation)
          .where((location) => location.isNotEmpty),
    );
    locations.addAll(_customLocations);
    final locationList = locations.toList();
    locationList.sort(_compareChineseStrings);
    return locationList;
  }

  /// 添加自定义地点
  void addCustomLocation(String location) {
    if (location.isNotEmpty && !_customLocations.contains(location)) {
      _customLocations.add(location);
      notifyListeners();
    }
  }

  /// 获取所有物品的唯一分类列表，包括自定义分类
  List<String> getCategories() {
    final categories = <String>{};
    categories.addAll(
      _items
          .map((item) => item.category)
          .where((category) => category.isNotEmpty),
    );
    categories.addAll(_customCategories);
    final categoryList = categories.toList();
    categoryList.sort(_compareChineseStrings);
    return categoryList;
  }

  /// 添加自定义分类
  void addCustomCategory(String category) {
    if (category.isNotEmpty && !_customCategories.contains(category)) {
      _customCategories.add(category);
      notifyListeners();
    }
  }

  /// 获取所有物品的唯一单位列表，包括自定义单位
  List<String> getUnits() {
    final units = <String>{};
    units.addAll(
      _items.map((item) => item.unit).where((unit) => unit.isNotEmpty),
    );
    units.addAll(_customUnits);
    final unitList = units.toList();
    unitList.sort(_compareChineseStrings);
    return unitList;
  }

  /// 添加自定义单位
  void addCustomUnit(String unit) {
    if (unit.isNotEmpty && !_customUnits.contains(unit)) {
      _customUnits.add(unit);
      notifyListeners();
    }
  }

  /// 根据条码查找物品
  Future<Item?> getItemByBarcode(String barcode) async {
    try {
      return await _db.getItemByBarcode(barcode);
    } catch (e) {
      _error = e.toString();
      notifyListeners();
      return null;
    }
  }

  /// 更新物品数量
  Future<void> updateItemQuantity(String itemId, int additionalQuantity) async {
    try {
      final itemIndex = _items.indexWhere((i) => i.id == itemId);
      if (itemIndex != -1) {
        final item = _items[itemIndex];
        final updatedItem = item.copyWith(
          quantity: item.quantity + additionalQuantity,
        );
        await _db.updateItem(updatedItem);
        final operationType = additionalQuantity > 0
            ? OperationType.inbound
            : OperationType.outbound;
        await _logProvider.logOperation(
          operationType,
          item,
          quantityChange: additionalQuantity,
        );
        _items[itemIndex] = updatedItem;
        notifyListeners();
      }
    } catch (e) {
      _error = e.toString();
      notifyListeners();
    }
  }

  /// 比较中文字符串，支持拼音排序
  int _compareChineseStrings(String a, String b) {
    // 使用lpinyin进行拼音转换和比较
    try {
      // 获取拼音字符串（不带音调，空格分隔）
      final pinyinA = PinyinHelper.getPinyinE(a, separator: ' ', defPinyin: '');
      final pinyinB = PinyinHelper.getPinyinE(b, separator: ' ', defPinyin: '');

      // 比较拼音字符串
      return pinyinA.compareTo(pinyinB);
    } catch (e) {
      // 如果拼音转换失败，回退到默认比较
      return a.compareTo(b);
    }
  }
}
