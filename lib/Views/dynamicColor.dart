
import 'package:checkbox_grouped/checkbox_grouped.dart';
import 'package:flutter/material.dart';
import 'package:paul_app/widgets/CustomButton.dart';
import 'package:paul_app/widgets/CustomTextField.dart';
import 'package:paul_app/widgets/appBar.dart';
import 'package:paul_app/widgets/colors.dart';
import 'package:paul_app/widgets/styles.dart';





class DynamicColor extends StatefulWidget {
  @override
  _DynamicColorState createState() => new _DynamicColorState();
}




class _DynamicColorState extends State<DynamicColor> {




  @override
  Widget build(BuildContext context) {
    GroupController controller = GroupController();
    bool multiSelection= false;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        // backgroundColor: Color(0xfff7f7f7),

        appBar: customAppBar1("Select Color"),

        body: Container(
          height: height,
          width: width,
          // color: Colors.red,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:30,vertical: 15),
            child: Column(

              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                SizedBox(height: height/30,),


                SimpleGroupedCheckbox<int>(
                  controller: controller,
                  itemsTitle: ["Red" ,"Green","Blue", "Black", "White"],
                  values: [1,2,3, 4, 5],
                  // groupTitleStyle: TextStyle(color: Colors.red,fontSize: 54),
                  activeColor: basicColorcustomer ,
                  isCirculaire: true,
                  checkFirstElement: false,

                ),
                SizedBox(height: height/30,),

                Center(
                  child: ShopperButton(
                    text: Text("View Results",
                      style: CustomTextStyle.buttontitle(context),),
                    onPressed: (){
                      // Navigator.pushNamed(context, "/bottomNavigation");
                    },
                    color: basicColorcustomer,
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