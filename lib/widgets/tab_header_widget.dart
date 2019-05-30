

import 'package:flutter/material.dart';
import 'package:sale_form_demo/utils/app_color.dart';

/*
Expanded widget that act like a tab header for detail card page

 */

class TabHeaderWidget extends StatelessWidget {
  final String label;
  final String activeHeader;
  final Function notifyParent;

  TabHeaderWidget({this.label, this.activeHeader, this.notifyParent});




  @override
  Widget build(BuildContext context) {
    Color backgroundColor;
    Color textColor;
    double height;
    if (activeHeader == label){
      backgroundColor = colorGrey5;
      textColor = colorGreen;
      height = 15;
    }
    else {
      backgroundColor = colorGreen;
      textColor = Colors.white;
      height = 10;
    }

    return Expanded(
      child: GestureDetector(
        onTap: () {
          // active the current tab
          notifyParent(label);
        },
        child: Container(
          padding: EdgeInsets.only(top: height, left: 10, right: 10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(8.0), topRight: const Radius.circular(8.0)),
            boxShadow: [
              BoxShadow(
                color: Colors.black54,
                blurRadius: 2.0,
              )
            ],
          ),
        child: Column(
          children: <Widget>[
            FittedBox(fit:BoxFit.fitWidth,
                child: Text(label, style: TextStyle(
                color: textColor,
              ),),
            ),

            SizedBox(height: 5,),
            SizedBox(
              height: 1.5,
              child:  Center(
                child:  Container(
                  margin:  EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
                  height: 1.5,
                  color: colorGreen,
                ),
              ),
            )

          ],
        ),
        ),
      ),
    );
  }
}
