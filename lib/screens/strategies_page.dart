import 'package:flutter/material.dart';
import 'package:sale_form_demo/screens/mi_strategy_page.dart';
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
                    buildContainer(context,'MI STRATEGY MANAGEMENT'),
                    buildContainer(context,'PM STRATEGY MANAGEMENT'),
                    buildContainer(context,'SPARE PARTS STRATEGY MANAGEMENT'),
                    buildContainer(context,'SAFETY SYSTEM MANAGEMENT'),
                    buildContainer(context,'PROCESS CONTROL STRATEGY'),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                height: 30,
                width: 230,
//                color: Colors.yellow,
                child: _buildDotIndicator(),
              ),

            ],
          ),
        ),
      ),
    );
  }

  Widget buildContainer(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MiStrategyPage()),
        );
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
    return Stack(
      children: <Widget>[
        Positioned(
          top:15,
          left: 5,
          child: SizedBox(
            height: 2.0,
            width: 200,
            child: Container(
              height: 2.0,
              color: colorGreen,
            ),
          ),
        ),
        Positioned(
          top:0,
          left: (0),
          child: Container(
            height: 30,
            width: 30,
            decoration: new BoxDecoration(shape: BoxShape.circle, color: Colors.green[200]),
          ),
        ),
        Positioned(
          top:5,
          left: 5,
          child: Container(
            height: 20,
            width: 20,
            decoration: new BoxDecoration(shape: BoxShape.circle, color: colorGreen),
          ),
        ),
        Positioned(
          top:5,
          left: 55,
          child: Container(
            height: 20,
            width: 20,
            decoration: new BoxDecoration(shape: BoxShape.circle, color: colorGreen),
          ),
        ),
        Positioned(
          top:5,
          left: 105,
          child: Container(
            height: 20,
            width: 20,
            decoration: new BoxDecoration(shape: BoxShape.circle, color: colorGreen),
          ),
        ),
        Positioned(
          top:5,
          left: 155,
          child: Container(
            height: 20,
            width: 20,
            decoration: new BoxDecoration(shape: BoxShape.circle, color: colorGreen),
          ),
        ),
        Positioned(
          top:5,
          left: 205,
          child: Container(
            height: 20,
            width: 20,
            decoration: new BoxDecoration(shape: BoxShape.circle, color: colorGreen),
          ),
        ),

      ],
    );
  }
}
