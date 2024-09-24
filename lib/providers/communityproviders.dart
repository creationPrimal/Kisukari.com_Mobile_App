

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

// chat image loader
class ChatVideosLoader with ChangeNotifier {
  bool _isLoading = true;

  bool get isLoading => _isLoading;

 
  Future<void> loadVideos() async {
    // Simulate network delay
    await Future.delayed(const Duration(seconds: 3));
    _isLoading = false;
    notifyListeners();
  }

}

// chat loader
class ChatLoaderProvider with ChangeNotifier{
  bool _isLoading = true;
  bool get isLoading => _isLoading;

  Future<void> loadChats () async {
    await Future.delayed(const Duration(seconds: 4));
    _isLoading = false;
    notifyListeners();
  }
}

//home posts loader

class HomePostLoader with ChangeNotifier {
  bool _isLoading = true;
  bool get isLoading => _isLoading;

  Future <void> loadPosts() async {
    await Future.delayed(const Duration(milliseconds: 4));
      _isLoading = false;
      notifyListeners();
  }
}

// posts font size
class PostFontSize with ChangeNotifier {
  double _x = 20;
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
    _x = 20;
    notifyListeners();
  }

}

//joined groups loader
class GroupsLoader with ChangeNotifier {
  bool _isLoading = true;
  bool get isLoading => _isLoading;

  Future <void> loadPosts() async {
    await Future.delayed(const Duration(milliseconds: 4));
      _isLoading = false;
      notifyListeners();
  }
}
//friends loader
class FriendsLoader with ChangeNotifier {
  bool _isLoading = true;
  bool get isLoading => _isLoading;

  Future <void> loadPosts() async {
    await Future.delayed(const Duration(milliseconds: 4));
      _isLoading = false;
      notifyListeners();
  }
}

