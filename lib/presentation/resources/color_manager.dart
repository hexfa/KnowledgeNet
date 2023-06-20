
import 'package:flutter/material.dart';
class ColorManager{
  static Color primary = HexColor.fromHex('#177FB0');
  static Color black = HexColor.fromHex('#000000');
  static Color lightBlack1 = HexColor.fromHex('#262626');
  static Color lightPurple = HexColor.fromHex('#BE8DEA');
  static Color grey = HexColor.fromHex('#737477');
  static Color darkGrey = HexColor.fromHex('#525252');
  static Color lightGrey = HexColor.fromHex('#525252');
  static Color white = HexColor.fromHex('#FFFFFF');
  static Color darkWhite1 = HexColor.fromHex('##DBDBDB');
  static Color error = HexColor.fromHex('#e61f34'); // red color
  static Color lightBlue1	 = HexColor.fromHex('##4d88ff');
}

extension HexColor on Color{
  static Color fromHex(String hexColorString){
    hexColorString = hexColorString.replaceAll('#', '');
    if(hexColorString.length == 6){
      hexColorString = 'FF$hexColorString'; // 8 char with opacity 100%
    }
    return Color(int.parse(hexColorString,radix: 16));
  }
}