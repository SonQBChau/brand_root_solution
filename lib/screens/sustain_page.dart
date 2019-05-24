import 'package:flutter/material.dart';
import 'package:sale_form_demo/screens/mi_strategy_page.dart';
import 'package:sale_form_demo/utils/app_color.dart';
import 'package:sale_form_demo/utils/size_config.dart';
import 'package:sale_form_demo/widgets/content_card_widget.dart';
import 'package:sale_form_demo/widgets/dot_indicator_widget.dart';
import 'package:sale_form_demo/widgets/header_card_widget.dart';

class SustainPage extends StatefulWidget {
  @override
  _SustainPageState createState() => _SustainPageState();
}

class _SustainPageState extends State<SustainPage> with SingleTickerProviderStateMixin {
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

  reverseController() {
    controller.reverse();
    animation.addStatusListener((AnimationStatus status) {
      if (status == AnimationStatus.dismissed)// wait until finish animation to pop
        Navigator.pop(context);

    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

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
                    PageView(
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
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: DotIndicatorWidget(
                        dotCount: 5,
                        activePosition: _activePosition,
                        color: colorOrange,
                        activeDotColor: Colors.orange[200],
                      ),
                    ),
                    ...buildHeaderCardWidgetList(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // build a list of menu card, the header card need to be place at the bottom last
  List<HeaderCardWidget> buildHeaderCardWidgetList() {
    List<HeaderCardWidget> headerList = [];
    headerList.add(HeaderCardWidget(
      color: colorGrey,
      title: 'LIFE-CYCLE',
      positionMultiplier: 3,
      animationValue: animation.value,
      notifyParent: reverseController,
      isLastCard: true,
    ));
    headerList.add(HeaderCardWidget(
      color: colorGreen,
      title: 'STRATEGIES',
      positionMultiplier: 1,
      animationValue: animation.value,
      notifyParent: reverseController,

    ));
    headerList.add(HeaderCardWidget(
      color: colorBlue,
      title: 'EVALUATE',
      positionMultiplier: 0,
      animationValue: animation.value,
      notifyParent: reverseController,
    ));

    headerList.add(HeaderCardWidget(
      color: colorOrange,
      title: 'SUSTAIN',
      positionMultiplier: 2,
      animationValue: animation.value,
      notifyParent: reverseController,
      keepOpacity: true,
    ));

    return headerList;
  }
}
