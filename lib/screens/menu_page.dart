import 'package:flutter/material.dart';
import 'package:sale_form_demo/screens/evaluate_page.dart';
import 'package:sale_form_demo/screens/life_cycle_page.dart';
import 'package:sale_form_demo/screens/strategies_page.dart';
import 'package:sale_form_demo/screens/sustain_page.dart';
import 'package:sale_form_demo/utils/app_color.dart';
import 'package:sale_form_demo/utils/size_config.dart';
import 'package:sale_form_demo/widgets/menu_card_widget.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final double screeHeight = SizeConfig.safeAreaScreenHeight;
    final double screenWidth = SizeConfig.safeAreaScreenWidth;

    return Scaffold(
      body: SafeArea(
        child: Container(
          constraints: BoxConstraints.expand(
            width: screenWidth,
            height: screeHeight,
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
                    MenuCardWidget(
                      height: screeHeight,
                      width: screenWidth,
                      color: colorGrey,
                      title: 'LIFE-CYCLE',
                      positionMultiplier: 3,
                      navigateTo: LifeCyclePage(),
                    ),
                    MenuCardWidget(
                      height: screeHeight,
                      width: screenWidth,
                      color: colorOrange,
                      title: 'SUSTAIN',
                      positionMultiplier: 2,
                      navigateTo: SustainPage(),
                    ),
                    MenuCardWidget(
                      height: screeHeight,
                      width: screenWidth,
                      color: colorGreen,
                      title: 'STRATEGIES',
                      positionMultiplier: 1,
                      navigateTo: StrategiesPage(),
                    ),
                    MenuCardWidget(
                      height: screeHeight,
                      width: screenWidth,
                      color: colorBlue,
                      title: 'EVALUATE',
                      positionMultiplier: 0,
                      navigateTo: EvaluatePage(),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 30, top: 30),
                child: Text(
                  '+ ALL CATEGORIES',
                  style: TextStyle(color: colorGrey, fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
