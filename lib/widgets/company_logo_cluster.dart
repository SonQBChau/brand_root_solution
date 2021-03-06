

import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:animator/animator.dart';

class CompanyLogoCluster extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      child: Stack(
        children: <Widget>[
          GreenTriangle(),
          BlueTriangle1(),
          BlueTriangle2(),
          BlueTriangle3(),
          BlueTriangle4(),
          BlueTriangle5(),
          BlueTriangle6(),
          BlueTriangle7(),
          BlueTriangle8(),
          BlueTriangle9(),
          BlueTriangle10(),
        ],
      ),
    );
  }
}

class GreenTriangle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top:6,
      left:39,
      child: Container(
        child: Transform.rotate(
          angle: -math.pi/2,
          child:  Animator(
            tween: Tween<Offset>(begin: Offset(-10, -5), end: Offset(0, 0)),
            duration: Duration(milliseconds: 1000),
            cycles: 1,
            builder: (anim) => FractionalTranslation(
              translation: anim.value,
              child: Image.asset(
                'images/triangle_green.png',
                height: 36,
                width: 36,
              ),
            ),
          )
        ),
      ),
    );
  }
}

class BlueTriangle1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -8,
      left: 70,
      child: Container(
        child: Transform.rotate(
          angle: -math.pi/2,
          child: Animator(
            tween: Tween<Offset>(begin: Offset(-8, -1), end: Offset(0, 0)),
            duration: Duration(milliseconds: 1000),
            cycles: 1,
            builder: (anim) => FractionalTranslation(
              translation: anim.value,
              child: Image.asset(
                'images/triangle_blue.png',
                height: 34,
                width: 34,
              ),
            ),
          ),
        ),
      ),
    );
  }
}


class BlueTriangle2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -4,
      left: 60,
      child: Container(
        child: Transform.rotate(
          angle: -math.pi/2,
          child: Animator(
            tween: Tween<Offset>(begin: Offset(10, -2), end: Offset(0, 0)),
            duration: Duration(milliseconds: 1000),
            cycles: 1,
            builder: (anim) => FractionalTranslation(
              translation: anim.value,
              child: Image.asset(
                'images/triangle_blue.png',
                height: 34,
                width: 34,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BlueTriangle3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 1,
      left: 12,
      child: Container(
        child: Transform.rotate(
          angle: math.pi/2,
          child: Animator(
            tween: Tween<Offset>(begin: Offset(10, 5), end: Offset(0, 0)),
            duration: Duration(milliseconds: 1000),
            cycles: 1,
            builder: (anim) => FractionalTranslation(
              translation: anim.value,
              child: Image.asset(
                'images/triangle_blue.png',
                height: 34,
                width: 34,
              ),
            ),
          ),
        ),
      ),
    );
  }
}


class BlueTriangle4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 10,
      left: 12,
      child: Container(
        child: Transform.rotate(
          angle: math.pi/2,
          child: Animator(
            tween: Tween<Offset>(begin: Offset(4, -10), end: Offset(0, 0)),
            duration: Duration(milliseconds: 1000),
            cycles: 1,
            builder: (anim) => FractionalTranslation(
              translation: anim.value,
              child: Image.asset(
                'images/triangle_blue.png',
                height: 34,
                width: 34,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BlueTriangle5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 33,
      left: -5,
      child: Container(
        child: Transform.rotate(
          angle: math.pi/2,
          child: Animator(
            tween: Tween<Offset>(begin: Offset(7, -3), end: Offset(0, 0)),
            duration: Duration(milliseconds: 1000),
            cycles: 1,
            builder: (anim) => FractionalTranslation(
              translation: anim.value,
              child: Image.asset(
                'images/triangle_blue.png',
                height: 34,
                width: 34,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BlueTriangle6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 29,
      left: 21,
      child: Container(
        child: Transform.rotate(
          angle: -math.pi/2,
          child: Animator(
            tween: Tween<Offset>(begin: Offset(3, -5), end: Offset(0, 0)),
            duration: Duration(milliseconds: 1000),
            cycles: 1,
            builder: (anim) => FractionalTranslation(
              translation: anim.value,
              child: Image.asset(
                'images/triangle_blue.png',
                height: 34,
                width: 34,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BlueTriangle7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 37,
      left: 21,
      child: Container(
        child: Transform.rotate(
          angle: -math.pi/2,
          child: Animator(
            tween: Tween<Offset>(begin: Offset(2, -5), end: Offset(0, 0)),
            duration: Duration(milliseconds: 1000),
            cycles: 1,
            builder: (anim) => FractionalTranslation(
              translation: anim.value,
              child: Image.asset(
                'images/triangle_blue.png',
                height: 34,
                width: 34,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BlueTriangle8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 63,
      left: 24,
      child: Container(
        child: Transform.rotate(
          angle: -math.pi/2,
          child: Animator(
            tween: Tween<Offset>(begin: Offset(4, 9), end: Offset(0, 0)),
            duration: Duration(milliseconds: 1000),
            cycles: 1,
            builder: (anim) => FractionalTranslation(
              translation: anim.value,
              child: Image.asset(
                'images/triangle_blue.png',
                height: 34,
                width: 34,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BlueTriangle9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 59,
      left: 33,
      child: Container(
        child: Transform.rotate(
          angle: -math.pi/2,
          child: Animator(
            tween: Tween<Offset>(begin: Offset(2, 7), end: Offset(0, 0)),
            duration: Duration(milliseconds: 1000),
            cycles: 1,
            builder: (anim) => FractionalTranslation(
              translation: anim.value,
              child: Image.asset(
                'images/triangle_blue.png',
                height: 34,
                width: 34,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BlueTriangle10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 95,
      left: 43,
      child: Container(
        child: Transform.rotate(
          angle: math.pi/2,
          child: Animator(
            tween: Tween<Offset>(begin: Offset(-6, 5), end: Offset(0, 0)),
            duration: Duration(milliseconds: 1000),
            cycles: 1,
            builder: (anim) => FractionalTranslation(
              translation: anim.value,
              child: Image.asset(
                'images/triangle_blue.png',
                height: 34,
                width: 34,
              ),
            ),
          ),
        ),
      ),
    );
  }
}