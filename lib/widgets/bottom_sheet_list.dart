import 'package:flutter/material.dart';
import 'package:sale_form_demo/data/question_model.dart';
import 'package:sale_form_demo/utils/app_color.dart';
import 'package:flutter/animation.dart';

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
        ..._buildQuestionCard(),
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

class QuestionCard extends StatefulWidget {
  final Question question;
  const QuestionCard({
    Key key,
    this.question,
  }) : super(key: key);

  @override
  _QuestionCardState createState() => _QuestionCardState();
}

class _QuestionCardState extends State<QuestionCard> {
  Animation<double> animation;
  AnimationController controller;

  @override
  Widget build(BuildContext context) {
    Color textColor = colorBlue;
    IconData icon = Icons.add;
    if (widget.question.getValue()) {
      textColor = colorGreen;
      icon = Icons.remove;
    }
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
                child: Text(widget.question.getLabel(), style: TextStyle(color: textColor)),
              ),
              Container(
                height: 30.0,
                width: 1.0,
                color: colorGrey20,
                margin: const EdgeInsets.only(left: 10.0, right: 10.0),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    widget.question.setValue(!widget.question.getValue());
                  });
                },
                icon: Icon(
                  icon,
                  color: textColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
