
import 'package:flutter/material.dart';
import 'package:paul_app/widgets/CustomButton.dart';
import 'package:paul_app/widgets/CustomTextField.dart';
import 'package:paul_app/widgets/Lists.dart';
import 'package:paul_app/widgets/appBar.dart';
import 'package:paul_app/widgets/colors.dart';
import 'package:paul_app/widgets/styles.dart';





class shopperAddress extends StatefulWidget {
  @override
  _shopperAddresstState createState() => new _shopperAddresstState();
}




class _shopperAddresstState extends State<shopperAddress> {

  double orderPrice = 125445;
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    // double orderPrice =
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Color(0xfff7f7f7),

        appBar: customAppBar1("Shopper Adress"),

        body: Container(
          // color: whiteColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:30,vertical: 15),
            child: Column(

              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height:20,),
                      Container(
                          width:width/1.4,
                          child: Text("Billing Address", style: CustomTextStyle.normaltext3(context))),
                      SizedBox(height:10,),


                    ],
                  ),
                ),


                SizedBox(height: 15,),

                Expanded(
                  flex: 2,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Wrap(
                          direction: Axis.vertical,
                          spacing: 8,
                          // // alignment: WrapAlignment.center,
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [


                            //email textfield
                            CustomTextField
                              (
                              hinttext: "First name",
                              obscureText: false,
                              textInputType: TextInputType.emailAddress,
                            ),

                            const SizedBox(height: 6,),
                            //password textfield
                            CustomTextField
                              (
                              hinttext: "Last name",
                              obscureText: false,
                              textInputType: TextInputType.emailAddress,
                            ),
                            const SizedBox(height: 6,),

                            Text("Country", style: TextStyle(color: Colors.black, fontSize: height/60, fontWeight: FontWeight.w500)),
                            const SizedBox(height: 6,),
                            CustomTextField
                              (
                              hinttext: "Building Number & Road",
                              obscureText: false,
                              textInputType: TextInputType.emailAddress,
                            ),
                            const SizedBox(height: 6,),
                            CustomTextField
                              (
                              hinttext: "Town & City",
                              obscureText: false,
                              textInputType: TextInputType.emailAddress,
                            ),
                            const SizedBox(height: 6,),
                            CustomTextField
                              (
                              hinttext: "Country",
                              obscureText: false,
                              textInputType: TextInputType.emailAddress,
                            ),
                            const SizedBox(height: 6,),
                            CustomTextField
                              (
                              hinttext: "Town / City",
                              obscureText: false,
                              textInputType: TextInputType.emailAddress,
                            ),
                            const SizedBox(height: 6,),
                            CustomTextField
                              (
                              hinttext: "E-mail Address",
                              obscureText: false,
                              textInputType: TextInputType.emailAddress,
                            ),
                            const SizedBox(height: 6,),
                            Text("Postage to Different Address", style: TextStyle(color: Colors.black, fontSize: height/60, fontWeight: FontWeight.w500)),
                            const SizedBox(height: 6,),
                            CustomTextField
                              (
                              hinttext: "First name",
                              obscureText: false,
                              textInputType: TextInputType.emailAddress,
                            ),
                            const SizedBox(height: 6,),
                            CustomTextField
                              (
                              hinttext: "Last name",
                              obscureText: false,
                              textInputType: TextInputType.emailAddress,
                            ),
                            const SizedBox(height: 6,),
                            Text("Country", style: TextStyle(color: Colors.black, fontSize: height/60, fontWeight: FontWeight.w500)),
                            const SizedBox(height: 6,),
                            CustomTextField
                              (
                              hinttext: "Building Number & Address",
                              obscureText: false,
                              textInputType: TextInputType.emailAddress,
                            ),

                            CustomTextField
                              (
                              hinttext: "Town & City",
                              obscureText: false,
                              textInputType: TextInputType.emailAddress,
                            ),
                            const SizedBox(height: 6,),
                            CustomTextField
                              (
                              hinttext: "Country",
                              obscureText: false,
                              textInputType: TextInputType.emailAddress,
                            ),
                            const SizedBox(height: 6,),
                            CustomTextField
                              (
                              hinttext: "Town / City",
                              obscureText: false,
                              textInputType: TextInputType.emailAddress,
                            ),
                            const SizedBox(height: 6,),
                            CustomTextField
                              (
                              hinttext: "E-mail Address",
                              obscureText: false,
                              textInputType: TextInputType.emailAddress,
                            ),
                            const SizedBox(height: 6,),
                          ],
                        ),




                        SizedBox(height: 16,),
                        ShopperButton(
                          text: Text("Save all of this",
                            style: CustomTextStyle.buttontitle(context),),
                          onPressed: (){
                            Navigator.pushNamed(context, "/dynamicItemFilter");
                          },
                          color: basicColorShopper,
                          focusColor: buttonColor2,
                          disbaleColor: buttonColor2,
                        ),
                        //login button




                        //login button









                      ],
                    ),
                  ),
                ),





              ],
            ),
          ),
        ),

      ),
    );
  }

}