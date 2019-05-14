import 'package:flutter/material.dart';
import 'package:sale_form_demo/utils/app_color.dart';

class CustomerInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CUSTOMER INFORMATION', style: TextStyle(color: colorBlue, fontSize: 18),),
        backgroundColor: colorGrey20,
      ),
      body: Container(
        decoration: BoxDecoration(color: colorGrey10),
      ),
    );
  }
}
