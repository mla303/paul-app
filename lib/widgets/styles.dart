import 'package:flutter/material.dart';

import 'colors.dart';


class CustomTextStyle {

  static TextStyle buttontitle(BuildContext context) {
    return TextStyle(
        color: Colors.white,
        fontFamily: "workSans",
        fontSize: MediaQuery.of(context).size.height / 44,
        fontWeight: FontWeight.w600);
  }

  static TextStyle buttontitle1(BuildContext context) {
    return TextStyle(
        color: Colors.black,
        fontFamily: "workSans",
        fontSize: MediaQuery.of(context).size.height / 44,
        fontWeight: FontWeight.w400);
  }
  static TextStyle buttonTextWhite(BuildContext context) {
    return TextStyle(
        color: Colors.white,
        fontFamily: "workSans",
        fontSize: MediaQuery.of(context).size.height / 44,
        fontWeight: FontWeight.w400);
  }

  static TextStyle headig(BuildContext context) {
    return TextStyle(
        color: blackColor,
        fontFamily: "workSans",
        fontSize: MediaQuery.of(context).size.height / 26,
        fontWeight: FontWeight.w600);
  }


  static TextStyle title(BuildContext context) {
    return TextStyle(
        color: Colors.white,
        fontFamily: "workSans",
        fontSize: MediaQuery.of(context).size.height / 40,
        fontWeight: FontWeight.w400);
  }
  static TextStyle normaltext1(BuildContext context) {
    return TextStyle(
        color: basicColorShopper,
        fontFamily: "workSans",
        fontSize: MediaQuery.of(context).size.height / 45,
        fontWeight: FontWeight.w400);
  }

  static TextStyle Listtext1(BuildContext context) {
    return TextStyle(
        color: Colors.black,
        fontFamily: "workSans",
        fontSize: MediaQuery.of(context).size.height / 52,
        fontWeight: FontWeight.w400);
  }
  static TextStyle Listtext2(BuildContext context) {
    return TextStyle(
        color: Colors.grey,
        fontFamily: "workSans",
        fontSize: MediaQuery.of(context).size.height / 56,
        fontWeight: FontWeight.w400);
  }
  static TextStyle normaltext2(BuildContext context) {
    return TextStyle(
        color: Color(0xff8A8A8F),
        fontFamily: "workSans",
        fontSize: MediaQuery.of(context).size.height / 54,
        fontWeight: FontWeight.w400);
  }
  static TextStyle normaltext5(BuildContext context) {
    return TextStyle(
        color: Colors.black,
        fontFamily: "workSans",
        fontSize: MediaQuery.of(context).size.height / 50,
        fontWeight: FontWeight.w400);
  }
  static TextStyle normaltext3(BuildContext context) {
    return TextStyle(
        color: Colors.white,
        fontFamily: "workSans",
        fontSize: MediaQuery.of(context).size.height / 54,
        fontWeight: FontWeight.w400);
  }
  static TextStyle normaltext4(BuildContext context) {
    return TextStyle(
        color: Colors.black12,
        fontFamily: "workSans",
        fontSize: MediaQuery.of(context).size.height / 54,
        fontWeight: FontWeight.w400);
  }

  
  
}



