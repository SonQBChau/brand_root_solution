import 'package:flutter/material.dart';
import 'package:sale_form_demo/utils/app_color.dart';
import 'package:sale_form_demo/widgets/flow_chart_widget.dart';
import 'package:sale_form_demo/widgets/mi_strategy_bottom_sheet.dart';
import 'package:sale_form_demo/widgets/pinnacle_way_widget.dart';

// get widget size and position
// https://medium.com/@diegoveloper/flutter-widget-size-and-position-b0a9ffed9407


class MiStrategyPage extends StatefulWidget {
  //creating Key for red panel
  @override
  _MiStrategyPageState createState() => _MiStrategyPageState();
}

class _MiStrategyPageState extends State<MiStrategyPage> {
  GlobalKey _keyContainer = GlobalKey();
  double maxBottomSheetHeight = 0;

  @override  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(_afterLayout);
    super.initState();
  }

  _afterLayout(_) {
    _getPositions();
  }

  _getPositions() {//<-- need to find position of container to figure max height for bottom sheet
    final RenderBox renderBoxRed = _keyContainer.currentContext.findRenderObject();
    final positionRed = renderBoxRed.localToGlobal(Offset.zero);
    print("POSITION of Red: $positionRed ");
    setState(() {
      maxBottomSheetHeight = positionRed.dy;
    });
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
                  key: _keyContainer,
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
            MIStrategyBottomSheet(maxBottomSheetHeight: maxBottomSheetHeight),
          ],
        ),
      ),
    );
  }
}
