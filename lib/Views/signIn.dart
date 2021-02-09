
import 'package:flutter/material.dart';
import 'package:paul_app/widgets/CustomButton.dart';
import 'package:paul_app/widgets/CustomTextField.dart';
import 'package:paul_app/widgets/colors.dart';
import 'package:paul_app/widgets/styles.dart';





class SignInScreen extends StatefulWidget {
  @override
  _logInState createState() => new _logInState();
}




class _logInState extends State<SignInScreen> {


  bool _obscureText = true;
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }



  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        // backgroundColor: Color(0xfff7f7f7),

          // appBar: customAppBar1("Sign In"),

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
                            child: Text("Welcome to the Club", style: CustomTextStyle.headig(context))),
                        SizedBox(height:10,),
                        Text("Sign in or sign up :)", style: CustomTextStyle.normaltext1(context)),

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
                                 hinttext: "enter your email address",
                               obscureText: false,
                               textInputType: TextInputType.emailAddress,
                             ),

                              const SizedBox(height: 6,),
                              //password textfield
                              CustomTextField
                                (
                                iconButton: IconButton(
                                  icon: Icon(Icons.remove_red_eye),
                                  iconSize: 18,
                                  color: basicColorShopper,
                                  onPressed: _toggle,
                                ),
                                hinttext: "· · · · · · · · · ·",
                                obscureText: _obscureText,
                                textInputType: TextInputType.emailAddress,
                              ),


                            ],
                          ),

                          SizedBox(height: 16,),


                          //login button
                          ShopperButton(
                            text: Text("Sign In",
                              style: CustomTextStyle.buttontitle(context),),
                              onPressed: (){
                              // Navigator.pushNamed(context, "/signUp");
                              },
                            focusColor: buttonColor2,
                            disbaleColor: buttonColor2,
                          ),

                          SizedBox(height: 10,),
                          //forget link
                          InkWell(
                            onTap: ()
                            {
                              Navigator.pushNamed(context, "/forgotPassword");
                            },
                            child: Align(
                                alignment: Alignment.center,
                                child: Text("Silly billy… Forgot password?",
                                    style:CustomTextStyle.normaltext2(context)),
                          ),
                          ),

                          SizedBox(height: height/10,),



                          //login button
                          ShopperButton(
                            text: Text("Join as a shopper",
                              style: CustomTextStyle.buttontitle(context),),
                            onPressed: (){
                              Navigator.pushNamed(context, "/signUp");
                            },
                            focusColor: buttonColor2,
                            disbaleColor: buttonColor2,
                          ),
                          SizedBox(height: height/60,),

                          //login button
                          CustomerButton(
                            text: Text("Open a shop",
                              style: CustomTextStyle.buttontitle(context),),
                            onPressed: (){
                              // Navigator.pushNamed(context, "/bottomNavigation");
                            },
                            focusColor: buttonColor1,
                            disbaleColor: buttonColor1,
                          ),








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