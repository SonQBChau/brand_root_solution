import 'package:flutter/material.dart';
import 'package:sale_form_demo/utils/app_color.dart';

class MiStrategyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        ),
        color: colorBlue,
        child: Column(
          children: <Widget>[

            Container(
              padding: EdgeInsets.only(left: 30, top: 60),
              child: Text(
                'MI Strategy Management',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 30, top: 20, right:20),
              child: Text(
                'Managing the risk based, proactive approach and generating the equipment plans/ strengths'
                    ' that aim to prevent loss of containment events for all plant equipments.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,

                ),
              ),
            ),

      Center(
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {
              print('Card tapped.');
            },
            child: Container(
              width: 300,
              height: 100,
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Text('A card that can be tapped'),
            ),
          ),
        ),
      ),


          ],
        ),
      ),
    );
  }
}
