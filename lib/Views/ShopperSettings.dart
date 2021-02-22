import 'package:checkbox_grouped/checkbox_grouped.dart';
import 'package:flutter/material.dart';
import 'package:paul_app/Views/shopperAddress.dart';
import 'package:paul_app/widgets/CustomButton.dart';
import 'package:paul_app/widgets/CustomTextField.dart';
import 'package:paul_app/widgets/appBar.dart';
import 'package:paul_app/widgets/colors.dart';
import 'package:paul_app/widgets/styles.dart';

class ShopperSettings extends StatefulWidget {
  @override
  _ShopperSettingsState createState() => new _ShopperSettingsState();
}

class _ShopperSettingsState extends State<ShopperSettings> {
  bool _obscureText = true;
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }
  @override
  Widget build(BuildContext context) {
    String billingAddress =
        '43 Bourke Street, Newbridge NSW 837 R…  ';
    String postageAddress =
        '43 Bourke Street, Newbridge NSW 837 R…';

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,

        appBar: customAppBar1("Shopper Setting"),

        body: Container(
          height: height,
          width: width,
          // color: Colors.red,
          child: SingleChildScrollView(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height/60,),
              Padding(
                padding: const EdgeInsets.only(left:22.0, right: 15.0),
                child: Container(
                    width: width / 1.4,
                    child: Text("Billing Address",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height / 40,
                            fontWeight: FontWeight.w400))),
              ),
              SizedBox(height: height/25,),
              Container(
                width: width/1.08,
                child: Padding(
                  padding: const EdgeInsets.only(left:20.0, right: 0.0),
                  child: InkWell(
                    onTap: ()
                    {
                      // Navigator.pushNamed(context, "/forgetPassword");
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            width: width/1.4,
                            child: Text("$postageAddress",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: height / 50,
                                    fontWeight: FontWeight.w400))),
                        Icon(Icons.arrow_forward_ios, size: height/40,  color: Colors.grey,  )
                      ],),
                  ),
                ),
              ),
              SizedBox(height: height/70,),
              Divider(color: Color(0xff707070), thickness: 0.2,),
              SizedBox(height: height/70,),
              Padding(
                padding: const EdgeInsets.only(left:25.0, right: 15.0),
                child: Container(
                    width: width / 1.4,
                    child: Text("Postage Address",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height / 40,
                            fontWeight: FontWeight.w400))),
              ),


              SizedBox(height: height/25,),
              Container(
                width: width/1.08,
                child: Padding(
                  padding: const EdgeInsets.only(left:20.0, right: 0.0),
                  child: InkWell(
                    onTap: ()
                    {
                      // Navigator.pushNamed(context, "/forgetPassword");
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            width: width/1.4,
                            child: Text("$postageAddress",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: height / 50,
                                    fontFamily: 'workSans',
                                    fontWeight: FontWeight.w400))),
                        Icon(Icons.arrow_forward_ios, size: height/40,  color: Colors.grey,  )
                      ],),
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(left:15.0, right: 15.0),
              //   child: Container(
              //     // width: width / wi,
              //       child: Text("$postageAddress",
              //           style: TextStyle(
              //               color: Colors.black,
              //               fontSize: height / 50,
              //               fontWeight: FontWeight.w400))),
              // ),
              SizedBox(height: height/70,),
              Divider(color: Color(0xff707070), thickness: 0.2,),
              SizedBox(height: height/50,),
              Padding(
                padding: const EdgeInsets.only(left:25.0, right: 15.0),
                child: CustomTextField
                  (
                  hinttext: "First name",
                  obscureText: false,
                  textInputType: TextInputType.text,
                ),
              ),

             SizedBox(height: height/70,),
              //password textfield
              Padding(
                padding: const EdgeInsets.only(left:25.0, right: 15.0),
                child: CustomTextField
                  (
                  hinttext: "Last name",
                  obscureText: false,
                  textInputType: TextInputType.text,
                ),
              ),
              SizedBox(height: height/70,),
              Padding(
                padding: const EdgeInsets.only(left:25.0, right: 15.0),
                child: CustomTextField
                  (
                  hinttext: "enter your email address",
                  obscureText: false,
                  textInputType: TextInputType.emailAddress,
                ),
              ),
              SizedBox(height: height/70,),
              Padding(
                padding: const EdgeInsets.only(left:25.0, right: 15.0),
                child: CustomTextField
                  (
                  iconButton: IconButton(
                    icon: Icon(Icons.remove_red_eye),
                    iconSize: 18,
                    color: basicColorShopper,
                    onPressed: _toggle,
                  ),
                  hinttext: "New Password",
                  obscureText: _obscureText,
                  textInputType: TextInputType.emailAddress,
                ),
              ),
              SizedBox(height: height/5,),
              Center(
                child: ShopperButton(
                  text: Text("Save all of this",
                    style: CustomTextStyle.buttontitle(context),),
                  onPressed: (){
                    // Navigator.pushNamed(context, "/dynamicItemFilter");
                  },
                  color: basicColorShopper,
                  focusColor: buttonColor2,
                  disbaleColor: buttonColor2,
                ),
              ),

            ],
          )),
        ),
      ),
    );
  }
}
