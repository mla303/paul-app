import 'package:flutter/material.dart';
import 'package:paul_app/widgets/CustomButton.dart';
import 'package:paul_app/widgets/CustomTextField.dart';
import 'package:paul_app/widgets/Lists.dart';
import 'package:paul_app/widgets/appBar.dart';
import 'package:paul_app/widgets/colors.dart';
import 'package:paul_app/widgets/styles.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import 'done.dart';

class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() => new _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
double amount= 2566.0;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,

        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text('Payment Invoice', style: TextStyle(color: Colors.black,), textAlign: TextAlign.center),
          iconTheme: IconThemeData(color: Colors.black),
        ),

        body: Container(
          height: height,
          width: width,
          // color: whiteColor,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
             // crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: height/7,),
                CustomTextField
                  (
                  hinttext: "Payment amount",
                  obscureText: false,
                  textInputType: TextInputType.number,
                ),
                SizedBox(height: height/30,),
                CustomTextField
                  (
                  hinttext: "Name on card",
                  obscureText: false,
                  textInputType: TextInputType.text,
                ),
                SizedBox(height: height/30,),
                CustomTextField
                  (
                  hinttext: "Card Number",
                  obscureText: false,
                  textInputType: TextInputType.text,
                ),
                SizedBox(height: height/30,),
                CustomTextField
                  (
                  hinttext: "Expiry date",
                  obscureText: false,
                  textInputType: TextInputType.datetime,
                ),
                SizedBox(height: height/30,),
                CustomTextField
                  (
                  hinttext: "ZIP/Postal code",
                  obscureText: false,
                  textInputType: TextInputType.number,
                ),
                SizedBox(height: height/30,),
                ShopperButton(
                  text: Text("Pay $amount",
                    style: CustomTextStyle.buttontitle(context),),
                  onPressed: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (Context) => Done()));
                  },
                  color: basicColorShopper,
                  focusColor: buttonColor2,
                  disbaleColor: buttonColor2,
                ),

                // SizedBox(height: height/70,),





              ],
            ),
          ),
        ),
      ),
    );
  }
}
