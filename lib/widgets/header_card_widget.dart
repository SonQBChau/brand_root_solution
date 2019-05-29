import 'package:flutter/material.dart';
import 'package:sale_form_demo/utils/size_config.dart';


class HeaderCardWidget extends AnimatedWidget {
  final int positionMultiplier;
  final Color color;
  final String title;
  final AnimationController controller;
  final Function notifyParent;
  final bool keepOpacity;
  final bool isLastCard; // add extra height
  final double screeHeight; // this is needed since we cannot get the safearea inside the widget
  final double screenWidth;




  const HeaderCardWidget(
      { Key key,
        this.controller,
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
        assert(positionMultiplier != null),
        super(key: key, listenable: controller)
  ;




  @override
  Widget build(BuildContext context) {

    double cardHeight = screeHeight / 4 + 5;
    final double cardPosition = cardHeight - 10;
    if (isLastCard) {
      cardHeight = cardHeight + 10;
    }

    if (controller.value == 1.0 && !keepOpacity)
      return Container();

    return Positioned(
      top: cardPosition * positionMultiplier * (1-controller.value),
      child: GestureDetector(
        onTap: () {
          notifyParent();
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
          child: Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}