import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sale_form_demo/data/benchmark_model.dart';
import 'package:sale_form_demo/screens/benchmark_result_page.dart';
import 'package:sale_form_demo/screens/result_page.dart';
import 'package:sale_form_demo/utils/app_color.dart';
import 'package:sale_form_demo/utils/validator.dart';
import 'package:sale_form_demo/widgets/company_full_logo.dart';
import 'package:sale_form_demo/data/globals.dart' as globals;
import 'package:flutter_spinkit/flutter_spinkit.dart';

Benchmark benchmark = globals.benchmark;

class BenchmarkPage extends StatefulWidget {
  @override
  _BenchmarkPageState createState() => _BenchmarkPageState();
}

class _BenchmarkPageState extends State<BenchmarkPage> {
  final _formKey = GlobalKey<FormState>();

  void _onLoading() {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return Dialog(
              backgroundColor: Colors.transparent,
              elevation: 0,
              child: Center(
                child: SpinKitWave(color: Colors.white, type: SpinKitWaveType.center),
              ));
        });
  }

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
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Center(child: CompanyFullLogo()),
              SizedBox(height: 30),
              ..._buildFormWidgets(),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width - 100,
                child: RaisedButton(
                  onPressed: () {
                    //<-- show loading indicator
                    _onLoading();
                    //<-- add some delay to mimic calculation
                    Future.delayed(const Duration(milliseconds: 2000), () {
                      Navigator.pop(context); //pop dialog indicator
                      Navigator.of(context).push(CupertinoPageRoute(builder: (BuildContext context) {
                        return BenchmarkResultPage();
                      }));
                      _formKey.currentState.validate();
                      _formKey.currentState.save();
                    });
                  },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                  color: colorGreen,
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  child: Text(
                    'CALCULATE',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<Widget> _buildFormWidgets() {
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
    benchmarkValue: benchmark.getPlaceReplacementValue(),
    onSubmit: (value) => benchmark.setPlaceReplacementValue(value),
  ));

  formWidget.add(BenchmarkCard(
    title: 'Scope Of Maintenance Costs',
    content: '',
    benchmarkValue: benchmark.getScopeMaintenanceCost(),
    onSubmit: (value) => benchmark.setScopeMaintenanceCost(value),
  ));
  formWidget.add(BenchmarkCard(
    title: 'Annual Maintenance Cost',
    content: '',
    benchmarkValue: benchmark.getAnnualMaintenanceCost(),
    onSubmit: (value) => benchmark.setAnnualMaintenanceCost(value),
  ));
  formWidget.add(BenchmarkCard(
    title: 'Select The Availability Units Of Measure',
    content: '',
    benchmarkValue: benchmark.getAvailableUnitMeasure(),
    onSubmit: (value) => benchmark.setAvailableUnitMeasure(value),
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
    benchmarkValue: benchmark.getScopeOfAvailability(),
    onSubmit: (value) => benchmark.setScopeOfAvailability(value),
  ));
  formWidget.add(BenchmarkCard(
    title: 'Annual % Availability For Operational Asset Utilization',
    content: '',
    benchmarkValue: benchmark.getOperationAssetUtilization(),
    onSubmit: (value) => benchmark.setOperationAssetUtilization(value),
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
    benchmarkValue: benchmark.getEmergencyWorkOrder(),
    onSubmit: (value) => benchmark.setEmergencyWorkOrder(value),
  ));
  formWidget.add(
    BenchmarkCard(
        title: 'Emergency Work',
        content: '',
        benchmarkValue: benchmark.getEmergencyWork(),
        onSubmit: (value) => benchmark.setEmergencyWork(value)),
  );

  return formWidget;
}

class BenchmarkCard extends StatelessWidget {
  final String title;
  final String content;
  final String benchmarkValue;
  final Function onSubmit;
  BenchmarkCard({this.title, this.content, this.benchmarkValue, this.onSubmit});

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
          padding: EdgeInsets.only(top: 30, bottom: 30, left: 30, right: 30),
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
                ),
                initialValue: benchmarkValue,
                style: TextStyle(color: colorGreen),
                validator: (value) => validateEmpty(value, 'Please enter a value'), // call on form validate
                onSaved: (value) {
                  onSubmit(value);
                }, // call on form save function
              )
            ],
          ),
        ),
      ),
    );
  }
}
