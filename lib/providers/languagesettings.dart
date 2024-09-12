


import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class StorageProvider with ChangeNotifier {
  final GetStorage _storage = GetStorage();

  String? _data;
  String? get data => _data;

  StorageProvider() {
    _loadData();
  }

  void _loadData() {
    _data = _storage.read('language'); 
    notifyListeners(); // Notify listeners to update the UI
  }

  void saveData(String newData) {
    _data = newData;
    _storage.write('language', newData);
    notifyListeners(); // Notify listeners to update the UI
  }
}