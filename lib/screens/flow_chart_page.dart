import 'package:flutter/material.dart';
import 'package:sale_form_demo/utils/app_color.dart';
import 'dart:math' as math;

class FlowChartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric( vertical: 40),
      color: colorBlue,
      child: Container(
        child: Image.asset(
          "images/FlowChart_2.png",
        fit: BoxFit.contain,
        ),
      ),
    );
  }
}
