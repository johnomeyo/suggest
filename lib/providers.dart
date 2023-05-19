import 'package:flutter/material.dart';

class Switcher extends ChangeNotifier {
  bool _light = false;

  void changeLight(bool value) {
    _light = value;
    notifyListeners();
  }

  get light => _light;
}

class AddBookmarkProvider extends ChangeNotifier {
  bool _add = false;
  void changeAdd() {
    _add = !_add;
    notifyListeners();
  }

  bool get add => _add;
}
