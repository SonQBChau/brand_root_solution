import 'package:flutter/material.dart';
import 'package:sale_form_demo/utils/app_color.dart';
import 'package:sale_form_demo/widgets/flow_chart_widget.dart';
import 'package:sale_form_demo/widgets/mi_strategy_bottom_sheet.dart';
import 'package:sale_form_demo/widgets/pinnacle_way_widget.dart';

class MiStrategyPage extends StatelessWidget {
  //creating Key for red panel
  GlobalKey _keyRed = GlobalKey();

  _getPositions() {
    final RenderBox renderBoxRed = _keyRed.currentContext.findRenderObject();
    final positionRed = renderBoxRed.localToGlobal(Offset.zero);
    print("POSITION of Red: $positionRed ");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorBlue,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            size: 40,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Container(
        color: colorBlue,
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 80,
                    padding: EdgeInsets.only(left: 30),
                    child: Text(
                      'MI Strategy\nManagement',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Container(
                  key: _keyRed,
                  padding: EdgeInsets.only(left: 30, top: 0, right: 20, bottom: 10),
                  child: Text(
                    'Managing the risk based, proactive approach and generating the equipment plans/ strengths'
                    ' that aim to prevent loss of containment events for all plant equipments.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
                PinnacleWayWidget(),
                SizedBox(
                  height: 10,
                ),
                FlowChartWidget(),
                SizedBox(height: 90), // minHeight of MIStrategyBottomSheet + 10
              ],
            ),
            MIStrategyBottomSheet(),
          ],
        ),
      ),
    );
  }
}
