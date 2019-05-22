import 'package:flutter/material.dart';
import 'package:sale_form_demo/screens/mi_strategy_page.dart';
import 'package:sale_form_demo/utils/app_color.dart';
import 'package:sale_form_demo/widgets/content_card_widget.dart';
import 'package:sale_form_demo/widgets/content_header_widget.dart';
import 'package:sale_form_demo/widgets/dot_indicator_widget.dart';

class SustainPage extends StatefulWidget {
  @override
  _SustainPageState createState() => _SustainPageState();
}

class _SustainPageState extends State<SustainPage> {
  int _activePosition = 0;

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
              ContentHeaderWidget(
                title: 'SUSTAIN',
                color: colorOrange,
                heroTag: 'sustain',
              ),
              Expanded(
                child: PageView(
                  controller: PageController(viewportFraction: 0.8),
                  onPageChanged: (index) {
                    setState(() {
                      _activePosition = index;
                    });
                  },
                  children: <Widget>[
                    ContentCardWidget(
                      title: 'MI STRATEGY MANAGEMENT',
                      colorBackground: Colors.orange[100],
                      colorTitle: colorOrange,
                      navigateTo: MiStrategyPage(),
                    ),
                    ContentCardWidget(
                      title: 'PM STRATEGY MANAGEMENT',
                      colorBackground: Colors.orange[100],
                      colorTitle: colorOrange,
                      navigateTo: MiStrategyPage(),
                    ),
                    ContentCardWidget(
                      title: 'SPARE PARTS STRATEGY MANAGEMENT',
                      colorBackground: Colors.orange[100],
                      colorTitle: colorOrange,
                      navigateTo: MiStrategyPage(),
                    ),
                    ContentCardWidget(
                      title: 'SAFETY SYSTEM MANAGEMENT',
                      colorBackground: Colors.orange[100],
                      colorTitle: colorOrange,
                      navigateTo: MiStrategyPage(),
                    ),
                    ContentCardWidget(
                      title: 'PROCESS CONTROL STRATEGY',
                      colorBackground: Colors.orange[100],
                      colorTitle: colorOrange,
                      navigateTo: MiStrategyPage(),
                    ),
                  ],
                ),
              ),
              DotIndicatorWidget(
                dotCount: 5,
                activePosition: _activePosition,
                color: colorOrange,
                activeDotColor: Colors.orange[200],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
