

import 'package:flutter/material.dart';


// chat image loader
class ChatImagesLoader with ChangeNotifier {
  bool _isLoading = true;

  bool get isLoading => _isLoading;

 
  Future<void> loadImages() async {
    // Simulate network delay
    await Future.delayed(const Duration(seconds: 3));
    _isLoading = false;
    notifyListeners();
  }

}