import 'package:flutter/material.dart';
import 'package:sale_form_demo/data/form_texts.dart';
import 'package:sale_form_demo/utils/app_color.dart';

class RepresentativeHeadderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top:0, bottom: 20),
      child: Center(
        child: Text(
          '$company REPRESENTATIVE',
          style: TextStyle(
              color: colorBlue, fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
    );
  }
}