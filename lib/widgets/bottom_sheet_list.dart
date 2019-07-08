import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sale_form_demo/data/question_model.dart';
import 'package:sale_form_demo/screens/benchmark_page.dart';
import 'package:sale_form_demo/screens/review_page.dart';
import 'package:sale_form_demo/utils/app_color.dart';
import 'package:sale_form_demo/widgets/question_card_widget.dart';
import 'package:sale_form_demo/data/globals.dart' as globals;

QuestionCenter questionCenter = globals.questionCenter;

class BottomSheetList extends StatelessWidget {
  _buildQuestionCard() {
    List<QuestionCard> cardList = [];
    for (int i = 0; i < 8; i++) {
      cardList.add(QuestionCard(question: questionCenter.questionBank[i]));
    }
    return cardList;
  }



  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ..._buildQuestionCard(),//<-- List of Cards
        SizedBox(height: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: MediaQuery.of(context).size.width - 100,
              child: RaisedButton(//<-- Button Benchmark
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                    return BenchmarkPage();
                  }));
                },
                shape:  RoundedRectangleBorder(borderRadius:  BorderRadius.circular(30.0)),
                color: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                child: Text(
                  'BENCHMARK',
                  style: TextStyle(
                    color: colorBlue,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: MediaQuery.of(context).size.width - 100,
              child: RaisedButton(//<-- Button Review
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                    return ReviewPage();
                  }));
                },
                shape:  RoundedRectangleBorder(borderRadius:  BorderRadius.circular(30.0)),
                color: colorGreen,
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                child: Text(
                  'REVIEW',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(width: 20),
        SizedBox(height: 50),
      ],
    );
  }
}

