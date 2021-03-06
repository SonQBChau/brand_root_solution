import 'dart:ui';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sale_form_demo/data/question_model.dart';
import 'package:sale_form_demo/utils/app_color.dart';
import 'package:sale_form_demo/utils/size_config.dart';
import 'package:sale_form_demo/widgets/bottom_sheet_list.dart';

// bottom sheet
// https://marcinszalek.pl/flutter/tickets-advanced-transitions/

const double minHeight = 100;

class MIStrategyBottomSheet extends StatefulWidget {
  final double maxBottomSheetHeight;
  MIStrategyBottomSheet({this.maxBottomSheetHeight});

  @override
  _MIStrategyBottomSheetState createState() => _MIStrategyBottomSheetState();
}

class _MIStrategyBottomSheetState extends State<MIStrategyBottomSheet> with SingleTickerProviderStateMixin {
  AnimationController _controller;

  double maxHeight = 0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      //<-- initialize a controller
      vsync: this,
      duration: Duration(milliseconds: 600),
    );
  }

  @override
  void dispose() {
    _controller.dispose(); //<-- and remember to dispose it!
    super.dispose();
  }


  double lerp(double min, double max) =>
      lerpDouble(min, max, _controller.value); //<-- lerp any value based on the controller

  void _toggle() {
    final bool isOpen = _controller.status == AnimationStatus.completed;
    _controller.fling(velocity: isOpen ? -2 : 2); //<-- ...snap the sheet in proper direction
  }

  void _handleDragUpdate(DragUpdateDetails details) {
    _controller.value -=
        details.primaryDelta / maxHeight; //<-- Update the _controller.value by the movement done by user.
  }

  void _handleDragEnd(DragEndDetails details) {
    if (_controller.isAnimating || _controller.status == AnimationStatus.completed) return;

    final double flingVelocity =
        details.velocity.pixelsPerSecond.dy / maxHeight; //<-- calculate the velocity of the gesture
    if (flingVelocity < 0.0)
      _controller.fling(velocity: math.max(2.0, -flingVelocity)); //<-- either continue it upwards
    else if (flingVelocity > 0.0)
      _controller.fling(velocity: math.min(-2.0, -flingVelocity)); //<-- or continue it downwards
    else
      _controller.fling(
          velocity: _controller.value < 0.5 ? -2.0 : 2.0); //<-- or just continue to whichever edge is closer
  }

  @override
  Widget build(BuildContext context) {
//    SizeConfig().init(context);

    maxHeight = SizeConfig.screenHeight - widget.maxBottomSheetHeight;
//    print(widget.maxBottomSheetHeight);

    return AnimatedBuilder(
      //<--add animated builder
      animation: _controller,
      builder: (context, child) {
        return Positioned(
          height: lerp(minHeight, maxHeight), //<-- update height value to scale with controller
          left: 0,
          right: 0,
          bottom: 0,
          child:  Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: const BoxDecoration(
                color: Color(0xFFf1f1f1),
                borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
              ),
              child: Column(
                //<-- bottom indicator
                children: <Widget>[
                  GestureDetector(
                    onTap: _toggle, //<-- on tap...
                    onVerticalDragUpdate: _handleDragUpdate, //<-- Add verticalDragUpdate callback
                    onVerticalDragEnd: _handleDragEnd, //<-- Add verticalDragEnd callback
                    behavior: HitTestBehavior.opaque,
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 30,
                          width: double.infinity,
                          child: Center(
                            child: Container(
                              width: 50,
                              decoration: BoxDecoration(
                                color: colorBlue,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              margin: EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
                              height: 6.0,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          height: lerp(30, 0), //<-- update height value to scale with controller
                          child: Text('Explore Mi Strategy Options',
                            style: TextStyle(
                              fontSize: 18,
                              color: colorBlue,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    height: lerp(0, maxHeight - 50), //<-- update height value to scale with controller
                    child: BottomSheetList(),
                  ),
                ],
              ),
            ),

        );
      },
    );
  }
}
