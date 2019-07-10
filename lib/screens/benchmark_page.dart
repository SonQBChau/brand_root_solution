import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sale_form_demo/data/benchmark_model.dart';
import 'package:sale_form_demo/screens/result_page.dart';
import 'package:sale_form_demo/screens/benchmark_result_page.dart';
import 'package:sale_form_demo/utils/app_color.dart';
import 'package:sale_form_demo/utils/custom_slider.dart';
import 'package:sale_form_demo/utils/validator.dart';
import 'package:sale_form_demo/widgets/benchmark_card.dart';
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

  formWidget.add(BenchmarkCardSlider(
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
    benchmarkRange: benchmark.getPlaceReplacementRange(),
    onSubmit: (value) => benchmark.setPlaceReplacementValue(value),
  ));

  formWidget.add(BenchmarkCardExpand(
    title: 'Scope Of Maintenance Costs',
    content: '',
    benchmarkValue: benchmark.getScopeMaintenanceCost(),
    benchmarkList: benchmark.getScopeMaintenanceList(),
    onSubmit: (value) => benchmark.setScopeMaintenanceCost(value),
  ));
  
  formWidget.add(BenchmarkCardSlider(
    title: 'Annual Maintenance Cost',
    content: '',
    benchmarkValue: benchmark.getAnnualMaintenanceCost(),
    benchmarkRange: benchmark.getAnnualMaintenanceRange(),
    onSubmit: (value) => benchmark.setAnnualMaintenanceCost(value),
  ));

  formWidget.add(BenchmarkCardExpand(
    title: 'Select The Availability Units Of Measure',
    content: '',
    benchmarkValue: benchmark.getAvailableUnitMeasure(),
    benchmarkList: benchmark.getAvailableUnitMeasureList(),
    onSubmit: (value) => benchmark.setAvailableUnitMeasure(value),
  ));

  formWidget.add(BenchmarkCardExpand(
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
    benchmarkList: benchmark.getScopeOfAvailabilityList(),
    onSubmit: (value) => benchmark.setScopeOfAvailability(value),
  ));


  formWidget.add(BenchmarkCardSlider(
    title: 'Annual % Availability For Operational Asset Utilization',
    content: '',
    benchmarkValue: benchmark.getOperationAssetUtilization(),
    benchmarkRange: benchmark.getOperationAssetUtilizationRange(),
    onSubmit: (value) => benchmark.setOperationAssetUtilization(value),
  ));

  formWidget.add(BenchmarkCardExpand(
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
    benchmarkList: benchmark.getEmergencyWorkOrderList(),
    onSubmit: (value) => benchmark.setEmergencyWorkOrder(value),
  ));

  formWidget.add(
    BenchmarkCardSlider(
        title: 'Emergency Work',
        content: '',
        benchmarkValue: benchmark.getEmergencyWork(),
        benchmarkRange: benchmark.getEmergencyWorkRange(),
        onSubmit: (value) => benchmark.setEmergencyWork(value)),
  );

  return formWidget;
}


