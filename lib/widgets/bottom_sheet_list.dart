import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sale_form_demo/data/question_model.dart';
import 'package:sale_form_demo/screens/review_page.dart';
import 'package:sale_form_demo/utils/app_color.dart';
import 'package:sale_form_demo/widgets/question_card_widget.dart';

QuestionCenter questionCenter = QuestionCenter();

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
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(width: 20),
            Expanded(
              child: RaisedButton(//<-- Button Benchmark
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
              child: RaisedButton(//<-- Button Review
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                    return ReviewPage(questionCenter: questionCenter);
                  }));
                },
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

