import 'package:flutter/material.dart';
import 'package:sale_form_demo/utils/app_color.dart';
import 'package:sale_form_demo/widgets/charts/auto_label.dart';
import 'package:sale_form_demo/widgets/charts/donut.dart';
import 'package:sale_form_demo/widgets/charts/simple_bar_chart.dart';
import 'package:sale_form_demo/widgets/charts/time_series.dart';

class ChartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 100,
            ),
            Container(
              width: 300,
              height: 300,
              child: DonutAutoLabelChart.withSampleData(),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                'APPROXIMATE OPPORTUNITY',
                style: TextStyle(
                  color: colorBlue,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              width: 300,
              height: 300,

              child: SimpleBarChart.withSampleData(),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                'COST DELIVERABLE',
                style: TextStyle(
                  color: colorBlue,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              width: 300,
              height: 300,
              child: TimeSeriesSymbolAnnotationChart.withSampleData(),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                'MAINTENANCE COST',
                style: TextStyle(
                  color: colorBlue,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
