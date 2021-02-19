
import 'package:checkbox_grouped/checkbox_grouped.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:paul_app/Views/addProductDone.dart';
import 'package:paul_app/widgets/CustomButton.dart';
import 'package:paul_app/widgets/CustomTextField.dart';
import 'package:paul_app/widgets/appBar.dart';
import 'package:paul_app/widgets/colors.dart';
import 'package:paul_app/widgets/styles.dart';





class testPage extends StatefulWidget {
  @override
  _testPageState createState() => new _testPageState();
}




class _testPageState extends State<testPage> {




  @override
  Widget build(BuildContext context) {
    GroupController controller = GroupController();
    bool multiSelection= false;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        // backgroundColor: Color(0xfff7f7f7),

        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text('Your items', style: TextStyle(color: Colors.black), textAlign: TextAlign.center),
          iconTheme: IconThemeData(color:  Colors.black),
        ),

        body:Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

            Padding(
              padding: const EdgeInsets.only(left:10.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text('My blog', style: TextStyle(
                  color: Colors.black,
                  fontSize: height/30,
                  fontWeight: FontWeight.bold,
                ),),
              ),
            ),
            SizedBox(height: height/30,),
              Padding(
                padding: const EdgeInsets.only(left:10.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(height: height/30,
                    width: width/2.4,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: basicColorShopper,

                    ),
                    child:Center(
                      child: Text(
                        'All about your item',
                        style: TextStyle(

                            color: Colors.white,
                            fontSize: height / 50,
                            fontWeight: FontWeight.w400),

                      ),

                    ), ),
                ),
              ),
              SizedBox(height: height/50,),

              CustomTextField
              (
              hinttext: "Product title",
              obscureText: false,
              textInputType: TextInputType.text,
            ),
              SizedBox(height: height/50,),
              CustomTextField
                (
                hinttext: "",
                obscureText: false,
                textInputType: TextInputType.text,
              ),
          ],),
        )

      ),
    );
  }

}