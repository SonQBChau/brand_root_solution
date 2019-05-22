import 'package:animator/animator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sale_form_demo/services/intro_form_provider.dart';
import 'package:sale_form_demo/utils/size_config.dart';
import 'package:sale_form_demo/utils/slide_up_route.dart';

class MenuCardWidget extends StatefulWidget {
  final int positionMultiplier;
  final Widget navigateTo;
  final Color color;
  final String title;
  final double height;
  final double width;
  final String heroTag;

  MenuCardWidget(
      {@required this.height,
      @required this.width,
      @required this.color,
      @required this.title,
      @required this.heroTag,
      @required this.positionMultiplier,
      @required this.navigateTo})
      : assert(color != null),
        assert(height != null),
        assert(width != null),
        assert(title != null),
        assert(heroTag != null),
        assert(positionMultiplier != null),
        assert(navigateTo != null);

  @override
  _MenuCardWidgetState createState() => _MenuCardWidgetState();
}

class _MenuCardWidgetState extends State<MenuCardWidget> {



  @override
  Widget build(BuildContext context) {
    final introForm = Provider.of<IntroFormProvider>(context);

    final double cardContainerHeight = widget.height - 60;
    final double cardHeight = cardContainerHeight / 4;
    final double cardPosition = cardHeight - 20;

    double offsetPosition = 0;
    if (introForm.getShouldAnimated()){
      offsetPosition = -1 * widget.positionMultiplier.toDouble();
    }

    return Positioned(
      top: cardPosition * widget.positionMultiplier,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
              SlideUpRoute(page: widget.navigateTo),
          );
          introForm.setShouldAnimated(true);
        setState(() {
        });

        },
        child: Hero(
          tag: widget.heroTag,
          child: Animator(
            tween: Tween<Offset>(begin: Offset.zero, end: Offset(0, offsetPosition)),
            duration: Duration(milliseconds: 400),
            builder: (anim) => FractionalTranslation(
                  translation: anim.value,
                  child: Container(
                    width: widget.width,
                    height: cardHeight,
                    alignment: Alignment.center,
                    decoration: new BoxDecoration(
                      color: widget.color,
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
                        widget.title,
                        style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
          ),
        ),
      ),
    );
  }
}
