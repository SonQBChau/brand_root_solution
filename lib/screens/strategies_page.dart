import 'package:flutter/material.dart';
import 'package:sale_form_demo/screens/mi_strategy_page.dart';
import 'package:sale_form_demo/utils/app_color.dart';
import 'package:sale_form_demo/widgets/content_card_widget.dart';
import 'package:sale_form_demo/widgets/content_header_widget.dart';
import 'package:sale_form_demo/widgets/dot_indicator_widget.dart';

class StrategiesPage extends StatelessWidget {
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
            children: <Widget>[
              ContentHeaderWidget(title: 'STRATEGIES', color: colorGreen,),
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
              DotIndicatorWidget(),
            ],
          ),
        ),
      ),
    );
  }



}
