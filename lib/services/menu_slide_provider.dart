import 'package:flutter/material.dart';

class MenuSlideProvider with ChangeNotifier {

  bool _slideStatus = false;
  int _activeMenu = 2;


  MenuSlideProvider();


  getSlideStatus() => _slideStatus;

  setSlideStatus(bool choice) {
    _slideStatus = choice;
    notifyListeners();
  }

  getActiveMenu() => _activeMenu;

  setActiveMenu(int num) {
    _activeMenu = num;
    notifyListeners();
  }

}