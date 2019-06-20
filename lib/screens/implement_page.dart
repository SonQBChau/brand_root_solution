import 'package:flutter/material.dart';
import 'package:sale_form_demo/utils/app_color.dart';

class ImplementPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorGreen,
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        color: colorGrey5,
        child: ListView(
          children: <Widget>[
            Text(
              'FUNDAMENTALS',
              style: TextStyle(
                color: colorBlue,
                fontSize: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
