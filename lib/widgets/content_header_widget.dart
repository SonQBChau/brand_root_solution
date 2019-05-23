import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sale_form_demo/services/intro_form_provider.dart';
import 'package:sale_form_demo/services/menu_slide_provider.dart';
import 'package:sale_form_demo/utils/app_color.dart';

class ContentHeaderWidget extends StatelessWidget {
  final String title;
  final Color color;
  final String heroTag;
  final int position;

  ContentHeaderWidget(
      {Key key,@required this.title, this.color, this.heroTag, this.position}):
        assert(title != null),
        assert(color != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuProvider = Provider.of<MenuSlideProvider>(context);

    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    final double cardContainerHeight = height - 60;
    final double cardHeight = cardContainerHeight / 4;

    return GestureDetector(
      onTap: () {
        //navigate back to the menu card and animated the menu card slide down
        Navigator.pop(context, true);
        menuProvider.setActiveMenu(position);


      },
      child: Hero(
        tag: heroTag,
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Material(
                color: Colors.transparent,
                child: Text(
                  title,
                  style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              SizedBox(
                height: 1.5,
                width: 50,
                child: Container(
                  height: 1.5,
                  color: colorGrey20,
                ),
              ),
              SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
