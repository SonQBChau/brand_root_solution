import 'package:flutter/material.dart';
import 'package:sale_form_demo/data/question_model.dart';
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
        SizedBox(height: 30,),
        ..._buildQuestionCard(), //<-- List of Cards
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
