import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sale_form_demo/data/question_model.dart';
import 'package:sale_form_demo/utils/app_color.dart';
import 'package:sale_form_demo/widgets/company_full_logo.dart';
import 'package:sale_form_demo/widgets/review_tab_container_widget.dart';
import 'package:sale_form_demo/data/globals.dart' as globals;

QuestionCenter questionCenter = globals.questionCenter;

class ReviewPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    List<Question> selectedQuestions = questionCenter.questionBank.where((question)=>question.getValue()).toList();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            size: 40,
            color: colorBlue,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Column(
        children: <Widget>[
          CompanyFullLogo(),
          SizedBox(height: 30),
          ReviewTabContainerWidget(),
        ],
      ),
    );
  }
}
