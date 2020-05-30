import 'package:flutter/material.dart';

class UIColors {
  static const clolor1 = Color(0xffF6D32C);
  static const color2 = Color(0xff594524);
  static const color3 = Color(0xffF7FCF6);
  static const color4 = Color(0xffD1D2CD);
}

// screen height
double screenHeight(BuildContext context, double percent) =>
    MediaQuery.of(context).size.height * percent;

//screen width
double screenWidth(BuildContext context, double percent) =>
    MediaQuery.of(context).size.width * percent;
