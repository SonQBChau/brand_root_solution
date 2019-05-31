import 'package:flutter/material.dart';
import 'package:sale_form_demo/data/question_model.dart';
import 'package:sale_form_demo/screens/chart_page.dart';
import 'package:sale_form_demo/utils/app_color.dart';
import 'package:sale_form_demo/widgets/checkbox_widget.dart';

List<Widget> buildFormWidgets(questionCenter, activeHeader, updateCheckboxValue) {
  List<Widget> formWidget;
  List<Widget> formWidget1 = new List();
  List<Widget> formWidget2 = new List();
  List<Widget> formWidget3 = new List();

  //form 1
  formWidget1.add(CheckboxWidget(
    label: questionCenter.questionBank[0].getLabel(),
    widgetValue: questionCenter.questionBank[0].getValue(),
    index: 0,
    notifyParent: updateCheckboxValue,
  ));
  formWidget1.add(CheckboxWidget(
    label: questionCenter.questionBank[1].getLabel(),
    widgetValue: questionCenter.questionBank[1].getValue(),
    index: 1,
    notifyParent: updateCheckboxValue,
  ));
  formWidget1.add(CheckboxWidget(
    label: questionCenter.questionBank[2].getLabel(),
    widgetValue: questionCenter.questionBank[2].getValue(),
    index: 2,
    notifyParent: updateCheckboxValue,
  ));
  formWidget1.add(CheckboxWidget(
    label: questionCenter.questionBank[3].getLabel(),
    widgetValue: questionCenter.questionBank[3].getValue(),
    index: 3,
    notifyParent: updateCheckboxValue,
  ));
  formWidget1.add(CheckboxWidget(
    label: questionCenter.questionBank[4].getLabel(),
    widgetValue: questionCenter.questionBank[4].getValue(),
    index: 4,
    notifyParent: updateCheckboxValue,
  ));
  formWidget1.add(CheckboxWidget(
    label: questionCenter.questionBank[5].getLabel(),
    widgetValue: questionCenter.questionBank[5].getValue(),
    index: 5,
    notifyParent: updateCheckboxValue,
  ));
  formWidget1.add(CheckboxWidget(
    label: questionCenter.questionBank[6].getLabel(),
    widgetValue: questionCenter.questionBank[6].getValue(),
    index: 6,
    notifyParent: updateCheckboxValue,
  ));
  formWidget1.add(CheckboxWidget(
    label: questionCenter.questionBank[7].getLabel(),
    widgetValue: questionCenter.questionBank[7].getValue(),
    index: 7,
    notifyParent: updateCheckboxValue,
  ));

  //form 2
  formWidget2.add(CheckboxWidget(
    label: questionCenter.questionBank[8].getLabel(),
    widgetValue: questionCenter.questionBank[8].getValue(),
    index: 8,
    notifyParent: updateCheckboxValue,
  ));
  formWidget2.add(CheckboxWidget(
    label: questionCenter.questionBank[9].getLabel(),
    widgetValue: questionCenter.questionBank[9].getValue(),
    index: 9,
    notifyParent: updateCheckboxValue,
  ));
  formWidget2.add(CheckboxWidget(
    label: questionCenter.questionBank[10].getLabel(),
    widgetValue: questionCenter.questionBank[10].getValue(),
    index: 10,
    notifyParent: updateCheckboxValue,
  ));
  formWidget2.add(CheckboxWidget(
    label: questionCenter.questionBank[11].getLabel(),
    widgetValue: questionCenter.questionBank[11].getValue(),
    index: 11,
    notifyParent: updateCheckboxValue,
  ));
  formWidget2.add(CheckboxWidget(
    label: questionCenter.questionBank[12].getLabel(),
    widgetValue: questionCenter.questionBank[12].getValue(),
    index: 12,
    notifyParent: updateCheckboxValue,
  ));
  formWidget2.add(CheckboxWidget(
    label: questionCenter.questionBank[13].getLabel(),
    widgetValue: questionCenter.questionBank[13].getValue(),
    index: 13,
    notifyParent: updateCheckboxValue,
  ));
  formWidget2.add(CheckboxWidget(
    label: questionCenter.questionBank[14].getLabel(),
    widgetValue: questionCenter.questionBank[14].getValue(),
    index: 14,
    notifyParent: updateCheckboxValue,
  ));
  formWidget2.add(CheckboxWidget(
    label: questionCenter.questionBank[15].getLabel(),
    widgetValue: questionCenter.questionBank[15].getValue(),
    index: 15,
    notifyParent: updateCheckboxValue,
  ));
  formWidget2.add(CheckboxWidget(
    label: questionCenter.questionBank[16].getLabel(),
    widgetValue: questionCenter.questionBank[16].getValue(),
    index: 16,
    notifyParent: updateCheckboxValue,
  ));

  //form 3
  formWidget3.add(CheckboxWidget(
    label: questionCenter.questionBank[17].getLabel(),
    widgetValue: questionCenter.questionBank[17].getValue(),
    index: 17,
    notifyParent: updateCheckboxValue,
  ));
  formWidget3.add(CheckboxWidget(
    label: questionCenter.questionBank[18].getLabel(),
    widgetValue: questionCenter.questionBank[18].getValue(),
    index: 18,
    notifyParent: updateCheckboxValue,
  ));
  formWidget3.add(CheckboxWidget(
    label: questionCenter.questionBank[19].getLabel(),
    widgetValue: questionCenter.questionBank[19].getValue(),
    index: 19,
    notifyParent: updateCheckboxValue,
  ));
  formWidget3.add(CheckboxWidget(
    label: questionCenter.questionBank[20].getLabel(),
    widgetValue: questionCenter.questionBank[20].getValue(),
    index: 20,
    notifyParent: updateCheckboxValue,
  ));
  formWidget3.add(CheckboxWidget(
    label: questionCenter.questionBank[21].getLabel(),
    widgetValue: questionCenter.questionBank[21].getValue(),
    index: 21,
    notifyParent: updateCheckboxValue,
  ));
  formWidget3.add(CheckboxWidget(
    label: questionCenter.questionBank[22].getLabel(),
    widgetValue: questionCenter.questionBank[22].getValue(),
    index: 22,
    notifyParent: updateCheckboxValue,
  ));
  formWidget3.add(CheckboxWidget(
    label: questionCenter.questionBank[23].getLabel(),
    widgetValue: questionCenter.questionBank[23].getValue(),
    index: 23,
    notifyParent: updateCheckboxValue,
  ));
  formWidget3.add(CheckboxWidget(
    label: questionCenter.questionBank[24].getLabel(),
    widgetValue: questionCenter.questionBank[24].getValue(),
    index: 24,
    notifyParent: updateCheckboxValue,
  ));




  // present the list of questionares based on active tab
  if (activeHeader == 'HIGH IMPACT') {
    formWidget = formWidget1;
  } else if (activeHeader == 'MEDIUM IMPACT') {
    formWidget = formWidget2;
  } else if (activeHeader == 'LOW IMPACT') {
    formWidget = formWidget3;
  }


  formWidget.add(SizedBox(height: 20,));

//  formWidget.add(
//      Container(
//        margin: EdgeInsets.symmetric(horizontal: 50),
//        child: RaisedButton(
//            onPressed: (){
//              for(Question question in questionCenter.questionBank){
//                if (question.getValue())
//                  {
//                    print(question.getLabel());
//                  }
//              }
//            },
//      color: Colors.white,
//          textColor: colorGreen,
//          padding: EdgeInsets.symmetric(vertical: 15),
//
//            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
//            child: Text('BENCHMARK'),
//        ),
//      )
//  );
//  formWidget.add(SizedBox(height: 10,));
//  formWidget.add(
//      Container(
//        margin: EdgeInsets.symmetric(horizontal: 50),
//        child: RaisedButton(
//          onPressed: (){
//            Navigator.push(
//              context,
//              MaterialPageRoute(builder: (context) => ChartPage()),
//            );
//          },
//          color: colorGreen,
//          textColor: Colors.white,
//          padding: EdgeInsets.symmetric(vertical: 15),
//
//          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
//          child: Text('REVIEW'),
//        ),
//      )
//  );
//
//  formWidget.add(SizedBox(height: 50,));

  return formWidget;
}