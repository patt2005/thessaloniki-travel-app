import 'package:flutter/material.dart';

class AppStateManager extends ChangeNotifier {
  String _nickname = "";
  String get nickname => _nickname;

  String _imageFilePath = "";
  String get imageFilePath => _imageFilePath;

  void setNickname(String name) {
    _nickname = name;
    notifyListeners();
  }

  void setImageFilePath(String path) {
    _imageFilePath = path;
    notifyListeners();
  }
}
