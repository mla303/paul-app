import 'package:flutter/material.dart';
import 'Views/signIn.dart';
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
  // "/forgetPassword": (BuildContext context) => forgotPasswordScreen(),
  // "/lanuageSelect": (BuildContext context) => LanguageSelector(),
  // "/bottomNavigation": (BuildContext context) => navigationBar(),
  // "/notifi": (BuildContext context) =>  notifications(),
  // "/mygrades": (BuildContext context) =>  myGrades(),
  // "/contactus": (BuildContext context) =>  contactUsWithOutSignIn(),
  "/home": (BuildContext context) => homePage(),
  "/allCatorgry": (BuildContext context) => allCatorgies(),
  "/naviga": (BuildContext context) => bottomNavigation(),

};



class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: splashScreen(),
      routes: routes,
    );
  }
}

