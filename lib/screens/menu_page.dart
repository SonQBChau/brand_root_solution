import 'package:flutter/material.dart';
import 'package:sale_form_demo/utils/app_color.dart';



class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                color: colorBlue,
                child: Text('EVALUDATE'),
              ),
            ),
            Expanded(
              child: Container(
                color: colorGreen,
                child: Text('STATEGIES'),
              ),
            ),
            Expanded(
              child: Container(
                color: colorOrange,
                child: Text('SUSTAIN'),
              ),
            ),
            Expanded(
              child: Container(
                color: colorGrey,
                child: Text('LIFE-CYCLE'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
