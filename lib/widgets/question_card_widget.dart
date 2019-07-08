import 'package:flutter/material.dart';
import 'package:sale_form_demo/data/question_model.dart';
import 'package:sale_form_demo/screens/implement_page.dart';
import 'package:sale_form_demo/utils/app_color.dart';

class QuestionCard extends StatefulWidget {
  final Question question;
  const QuestionCard({
    Key key,
    this.question,
  }) : super(key: key);

  @override
  _QuestionCardState createState() => _QuestionCardState();
}

class _QuestionCardState extends State<QuestionCard> with SingleTickerProviderStateMixin {
  AnimationController animationController;
  Animation<double> animation;
  Animation<double> sizeAnimation;
  int currentState = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(duration: Duration(milliseconds: 500), vsync: this);
    animation = Tween<double>(begin: 0, end: 60).animate(animationController)
      ..addListener(() {
        setState(() {});
      });
    sizeAnimation = Tween<double>(begin: 0, end: 1)
        .animate(CurvedAnimation(parent: animationController, curve: Curves.fastOutSlowIn))
          ..addListener(() {
            setState(() {});
          });
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

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
          final snackBar = SnackBar(
            duration: Duration(milliseconds: 1000),
            content: Text(
              'Please select Implement Integrity Operating Windows',
              style: TextStyle(fontWeight: FontWeight.w700, color: colorGrey20),
            ),
          );

          if (widget.question.getLabel() != 'Implement Integrity Operating Windows') {
            Scaffold.of(context).showSnackBar(snackBar);
          } else {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) {
                return ImplementPage(question: widget.question);
              },
              fullscreenDialog: true,
            ));
          }
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
                margin: const EdgeInsets.only(left: 20.0, right: 20.0),
              ),

              Center(
                  child: Container(
                width: 30,
                height: 30,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      bottom: 0,
                      child: Transform.scale(
                        scale: sizeAnimation.value,
                        child: GestureDetector(
                            onTap: () {
                              animationController.reverse();
                              widget.question.setValue(!widget.question.getValue());
                            },
                            child: Icon(
                              Icons.remove,
                              size: 25,
                              color: textColor,
                            )),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Transform.scale(
                        scale: sizeAnimation.value - 1,
                        child: GestureDetector(
                            onTap: () {
                              animationController.forward();
                              widget.question.setValue(!widget.question.getValue());
                            },
                            child: Icon(
                              Icons.add,
                              size: 25,
                              color: textColor,
                            )),
                      ),
                    )
                  ],
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
