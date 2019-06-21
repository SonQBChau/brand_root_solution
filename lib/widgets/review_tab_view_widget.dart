
import 'package:flutter/material.dart';

class ReviewTabViewWidget extends StatelessWidget {
  _buildQuestionCard() {
    List<ReviewCard> cardList = [];
    for (int i = 0; i < 8; i++) {
      cardList.add(ReviewCard(txt: 'Create RBI Assessment And Inspection Plan'));
    }
    return cardList;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ..._buildQuestionCard(),//<-- List of Cards
      ],
    );
  }
}

class ReviewCard extends StatelessWidget {
  final String txt;
  ReviewCard({this.txt});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(txt),
    );
  }
}

