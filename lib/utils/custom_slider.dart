import 'package:flutter/material.dart';
import 'package:sale_form_demo/utils/app_color.dart';

// https://medium.com/@rjstech/building-a-custom-slider-in-flutter-with-gesturedetector-fcdd76224acd

class BenchmarkSlider extends StatefulWidget {
  @override
  _BenchmarkSliderState createState() => _BenchmarkSliderState();
}

class _BenchmarkSliderState extends State<BenchmarkSlider> {
  Color postitiveColor = colorGreen;
  Color negetiveColor = colorGrey5;
  double percentage = 0.0;

  double initial = 0.0;

  @override
  Widget build(BuildContext context) {
    return   GestureDetector(
      onPanStart: (DragStartDetails details) {
        initial = details.globalPosition.dx;
      },
      onPanUpdate: (DragUpdateDetails details) {
        double distance = details.globalPosition.dx - initial;
        double percentageAddition = distance / 200;

        print('distance ' + distance.toString());
        setState(() {
          print('percentage ' +
              (percentage + percentageAddition)
                  .clamp(0.0, 100.0)
                  .toString());
          percentage =
              (percentage + percentageAddition).clamp(0.0, 100.0);
        });
      },
      onPanEnd: (DragEndDetails details) {
        initial = 0.0;
      },
      child: CustomSlider(
        percentage: this.percentage,
        positiveColor: postitiveColor,
        negetiveColor: negetiveColor,
      ),
    );
  }
}





class CustomSlider extends StatelessWidget {
  double totalWidth = 200.0;
  double percentage;
  Color positiveColor = colorGreen;
  Color negetiveColor = colorGrey20;

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