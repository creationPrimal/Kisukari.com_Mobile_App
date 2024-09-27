



import 'package:flutter/material.dart';

// displaying dialog buttons overlay
class DialogOverlayBtn with ChangeNotifier {
  bool _overlay = false;
  bool get overlay => _overlay;

  void hideOverlay() {
    _overlay = false;
    notifyListeners();
  }
  void showOverlay() {
    _overlay = true;
    notifyListeners();
  }
}