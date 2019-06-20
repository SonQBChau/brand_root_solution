import 'package:flutter/material.dart';
import 'package:sale_form_demo/screens/flow_chart_page.dart';
import 'package:sale_form_demo/screens/pinnacle_way_page.dart';
import 'package:sale_form_demo/utils/app_color.dart';
import 'package:sale_form_demo/widgets/mi_strategy_bottom_sheet.dart';

class MiStrategyPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorBlue,
        elevation: 0,
        leading:  IconButton(
          icon:  Icon(Icons.arrow_back, size: 40,),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Container(
//        constraints: BoxConstraints.expand(
//          width: screenWidth,
//          height: screenHeight,
//        ),
        color: colorBlue,
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 30),
                  child: Text(
                    'MI Strategy Management',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 30, top: 10, right: 20, bottom: 20),
                  child: Text(
                    'Managing the risk based, proactive approach and generating the equipment plans/ strengths'
                    ' that aim to prevent loss of containment events for all plant equipments.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),

                Expanded(
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute<Null>(
                        builder: (BuildContext context) {
                          return  PinnacleWayPage();
                        },
                      ));
                    },
                    child: Container(
                      width: screenWidth - 20,
                      height: 160,
                      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("images/PinnacleWay.png"),
                          fit: BoxFit.contain,
                        ),
                      ),
                      child: Text('The Pinnacle Way',
                        style: TextStyle(color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600
                        ),),
                    ),
                  ),
                ),

        SizedBox(
          height: 20.0,
          width: MediaQuery.of(context).size.width - 50,
          child:  Center(
            child:  Container(
              margin:  EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
              height: 2.0,
              color: Colors.blue[200],
            ),
          ),
        ),

                Expanded(
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute<Null>(
                          builder: (BuildContext context) {
                            return  FlowChartPage();
                          },
                      ));
                    },
                    child: Container(
                      width: screenWidth - 20,
                      height: 160,
                      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("images/FlowChart.png"),
                          fit: BoxFit.contain,
                        ),

                      ),

                    ),
                  ),
                ),

                SizedBox(height: 80),
              ],
            ),



            MIStrategyBottomSheet(),
          ],
        ),
      ),
    );
  }
}
