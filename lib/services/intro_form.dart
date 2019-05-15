import 'package:flutter/material.dart';

class IntroForm with ChangeNotifier {
  final formKey = GlobalKey<FormState>();
  String name;

  IntroForm(this.name);

//  getName() => _name;
//  setName(String name) => _name = name;



//  int _counter;
//
//
//  getCounter() => _counter;
//  setCounter(int counter) => _counter = counter;
//
//  void increment() {
//    _counter++;
//    notifyListeners();
//  }
//
//  void decrement() {
//    _counter--;
//    notifyListeners();
//  }
}