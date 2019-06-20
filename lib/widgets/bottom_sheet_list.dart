import 'package:flutter/material.dart';
import 'package:sale_form_demo/utils/app_color.dart';

class BottomSheetList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TextCard(text: 'Maintenance & Reliability\nPractice Assessment'),
        TextCard(text: 'Mi Program Management'),
        TextCard(text: 'Program Improvement\nDetailed Creation'),
        TextCard(text: 'Create RBI Assessment And\nInspection Plan'),
        TextCard(text: 'Create Corrosion Modeling Diagrams (CMD) & Damage Mechanisms With Rates/Susceptibilities'),
        TextCard(text: 'Implement Integrity Operating Windows'),
        TextCard(text: 'Preform RBI On Tanks'),
        TextCard(text: 'Keep Program Evergreened/ Continuously Improved'),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(width: 20),
            Expanded(
              child: RaisedButton(
                onPressed: () {},
                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                color: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                child: Text(
                  'BENCHMARK',
                  style: TextStyle(
                    color: colorBlue,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: RaisedButton(
                onPressed: () {},
                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                color: colorGreen,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                child: Text(
                  'REVIEW',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
            SizedBox(width: 20),
          ],
        ),
        SizedBox(height: 30),
      ],
    );
  }
}

class TextCard extends StatelessWidget {
  final String text;
  const TextCard({
    Key key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      elevation: 5,
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          print('Card tapped.');
        },
        child: Container(
          padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 10),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Text(text, style: TextStyle(color: colorBlue)),
              ),
              Container(
                height: 30.0,
                width: 1.0,
                color: colorGrey20,
                margin: const EdgeInsets.only(left: 10.0, right: 10.0),
              ),
              IconButton(
                icon: Icon(
                  Icons.add,
                  color: colorBlue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
