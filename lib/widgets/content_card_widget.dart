import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sale_form_demo/services/menu_slide_provider.dart';

class ContentCardWidget extends StatelessWidget {
  final String title;
  final Widget navigateTo;
  final Color colorBackground;
  final Color colorTitle;

  ContentCardWidget(
      {@required this.title, this.navigateTo, this.colorBackground, this.colorTitle}):
        assert(title != null),
        assert(colorBackground != null),
        assert(colorTitle != null),
        assert(navigateTo != null);

  
  @override
  Widget build(BuildContext context) {
    final menuProvider = Provider.of<MenuSlideProvider>(context);
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => navigateTo),
        );
        menuProvider.setSlideStatus(false);
      },
      child: Container(
        width: 250,
        padding: EdgeInsets.symmetric(vertical: 40, horizontal: 30),
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        decoration: new BoxDecoration(
          color: colorBackground,
          borderRadius: new BorderRadius.circular(20),
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
            Text(
              title,
              style: TextStyle(
                color: colorTitle,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Managing the risk based, proactive approach and generating the equipment plans/ strengths'
                  ' that aim to prevent loss of containment events for all plant equipments.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    );
  }
}
