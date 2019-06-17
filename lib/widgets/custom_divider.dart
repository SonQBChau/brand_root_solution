
import 'package:flutter/material.dart';
import 'package:sale_form_demo/utils/app_color.dart';

class CustomDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 10.0,
      child:  Center(
        child:  Container(
          margin:  EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
          height: 1.0,
          color: colorBlue,
        ),
      ),
    );
  }
}


