import 'package:flutter/material.dart';
import 'package:paul_app/Views/paymentScreen.dart';
import 'Views/allCategories.dart';
import 'Views/bottomNavigation.dart';
import 'Views/forgotPassword.dart';
import 'Views/homePage.dart';
import 'Views/signIn.dart';
import 'Views/signUp.dart';
import 'Views/splash.dart';
import 'Views/test.dart';
import 'Views/vendorProfile.dart';
import 'Views/yourItem.dart';
import 'Views/walkthrough.dart';
import 'Views/wishList.dart';

void main() {
  runApp(MyApp());
}

var routes = <String, WidgetBuilder>{
  "/walkthrough": (BuildContext context) => WalkThrough(),
  "/login": (BuildContext context) => SignInScreen(),
  "/forgetPassword": (BuildContext context) => forgotPassword(),
  "/signUp": (BuildContext context) => SignUpScreen(),
  // "/lanuageSelect": (BuildContext context) => LanguageSelector(),
  // "/bottomNavigation": (BuildContext context) => navigationBar(),
  // "/notifi": (BuildContext context) =>  notifications(),
  // "/mygrades": (BuildContext context) =>  myGrades(),
  // "/contactus": (BuildContext context) =>  contactUsWithOutSignIn(),
  "/home": (BuildContext context) => homePage(),
  "/allCatorgry": (BuildContext context) => allCatorgies(),
  "/naviga": (BuildContext context) => bottomNavigation(),
  "/paymentScreen": (BuildContext context) => PaymentScreen(),

};



class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
         fontFamily: 'workSans',
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: splashScreen(),
      routes: routes,
    );
  }
}

