import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sale_form_demo/screens/strategies_page.dart';
import 'dart:math' as math;

import 'package:sale_form_demo/utils/app_color.dart';
import 'package:sale_form_demo/utils/custom_page_transition.dart';

class ContentCardWidget extends StatelessWidget {
  final String title;
  final Widget navigateTo;
  final Color colorBackground;
  final Color colorTitle;
  final double top;
  final double bottom;

  ContentCardWidget(
      {@required this.title, this.navigateTo, this.colorBackground, this.colorTitle, this.top, this.bottom})
      : assert(title != null),
        assert(colorBackground != null),
        assert(colorTitle != null);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if(navigateTo != null) {
//          Navigator.push(
//            context,
//            CupertinoPageRoute(builder: (context) => navigateTo),
//          );
          Navigator.push(
            context,
            FadeRoute(page: navigateTo),
          );

        }
        else {
          final snackBar = SnackBar(
            content: Text(
              'Please select MI Strategy Management',
              style: TextStyle(fontWeight: FontWeight.w700, color: colorGrey20),
            ),
          );
          Scaffold.of(context).showSnackBar(snackBar);
        }
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 40, horizontal: 30),
        margin: EdgeInsets.only(top: 10, bottom: bottom, left: 20, right: 20),
        decoration:  BoxDecoration(
          color: colorBackground,
          borderRadius:  BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black54,
              offset: new Offset(0.0, 4.0),
              blurRadius: 10.0,
            )
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Positioned(
                  top: 5,
                  child: Transform.rotate(
                    angle: math.pi/2,
                    child: Image(
                      image: AssetImage("images/triangle_blue.png"),
                      width: 20,
                      height: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                Transform.rotate(
                  angle: math.pi/2,
                  child: Image(
                    image: AssetImage("images/triangle_blue.png"),
                    width: 20,
                    height: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),

            SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(
                color: colorTitle,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Managing the risk based, proactive approach and generating the equipment plans/ strengths'
              ' that aim to prevent loss of containment events for all plant equipments.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    );
  }
}
