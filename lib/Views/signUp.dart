
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





  @override
  Widget build(BuildContext context) {
bool checkedValue = false;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //
        //   centerTitle: true,
        //   backgroundColor: Colors.white,
        //   title: Center(child: Text('Join the club', style: TextStyle(color: Colors.black),)),
        //   iconTheme: IconThemeData(color: Colors.black),
        // ),
        // backgroundColor: Color(0xfff7f7f7),

        // appBar: customAppBar1("Sign In"),

        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal:30,vertical: 15),
          child: SingleChildScrollView(
            child: Column(

              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: height/12,),
                Container(
                    width:width/1.4,
                    child: Text("Just a few details...", style: CustomTextStyle.headig(context))),


                SizedBox(height: 15,),

                SingleChildScrollView(
                  child: Column(
                    children: [
                      Wrap(
                        direction: Axis.vertical,
                        //spacing: 8,
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






                      //login button


                      CheckboxListTile(
                        title: Text("I agree to the Term of Services"),
                        value: checkedValue,
                        onChanged: (newValue) {
                          checkedValue= newValue;
                        },
                        controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                      ),
                      //login button
                      CustomerButton(
                        text: Text("Join the club",
                          style: CustomTextStyle.buttontitle(context),),
                        onPressed: (){
                          Navigator.pushNamed(context, "/naviga");
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
                              style: TextStyle(color: Colors.black)),
                        ),
                      ),







                    ],
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