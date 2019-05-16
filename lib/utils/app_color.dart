

import 'package:flutter/material.dart';

/*
https://stackoverflow.com/questions/23201134/transparent-argb-hex-value
 */

final Color colorGreen = HexColor('#8DC441');
final Color colorBlue = HexColor('#004963');
final Color colorBlue80 = HexColor('#CC004963');
final Color colorOrange = HexColor('#F5941E');
final Color colorGrey = HexColor('#A19C96');
final Color colorGrey10 = HexColor('#eeeeec');
final Color colorGrey20 = HexColor('#dedddb');
final Color colorRed20 = HexColor('#80ff0000');



class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

