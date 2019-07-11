import 'package:flutter/material.dart';
import 'package:sale_form_demo/screens/mi_strategy_page.dart';
import 'package:sale_form_demo/utils/app_color.dart';
import 'package:sale_form_demo/utils/size_config.dart';
import 'package:sale_form_demo/widgets/back_button_widget.dart';
import 'package:sale_form_demo/widgets/company_full_logo.dart';
import 'package:sale_form_demo/widgets/content_card_widget.dart';
import 'package:sale_form_demo/widgets/dot_indicator_widget.dart';

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 30),
            BackButtonWidget(),
            Center(child: CompanyFullLogo()),
            Spacer(),
            Expanded(//<-- card area
              flex: 10,
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
                        colorTitle: colorGreen,
                        navigateTo: MiStrategyPage(),
                      ),
                      ContentCardWidget(
                        top: topHeight,
                        bottom: bottomHeight,
                        title: 'PM STRATEGY MANAGEMENT',
                        colorBackground: colorBlue,
                        colorTitle: colorGreen,
                      ),
                      ContentCardWidget(
                        top: topHeight,
                        bottom: bottomHeight,
                        title: 'SPARE PARTS STRATEGY MANAGEMENT',
                        colorBackground: colorBlue,
                        colorTitle: colorGreen,
                      ),
                      ContentCardWidget(
                        top: topHeight,
                        bottom: bottomHeight,
                        title: 'SAFETY SYSTEM MANAGEMENT',
                        colorBackground: colorBlue,
                        colorTitle: colorGreen,
                      ),
                      ContentCardWidget(
                        top: topHeight,
                        bottom: bottomHeight,
                        title: 'PROCESS CONTROL STRATEGY',
                        colorBackground: colorBlue,
                        colorTitle: colorGreen,
                      ),
                    ],
                  ),
                  Align(//<-- dot position indicator
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
            Spacer(),
          ],
        ),
      ),
    );
  }
}
