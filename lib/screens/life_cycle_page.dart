import 'package:flutter/material.dart';
import 'package:sale_form_demo/screens/mi_strategy_page.dart';
import 'package:sale_form_demo/utils/app_color.dart';
import 'package:sale_form_demo/utils/just_wait.dart';
import 'package:sale_form_demo/utils/size_config.dart';
import 'package:sale_form_demo/widgets/content_card_widget.dart';
import 'package:sale_form_demo/widgets/dot_indicator_widget.dart';
import 'package:sale_form_demo/widgets/header_card_widget.dart';

class LifeCyclePage extends StatefulWidget {
  @override
  _LifeCyclePageState createState() => _LifeCyclePageState();
}

class _LifeCyclePageState extends State<LifeCyclePage> with SingleTickerProviderStateMixin {
  int _activePosition = 0;

  Animation<double> animation;
  AnimationController controller;
  bool onTop = true;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(duration: const Duration(milliseconds: 500), vsync: this);
    animation = Tween<double>(begin: 1, end: 0).animate(controller);
//      ..addListener(() {
//        setState(() {
//          // The state that has changed here is the animation object’s value.
//        });
//      });
    controller.forward();
  }

  // Needed for smooth transition before pop
  Future delayPop() async {
    await Future.delayed(Duration(milliseconds: 200));
    onTop = false;
    Navigator.pop(context);
  }


  reverseController()  {
    controller.reverse();
    delayPop();
//    animation.addStatusListener((AnimationStatus status) {
//      if (status == AnimationStatus.dismissed)// wait until finish animation to pop
//        delayPop();
//
//    });
//    await justWait(duration: Duration(milliseconds: 300));
//    Navigator.pop(context);
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
    final double topHeight = screeHeight / 4 + 5 + 60;
    final double bottomHeight = 80;

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
                          top: topHeight,
                          bottom: bottomHeight,
                          title: 'MI STRATEGY MANAGEMENT',
                          colorBackground: Colors.grey[300],
                          colorTitle: colorGrey,
                          navigateTo: MiStrategyPage(),
                        ),
                        ContentCardWidget(
                          top: topHeight,
                          bottom: bottomHeight,
                          title: 'PM STRATEGY MANAGEMENT',
                          colorBackground: Colors.grey[300],
                          colorTitle: colorGrey,
                          navigateTo: MiStrategyPage(),
                        ),
                        ContentCardWidget(
                          top: topHeight,
                          bottom: bottomHeight,
                          title: 'SPARE PARTS STRATEGY MANAGEMENT',
                          colorBackground: Colors.grey[300],
                          colorTitle: colorGrey,
                          navigateTo: MiStrategyPage(),
                        ),
                        ContentCardWidget(
                          top: topHeight,
                          bottom: bottomHeight,
                          title: 'SAFETY SYSTEM MANAGEMENT',
                          colorBackground: Colors.grey[300],
                          colorTitle: colorGrey,
                          navigateTo: MiStrategyPage(),
                        ),
                        ContentCardWidget(
                          top: topHeight,
                          bottom: bottomHeight,
                          title: 'PROCESS CONTROL STRATEGY',
                          colorBackground: Colors.grey[300],
                          colorTitle: colorGrey,
                          navigateTo: MiStrategyPage(),
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: DotIndicatorWidget(
                        dotCount: 5,
                        activePosition: _activePosition,
                        color: colorGrey,
                        activeDotColor: Colors.grey[400],
                      ),
                    ),
                    ...buildHeaderCardWidgetList(screenWidth, screeHeight),


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
  List<HeaderCardWidget> buildHeaderCardWidgetList(screenWidth, screeHeight) {
    List<HeaderCardWidget> headerList = [];
    if (onTop) {
      headerList = [
        HeaderCardWidget(
        screenWidth: screenWidth,
        screeHeight: screeHeight,
        color: colorOrange,
        title: 'SUSTAIN',
        positionMultiplier: 2,
        animation: animation,
        notifyParent: reverseController,

      ),
      HeaderCardWidget(
        screenWidth: screenWidth,
        screeHeight: screeHeight,
        color: colorGreen,
        title: 'STRATEGIES',
        positionMultiplier: 1,
        animation: animation,
        notifyParent: reverseController,

      ),
      HeaderCardWidget(
        screenWidth: screenWidth,
        screeHeight: screeHeight,
        color: colorBlue,
        title: 'EVALUATE',
        positionMultiplier: 0,
        animation: animation,
        notifyParent: reverseController,
      ),
      HeaderCardWidget(
        screenWidth: screenWidth,
        screeHeight: screeHeight,
        color: colorGrey,
        title: 'LIFE-CYCLE',
        positionMultiplier: 3,
        animation: animation,
        notifyParent: reverseController,
        keepOpacity: true,
        isLastCard: true,
      ),
    ];
    }
    else {
      headerList = [
        HeaderCardWidget(
          screenWidth: screenWidth,
          screeHeight: screeHeight,
          color: colorGrey,
          title: 'LIFE-CYCLE',
          positionMultiplier: 3,
          animation: animation,
          notifyParent: reverseController,
          isLastCard: true,
        ),
        HeaderCardWidget(
          screenWidth: screenWidth,
          screeHeight: screeHeight,
          color: colorOrange,
          title: 'SUSTAIN',
          positionMultiplier: 2,
          animation: animation,
          notifyParent: reverseController,
          keepOpacity: true,
        ),
        HeaderCardWidget(
          screenWidth: screenWidth,
          screeHeight: screeHeight,
          color: colorGreen,
          title: 'STRATEGIES',
          positionMultiplier: 1,
          animation: animation,
          notifyParent: reverseController,
        ),
        HeaderCardWidget(
          screenWidth: screenWidth,
          screeHeight: screeHeight,
          color: colorBlue,
          title: 'EVALUATE',
          positionMultiplier: 0,
          animation: animation,
          notifyParent: reverseController,
        ),
      ];
    }



    return headerList;
  }
}
