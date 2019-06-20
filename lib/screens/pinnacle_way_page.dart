import 'package:flutter/material.dart';
import 'package:sale_form_demo/utils/app_color.dart';
import 'dart:math' as math;

class PinnacleWayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorBlue,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.clear),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.only(bottom: 20),
        color: colorBlue,
        child: Stack(
          children: <Widget>[
            Positioned(
              bottom: 80,
              left: -40,
              child: Transform.rotate(
                  angle: -math.pi / 2,
                  child: Text(
                    'The Pinnacle Way',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
            ),
            Positioned.fill(
              child: Container(
                child: Image.asset(
                  "images/PinnacleWay_2.png",
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
