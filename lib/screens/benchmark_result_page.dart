import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:sale_form_demo/data/benchmark_model.dart';
import 'package:sale_form_demo/data/question_model.dart';
import 'package:sale_form_demo/screens/benchmark_page.dart';
import 'package:sale_form_demo/utils/app_color.dart';
import 'package:sale_form_demo/widgets/company_full_logo.dart';
import 'package:esys_flutter_share/esys_flutter_share.dart';
import 'package:sale_form_demo/widgets/result_row.dart';
import 'package:sale_form_demo/widgets/review_tab_view_widget.dart';
import 'package:sale_form_demo/data/globals.dart' as globals;

QuestionCenter questionCenter = globals.questionCenter;

//https://stackoverflow.com/questions/53646649/how-to-take-screenshot-of-widget-beyond-the-screen-in-flutter
class BenchmarkResultPage extends StatelessWidget {
//  final Benchmark benchmark;

  GlobalKey<OverRepaintBoundaryState> globalKey = GlobalKey();

  ui.Image image;

//  ResultPage({this.benchmark});

  @override
  Widget build(BuildContext context) {
    print(benchmark.placeReplacementValue);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
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
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: EdgeInsets.only(left: 30, bottom: 10),
                child: Text(
                  'Benchmark Results',
                  style: TextStyle(
                    color: colorBlue,
                    fontWeight: FontWeight.w900,
                    fontSize: 22,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: EdgeInsets.only(left: 30, right: 40, bottom: 20),
                child: Text('Do you know where your greatest opportunities to improve the'
                    'reliability of your plant are? We start and drive each of our'
                    'partnerships from a comprehensive assessment to better '
                    'understand where to focus solutions and resources/ Let us support'
                    'you in discovering how you can make your facility more reliable and'
                    'in turn make the world more reliable.'),
              ),
            ),
            Capturer(
              overRepaintKey: globalKey,
              benchmark: benchmark,
            ),
            Container(
              padding: EdgeInsets.only(left: 40, right: 40, bottom: 30, top: 20),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 100,
                    child: RaisedButton(
                      //<-- Button Benchmark
                      onPressed: () async {
                        var renderObject = globalKey.currentContext.findRenderObject();

                        RenderRepaintBoundary boundary = renderObject;
                        ui.Image captureImage = await boundary.toImage();

                        ByteData byteData = await captureImage.toByteData(format: ui.ImageByteFormat.png);
                        var pngBytes = byteData.buffer.asUint8List();
                        await Share.file('PinnacleArt', 'pinnacleArt.png', pngBytes, 'image/png',
                            text: 'This is your result from PinnacleArt');
                      },
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                      color: colorGreen,
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                      child: Text(
                        'EMAIL PDF',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
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

  _buildQuestionCard() {
    final List<Question> selectedQuestions =
        questionCenter.questionBank.where((question) => question.getValue()).toList();
    List<ReviewCard> cardList = [];
    for (int i = 0; i < selectedQuestions.length; i++) {
      cardList.add(ReviewCard(txt: selectedQuestions[i].getLabel()));
    }
    return cardList;
  }

  @override
  Widget build(BuildContext context) {
    return OverRepaintBoundary(
      key: overRepaintKey,
      child: RepaintBoundary(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
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
                      Container(
                        padding: EdgeInsets.only(left: 5, bottom: 10),
                        child: Text(
                          'STRATEGY SOLUTION',
                          style: TextStyle(color: colorBlue, fontWeight: FontWeight.w700, fontSize: 16),
                        ),
                      ),
                      ..._buildQuestionCard(), //<-- List of Cards

                    ],
                  ),
                ),
              ),
            ),

            Container( //<-- Benchmark Chart
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                elevation: 5,
                child: Container(
                  padding: EdgeInsets.only(top: 20, bottom: 20, left: 30, right: 20),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 15,
                      ),
                      Image.asset(
                        'images/chart_2.png',
                        fit: BoxFit.cover,
                      ),
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

            Container( //<-- Benchmark Results
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
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
                        content: benchmark.placeReplacementValue,
                      ),
                      ResultRow(
                        title: 'Scope of Maintenance Costs',
                        content: benchmark.scopeOfAvailability,
                      ),
                      ResultRow(
                        title: 'Annual maintenance Cost',
                        content: benchmark.annualMaintenanceCost,
                      ),
                      ResultRow(
                        title: 'Available units of Measure',
                        content: benchmark.availableUnitMeasure,
                      ),
                      ResultRow(
                        title: 'Scope of Availability Value',
                        content: benchmark.scopeOfAvailability,
                      ),
                      ResultRow(
                        title: 'Annual % Availability for Operational Asset Utilization',
                        content: benchmark.operationAssetUtilization,
                      ),
                      ResultRow(
                        title: 'Emergency Work Orders',
                        content: benchmark.emergencyWorkOrder,
                      ),
                      ResultRow(
                        title: 'Emergency Work',
                        content: benchmark.emergencyWork,
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

            Container( //<-- One Pager
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                elevation: 5,
                child: Container(
                  margin: EdgeInsets.only(left: 30, right: 20, bottom: 30, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(//<-- One pager
                        padding: EdgeInsets.only(left: 5, top: 20),
                        child: Row(
                          children: <Widget>[
                            Text(
                              'PinnacleART ',
                              style: TextStyle(color: colorBlue, fontWeight: FontWeight.w700, fontSize: 18),
                            ),
                            Text(
                              'Solomon RAM 2.0',
                              style: TextStyle(color: colorGreen, fontWeight: FontWeight.w700, fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 5, top: 5),
                        child: Text(
                          'Sample one-pager',
                          style: TextStyle(color: colorBlue, fontWeight: FontWeight.w700, fontSize: 12),
                        ),
                      ),

                      SizedBox(
                        height: 15,
                      ),
                      Image.asset(
                        'images/Assess.png',
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Image.asset(
                        'images/Performance.png',
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Image.asset(
                        'images/Roadmap.png',
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                )
              ),
            ),

            Container(
              padding: EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 5, top: 20),
                    child: Text(
                      'Contact Info',
                      style: TextStyle(color: colorBlue, fontWeight: FontWeight.w700, fontSize: 22),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 5, top: 5),
                    child: Text(
                      '${globals.representativeUser} | Solution Engineer | 281.598.1330',
                      style: TextStyle(color: colorBlue, fontSize: 14),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 5, top: 5),
                    child: Text(
                      'solutionengineer@pinnacleart.com',
                      style: TextStyle(color: colorBlue, fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),



          ],
        ),
      ),
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
