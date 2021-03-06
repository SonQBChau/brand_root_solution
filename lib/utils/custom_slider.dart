import 'package:flutter/material.dart';
import 'package:sale_form_demo/utils/app_color.dart';
import 'package:flutter_xlider/flutter_xlider.dart';
import 'package:sale_form_demo/data/globals.dart' as globals;

//slider for the whole bar
// https://medium.com/@rjstech/building-a-custom-slider-in-flutter-with-gesturedetector-fcdd76224acd


class FixedValueSlider extends StatefulWidget {
  final List<FlutterSliderFixedValue> benchmarkSliderRange;
  final double initialValue;
  final Function onSlide;
  FixedValueSlider({this.benchmarkSliderRange, this.initialValue, this.onSlide});

  @override
  _FixedValueSliderState createState() => _FixedValueSliderState();
}

class _FixedValueSliderState extends State<FixedValueSlider> {

  @override
  Widget build(BuildContext context) {
    return FlutterSlider(
      handlerWidth: 30,
      handlerHeight: 35,
      values: [widget.initialValue],
      fixedValues: widget.benchmarkSliderRange,

      onDragging: (handlerIndex, lowerValue, upperValue) {
        setState(() {
          widget.onSlide(lowerValue);
        });
      },
      tooltip: FlutterSliderTooltip(
//          disabled: true,
        alwaysShowTooltip: true,
          boxStyle: FlutterSliderTooltipBox(
              decoration: BoxDecoration(
              color: colorGreen,
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
