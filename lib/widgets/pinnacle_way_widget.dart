import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sale_form_demo/screens/pinnacle_way_page.dart';
import 'dart:math' as math;
import 'dart:io';

import 'package:sale_form_demo/utils/app_color.dart';

//https://medium.com/flutter-community/mastering-hero-animations-in-flutter-bc07e1bea327
class PinnacleWayWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          Navigator.of(context).push(CupertinoPageRoute(
            builder: (BuildContext context) {
              return PinnacleWayPage();
            },
          ));
        },
        child: Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric( horizontal: 10),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          decoration: BoxDecoration(
            color: colorBlue40,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Hero(
            tag: "PinnacleWay",
            flightShuttleBuilder: (
              BuildContext flightContext,
              Animation<double> animation,
              HeroFlightDirection flightDirection,
              BuildContext fromHeroContext,
              BuildContext toHeroContext,
            ) {
              final Hero toHero = toHeroContext.widget;
              return flightDirection == HeroFlightDirection.push
              ? RotationTransition(
                turns: animation.drive(
                  Tween<double>(begin: 0.0, end: 1.0).chain(
                    CurveTween(
                      curve: Interval(0.0, 1.0,
                          curve: FlipUp()),
                    ),
                  ),
                ),
                child: toHero.child,
              )
                  : RotationTransition(
                turns: animation.drive(
                  Tween<double>(begin: 0.0, end: 1.0).chain(
                    CurveTween(
                      curve: Interval(0.0, 1.0,
                          curve: FlipDown()),
                    ),
                  ),
                ),
                child: toHero.child,
              );

            },
            child: Image.asset(
              "images/PinnacleWay.png",
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}

class FlipUp extends Curve {
  @override
  double transform(double t) {
    assert(t >= 0.0 && t <= 1.0);
    double u = 0.25 - t/4;
  return u;
  }
}

class FlipDown extends Curve {
  @override
  double transform(double t) {
    assert(t >= 0.0 && t <= 1.0);
    double u = 0 - t/4;
    return u;
  }
}