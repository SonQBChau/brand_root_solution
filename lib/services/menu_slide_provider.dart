import 'package:flutter/material.dart';

class MenuSlideProvider with ChangeNotifier {

  bool _slideStatus = false;


  MenuSlideProvider();


  getSlideStatus() => _slideStatus;

  setSlideStatus(bool choice) {
    _slideStatus = choice;
    notifyListeners();
  }
}