import 'package:flutter/material.dart';
import 'package:sale_form_demo/utils/app_color.dart';

//prevent system font size from breaking layout
//https://stackoverflow.com/questions/54486797/how-to-support-text-size-accessibility-in-flutter-like-android-sp-size-and-ios-d
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
            textScaleFactor: 1.0,
            style: TextStyle(color: colorBlue, fontSize: 32, fontWeight: FontWeight.w700),
          ),
          SizedBox(width: 2,),
          Text(
            'ART',
            textScaleFactor: 1.0,
            style: TextStyle(color: colorGreen, fontSize: 32, fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}
