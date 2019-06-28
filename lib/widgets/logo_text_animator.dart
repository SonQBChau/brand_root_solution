import 'package:animator/animator.dart';
import 'package:flutter/material.dart';
import 'package:sale_form_demo/screens/my_home_page.dart';

class LogoTextAnimator extends StatefulWidget {
  @override
  _LogoTextAnimatorState createState() => _LogoTextAnimatorState();
}

class _LogoTextAnimatorState extends State<LogoTextAnimator> with SingleTickerProviderStateMixin {
  Animation animation, delayedAnimation, fadeAnimation;
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(duration: Duration(seconds: 3), vsync: this);

    animation =
        Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(parent: animationController, curve: Curves.fastOutSlowIn));

    delayedAnimation = Tween(begin: -1.0, end: 0.0)
        .animate(CurvedAnimation(parent: animationController, curve: Interval(0.4, 0.7, curve: Curves.fastOutSlowIn)))
          ..addListener(() {
            setState(() {
              // The state that has changed here is the animation object’s value.
            });
          });

    fadeAnimation = Tween(begin: 0.0, end: 1.0)
        .animate(CurvedAnimation(parent: animationController, curve: Interval(0.3, 1.0, curve: Curves.fastOutSlowIn)))
      ..addListener(() {
        setState(() {
          // The state that has changed here is the animation object’s value.
        });
      });

    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Transform(
      transform: Matrix4.translationValues(delayedAnimation.value * 350, 0.0, 0.0),
      child: FadeTransition(
          opacity: fadeAnimation,
          child: CompanyName()),
    ));
  }
}
