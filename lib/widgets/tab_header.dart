

import 'package:flutter/material.dart';
import 'package:sale_form_demo/utils/app_color.dart';

/*
Expanded widget that act like a tab header for detail card page

 */

class TabHeader extends StatelessWidget {
  final String label;
  final String activeHeader;
  final Function notifyParent;

  TabHeader({this.label, this.activeHeader, this.notifyParent});




  @override
  Widget build(BuildContext context) {
    Color backgroundColor;
    Color textColor;
    if (activeHeader == label){
      backgroundColor = Colors.white;
      textColor = colorGreen;
    }
    else {
      backgroundColor = colorGreen;
      textColor = Colors.white;
    }

    return Expanded(
      child: GestureDetector(
        onTap: () {
          // active the current tab
          notifyParent(label);
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(5.0), topRight: const Radius.circular(5.0)),
            boxShadow: [
              BoxShadow(
                color: Colors.black54,
                blurRadius: 2.0,
              )
            ],
          ),
          child: Text(label, style: TextStyle(
            color: textColor,
          ),),
        ),
      ),
    );
  }
}
