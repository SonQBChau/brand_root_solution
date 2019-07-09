import 'package:flutter/material.dart';
import 'package:sale_form_demo/data/question_model.dart';
import 'package:sale_form_demo/screens/benchmark_page.dart';
import 'package:sale_form_demo/screens/result_page.dart';
import 'package:sale_form_demo/utils/app_color.dart';
import 'package:sale_form_demo/data/globals.dart' as globals;
import 'package:flutter_spinkit/flutter_spinkit.dart';

QuestionCenter questionCenter = globals.questionCenter;

class ReviewTabViewWidget extends StatelessWidget {
  final List<Question> selectedQuestions =
      questionCenter.questionBank.where((question) => question.getValue()).toList();

  _buildQuestionCard() {
    List<ReviewCard> cardList = [];
    for (int i = 0; i < selectedQuestions.length; i++) {
      cardList.add(ReviewCard(txt: selectedQuestions[i].getLabel()));
    }
    return cardList;
  }

  @override
  Widget build(BuildContext context) {
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

    return ListView(
      children: <Widget>[
        ..._buildQuestionCard(), //<-- List of Cards
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(width: 30),
            Expanded(
              child: RaisedButton(
                //<-- Button Result
                onPressed: () {
                  //<-- show loading indicator
                  _onLoading();
                  //<-- add some delay to mimic calculation
                  Future.delayed(const Duration(milliseconds: 2000), () {
                    Navigator.pop(context); //pop dialog indicator
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                      return ResultPage();
                    }));
                  });
                },
                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                color: colorGreen,
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                child: Text(
                  'SEE RESULTS',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
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
//    return Card(
//      shape: RoundedRectangleBorder(
//        borderRadius: BorderRadius.circular(15.0),
//      ),
//      elevation: 5,
//      child: Container(
//        padding: EdgeInsets.only(top: 20, bottom: 20, left: 30, right: 20),
//        width: double.infinity,
//        child: Text(txt, style: TextStyle(color: colorGreen)),
//      ),
//    );
    return Container(
      padding: EdgeInsets.only(bottom: 20),
      width: double.infinity,
      child: Text(txt, style: TextStyle(color: colorGreen)),
    );
  }
}
