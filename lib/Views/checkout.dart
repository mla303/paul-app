
import 'package:flutter/material.dart';
import 'package:paul_app/Views/paymentScreen.dart';
import 'package:paul_app/widgets/CustomButton.dart';
import 'package:paul_app/widgets/CustomTextField.dart';
import 'package:paul_app/widgets/Lists.dart';
import 'package:paul_app/widgets/appBar.dart';
import 'package:paul_app/widgets/colors.dart';
import 'package:paul_app/widgets/styles.dart';

import 'done.dart';





class Checkout extends StatefulWidget {
  @override
  _CheckoutState createState() => new _CheckoutState();
}




class _CheckoutState extends State<Checkout> {

double orderPrice = 125445;
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
        // double orderPrice =
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,

          iconTheme: IconThemeData(color: Colors.black),
        ),
        // backgroundColor: Color(0xfff7f7f7),



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
                          child: Text("Billing Address", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: height/40), )),
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




                        Container(
                          // color: Colors.redAccent,
                          padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 0.0),
                          height: MediaQuery.of(context).size.height /14,
                          width: width,

                          child: ListView.separated(
                              itemCount: OderList.length,
                              shrinkWrap: false,
                              physics: ClampingScrollPhysics(),
                              scrollDirection: Axis.vertical,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: ()
                                  {
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 6),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(OderList[index].itemname,
                                          style: CustomTextStyle.normaltext3(context),
                                        ),
                                        Text(OderList[index].price,
                                          style: CustomTextStyle.normaltext3(context),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                              separatorBuilder: (BuildContext context, int index) {
                                return SizedBox(
                                  height: 10,
                                  // width: 6,
                                );
                              }),
                        ),
                        SizedBox(height: 16,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                           Text('Total', style: CustomTextStyle.normaltext3(context),),
                            Text(('\$$orderPrice'))
                          ],
                        ),
                        SizedBox(height: 16,),
                        ShopperButton(
                          text: Text("Buy",
                            style: CustomTextStyle.buttontitle(context),),
                          onPressed: (){
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (Context) => PaymentScreen()));
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