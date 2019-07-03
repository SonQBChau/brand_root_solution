import 'package:flutter/material.dart';
import 'package:sale_form_demo/utils/app_color.dart';

class ResultRow extends StatelessWidget {
  final String title;
  final String content;
  ResultRow({this.title, this.content});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              color: colorBlue,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 5),
          Text(
            content,
            style: TextStyle(
              color: colorGreen,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 10.0,
            child: Center(
              child: Container(
                margin: EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
                height: 1.0,
                color: colorBlue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
