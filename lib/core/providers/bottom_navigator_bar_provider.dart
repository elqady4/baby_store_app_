import 'package:flutter/material.dart';

class BottomNavigatorBarProvider extends ChangeNotifier {
   int _currentSelectedIndex = 0;

  void selectBarIndex(int index) {
    _currentSelectedIndex = index;
    notifyListeners();
  }

  int getSelectedIndex() => _currentSelectedIndex;
}
