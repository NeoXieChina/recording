import 'package:flutter/material.dart';
import 'package:recording/data/datasources/app_database.dart';
import 'package:recording/data/models/location.dart';

class LocationProvider extends ChangeNotifier {
  final AppDatabase _db = AppDatabase();

  List<Location> _locations = [];
  bool _isLoading = false;
  String? _error;

  List<Location> get locations => _locations;
  bool get isLoading => _isLoading;
  String? get error => _error;

  Future<void> loadLocations() async {
    _isLoading = true;
    _error = null;
    notifyListeners();
    try {
      _locations = await _db.getLocations();
      _isLoading = false;
      notifyListeners();
    } catch (e) {
      _error = e.toString();
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> addLocation(Location location) async {
    try {
      await _db.insertLocation(location);
      await loadLocations();
    } catch (e) {
      _error = e.toString();
      notifyListeners();
    }
  }

  Future<void> updateLocation(Location location) async {
    try {
      await _db.updateLocation(location);
      await loadLocations();
    } catch (e) {
      _error = e.toString();
      notifyListeners();
    }
  }

  Future<void> deleteLocation(String id) async {
    try {
      await _db.deleteLocation(id);
      await loadLocations();
    } catch (e) {
      _error = e.toString();
      notifyListeners();
    }
  }

  Future<Location?> getLocationByName(String name) async {
    return await _db.getLocationByName(name);
  }

  List<Location> getPublicLocations() {
    return _locations.where((l) => l.isPublic).toList();
  }

  List<Location> getPrivateLocations() {
    return _locations.where((l) => !l.isPublic).toList();
  }
}
