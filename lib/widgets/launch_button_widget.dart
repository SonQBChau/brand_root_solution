import 'package:flutter/material.dart';
import 'package:sale_form_demo/utils/app_color.dart';

// https://medium.com/flutter-community/flutter-bouncing-button-animation-ece660e19c91

class LaunchButtonWidget extends StatefulWidget {
  final Function onSubmit;
  LaunchButtonWidget({this.onSubmit});

  @override
  _LaunchButtonWidgetState createState() => _LaunchButtonWidgetState();
}

class _LaunchButtonWidgetState extends State<LaunchButtonWidget>
    with SingleTickerProviderStateMixin {
  double _scale;
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 200),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }


  Future handleOnPress() async {
    _controller.forward();
    await Future.delayed(Duration(milliseconds: 200));
    _controller.reverse();
    await Future.delayed(Duration(milliseconds: 500));
    // call customer info page validateForm function
    widget.onSubmit();

  }

  @override
  Widget build(BuildContext context) {

    _scale = 1 - _controller.value;

    return GestureDetector(
    onTap: (){
      handleOnPress();
    },

      child: Transform.scale(
        scale: _scale,
        child: _animatedButtonUI,
      ),
    );
  }

  Widget get _animatedButtonUI => Container(
    margin: EdgeInsets.symmetric(horizontal: 100),
    padding: EdgeInsets.symmetric(vertical: 10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(100),
      boxShadow: [
        BoxShadow(
          color: Color(0x80000000),
          blurRadius: 3.0,
          offset: Offset(0.0, 3.0),
        ),
      ],
      color: colorBlue,
    ),
    child: Center(
      child: Text(
        'LAUNCH',
        style: TextStyle(
          fontSize: 18,
          color: Colors.white,
        ),
      ),
    ),
  );
}