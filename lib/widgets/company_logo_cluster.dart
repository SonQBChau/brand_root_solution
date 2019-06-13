

import 'package:flutter/material.dart';
import 'dart:math' as math;


class CompanyLogoCluster extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
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
      left:58,
      child: Container(
        child: Transform.rotate(
          angle: -math.pi/2,
          child: Image.asset(
            'images/triangle_green.png',
            height: 36,
            width: 36,
          ),
        ),
      ),
    );
  }
}

class BlueTriangle1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -10,
      left: 89,
      child: Container(
        child: Transform.rotate(
          angle: -math.pi/2,
          child: Image.asset(
            'images/triangle_blue.png',
            height: 36,
            width: 36,
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
      top: -6,
      left: 80,
      child: Container(
        child: Transform.rotate(
          angle: -math.pi/2,
          child: Image.asset(
            'images/triangle_blue.png',
            height: 36,
            width: 36,
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
      left: 30,
      child: Container(
        child: Transform.rotate(
          angle: math.pi/2,
          child: Image.asset(
            'images/triangle_blue.png',
            height: 36,
            width: 36,
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
      left: 30,
      child: Container(
        child: Transform.rotate(
          angle: math.pi/2,
          child: Image.asset(
            'images/triangle_blue.png',
            height: 36,
            width: 36,
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
      left: 12,
      child: Container(
        child: Transform.rotate(
          angle: math.pi/2,
          child: Image.asset(
            'images/triangle_blue.png',
            height: 36,
            width: 36,
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
      left: 41,
      child: Container(
        child: Transform.rotate(
          angle: -math.pi/2,
          child: Image.asset(
            'images/triangle_blue.png',
            height: 36,
            width: 36,
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
      left: 41,
      child: Container(
        child: Transform.rotate(
          angle: -math.pi/2,
          child: Image.asset(
            'images/triangle_blue.png',
            height: 36,
            width: 36,
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
      left: 44,
      child: Container(
        child: Transform.rotate(
          angle: -math.pi/2,
          child: Image.asset(
            'images/triangle_blue.png',
            height: 36,
            width: 36,
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
      left: 53,
      child: Container(
        child: Transform.rotate(
          angle: -math.pi/2,
          child: Image.asset(
            'images/triangle_blue.png',
            height: 36,
            width: 36,
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
      left: 63,
      child: Container(
        child: Transform.rotate(
          angle: math.pi/2,
          child: Image.asset(
            'images/triangle_blue.png',
            height: 36,
            width: 36,
          ),
        ),
      ),
    );
  }
}