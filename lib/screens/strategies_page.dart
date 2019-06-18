import 'package:flutter/material.dart';
import 'package:sale_form_demo/screens/mi_strategy_page.dart';
import 'package:sale_form_demo/utils/app_color.dart';
import 'package:sale_form_demo/utils/size_config.dart';
import 'package:sale_form_demo/widgets/company_full_logo.dart';
import 'package:sale_form_demo/widgets/content_card_widget.dart';
import 'package:sale_form_demo/widgets/dot_indicator_widget.dart';
import 'package:sale_form_demo/widgets/header_card_widget.dart';

class StrategiesPage extends StatefulWidget {
  const StrategiesPage({
    Key key,
  }) : super(key: key);

  @override
  _StrategiesPageState createState() => _StrategiesPageState();
}

class _StrategiesPageState extends State<StrategiesPage> with SingleTickerProviderStateMixin {
  int _activePosition = 0;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final double screeHeight = SizeConfig.safeAreaScreenHeight;
    final double screenWidth = SizeConfig.safeAreaScreenWidth;
    final double topHeight = screeHeight / 4 + 5 + 60;
    final double bottomHeight = 80;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/Background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(height: 50),
            CompanyFullLogo(),
            SizedBox(height: 30),
            Expanded(
              child: Stack(
                children: <Widget>[
                  PageView(
                    controller: PageController(viewportFraction: 0.8),
                    onPageChanged: (index) {
                      setState(() {
                        _activePosition = index;
                      });
                    },
                    children: <Widget>[
                      ContentCardWidget(
                        top: topHeight,
                        bottom: bottomHeight,
                        title: 'MI STRATEGY MANAGEMENT',
                        colorBackground: colorBlue,
                        colorTitle: Colors.green,
                        navigateTo: MiStrategyPage(),
                      ),
                      ContentCardWidget(
                        top: topHeight,
                        bottom: bottomHeight,
                        title: 'PM STRATEGY MANAGEMENT',
                        colorBackground: colorBlue,
                        colorTitle: Colors.green,
                        navigateTo: MiStrategyPage(),
                      ),
                      ContentCardWidget(
                        top: topHeight,
                        bottom: bottomHeight,
                        title: 'SPARE PARTS STRATEGY MANAGEMENT',
                        colorBackground: colorBlue,
                        colorTitle: Colors.green,
                        navigateTo: MiStrategyPage(),
                      ),
                      ContentCardWidget(
                        top: topHeight,
                        bottom: bottomHeight,
                        title: 'SAFETY SYSTEM MANAGEMENT',
                        colorBackground: colorBlue,
                        colorTitle: Colors.green,
                        navigateTo: MiStrategyPage(),
                      ),
                      ContentCardWidget(
                        top: topHeight,
                        bottom: bottomHeight,
                        title: 'PROCESS CONTROL STRATEGY',
                        colorBackground: colorBlue,
                        colorTitle: Colors.green,
                        navigateTo: MiStrategyPage(),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: DotIndicatorWidget(
                      dotCount: 5,
                      activePosition: _activePosition,
                      color: colorBlue,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
