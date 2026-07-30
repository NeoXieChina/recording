import 'package:flutter/material.dart';
import 'package:recording/data/datasources/app_database.dart';
import 'package:recording/data/models/item.dart';

class ItemListProvider extends ChangeNotifier {
  final AppDatabase _db = AppDatabase();

  List<Item> _items = [];
  final Set<String> _customLocations = {};
  final Set<String> _customCategories = {};
  final Set<String> _customUnits = {};

  List<Item> get items => _filteredItems;

  String _searchQuery = '';
  ItemType? _filterType;
  String? _filterLocation;
  bool _isLoading = false;
  String? _error;

  bool get isLoading => _isLoading;

  String? get error => _error;

  ItemType? get filterType => _filterType;

  String? get filterLocation => _filterLocation;

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
    if (_searchQuery.isNotEmpty) {
      final query = _searchQuery.toLowerCase();
      result = result.where((i) {
        return i.name.toLowerCase().contains(query) ||
            i.category.toLowerCase().contains(query) ||
            i.storageLocation.toLowerCase().contains(query) ||
            (i.notes?.toLowerCase().contains(query) ?? false);
      }).toList();
    }
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

  Future<void> addItem(Item item) async {
    try {
      final newItem = await _db.insertItem(item);
      _items.insert(0, newItem);
      notifyListeners();
    } catch (e) {
      _error = e.toString();
      notifyListeners();
    }
  }

  Future<void> updateItem(Item item) async {
    try {
      await _db.updateItem(item);
      final index = _items.indexWhere((i) => i.id == item.id);
      if (index != -1) {
        _items[index] = item;
      }
      notifyListeners();
    } catch (e) {
      _error = e.toString();
      notifyListeners();
    }
  }

  Future<void> deleteItem(String id) async {
    try {
      await _db.deleteItem(id);
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
    locations.addAll(_items
        .map((item) => item.storageLocation)
        .where((location) => location.isNotEmpty));
    locations.addAll(_customLocations);
    return locations.toList()..sort();
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
    categories.addAll(_items
        .map((item) => item.category)
        .where((category) => category.isNotEmpty));
    categories.addAll(_customCategories);
    return categories.toList()..sort();
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
    units.addAll(_items
        .map((item) => item.unit)
        .where((unit) => unit.isNotEmpty));
    units.addAll(_customUnits);
    return units.toList()..sort();
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
        _items[itemIndex] = updatedItem;
        notifyListeners();
      }
    } catch (e) {
      _error = e.toString();
      notifyListeners();
    }
  }
}
