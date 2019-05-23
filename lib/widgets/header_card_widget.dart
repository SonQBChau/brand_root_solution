import 'package:flutter/material.dart';
import 'package:sale_form_demo/utils/size_config.dart';


class HeaderCardWidget extends StatelessWidget {
  final int positionMultiplier;
  final Color color;
  final String title;
  final double animationValue;
  final Function notifyParent;




  HeaderCardWidget(
      {
        @required this.animationValue,
        @required this.color,
        @required this.title,
        this.notifyParent,
        @required this.positionMultiplier,
      })
      : assert(color != null),
        assert(title != null),
        assert(positionMultiplier != null)
  ;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final double screeHeight = SizeConfig.safeAreaScreenHeight;
    final double screenWidth = SizeConfig.safeAreaScreenWidth;

    double cardHeight =  screeHeight / 4 ;
    final double cardPosition = screeHeight / 4 - 10;



    return Positioned(
      top: cardPosition * positionMultiplier * animationValue,
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