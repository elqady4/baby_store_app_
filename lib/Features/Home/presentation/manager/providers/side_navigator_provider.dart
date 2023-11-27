import 'package:flutter/material.dart';

class SideNavigatorProvider extends ChangeNotifier {
   int _currentSelectedIndex = 0;

  void selectIndex(int index) {
    _currentSelectedIndex = index;
    notifyListeners();
  }

  int getSelectedIndex() => _currentSelectedIndex;
}
