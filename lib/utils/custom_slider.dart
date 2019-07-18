import 'package:flutter/material.dart';
import 'package:sale_form_demo/utils/app_color.dart';
//import 'package:sale_form_demo/widgets/flutter_slider.dart';
import 'package:flutter_xlider/flutter_xlider.dart';

// https://medium.com/@rjstech/building-a-custom-slider-in-flutter-with-gesturedetector-fcdd76224acd

class BenchmarkSlider extends StatefulWidget {
  final String initialValue;
  final List<String> benchmarkRange;
  final Function onSlide;
  String percentageText;
  double initialPercentage;
  BenchmarkSlider({this.initialValue, this.onSlide, this.benchmarkRange})
      : percentageText = initialValue,
        initialPercentage = benchmarkRange.indexOf(initialValue) * 10.0;

  @override
  _BenchmarkSliderState createState() => _BenchmarkSliderState();
}

class _BenchmarkSliderState extends State<BenchmarkSlider> {
  Color postitiveColor = Colors.green[100];
  Color negetiveColor = colorGrey5;
//  double percentage = 0.0;

  double initial = 0.0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanStart: (DragStartDetails details) {
        initial = details.globalPosition.dx;
      },
      onPanUpdate: (DragUpdateDetails details) {
        double distance = details.globalPosition.dx - initial;
        double percentageAddition = distance / 50;
        setState(() {
          widget.initialPercentage = (widget.initialPercentage + percentageAddition).clamp(0.0, 100.0);
          widget.percentageText = widget.benchmarkRange[widget.initialPercentage ~/ 10];
          widget.onSlide(widget.percentageText);
        });
      },
      onPanEnd: (DragEndDetails details) {
        initial = 0.0;
      },
      child: Tooltip(
        message: "Slide to adjust value",
        child: Center(
          child: TextSlider(
            percentage: widget.initialPercentage,
            percentageText: widget.percentageText,
            positiveColor: postitiveColor,
            negetiveColor: negetiveColor,
          ),
        ),
      ),
    );
  }
}

class TextSlider extends StatelessWidget {
  double percentage;
  String percentageText;
  Color positiveColor = colorGreen;
  Color negetiveColor = colorGrey20;

  TextSlider({this.percentage, this.positiveColor, this.negetiveColor, this.percentageText});

  @override
  Widget build(BuildContext context) {
    double totalWidth = MediaQuery.of(context).size.width - 120;

//    print('=====');
//  print(percentageText);

    return ClipRRect(
      borderRadius: BorderRadius.circular(25.0),
      child: Stack(
        children: <Widget>[
          Container(
            width: totalWidth,
            height: 55.0,
            color: negetiveColor,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Container(
                  color: positiveColor,
                  width: (percentage / 100) * totalWidth,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            child: Text(
              percentageText,
              style: TextStyle(fontSize: 18, color: colorGreen, fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }
}

class FixedValueSlider extends StatefulWidget {
  final List<FlutterSliderFixedValue> benchmarkSliderRange;
  FixedValueSlider({this.benchmarkSliderRange});
  @override
  _FixedValueSliderState createState() => _FixedValueSliderState();
}

class _FixedValueSliderState extends State<FixedValueSlider> {
  dynamic _lowerValue = 10;
  dynamic _upperValue = 100;

  @override
  Widget build(BuildContext context) {
    return FlutterSlider(
      handlerWidth: 30,
      handlerHeight: 35,

//      jump: true,
      values: [20],
      fixedValues: widget.benchmarkSliderRange,

      onDragging: (handlerIndex, lowerValue, upperValue) {
        _lowerValue = lowerValue;
        _upperValue = upperValue;
        setState(() {});
      },
      tooltip: FlutterSliderTooltip(
//          disabled: true,
        alwaysShowTooltip: true,
          boxStyle: FlutterSliderTooltipBox(
              decoration: BoxDecoration(
    color: colorGreen.withOpacity(0.8),
    borderRadius: BorderRadius.circular(10),
              ),
          ),

        textStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 16)
      ),
//      handlerAnimation: FlutterSliderHandlerAnimation(scale: 1),
      trackBar: FlutterSliderTrackBar(
        activeTrackBarHeight: 10,
        inactiveTrackBarHeight: 10,
        inactiveTrackBar: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.black12,
        ),
        activeTrackBar: BoxDecoration(borderRadius: BorderRadius.circular(4), color: colorGreen),
      ),
      handler: FlutterSliderHandler(
        decoration: BoxDecoration(),
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  color: colorGreen,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
