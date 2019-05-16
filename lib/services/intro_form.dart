import 'package:flutter/material.dart';

class IntroForm with ChangeNotifier {
  final formKey = GlobalKey<FormState>();
  String name;
  int _industry;
  bool _industryError = false;

  IntroForm();

  getIndustry() => _industry;
  setIndustry(int choice){
    _industry = choice;
    notifyListeners();
  }

  getIndustryError() => _industryError;
  void setIndustryError(bool status) {
    _industryError = status;
    notifyListeners();
  }


}