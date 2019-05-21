import 'package:flutter/material.dart';
import 'package:sale_form_demo/utils/size_config.dart';
import 'package:sale_form_demo/utils/slide_up_route.dart';


class MenuCardWidget extends StatelessWidget {
  final int positionMultiplier;
  final Widget navigateTo;
  final Color color;
  final String title;
  final double height;
  final double width;

  MenuCardWidget(
      {@required this.height,
        @required this.width,
        @required this.color,
        @required this.title,
        @required this.positionMultiplier,
        @required this.navigateTo}):
        assert(color != null),
        assert(height != null),
        assert(width != null),
        assert(title != null),
        assert(positionMultiplier != null),
        assert(navigateTo != null);

  @override
  Widget build(BuildContext context) {
    final double cardContainerHeight = height - 60;
    final double cardHeight = cardContainerHeight / 4;
    final double cardPosition = cardHeight - 20;


    return Positioned(
      top: cardPosition * positionMultiplier,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
//            MaterialPageRoute(builder: (context) => navigateTo),
              SlideUpRoute(page:navigateTo),
          );
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
          child: Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}
