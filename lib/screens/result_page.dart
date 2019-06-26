import 'package:flutter/material.dart';
import 'package:sale_form_demo/data/benchmark_model.dart';
import 'package:sale_form_demo/screens/menu_page.dart';
import 'package:sale_form_demo/utils/app_color.dart';
import 'package:sale_form_demo/widgets/company_full_logo.dart';

class ResultPage extends StatelessWidget {
  final Benchmark benchmark;
  ResultPage({this.benchmark});

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
      body: ListView(
        children: <Widget>[
          Center(child: CompanyFullLogo()),
          SizedBox(height: 30),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
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
          Container(
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
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: RaisedButton(//<-- Button Benchmark
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            shape:  RoundedRectangleBorder(borderRadius:  BorderRadius.circular(30.0)),
                            color: Colors.white,
                            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                            child: Text(
                              'RETURN TO BENCHMARK',
                              style: TextStyle(
                                color: colorBlue,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: RaisedButton(//<-- Button Benchmark
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                                return MenuPage();
                              }));
                            },
                            shape:  RoundedRectangleBorder(borderRadius:  BorderRadius.circular(30.0)),
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
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ResultRow extends StatelessWidget {
  final String title;
  final String content;
  ResultRow({this.title, this.content});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              color: colorBlue,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 5),
          Text(
            content,
            style: TextStyle(
              color: colorGreen,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 10.0,
            child: Center(
              child: Container(
                margin: EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
                height: 1.0,
                color: colorBlue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
