import 'package:flutter/material.dart';

// https://medium.com/@rjstech/building-a-custom-slider-in-flutter-with-gesturedetector-fcdd76224acd

//class  extends StatefulWidget {
//  @override
//  _State createState() => _State();
//}
//
//class _State extends State<> {
//  @override
//  Widget build(BuildContext context) {
//    return Container();
//  }
//}




class CustomSlider extends StatelessWidget {
  double totalWidth = 200.0;
  double percentage;
  Color positiveColor = Color(0xFFEF0078);
  Color negetiveColor = Color(0xFFFFFFFF);

  CustomSlider({this.percentage, this.positiveColor, this.negetiveColor});

  @override
  Widget build(BuildContext context) {
    print((percentage / 100) * totalWidth);
    print((1 - percentage / 100) * totalWidth);
    return Container(
      width: totalWidth + 4.0,
      height: 30.0,
      decoration: BoxDecoration(
          color: negetiveColor,
          border: Border.all(color: Colors.black, width: 2.0)),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            color: positiveColor,
            width: (percentage / 100) * totalWidth,
          ),
        ],
      ),
    );
  }
}