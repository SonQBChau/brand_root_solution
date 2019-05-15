import 'package:flutter/material.dart';

class IntroForm with ChangeNotifier {
  final formKey = GlobalKey<FormState>();
  String name;

  IntroForm(this.name);


}