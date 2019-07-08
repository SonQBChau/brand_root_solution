

import 'package:flutter/material.dart';

class RoundedCornerContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(5),
      ),
      margin: EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
      height: 6.0,

    );
  }
}


