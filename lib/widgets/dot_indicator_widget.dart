import 'package:flutter/material.dart';
import 'package:sale_form_demo/utils/app_color.dart';

class DotIndicatorWidget extends StatelessWidget {
  int activePosition;
  final int dotCount;
  final Color color;
  final Color activeDotColor;

  DotIndicatorWidget(
      {this.activePosition = 0,
        this.dotCount,
        this.color,
        this.activeDotColor,
      }):
        assert(dotCount != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      height: 30,
      width: 260,
      child: _buildDotIndicator(dotCount, activePosition, 230),
    );
  }

  _buildDotIndicator(int dotCount, int activePosition, double width) {
    double spacing = width/(dotCount-1);
    double dotSize = 20;
    double activeDotSize = 30;

    List<Positioned> dotList = [];
    Positioned lineWidget =  Positioned(
      top: 15,
      left: 5,
      child: SizedBox(
        height: 2.0,
        width: width,
        child: Container(
          height: 2.0,
          color: color,
        ),
      ),
    );

    Positioned activeDot = Positioned(
      top: 0,
      left: 0 + activePosition * spacing,
      child: Container(
        height: activeDotSize,
        width: activeDotSize,
        decoration: new BoxDecoration(shape: BoxShape.circle, color: activeDotColor),
      ),
    );

    dotList.add(lineWidget);
    dotList.add(activeDot);

    for (var i = 0; i < dotCount; i++){
        Positioned newDot =  Positioned(
          top: 5,
          left: 5 + i * spacing,
          child: Container(
            height: dotSize,
            width: dotSize,
            decoration: new BoxDecoration(shape: BoxShape.circle, color: color),
          ),
        );

        dotList.add(newDot);
    }

    return Stack(
      children: dotList,
    );
  }
}
