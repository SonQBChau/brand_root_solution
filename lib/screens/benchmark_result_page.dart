import 'dart:io';
import 'dart:math';
import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sale_form_demo/data/benchmark_model.dart';
import 'package:sale_form_demo/screens/benchmark_page.dart';
import 'package:sale_form_demo/screens/menu_page.dart';
import 'package:sale_form_demo/utils/app_color.dart';
import 'package:sale_form_demo/widgets/animated_graph.dart';
import 'package:sale_form_demo/widgets/company_full_logo.dart';
import 'package:esys_flutter_share/esys_flutter_share.dart';

import 'package:sale_form_demo/data/globals.dart' as globals;
import 'package:sale_form_demo/widgets/result_row.dart';

//Benchmark benchmark = Benchmark();
Benchmark benchmark = globals.benchmark;

//https://stackoverflow.com/questions/53646649/how-to-take-screenshot-of-widget-beyond-the-screen-in-flutter
class BenchmarkResultPage extends StatelessWidget {
//  final Benchmark benchmark;

  GlobalKey<OverRepaintBoundaryState> globalKey = GlobalKey();


  ui.Image image;


//  ResultPage({this.benchmark});


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            size: 40,
            color: colorBlue,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(child: CompanyFullLogo()),
            SizedBox(height: 30),

            Capturer(
              overRepaintKey: globalKey,
              benchmark: benchmark,
            ),

            Container(
              padding: EdgeInsets.only(left: 40, right: 40, bottom: 30),
              child: Column(
                children: <Widget>[



                  Row(
                    children: <Widget>[
                      Expanded(
                        child: RaisedButton(//<-- Button Benchmark
                          onPressed: () async {

                            var renderObject = globalKey.currentContext.findRenderObject();

                            RenderRepaintBoundary boundary = renderObject;
                            ui.Image captureImage = await boundary.toImage();

                            ByteData byteData =
                            await captureImage.toByteData(format: ui.ImageByteFormat.png);
                            var pngBytes = byteData.buffer.asUint8List();
                            await Share.file('PinnacleArt', 'pinnacleArt.png', pngBytes, 'image/png', text: 'This is your result from PinnacleArt');





                          },
                          shape:  RoundedRectangleBorder(borderRadius:  BorderRadius.circular(30.0)),
                          color: colorGreen,
                          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                          child: Text(
                            'EMAIL PDF',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),



          ],
        ),
      ),
    );
  }
}

class Capturer extends StatelessWidget {
  final Benchmark benchmark;

  final GlobalKey<OverRepaintBoundaryState> overRepaintKey;

  const Capturer({Key key, this.overRepaintKey, this.benchmark}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container( //<-- Benchmark Chart
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            elevation: 5,
            child: Container(
              padding: EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 15,
                  ),

                  AnimatedGraph(),
                  SizedBox(
                    height: 15,
                  ),
                  Image.asset(
                    'images/chart_1.png',
                    fit: BoxFit.cover,
                  )
                ],
              ),
            ),
          ),
        ),
        OverRepaintBoundary(
          key: overRepaintKey,
          child: RepaintBoundary(
            child: Container( //<-- Benchmark result
              padding: EdgeInsets.only(left: 20, right: 20, bottom: 30),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                elevation: 5,
                child: Container(
                  padding: EdgeInsets.only(top: 20, bottom: 20, left: 30, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'BENCHMARK RESULTS',
                        style: TextStyle(
                          color: colorBlue,
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),
                      ),
                      ResultRow(
                        title: 'Plant Replacement Value',
                        content: benchmark.getPlantReplacementValue(),
                      ),
                      ResultRow(
                        title: 'Scope of Maintenance Costs',
                        content: benchmark.getScopeMaintenanceCost(),
                      ),
                      ResultRow(
                        title: 'Annual maintenance Cost',
                        content: benchmark.getAnnualMaintenanceCost(),
                      ),
                      ResultRow(
                        title: 'Available units of Measure',
                        content: benchmark.getAvailableUnitMeasure(),
                      ),
                      ResultRow(
                        title: 'Scope of Availability Value',
                        content: benchmark.getScopeOfAvailability(),
                      ),
                      ResultRow(
                        title: 'Annual % Availability for Operational Asset Utilization',
                        content: benchmark.getOperationAssetUtilization(),
                      ),
                      ResultRow(
                        title: 'Emergency Work Orders',
                        content: benchmark.getEmergencyWorkOrder(),
                      ),
                      ResultRow(
                        title: 'Emergency Work',
                        content: benchmark.getEmergencyWork(),
                      ),
                      Text(
                        'Maintenance/Plant Replacement Value | 5%',
                        style: TextStyle(
                          color: colorBlue,
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        'Availability | 96%',
                        style: TextStyle(
                          color: colorBlue,
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        'Reactivity Level | Low',
                        style: TextStyle(
                          color: colorBlue,
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(height: 10,),

                    ],
                  ),
                ),
              ),
            ),
          ),
        ),


      ],
    );
  }
}



class OverRepaintBoundary extends StatefulWidget {
  final Widget child;

  const OverRepaintBoundary({Key key, this.child}) : super(key: key);

  @override
  OverRepaintBoundaryState createState() => OverRepaintBoundaryState();
}

class OverRepaintBoundaryState extends State<OverRepaintBoundary> {
  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
