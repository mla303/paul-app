import 'package:flutter/material.dart';
import 'package:paul_app/Views/bottomNavigation.dart';
import 'package:paul_app/widgets/CustomButton.dart';
import 'package:paul_app/widgets/CustomTextField.dart';
import 'package:paul_app/widgets/colors.dart';
import 'package:paul_app/widgets/styles.dart';

class addProductDone extends StatefulWidget {
  @override
  _AddProductDoneState createState() => new _AddProductDoneState();
}

class _AddProductDoneState extends State<addProductDone> {
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
                SizedBox(height: height/3,),
                Center(
                  child: Text(
                    'Congratulations',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: height / 25,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(height: height/60,),
                Text(
                  'Done & dusted :)',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: height / 40,
                      fontWeight: FontWeight.w500),

                ),
                SizedBox(height: height/60,),
                Text(
                  'Something else here',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: height / 50,
                      fontWeight: FontWeight.w400),

                ),
                SizedBox(height: height/10,),
                ShopperButton(
                  text: Text("I'm finished here...",
                    style: CustomTextStyle.buttonTextWhite(context),),
                  onPressed: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (Context) => bottomNavigation()));
                  },
                  focusColor: Colors.white,
                  disbaleColor:Colors.white,
                  color: basicColorShopper,
                ),
                SizedBox(height: height/40,),
                ShopperButton(
                  text: Text("Add another:)",
                    style: CustomTextStyle.buttontitle1(context),),
                  onPressed: (){
                    Navigator.pushNamed(context, "/addProductDone");
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
