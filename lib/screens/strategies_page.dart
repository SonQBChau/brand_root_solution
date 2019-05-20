import 'package:flutter/material.dart';
import 'package:sale_form_demo/utils/app_color.dart';

class StrategiesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    final double cardContainerHeight = height - 60;
    final double cardHeight = cardContainerHeight / 4;
    final double cardPosition = cardHeight - 20;

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
                    buildContainer(),
                    buildContainer(),
                    buildContainer(),
                    buildContainer(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container buildContainer() {
    return Container(
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
                      Text('MI STRATEGY MANAGEMENT',
                      style: TextStyle(
                        color: colorGreen,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                      ),
                      SizedBox(height: 20,),
                      Text('Managing the risk based, proactive approach and generating the equipment plans/ strengths'
                          ' that aim to prevent loss of containment events for all plant equipments.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      )
                    ],
                  ),
                );
  }
}


