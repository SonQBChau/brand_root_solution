import 'package:flutter/material.dart';
import 'package:sale_form_demo/utils/app_color.dart';

class ClientHeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, top: 13),
      height: 40,
      color: colorGrey20,
      child: Text(
        'CUSTOMER INFORMATION',
        style: TextStyle(
            color: colorBlue, fontWeight: FontWeight.bold, fontSize: 12),
      ),
    );
  }
}