
import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:sale_form_demo/data/benchmark_model.dart';
import 'package:sale_form_demo/screens/benchmark_page.dart';
import 'package:sale_form_demo/utils/app_color.dart';
import 'package:sale_form_demo/widgets/company_full_logo.dart';
import 'package:esys_flutter_share/esys_flutter_share.dart';


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
                child: Text('Benchmark Results',
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
              padding: EdgeInsets.only(left: 40, right: 40, bottom: 30),
              child: Column(
                children: <Widget>[


                  RaisedButton(//<-- Button Benchmark
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
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                    child: Text(
                      'EMAIL PDF',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
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

  @override
  Widget build(BuildContext context) {
    return OverRepaintBoundary(
      key: overRepaintKey,
      child: RepaintBoundary(
        child: Column(
          children: <Widget>[
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
                      )
                    ],
                  ),
                ),
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
