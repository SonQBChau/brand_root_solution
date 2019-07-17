import 'package:flutter/material.dart';
import 'package:sale_form_demo/utils/app_color.dart';
import 'package:sale_form_demo/widgets/flutter_slider.dart';

// https://medium.com/@rjstech/building-a-custom-slider-in-flutter-with-gesturedetector-fcdd76224acd

class BenchmarkSlider extends StatefulWidget {
  final String initialValue;
  final List<String> benchmarkRange;
  final Function onSlide;
  String percentageText;
  double initialPercentage;
  BenchmarkSlider({this.initialValue, this.onSlide, this.benchmarkRange})
      : percentageText = initialValue,
        initialPercentage = benchmarkRange.indexOf(initialValue) * 10.0
  ;

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
          widget.percentageText = widget.benchmarkRange[widget.initialPercentage~/10 ];
          widget.onSlide(widget.percentageText );
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
            child: Text(percentageText,
              style: TextStyle(
                fontSize: 18,
                color: colorGreen,
                fontWeight: FontWeight.w500
              ),
            ),
          )
        ],
      ),
    );
  }
}


class IndicatorSlider extends StatefulWidget {
  @override
  _IndicatorSliderState createState() => _IndicatorSliderState();
}

class _IndicatorSliderState extends State<IndicatorSlider> {
  double _lowerValue = 50;
  double _upperValue = 180;

  @override
  Widget build(BuildContext context) {
    return FlutterSlider(
      values: [300],
      max: 500,
      min: 0,
      onDragging: (handlerIndex, lowerValue, upperValue) {
        _lowerValue = lowerValue;
        _upperValue = upperValue;
        setState(() {});
      },
      tooltip: FlutterSliderTooltip(
          alwaysShowTooltip: true,
          textStyle: TextStyle(fontSize: 12, color: Colors.red),
          boxStyle: FlutterSliderTooltipBox(
              decoration: BoxDecoration(
                  color: Colors.transparent,


              )
          )
      ),
      handler: FlutterSliderHandler(
        decoration: BoxDecoration(),
        child: Material(
          type: MaterialType.canvas,
          color: Colors.white,
//          elevation: 3,
          child: Container(
//              padding: EdgeInsets.all(5),
              child: Icon(Icons.album, size: 25, color: colorGreen,)),
        ),
      ),
    )
    ;
  }
}
