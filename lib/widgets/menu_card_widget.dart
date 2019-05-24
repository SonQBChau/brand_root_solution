import 'package:animator/animator.dart';
import 'package:flutter/material.dart';
import 'package:sale_form_demo/utils/no_animation_page_route.dart';
import 'package:sale_form_demo/utils/size_config.dart';
import 'package:sale_form_demo/utils/slide_up_route.dart';

class MenuCardWidget extends StatelessWidget {
  final int positionMultiplier;
  final Widget navigateTo;
  final Color color;
  final String title;
  final bool isLastCard;
  final double screeHeight; // this is needed since we cannot get the safearea inside the widget
  final double screenWidth;

  MenuCardWidget(
      {@required this.color,
      @required this.title,
      @required this.screenWidth,
      @required this.screeHeight,
      @required this.positionMultiplier,
      this.isLastCard = false,
      @required this.navigateTo})
      : assert(color != null),
        assert(title != null),
        assert(positionMultiplier != null),
        assert(navigateTo != null);

  @override
  Widget build(BuildContext context) {

    double cardHeight = screeHeight / 4 + 5;
    final double cardPosition = cardHeight - 10;
    if (isLastCard) {
      cardHeight = cardHeight + 10;
    }

    return Positioned(
      top: cardPosition * positionMultiplier,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            NoAnimationMaterialPageRoute(builder: (context) => navigateTo),
          );
        },
        child: Container(
          width: screenWidth,
          height: cardHeight,
          alignment: Alignment.center,
          decoration: new BoxDecoration(
            color: color,
            borderRadius: new BorderRadius.only(
                bottomLeft: const Radius.circular(15.0), bottomRight: const Radius.circular(15.0)),
            boxShadow: [
              BoxShadow(
                color: Colors.black54,
                offset: new Offset(0.0, 4.0),
                blurRadius: 10.0,
              )
            ],
          ),
          child: Material(
            color: Colors.transparent,
            child: Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w700),
            ),
          ),
        ),
      ),
    );
  }
}
