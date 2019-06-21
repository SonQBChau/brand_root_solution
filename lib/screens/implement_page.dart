import 'package:flutter/material.dart';
import 'package:sale_form_demo/screens/sample_delivery_page.dart';
import 'package:sale_form_demo/utils/app_color.dart';

class ImplementPage extends StatelessWidget {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: colorGreen,
        elevation: 0,
        title: Text('Implement Integrity Operating Windows',
        style: TextStyle(fontSize: 16),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric( horizontal: 30),
        color: colorGrey5,
        child: ListView(

          children: <Widget>[
            SizedBox(height: 20),
            Text(
              'FUNDAMENTALS',
              style: TextStyle(
                color: colorBlue,
                fontSize: 23,
              ),
            ),
            SizedBox(
              height: 10.0,
              child:  Center(
                child:  Container(
                  margin:  EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
                  height: 1.5,
                  color: colorBlue,
                ),
              ),
            ),
            SizedBox(height: 15,),
            Container(
              child: Image.asset('images/meter.png',
              fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20,),
            Text('PinnacleART’s Integrity Operating Windows (IOWs) solution provides valuable operating guidance to your'
                ' facility. By Identifying potential damage mechanisms and identifying critical integrity process '
                'variables across a unit. PinnacleART determines acceptable upper and lower operating thresholds.'
                ' These operating parameters are prioritized by critically level (information, standard or critical). '
                'Pinnacle ART provides action recommendations with associated response times, ensuring that proper '
                'communication channels exist should those IOWs be',
            style: TextStyle(color: colorBlue, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 20,),
            RaisedButton(//<-- Button Benchmark
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context){
                      return SampleDeliveryPage();
                    },
                ));
              },
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              color: Colors.white,
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              child: Text(
                'View Sample Deliverable',
                style: TextStyle(
                  color: colorGreen,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 20,),
            Text(
              'PRACTICE AREAS INFLUENCED BY SOLUTION',
              style: TextStyle(
                color: colorBlue,
                fontSize: 23,
              ),
            ),
            SizedBox(
              height: 10.0,
              child:  Center(
                child:  Container(
                  margin:  EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
                  height: 1.5,
                  color: colorBlue,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text('Click to View Solutions',
            style: TextStyle(
              color: colorBlue,
              fontSize: 14,
              fontWeight: FontWeight.w700
            ),
            ),
            SizedBox(height: 5,),
            MiniCard(text:'Goals and Performance Expectations'),
            MiniCard(text:'Proactive Maintenance (PM)'),
            MiniCard(text:'Strategy Management'),
            MiniCard(text:'Spare Parts Strategy Management'),
            MiniCard(text:'Safety System Management'),
            MiniCard(text:'Process Control Strategy'),
            MiniCard(text:'Planning and Scheduling'),
            MiniCard(text:'Materials (MRO) Management'),
            MiniCard(text:'Tar Management Change Management'),
            MiniCard(text:'Technology and Systems Management'),


            SizedBox(height: 20),
            RaisedButton(//<-- Button Benchmark
              onPressed: () {
                final snackBar = SnackBar(
                  duration: Duration(milliseconds: 500),
                  content: Text(
                    'Not implemented yet!',
                    style: TextStyle(fontWeight: FontWeight.w700, color: colorGrey20),
                  ),
                );
                _scaffoldKey.currentState.showSnackBar(snackBar);
              },
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              color: Colors.white,
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              child: FittedBox(
                fit:BoxFit.fitWidth,
                child: Text(
                  'Create Assessment & Inspection Plans',
                  style: TextStyle(
                    color: colorGreen,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: RaisedButton(//<-- Button Benchmark
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    color: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                    child: FittedBox(
                      fit:BoxFit.fitWidth,
                      child: Text(
                        'CONTINUE SEARCH',
                        style: TextStyle(
                          color: colorBlue,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: RaisedButton(//<-- Button Review
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    color: colorGreen,
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                    child: FittedBox(
                      fit:BoxFit.fitWidth,
                      child: Text(
                        'ADD TO PLAN',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40,),


          ],
        ),
      ),
    );
  }
}

class MiniCard extends StatelessWidget {
  final String text;
  const MiniCard({
    Key key,
    this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.transparent,
      margin: EdgeInsets.all(0),
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          final snackBar = SnackBar(
            duration: Duration(milliseconds: 500),
            content: Text(
              'Not implemented yet!',
              style: TextStyle(fontWeight: FontWeight.w700, color: colorGrey20),
            ),
          );
          Scaffold.of(context).showSnackBar(snackBar);
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 5),
          child: Text(text,
          style: TextStyle(
            color: colorBlue,
            fontSize: 16,
          ),
          ),
        ),
      ),
    );
  }
}
