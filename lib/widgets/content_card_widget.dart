import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sale_form_demo/screens/mi_strategy_page.dart';
import 'package:sale_form_demo/screens/strategies_page.dart';
import 'dart:math' as math;

import 'package:sale_form_demo/utils/app_color.dart';
import 'package:sale_form_demo/utils/custom_page_transition.dart';
import 'package:sale_form_demo/utils/size_config.dart';

//card animation
//https://medium.com/flutter-community/flutter-fab-navigation-animation-to-next-screen-f63acf3de6b7

class ContentCardWidget extends StatelessWidget {
  final String title;
  final Widget navigateTo;
  final Color colorBackground;
  final Color colorTitle;
  final double top;
  final double bottom;
  GlobalKey _fabKey = GlobalKey();
  final duration = const Duration(milliseconds: 500);


  ContentCardWidget(
      {@required this.title, this.navigateTo, this.colorBackground, this.colorTitle, this.top, this.bottom})
      : assert(title != null),
        assert(colorBackground != null),
        assert(colorTitle != null);

  _onCardTap(BuildContext context) {
    final RenderBox fabRenderBox = _fabKey.currentContext.findRenderObject();
    final fabSize = fabRenderBox.size ;
    final fabOffset = fabRenderBox.localToGlobal(Offset.zero);

    Navigator.of(context).push(PageRouteBuilder(
      transitionDuration: duration,
      pageBuilder: (BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation) =>
          MiStrategyPage(),
      transitionsBuilder: (BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation, Widget child) =>
          _buildTransition(child, animation, fabSize, fabOffset),
    ));
  }

  Widget _buildTransition(
      Widget page,
      Animation<double> animation,
      Size fabSize,
      Offset fabOffset,
      ) {
    if (animation.value == 1) return page;

    final borderTween = BorderRadiusTween(
      begin: BorderRadius.circular(20),
      end: BorderRadius.circular(0.0),
    );
    final sizeTween = SizeTween(
      begin: fabSize,
      end: SizeConfig.screenSize,
    );
    final offsetTween = Tween<Offset>(
      begin: fabOffset,
      end: Offset.zero,
    );

    final easeInAnimation = CurvedAnimation(
      parent: animation,
      curve: Curves.easeIn,
    );
    final easeAnimation = CurvedAnimation(
      parent: animation,
      curve: Curves.easeInExpo,
    );

    final radius = borderTween.evaluate(easeInAnimation);
    final offset = offsetTween.evaluate(animation);

    final size = sizeTween.evaluate(easeInAnimation);

    final transitionFab = Opacity(
      opacity: 1 - easeAnimation.value,
      child: Container(
        color: colorBlue,
      ),
    );

    Widget positionedClippedChild(Widget child) => Positioned(
        width: size.width ,
        height: size.height ,
        left: offset.dx  ,
        top: offset.dy ,
        child: ClipRRect(
          borderRadius: radius,
          child: child,
        ));

    return Stack(
      children: [

        positionedClippedChild(page),
        positionedClippedChild(transitionFab),
      ],
    );
  }



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if(navigateTo != null) {
          _onCardTap(context);
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
        key: _fabKey,
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
