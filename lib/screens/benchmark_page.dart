import 'package:flutter/material.dart';
import 'package:sale_form_demo/utils/app_color.dart';
import 'package:sale_form_demo/widgets/company_full_logo.dart';

class BenchmarkPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

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
          ..._buildFormWidgets(_formKey),
        ],
      ),
    );
  }
}

List<Widget> _buildFormWidgets(_formKey) {
  List<Widget> formWidget = List();

  formWidget.add(BenchmarkCard(
    title: 'Program Improvement\nDetailed Creation',
    content: 'Plant Replacement Value: The value of the plant'
        'facilities for which maintenance costs are'
        'reported. Its includes capitalized additions,'
        'leased assets, capitalized additions, leased'
        'assets, capitalized engineering costs, and'
        'inflation to traditional construction costs. It does'
        'not include removed or demolished assets, land'
        'value, spare parts and capitalized interest. It is'
        'known as asset replacement value (ARV,'
        'replacement asset value (RAV), or estimated'
        'replacement value (ERV).',
  ));

  formWidget.add(BenchmarkCard(
    title: 'Scope Of Maintenance Costs',
    content: '',
  ));
  formWidget.add(BenchmarkCard(
    title: 'Annual Maintenance Cost',
    content: '',
  ));
  formWidget.add(BenchmarkCard(
    title: 'Select The Availability Units Of Measure',
    content: '',
  ));
  formWidget.add(BenchmarkCard(
    title: 'Program Improvement Detailed Creation',
    content: 'Availability: The percentage of the time that an'
        'asset is available for operation under normal'
        'operating conditions. This includes the current'
        'year non-turnaround downtime, plus annualized'
        'turnaround down time.'
        'Mechanical availability only accounts for'
        'equipment related down time and Operational'
        'Assets Utilization includes all down time except'
        'for idle time (no demand).',
  ));
  formWidget.add(BenchmarkCard(
    title: 'Annual % Availability For Operational Asset Utilization',
    content: '',
  ));
  formWidget.add(BenchmarkCard(
    title: 'Emergency Work Orders',
    content: 'Availability: The percentage of the time that an'
        'asset is available for operation under normal'
        'operating conditions. This includes the current'
        'year non-turnaround downtime, plus annualized'
        'turnaround down time.'
        'Mechanical availability only accounts for'
        'equipment related down time and Operational'
        'Assets Utilization includes all down time except'
        'for idle time (no demand).',
  ));
  formWidget.add(BenchmarkCard(
    title: 'Emergency Work',
    content: '',
  ));

  return formWidget;
}

class BenchmarkCard extends StatelessWidget {
  final String title;
  final String content;
  BenchmarkCard({this.title, this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
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
              Text(
                title,
                style: TextStyle(
                  color: colorBlue,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                content,
                style: TextStyle(
                  color: colorBlue,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: colorGrey5,
                  contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: colorBlue),
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: colorGrey20),
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),

//                  hintText:'\$1B',
                ),
                style: TextStyle(color: colorGreen),
              )
            ],
          ),
        ),
      ),
    );
  }
}
