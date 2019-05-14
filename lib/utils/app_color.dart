

import 'package:flutter/material.dart';


final Color colorGreen = HexColor('#8DC441');
final Color colorBlue = HexColor('#004963');
final Color colorBlue80 = HexColor('#CC004963');
final Color colorOrange = HexColor('#F5941E');
final Color colorGrey = HexColor('#A19C96');



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

