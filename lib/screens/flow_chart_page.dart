import 'package:flutter/material.dart';
import 'package:sale_form_demo/utils/app_color.dart';
import 'dart:math' as math;

class FlowChartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorBlue,
        elevation: 0,
        leading:  IconButton(
          icon:  Icon(Icons.clear),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.only( bottom: 20),
        color: colorBlue,
        child: Container(
          child: Image.asset(
            "images/FlowChart_2.png",
          fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
