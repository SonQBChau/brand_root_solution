import 'package:flutter/material.dart';
import 'package:sale_form_demo/utils/app_color.dart';

class MenuCardWidget extends StatelessWidget {
  final int positionMultiplier;
  final Widget navigateTo;
  final Color color;
  final String title;

  MenuCardWidget(
      {@required this.color, @required this.title, @required this.positionMultiplier, @required this.navigateTo}):
        assert(color != null),
        assert(title != null),
        assert(positionMultiplier != null),
        assert(navigateTo != null);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    final double cardContainerHeight = height - 60;
    final double cardHeight = cardContainerHeight / 4;
    final double cardPosition = cardHeight - 20;

    return Positioned(
      top: cardPosition * positionMultiplier,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => navigateTo),
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
