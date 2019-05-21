import 'package:flutter/material.dart';
import 'package:sale_form_demo/screens/mi_strategy_page.dart';
import 'package:sale_form_demo/utils/app_color.dart';
import 'package:sale_form_demo/widgets/content_card_widget.dart';

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
          constraints: BoxConstraints.expand(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/Background.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        'STRATEGIES',
                        style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w700),
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
              Expanded(
                child: PageView(
                  controller: PageController(viewportFraction: 0.8),
                  children: <Widget>[
                    ContentCardWidget(
                      title: 'MI STRATEGY MANAGEMENT',
                      colorBackground: colorGreen10,
                      colorTitle: colorGreen,
                      navigateTo: MiStrategyPage(),
                    ),
                    ContentCardWidget(
                      title: 'PM STRATEGY MANAGEMENT',
                      colorBackground: colorGreen10,
                      colorTitle: colorGreen,
                      navigateTo: MiStrategyPage(),
                    ),
                    ContentCardWidget(
                      title: 'SPARE PARTS STRATEGY MANAGEMENT',
                      colorBackground: colorGreen10,
                      colorTitle: colorGreen,
                      navigateTo: MiStrategyPage(),
                    ),
                    ContentCardWidget(
                      title: 'SAFETY SYSTEM MANAGEMENT',
                      colorBackground: colorGreen10,
                      colorTitle: colorGreen,
                      navigateTo: MiStrategyPage(),
                    ),
                    ContentCardWidget(
                      title: 'PROCESS CONTROL STRATEGY',
                      colorBackground: colorGreen10,
                      colorTitle: colorGreen,
                      navigateTo: MiStrategyPage(),
                    ),
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


  _buildDotIndicator() {
    return Stack(
      children: <Widget>[
        Positioned(
          top: 15,
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
          top: 0,
          left: (0),
          child: Container(
            height: 30,
            width: 30,
            decoration: new BoxDecoration(shape: BoxShape.circle, color: Colors.green[200]),
          ),
        ),
        Positioned(
          top: 5,
          left: 5,
          child: Container(
            height: 20,
            width: 20,
            decoration: new BoxDecoration(shape: BoxShape.circle, color: colorGreen),
          ),
        ),
        Positioned(
          top: 5,
          left: 55,
          child: Container(
            height: 20,
            width: 20,
            decoration: new BoxDecoration(shape: BoxShape.circle, color: colorGreen),
          ),
        ),
        Positioned(
          top: 5,
          left: 105,
          child: Container(
            height: 20,
            width: 20,
            decoration: new BoxDecoration(shape: BoxShape.circle, color: colorGreen),
          ),
        ),
        Positioned(
          top: 5,
          left: 155,
          child: Container(
            height: 20,
            width: 20,
            decoration: new BoxDecoration(shape: BoxShape.circle, color: colorGreen),
          ),
        ),
        Positioned(
          top: 5,
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
