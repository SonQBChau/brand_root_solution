import 'package:flutter/material.dart';
import 'package:sale_form_demo/utils/app_color.dart';

class CompanyName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
      width: 300,
      padding: EdgeInsets.only(left: 70, top: 40),
      child: Row(
        children: <Widget>[

          Text(
            'PINNACLE',
            style: TextStyle(
                color: colorBlue, fontSize: 32, fontWeight: FontWeight.w700),
          ),
          Text(
            'ART',
            style: TextStyle(
                color: colorGreen, fontSize: 32, fontWeight: FontWeight.w700),
          ),

        ],
      ),
    );
  }
}