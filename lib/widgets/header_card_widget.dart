import 'package:flutter/material.dart';


class HeaderCardWidget extends StatelessWidget {
  final int positionMultiplier;
  final Color color;
  final String title;
  final double height;
  final double width;
  final double animationValue;
  final Function notifyParent;




  HeaderCardWidget(
      {@required this.height,
        @required this.width,
        @required this.animationValue,
        @required this.color,
        @required this.title,
        this.notifyParent,
        @required this.positionMultiplier,
      })
      : assert(color != null),
        assert(height != null),
        assert(width != null),
        assert(title != null),
        assert(positionMultiplier != null)
  ;

  @override
  Widget build(BuildContext context) {

    final double cardContainerHeight = height - 60;
    final double cardHeight = cardContainerHeight / 4;
    final double cardPosition = cardHeight - 20;



    return Positioned(
      top: cardPosition * positionMultiplier * animationValue,
      child: GestureDetector(
        onTap: () {

          notifyParent();

        },
        child: Container(
          width: width,
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