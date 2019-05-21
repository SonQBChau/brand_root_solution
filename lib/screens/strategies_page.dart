import 'package:flutter/material.dart';
import 'package:sale_form_demo/utils/app_color.dart';

class StrategiesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    final double cardContainerHeight = height - 60;
    final double cardHeight = cardContainerHeight / 4;

    return Scaffold(
      body: SafeArea(
        child: Container(
          constraints: new BoxConstraints.expand(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          decoration: BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("images/Background.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: <Widget>[
              Container(
                width: width,
                height: cardHeight,
                alignment: Alignment.center,
                decoration: new BoxDecoration(
                  color: colorGreen,
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
                  'STRATEGIES',
                  style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w700),
                ),
              ),
              Expanded(
                child: PageView(
                  controller: PageController(viewportFraction: 0.8),
                  children: <Widget>[
                    buildContainer('MI STRATEGY MANAGEMENT'),
                    buildContainer('PM STRATEGY MANAGEMENT'),
                    buildContainer('SPARE PARTS STRATEGY MANAGEMENT'),
                    buildContainer('SAFETY SYSTEM MANAGEMENT'),
                    buildContainer('PROCESS CONTROL STRATEGY'),
                  ],
                ),
              ),
              Container(
                child: _buildDotIndicator(),
              ),

            ],
          ),
        ),
      ),
    );
  }

  Widget buildContainer(String title) {
    return GestureDetector(
      onTap: () {
        print('Card Tap!');
      },
      child: Container(
        width: 250,
        padding: EdgeInsets.symmetric(vertical: 40, horizontal: 30),
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        decoration: new BoxDecoration(
          color: colorGreen10,
          borderRadius: new BorderRadius.circular(15),
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
                color: colorGreen,
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

  _buildDotIndicator() {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(bottom: 30, left: 70, right: 70),
          child: SizedBox(
            height: 2.0,
            child: Center(
              child: Container(
                margin: EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
                height: 2.0,
                color: colorGreen,
              ),
            ),
          ),
        ),
        Container(
          height: 20,
          width: 20,
          decoration: new BoxDecoration(shape: BoxShape.circle, color: colorGreen),
        ),
      ],
    );
  }
}
