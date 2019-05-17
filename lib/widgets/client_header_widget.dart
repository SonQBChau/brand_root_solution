import 'package:flutter/material.dart';
import 'package:sale_form_demo/utils/app_color.dart';

class ClientHeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top:60, bottom: 20),
      child: Center(
        child: Text(
          'CUSTOMER INFORMATION',
          style: TextStyle(
              color: colorBlue, fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
    );
  }
}