import 'package:flutter/material.dart';

class ColorManager{
  static Color transparent = Color(0x808B8781);
  static Color black     = Color(0xff000000);
  static Color faintblack = Color(0xff1E2222);
  static Color white     = Color(0xffFFFFFF);
  static Color lightBlue = Color(0xff83E1FF);
  static Color darkBlue  = Color(0xff214188);
  static Color pink      = Color(0xffAA1056);
  static Color purple    = Color(0xff210B32);
  static Color nevyBlue  = Color(0xff090B17);
  static Color skyBlue   = Color(0xff07558D);
  static Color skyBlue1   = Color(0xff3394DD);
  static Color blueShade = Color(0xff83CAFF);
  static Color white1    = Color(0xffDFDFDF);
  static Color darkBlue1  =  Color(0xff214188);




}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = 'FF' + hexColorString; //8 char with opacity 100%
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}