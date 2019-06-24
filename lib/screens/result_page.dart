import 'package:flutter/material.dart';
import 'package:sale_form_demo/utils/app_color.dart';
import 'package:sale_form_demo/widgets/company_full_logo.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
          CompanyFullLogo(),
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
            padding: EdgeInsets.symmetric(horizontal: 20),
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
                      content: '\$1B',
                    ),
                    ResultRow(
                      title: 'Scope of Maintenance Costs',
                      content: 'Routine + Turnaround\nMaintenance Costs',
                    ),
                    ResultRow(
                      title: 'Annual maintenance Cost',
                      content: '\$20MM',
                    ),
                    ResultRow(
                      title: 'Available units of Measure',
                      content: 'Annual % Avalability',
                    ),
                    ResultRow(
                      title: 'Scope of Availability Value',
                      content: 'Operational Asset Utilization',
                    ),
                    ResultRow(
                      title: 'Annual % Availability for Operational Asset Utilization',
                      content: '96%',
                    ),
                    ResultRow(
                      title: 'Emergency Work',
                      content: '2%',
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
