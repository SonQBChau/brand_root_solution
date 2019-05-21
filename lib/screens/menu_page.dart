import 'package:flutter/material.dart';
import 'package:sale_form_demo/screens/strategies_page.dart';
import 'package:sale_form_demo/utils/app_color.dart';
import 'package:sale_form_demo/widgets/menu_card_widget.dart';

class MenuPage extends StatelessWidget {
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
            image:  DecorationImage(
              image:  AssetImage("images/Background.png"),
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
                    MenuCardWidget(color: colorGrey, title: 'LIFE-CYCLE', positionMultiplier: 3, navigateTo: StrategiesPage(),),
                    MenuCardWidget(color: colorOrange, title: 'SUSTAIN', positionMultiplier: 2, navigateTo: StrategiesPage(),),
                    MenuCardWidget(color: colorGreen, title: 'STRATEGIES', positionMultiplier: 1, navigateTo: StrategiesPage(),),
                    MenuCardWidget(color: colorBlue, title: 'EVALUATE', positionMultiplier: 0, navigateTo: StrategiesPage(),),
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
