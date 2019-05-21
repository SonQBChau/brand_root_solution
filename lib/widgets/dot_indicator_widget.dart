import 'package:flutter/material.dart';
import 'package:sale_form_demo/utils/app_color.dart';

class DotIndicatorWidget extends StatelessWidget {
  int activePosition;
  final int dotCount;

  DotIndicatorWidget(
      {this.activePosition = 1, this.dotCount}):
        assert(dotCount != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      height: 30,
      width: 260,
      child: _buildDotIndicator(),
    );
  }

  _buildDotIndicator() {
    return Stack(
      children: <Widget>[
        Positioned(
          top: 15,
          left: 5,
          child: SizedBox(
            height: 2.0,
            width: 260,
            child: Container(
              height: 2.0,
              color: colorGreen,
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: (0),
          child: Container(
            height: 30,
            width: 30,
            decoration: new BoxDecoration(shape: BoxShape.circle, color: Colors.green[200]),
          ),
        ),
        Positioned(
          top: 5,
          left: 5,
          child: Container(
            height: 20,
            width: 20,
            decoration: new BoxDecoration(shape: BoxShape.circle, color: colorGreen),
          ),
        ),
        Positioned(
          top: 5,
          left: 55,
          child: Container(
            height: 20,
            width: 20,
            decoration: new BoxDecoration(shape: BoxShape.circle, color: colorGreen),
          ),
        ),
        Positioned(
          top: 5,
          left: 105,
          child: Container(
            height: 20,
            width: 20,
            decoration: new BoxDecoration(shape: BoxShape.circle, color: colorGreen),
          ),
        ),
        Positioned(
          top: 5,
          left: 155,
          child: Container(
            height: 20,
            width: 20,
            decoration: new BoxDecoration(shape: BoxShape.circle, color: colorGreen),
          ),
        ),
        Positioned(
          top: 5,
          left: 205,
          child: Container(
            height: 20,
            width: 20,
            decoration: new BoxDecoration(shape: BoxShape.circle, color: colorGreen),
          ),
        ),
      ],
    );
  }
}
