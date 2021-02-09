
import 'package:flutter/material.dart';
import 'package:paul_app/widgets/CustomButton.dart';
import 'package:paul_app/widgets/CustomTextField.dart';
import 'package:paul_app/widgets/colors.dart';
import 'package:paul_app/widgets/styles.dart';





class SignUpScreen extends StatefulWidget {
  @override
  _SignUpState createState() => new _SignUpState();
}




class _SignUpState extends State<SignUpScreen> {


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
                          child: Text("Just a few details...", style: CustomTextStyle.headig(context))),
                      SizedBox(height: height/10,),


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
                              textInputType: TextInputType.text,
                            ),

                            const SizedBox(height: 6,),
                            //password textfield
                            CustomTextField
                              (
                              hinttext: "Last name",
                              obscureText: false,
                              textInputType: TextInputType.text,
                            ),
                            const SizedBox(height: 6,),
                            //password textfield
                            CustomTextField
                              (
                              hinttext: "Your email",
                              obscureText: false,
                              textInputType: TextInputType.emailAddress,
                            ),
                            const SizedBox(height: 6,),
                            //password textfield
                            CustomTextField
                              (
                              hinttext: "Password",
                              obscureText: true,
                              textInputType: TextInputType.visiblePassword,
                            ),


                          ],
                        ),




                        //login button


                        SizedBox(height: height/10,),
                        //forget link


                        SizedBox(height: height/10,),



                        //login button



                        //login button
                        CustomerButton(
                          text: Text("Join the club",
                            style: CustomTextStyle.buttontitle(context),),
                          onPressed: (){
                            // Navigator.pushNamed(context, "/bottomNavigation");
                          },
                          focusColor: buttonColor1,
                          disbaleColor: buttonColor1,
                        ),
                        SizedBox(height: height/10,),
                        InkWell(
                          onTap: ()
                          {
                            Navigator.pushNamed(context, "/login");
                          },
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("Have an account? Sign in",
                                style:CustomTextStyle.normaltext3(context)),
                          ),
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