


import 'package:flutter/material.dart';

class ChatFontSize with ChangeNotifier {
  double _x = 19;
  double get x => _x;

  void setFontSize(double newData) {
    _x = newData;
    notifyListeners();
  }

  void incrementFont(double newData) {
    _x = 22;
    notifyListeners();
  }
  void decrementFont(double newData) {
    _x = 19;
    notifyListeners();
  }

}