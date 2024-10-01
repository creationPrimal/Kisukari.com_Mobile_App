

import 'package:flutter/material.dart';

// articles font size
class ArticleFontSize with ChangeNotifier {
  double _x = 20;
  double get x => _x;

  void setFontSize(double newData) {
    _x = newData;
    notifyListeners();
  }

  void incrementFont() {
    _x = 22;
    notifyListeners();
  }
  void decrementFont() {
    _x = 20;
    notifyListeners();
  }

}