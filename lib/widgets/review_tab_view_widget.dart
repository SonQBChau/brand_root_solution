import 'package:flutter/material.dart';
import 'package:sale_form_demo/data/question_model.dart';
import 'package:sale_form_demo/screens/benchmark_page.dart';
import 'package:sale_form_demo/screens/result_page.dart';
import 'package:sale_form_demo/utils/app_color.dart';

class ReviewTabViewWidget extends StatelessWidget {
  List<Question> selectedList;
  ReviewTabViewWidget({this.selectedList});

  _buildQuestionCard() {
    List<ReviewCard> cardList = [];
    for (int i = 0; i < selectedList.length; i++) {
      cardList.add(ReviewCard(txt: selectedList[i].getLabel()));
    }
    return cardList;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ..._buildQuestionCard(), //<-- List of Cards
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(width: 20),
            Expanded(
              child: RaisedButton(//<-- Button Benchmark
                onPressed: () {
                  Navigator.of(context).pop();
                },
                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                color: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                child: Text(
                  'RETURN',
                  style: TextStyle(
                    color: colorBlue,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: RaisedButton(//<-- Button Review
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                    return ResultPage();
                  }));
                },
                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                color: colorGreen,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                child: Text(
                  'SEE RESULTS',
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
        SizedBox(height: 20),
      ],
    );
  }
}

class ReviewCard extends StatelessWidget {
  final String txt;
  ReviewCard({this.txt});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 5,
      child: Container(
        padding: EdgeInsets.only(top: 20, bottom: 20, left: 30, right: 20),
        child: Text(txt, style: TextStyle(color: colorGreen)),
      ),
    );
  }
}
