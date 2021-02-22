import 'package:flutter/material.dart';
import 'package:paul_app/Views/bottomNavigation.dart';
import 'package:paul_app/widgets/CustomButton.dart';
import 'package:paul_app/widgets/CustomTextField.dart';
import 'package:paul_app/widgets/colors.dart';
import 'package:paul_app/widgets/styles.dart';

class Done extends StatefulWidget {
  @override
  _DoneState createState() => new _DoneState();
}

class _DoneState extends State<Done> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffFFC25D),

        // appBar: customAppBar1("Sign In"),

        body: Container(
          // color: whiteColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: height/5,),
                Center(
                  child: Text(
                    'Bingo',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "workSans",
                        fontSize: height / 15,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(height: height/5,),
                Text(
                  'Thank You For Shopping With Us',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "workSans",
                      fontSize: height / 40,
                      fontWeight: FontWeight.w500),

                ),
                SizedBox(height: height/80,),
                Text(
                  'Something else here',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: height / 50,
                      fontFamily: "workSans",
                      fontWeight: FontWeight.w400),

                ),
                SizedBox(height: height/5,),
                ShopperButton(
                  text: Text("Take me home...",
                    style: CustomTextStyle.buttontitle1(context),),
                  onPressed: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (Context) => bottomNavigation()));
                  },
                  focusColor: Colors.white,
                  disbaleColor:Colors.white,
                  color: whiteColor,
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
