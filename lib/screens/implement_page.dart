import 'package:flutter/material.dart';
import 'package:sale_form_demo/utils/app_color.dart';

class ImplementPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorGreen,
        elevation: 0,
        title: Text('Implement Integrity Operating Windows',
        style: TextStyle(fontSize: 16),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
        color: colorGrey5,
        child: ListView(
          children: <Widget>[
            Text(
              'FUNDAMENTALS',
              style: TextStyle(
                color: colorBlue,
                fontSize: 24,
              ),
            ),
            SizedBox(
              height: 10.0,
              child:  Center(
                child:  Container(
                  margin:  EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
                  height: 1.5,
                  color: colorBlue,
                ),
              ),
            ),
            SizedBox(height: 15,),
            Container(
              height: 200,
              child: Placeholder(),
            ),
            SizedBox(height: 20,),
            Text('PinnacleART’s Integrity Operating Windows (IOWs) solution provides valuable operating guidance to your'
                ' facility. By Identifying potential damage mechanisms and identifying critical integrity process '
                'variables across a unit. PinnacleART determines acceptable upper and lower operating thresholds.'
                ' These operating parameters are prioritized by critically level (information, standard or critical). '
                'Pinnacle ART provides action recommendations with associated response times, ensuring that proper '
                'communication channels exist should those IOWs be',
            style: TextStyle(color: colorBlue, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 20,),
            RaisedButton(//<-- Button Benchmark
              onPressed: () {},
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              color: Colors.white,
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              child: Text(
                'View Sample Deliverable',
                style: TextStyle(
                  color: colorGreen,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 20,),

          ],
        ),
      ),
    );
  }
}
