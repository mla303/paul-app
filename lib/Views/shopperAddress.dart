
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
        backgroundColor: Colors.white,

        appBar: customAppBar1(""),

        body: SingleChildScrollView(
          child: Container(
            // color: whiteColor,
            child: Column(

              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height:height/50),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Container(
                      width:width/1.4,
                      child: Text("Billing Address", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: height/25), )),
                ),


              SizedBox(height: height/50,),

                Center(
                  child: CustomTextField
                    (
                    hinttext: "First name",
                    obscureText: false,
                    textInputType: TextInputType.emailAddress,
                  ),
                ),

                SizedBox(height: height/80,),
                //password textfield
                Center(
                  child: CustomTextField
                    (
                    hinttext: "Last name",
                    obscureText: false,
                    textInputType: TextInputType.emailAddress,
                  ),
                ),
                SizedBox(height: height/80,),

                Padding(
                  padding: const EdgeInsets.only(left:20.0, right: 20.0, top: 5, bottom: 5),
                  child: InkWell(
                    onTap: ()
                    {
                      // Navigator.pushNamed(context, "/forgetPassword");
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:10.0),
                          child: Text(
                            'Country',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: height / 35,
                                fontWeight: FontWeight.w400),

                          ),
                        ),
                        Icon(Icons.arrow_forward_ios, size: height/40,  color: Colors.grey,  )
                      ],),
                  ),
                ),
                const SizedBox(height: 6,),
                Center(
                  child: CustomTextField
                    (
                    hinttext: "Building Number & Road",
                    obscureText: false,
                    textInputType: TextInputType.emailAddress,
                  ),
                ),
                SizedBox(height: height/80,),
                Center(
                  child: CustomTextField
                    (
                    hinttext: "Town & City",
                    obscureText: false,
                    textInputType: TextInputType.emailAddress,
                  ),
                ),
                SizedBox(height: height/80,),
                Center(
                  child: CustomTextField
                    (
                    hinttext: "Country",
                    obscureText: false,
                    textInputType: TextInputType.emailAddress,
                  ),
                ),
                SizedBox(height: height/80,),
                Center(
                  child: CustomTextField
                    (
                    hinttext: "Town / City",
                    obscureText: false,
                    textInputType: TextInputType.emailAddress,
                  ),
                ),
                SizedBox(height: height/80,),
                Center(
                  child: CustomTextField
                    (
                    hinttext: "E-mail Address",
                    obscureText: false,
                    textInputType: TextInputType.emailAddress,
                  ),
                ),
                SizedBox(height: height/80,),
                Padding(
                  padding: const EdgeInsets.only(left:30.0, top:10  , bottom: 10),
                  child: Text(
                    'Postage Address',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: height / 35,
                        fontWeight: FontWeight.w400),

                  ),
                ),

                SizedBox(height: height/80,),
                Center(
                  child: CustomTextField
                    (
                    hinttext: "First name",
                    obscureText: false,
                    textInputType: TextInputType.emailAddress,
                  ),
                ),
                SizedBox(height: height/80,),
                Center(
                  child: CustomTextField
                    (
                    hinttext: "Last name",
                    obscureText: false,
                    textInputType: TextInputType.emailAddress,
                  ),
                ),
                SizedBox(height: height/80,),
                Padding(
                  padding: const EdgeInsets.only(left:20.0, right: 20.0, top: 5, bottom: 5),
                  child: InkWell(
                    onTap: ()
                    {
                      // Navigator.pushNamed(context, "/forgetPassword");
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:10.0),
                          child: Text(
                            'Country',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: height / 35,
                                fontWeight: FontWeight.w400),

                          ),
                        ),
                        Icon(Icons.arrow_forward_ios, size: height/40,  color: Colors.grey,  )
                      ],),
                  ),
                ),
                SizedBox(height: height/80,),
                Center(
                  child: CustomTextField
                    (
                    hinttext: "Building Number & Address",
                    obscureText: false,
                    textInputType: TextInputType.emailAddress,
                  ),
                ),
SizedBox(height: height/70,),
                Center(
                  child: CustomTextField
                    (
                    hinttext: "Town & City",
                    obscureText: false,
                    textInputType: TextInputType.emailAddress,
                  ),
                ),
                SizedBox(height: height/80,),
                Center(
                  child: CustomTextField
                    (
                    hinttext: "Country",
                    obscureText: false,
                    textInputType: TextInputType.emailAddress,
                  ),
                ),
                SizedBox(height: height/80,),
                Center(
                  child: CustomTextField
                    (
                    hinttext: "Town / City",
                    obscureText: false,
                    textInputType: TextInputType.emailAddress,
                  ),
                ),
                SizedBox(height: height/80,),
                Center(
                  child: CustomTextField
                    (
                    hinttext: "E-mail Address",
                    obscureText: false,
                    textInputType: TextInputType.emailAddress,
                  ),
                ),
                SizedBox(height: height/80,),




                SizedBox(height: height/30,),
                Center (
                  child: ShopperButton(
                    text: Text("Save all of this",
                      style: CustomTextStyle.buttontitle(context),),
                    onPressed: (){
                      Navigator.pushNamed(context, "/dynamicItemFilter");
                    },
                    color: basicColorShopper,
                    focusColor: buttonColor2,
                    disbaleColor: buttonColor2,
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