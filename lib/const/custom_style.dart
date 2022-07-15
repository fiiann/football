import 'package:flutter/material.dart';

class CustomStyle {
  static const double fontSizeHeader = 19;
  static const double fontSizeJumbo = 26;
  static const double fontSizeTitle = 18;
  static const double fontSizeSubTitle = 17;
  static const double fontSizeNormal = 16;
  static const double fontSizeSmall = 14;
  static const double horizontalMargin = 15;
  static const double topMarginPage = 24;
  static const int decimalPlaces = 3;
  static const Color mainColor = Color(0xff8B4513);
  static const Color tabButtonColor = Color(0xff8093AB);
  static const Color  secondaryColor = Color(0xffffdd53);
  static const Color  tertiaryColor = Color(0xff314488);
  static const Color  colorBC = Color(0xff26C89B);
  static const Color colorRed =  Color(0xffCC4343);
  static const Color colorGreen =  Color(0xff23BE5B);
  static const Color colorOrange =  Color(0xffF17F1B);
  static const Color colorLightOrange =  Color(0xffFCB544);
  static const Color backgroundColor = Colors.white;
  static Color? fontColorBlack = Colors.grey[800];
  static Color? fontColorGrey = Colors.grey[600];
  static var boxDecoration = BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.08),
          spreadRadius: 1.6,
          blurRadius: 4,
          offset: const Offset(0, 1), // changes position of shadow
        ),
      ],
      color: Colors.white,
      borderRadius: const BorderRadius.all(Radius.circular(12),)
  );
}