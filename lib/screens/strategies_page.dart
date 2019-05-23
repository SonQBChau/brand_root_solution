import 'package:flutter/material.dart';
import 'package:sale_form_demo/screens/mi_strategy_page.dart';
import 'package:sale_form_demo/utils/app_color.dart';
import 'package:sale_form_demo/widgets/content_card_widget.dart';
import 'package:sale_form_demo/widgets/content_header_widget.dart';
import 'package:sale_form_demo/widgets/dot_indicator_widget.dart';
import 'package:sale_form_demo/widgets/header_card_widget.dart';

class StrategiesPage extends StatefulWidget {
  @override
  _StrategiesPageState createState() => _StrategiesPageState();
}

class _StrategiesPageState extends State<StrategiesPage>  with SingleTickerProviderStateMixin {
  int _activePosition = 0;

  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(duration: const Duration(milliseconds: 500), vsync: this);
    animation = Tween<double>(begin: 1, end: 0).animate(controller)
      ..addListener(() {
        setState(() {
          // The state that has changed here is the animation object’s value.
        });
      });
    controller.forward();
  }



  reverseController(){
    controller.reverse();
    Navigator.pop(context);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

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
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Expanded(
                child: Stack(
                  children: <Widget>[

                    PageView(
                      controller: PageController(viewportFraction: 0.8),
                      onPageChanged: (index) {
                        setState(() {
                        });
                      },
                      children: <Widget>[
                        ContentCardWidget(
                          title: 'MI STRATEGY MANAGEMENT',
                          colorBackground: Colors.green[100],
                          colorTitle: Colors.green,
                          navigateTo: MiStrategyPage(),
                        ),
                        ContentCardWidget(
                          title: 'PM STRATEGY MANAGEMENT',
                          colorBackground: Colors.green[100],
                          colorTitle: Colors.green,
                          navigateTo: MiStrategyPage(),
                        ),
                        ContentCardWidget(
                          title: 'SPARE PARTS STRATEGY MANAGEMENT',
                          colorBackground: Colors.green[100],
                          colorTitle: Colors.green,
                          navigateTo: MiStrategyPage(),
                        ),
                        ContentCardWidget(
                          title: 'SAFETY SYSTEM MANAGEMENT',
                          colorBackground: Colors.green[100],
                          colorTitle: Colors.green,
                          navigateTo: MiStrategyPage(),
                        ),
                        ContentCardWidget(
                          title: 'PROCESS CONTROL STRATEGY',
                          colorBackground: Colors.green[100],
                          colorTitle: Colors.green,
                          navigateTo: MiStrategyPage(),
                        ),
                      ],
                    ),





                    HeaderCardWidget(
                      color: colorGrey,
                      title: 'LIFE-CYCLE',
                      positionMultiplier: 3,
                      animationValue: animation.value,
                      notifyParent: reverseController,
                    ),
                    HeaderCardWidget(
                      color: colorOrange,
                      title: 'SUSTAIN',
                      positionMultiplier: 2,
                      animationValue: animation.value,
                      notifyParent: reverseController,
                    ),

                    HeaderCardWidget(
                      color: colorBlue,
                      title: 'EVALUATE',
                      positionMultiplier: 0,
                      animationValue: animation.value,
                      notifyParent: reverseController,
                    ),
                    HeaderCardWidget(
                      color: colorGreen,
                      title: 'STRATEGIES',
                      positionMultiplier: 1,
                      animationValue: animation.value,
                      notifyParent: reverseController,

                    ),

                  ],
                ),
              ),
            ],
          ),


        ),
      ),
    );
  }
}
