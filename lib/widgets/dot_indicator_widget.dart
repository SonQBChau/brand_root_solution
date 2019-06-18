import 'package:flutter/material.dart';

class DotIndicatorWidget extends StatelessWidget {
  final int activePosition;
  final int dotCount;
  final Color color;

  DotIndicatorWidget(
      {this.activePosition = 0,
        this.dotCount,
        this.color,
      }):
        assert(dotCount != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      height: 30,

      child: _buildDotIndicator(dotCount, activePosition),
    );
  }

  _buildDotIndicator(int dotCount, int activePosition) {
    double dotSize = 10;
    List<Container> dotList = [];

    for (var i = 0; i < dotCount; i++){
      Container newDot =  Container(
        height: dotSize,
        width: dotSize,
        margin: EdgeInsets.symmetric(horizontal: 2),
        decoration:  BoxDecoration(shape: BoxShape.circle, color: activePosition == i ? color : Colors.white),
      );

      dotList.add(newDot);
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: dotList,
    );
  }
}
