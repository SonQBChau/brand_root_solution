import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sale_form_demo/screens/flow_chart_page.dart';

class FlowChartWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          Navigator.of(context).push( CupertinoPageRoute<Null>(
            builder: (BuildContext context) {
              return FlowChartPage();
            },
          ));
        },
        child: Container(
          width: MediaQuery.of(context).size.width - 20,
          height: 160,
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Hero(
            tag: "FlowChart",
            flightShuttleBuilder: (
                BuildContext flightContext,
                Animation<double> animation,
                HeroFlightDirection flightDirection,
                BuildContext fromHeroContext,
                BuildContext toHeroContext,
                ) {
              final Hero toHero = toHeroContext.widget;
              return RotationTransition(
                turns: animation,
                child: toHero.child,
              );
            },
            child: Image.asset(
              "images/FlowChart.png",
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
