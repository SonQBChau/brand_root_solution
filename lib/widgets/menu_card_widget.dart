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


  MenuCardWidget(
      {
      @required this.color,
      @required this.title,
      @required this.positionMultiplier,
        this.isLastCard = false,
      @required this.navigateTo})
      : assert(color != null),
        assert(title != null),
        assert(positionMultiplier != null),
        assert(navigateTo != null);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final double screeHeight = SizeConfig.safeAreaScreenHeight;
    final double screenWidth = SizeConfig.safeAreaScreenWidth;


    double cardHeight =  screeHeight / 4;
    final double cardPosition = cardHeight -20;
    if (isLastCard){
      cardHeight = cardHeight + 40;
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
