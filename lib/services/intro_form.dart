import 'package:flutter/material.dart';

class IntroForm with ChangeNotifier {
  final _formKey = GlobalKey<FormState>();
  String _name;
  String _company;
  String _email;
  String _representativeEmail;
  int _industry;
  bool _industryError = false;

  IntroForm();

  getFormKey() => _formKey;

  getName() => _name;
  setName(String str){
    _name = str;
    notifyListeners();
  }

  getCompany() => _company;
  setCompany(String str){
    _company = str;
    notifyListeners();
  }

  getEmail() => _email;
  setEmail(String str){
    _email = str;
    notifyListeners();
  }

  getRepresentativeEmail() => _representativeEmail;
  setRepresentativeEmail(String str){
    _representativeEmail = str;
    notifyListeners();
  }

  getIndustry() => _industry;
  setIndustry(int choice){
    _industry = choice;
    notifyListeners();
  }

  getIndustryError() => _industryError;
  setIndustryError(bool status) {
    _industryError = status;
    notifyListeners();
  }


}