import 'package:flutter/material.dart';
import 'package:sale_form_demo/screens/menu_page.dart';
import 'package:sale_form_demo/utils/app_color.dart';
import 'package:sale_form_demo/widgets/charts/auto_label.dart';
import 'package:sale_form_demo/widgets/charts/simple_bar_chart.dart';
import 'package:sale_form_demo/widgets/charts/time_series.dart';

import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'dart:io';


import 'package:flutter/rendering.dart';
import 'package:path_provider/path_provider.dart';

//https://medium.com/flutter-community/export-your-widget-to-image-with-flutter-dc7ecfa6bafb
//https://pub.dev/packages/pdf

class ChartPage extends StatelessWidget {
  GlobalKey _globalKey = new GlobalKey();

  Future<Uint8List> _capturePng() async {
    try {
      RenderRepaintBoundary boundary =
      _globalKey.currentContext.findRenderObject();
//      ui.Image image = await boundary.toImage(pixelRatio: 3.0);
      ui.Image image = await boundary.toImage();
      ByteData byteData =
      await image.toByteData(format: ui.ImageByteFormat.png);
      var pngBytes = byteData.buffer.asUint8List();
      //write to file
      writeCounter(pngBytes);
      return pngBytes;
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      key: _globalKey,
      child: Scaffold(
        body: Container(
          constraints: BoxConstraints.expand(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/Background.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Container(
                width: 300,
                height: 300,
                child: DonutAutoLabelChart.withSampleData(),
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'APPROXIMATE OPPORTUNITY',
                  style: TextStyle(
                    color: colorBlue,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Container(
                width: 300,
                height: 300,
                child: SimpleBarChart.withSampleData(),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'COST DELIVERABLE',
                  style: TextStyle(
                    color: colorBlue,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Container(
                width: 300,
                height: 300,
                child: TimeSeriesSymbolAnnotationChart.withSampleData(),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'MAINTENANCE COST',
                  style: TextStyle(
                    color: colorBlue,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 50),
                child: RaisedButton(
                  onPressed: () {
                    _capturePng();
                  },
                  color: colorGreen,
                  textColor: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                  child: Text('SAVE'),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 50),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MenuPage()),
                    );
                  },
                  color: colorBlue,
                  textColor: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                  child: Text('RETURN'),
                ),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Future<String> get _localPath async {
  final directory = await getApplicationDocumentsDirectory();

  return directory.path;
}

Future<File> get _localFile async {
  final path = await _localPath;
  print(path);
  return File('$path/screenshot.png');
}

Future<void> writeCounter(screenshot) async {
  final file = await _localFile;

  // Write the file
  return file.writeAsBytesSync(screenshot);
}

