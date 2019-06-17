

import 'package:animator/animator.dart';
import 'package:flutter/material.dart';
import 'package:sale_form_demo/screens/my_home_page.dart';

class LogoTextAnimator extends StatefulWidget {

  @override
  _LogoTextAnimatorState createState() => _LogoTextAnimatorState();
}

class _LogoTextAnimatorState extends State<LogoTextAnimator> with SingleTickerProviderStateMixin{
  Animation animation, delayedAnimation, muchDelayedAnimation;
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(duration: Duration(seconds: 2), vsync: this);

    animation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController, curve: Curves.fastOutSlowIn));

    delayedAnimation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController,
        curve: Interval(0.6, 1.0, curve: Curves.fastOutSlowIn)))
      ..addListener(() {
        // #enddocregion addListener
        setState(() {
          // The state that has changed here is the animation object’s value.
        });
        // #docregion addListener
      });

    animationController.forward();


  }

  @override
  Widget build(BuildContext context) {


    return Container(
      child:    Transform(
        transform: Matrix4.translationValues(
            delayedAnimation.value * 350, 0.0, 0.0),
        child:  CompanyName(),
      )
    );
  }
}