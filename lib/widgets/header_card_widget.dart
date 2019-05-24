import 'package:flutter/material.dart';
import 'package:sale_form_demo/utils/size_config.dart';


class HeaderCardWidget extends StatelessWidget {
  final int positionMultiplier;
  final Color color;
  final String title;
  final double animationValue;
  final Function notifyParent;
  final bool keepOpacity;
  final bool isLastCard; // add extra height
  final double screeHeight; // this is needed since we cannot get the safearea inside the widget
  final double screenWidth;




  HeaderCardWidget(
      {
        @required this.animationValue,
        @required this.color,
        @required this.title,
        @required this.screenWidth,
        @required this.screeHeight,
        this.isLastCard = false,
        this.keepOpacity = false,
        this.notifyParent,

        @required this.positionMultiplier,
      })
      : assert(color != null),
        assert(title != null),
        assert(positionMultiplier != null)
  ;

  @override
  Widget build(BuildContext context) {

    double cardHeight = screeHeight / 4 + 5;
    final double cardPosition = cardHeight - 10;
    if (isLastCard) {
      cardHeight = cardHeight + 10;
    }

    final opacityValue = keepOpacity ? 1 : animationValue;

    return Positioned(
      top: cardPosition * positionMultiplier * animationValue,
      child: GestureDetector(
        onTap: () {

          notifyParent();

        },
        child: Opacity(
          opacity: opacityValue == 0 ? 0 : 1,
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
      ),
    );
  }
}