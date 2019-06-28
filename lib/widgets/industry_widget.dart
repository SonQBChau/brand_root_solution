import 'package:flutter/material.dart';
import 'package:sale_form_demo/services/intro_form_provider.dart';
import 'package:sale_form_demo/utils/app_color.dart';
import 'package:sale_form_demo/data/globals.dart' as globals;

class IndustryWidget extends StatefulWidget {
  bool showError;
  IndustryWidget({this.showError});

  @override
  _IndustryWidgetState createState() => _IndustryWidgetState();
}

class _IndustryWidgetState extends State<IndustryWidget> {
  int _value;
  final List<DropdownMenuItem<int>> industryList = [
    DropdownMenuItem(
      child:  Text('Refining'),
      value: 0,
    ),
    DropdownMenuItem(
      child:  Text('Drilling'),
      value: 1,
    ),
    DropdownMenuItem(
      child:  Text('Pumping'),
      value: 2,
    ),
  ];

  @override
  Widget build(BuildContext context) {


    return Container(
      padding:  EdgeInsets.only(left: 30, right: 30, top: 0, bottom: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 13, bottom: 13, left: 15, right: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(23),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                  hint: Text(
                    'Industry',
                    style: TextStyle(
                        color: colorGrey20,
                        fontWeight: FontWeight.w600,
                        fontSize: 13),
                  ),
                  icon: Icon(Icons.keyboard_arrow_down, color: colorBlue,),
                  isDense: true,
                  isExpanded: true,
                  style: TextStyle(
                      color: colorGreen,
                      fontWeight: FontWeight.w600,
                      fontSize: 13),
                  items: industryList,
                  value: _value,
                  onChanged: (value) {
                      globals.customerIndustry = value;
                      setState(() {
                        _value = value;
                        widget.showError = false;
                      });
                  }),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          buildErrorMessage(widget.showError),
          SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }

  buildErrorMessage(bool showError) {
    if (showError){
      return Container(
        padding: EdgeInsets.only(top:5,bottom: 5, left: 5),
        child: Row(
          children: <Widget>[
            SizedBox(width: 10,),
            Text(
              'Please select industry',
              style:
              TextStyle(color: Colors.redAccent.shade700, fontSize: 12.0),
            ),
          ],
        ),
      );
    }
    else
      return Container();
  }
}