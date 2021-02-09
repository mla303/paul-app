import 'package:flutter/material.dart';

import 'colors.dart';


class CustomTextStyle {

  static TextStyle buttontitle(BuildContext context) {
    return TextStyle(
        color: Colors.white,
        fontSize: MediaQuery.of(context).size.height / 44,
        fontWeight: FontWeight.w600);
  }

  static TextStyle headig(BuildContext context) {
    return TextStyle(
        color: basicColorShopper,
        fontSize: MediaQuery.of(context).size.height / 20,
        fontWeight: FontWeight.w600);
  }


  static TextStyle normaltext1(BuildContext context) {
    return TextStyle(
        color: basicColorShopper,
        fontSize: MediaQuery.of(context).size.height / 45,
        fontWeight: FontWeight.w400);
  }
  static TextStyle normaltext2(BuildContext context) {
    return TextStyle(
        color: Color(0xff8A8A8F),
        fontSize: MediaQuery.of(context).size.height / 54,
        fontWeight: FontWeight.w400);
  }

  
  
}