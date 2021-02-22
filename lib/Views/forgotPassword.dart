
import 'package:flutter/material.dart';
import 'package:paul_app/widgets/CustomButton.dart';
import 'package:paul_app/widgets/CustomTextField.dart';
import 'package:paul_app/widgets/colors.dart';
import 'package:paul_app/widgets/styles.dart';





class forgotPassword extends StatefulWidget {
  @override
  _forgotPasswordState createState() => new _forgotPasswordState();
}




class _forgotPasswordState extends State<forgotPassword> {


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
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
       centerTitle: true,
         backgroundColor: Colors.white,
          title: Text('Forgot Password', style: TextStyle(color: Colors.black,), textAlign: TextAlign.center),
          iconTheme: IconThemeData(color: Colors.black),
        ),
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
                Center(
                  child: Expanded(
                    flex: 0,
                    child: Text("You silly Billy...", style: TextStyle(color: Colors.black,fontFamily: "workSans",fontSize: 20)),
                  ),
                ),


                SizedBox(height: 30,),

                Expanded(
                  flex: 2,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Wrap(
                          direction: Axis.vertical,
                          spacing: 6,
                          // // alignment: WrapAlignment.center,
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            SizedBox(height: 25,),
                            //email textfield
                            CustomTextField
                              (
                              hinttext: "Email",
                              obscureText: false,
                              textInputType: TextInputType.emailAddress,
                            ),

                            const SizedBox(height: 6,),
                            //password textfield


                          ],
                        ),

                        SizedBox(height: 16,),


                        //login button
                        CustomerButton(
                          text: Text("Send",
                            style: CustomTextStyle.buttontitle(context),),
                          onPressed: (){
                            Navigator.pushNamed(context, "/checkout");
                          },
                          focusColor: buttonColor1,
                          disbaleColor: buttonColor1,
                        ),

                        SizedBox(height: 10,),
                        //forget link









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