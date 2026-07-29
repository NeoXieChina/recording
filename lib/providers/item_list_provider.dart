import 'package:flutter/material.dart';
import 'package:recording/data/datasources/app_database.dart';
import 'package:recording/data/models/item.dart';

class ItemListProvider extends ChangeNotifier {
  final AppDatabase _db = AppDatabase();

  List<Item> _items = [];

  List<Item> get items => _filteredItems;

  String _searchQuery = '';
  ItemType? _filterType;
  bool _isLoading = false;
  String? _error;

  bool get isLoading => _isLoading;

  String? get error => _error;

  ItemType? get filterType => _filterType;

  List<Item> get _filteredItems {
    var result = _items;
    if (_filterType != null) {
      result = result.where((i) => i.itemType == _filterType).toList();
    }
    if (_searchQuery.isNotEmpty) {
      final query = _searchQuery.toLowerCase();
      result = result.where((i) {
        return i.name.toLowerCase().contains(query) ||
            i.category.toLowerCase().contains(query) ||
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
}
