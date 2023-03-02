import 'package:flutter/material.dart';

class BottomNavigationBarProvider extends ChangeNotifier {
  int _selectedTabIndex = 0;
  String _leafType = 'today';

  int get selectedTabIndex => _selectedTabIndex;
  String get leafType => _leafType;

  void changeSelectedTabIndex(int index) {
    _selectedTabIndex = index;
    notifyListeners();
  }

  void setLeafType(String type) {
    _leafType = type;
    notifyListeners();
  }
}
