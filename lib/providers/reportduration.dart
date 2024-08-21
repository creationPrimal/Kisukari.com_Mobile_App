


import 'package:flutter/material.dart';

class ReportDuration with ChangeNotifier {
  bool _isActive = false;

  bool get isActive => _isActive;

  void updateData(bool value) {
    _isActive = value;
    notifyListeners();
  }
}