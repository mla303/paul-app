
import 'package:checkbox_grouped/checkbox_grouped.dart';
import 'package:flutter/material.dart';
import 'package:paul_app/widgets/CustomButton.dart';
import 'package:paul_app/widgets/CustomTextField.dart';
import 'package:paul_app/widgets/colors.dart';
import 'package:paul_app/widgets/styles.dart';





class DynamicItemFilter extends StatefulWidget {
  @override
  _DynamicItemFilterState createState() => new _DynamicItemFilterState();
}




class _DynamicItemFilterState extends State<DynamicItemFilter> {




  @override
  Widget build(BuildContext context) {
    GroupController controller = GroupController();
    bool multiSelection= false;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        // backgroundColor: Color(0xfff7f7f7),

        // appBar: customAppBar1("Sign In"),

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
                Center(
                  child: Text(
                    'Let\'s narrow that down',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: height / 25,
                        fontWeight: FontWeight.w400),

                  ),
                ),
                SizedBox(height: height/30,),
                Container(height: height/20,
                  width: width/4,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: basicColorShopper,

                  ),
                  child:Center(
                    child: Text(
                      'Sort by...',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: height / 40,
                          fontWeight: FontWeight.w400),

                    ),

                  ), ),

SimpleGroupedCheckbox<int>(
  controller: controller,
  itemsTitle: ["Lowest Price" ,"Highest Price","Newly Listed",],
  values: [1,2,4],
  // groupTitleStyle: TextStyle(color: Colors.red,fontSize: 54),
  activeColor: basicColorcustomer ,
  isCirculaire: true,
  checkFirstElement: false,

),
                SizedBox(height: height/30,),
                Container(height: height/20,
                  width: width/2.5,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: basicColorShopper,

                  ),
                  child:Center(
                    child: Text(
                      'Narrow down by...',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: height / 40,
                          fontWeight: FontWeight.w400),

                    ),

                  ), ),
                SizedBox(height: height/15,),

Container(child: Column(children: [
  Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        'Brand',
        style: TextStyle(
            color: Colors.black,
            fontSize: height / 40,
            fontWeight: FontWeight.w400),

      ),
      Icon(Icons.arrow_forward_ios, size: height/40, color: Colors.grey[450], )
  ],),
  SizedBox(height: height/70,),
  Divider(color: Colors.grey,),
  SizedBox(height: height/70,),
  Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        'Size',
        style: TextStyle(
            color: Colors.black,
            fontSize: height / 40,
            fontWeight: FontWeight.w400),

      ),
      Icon(Icons.arrow_forward_ios, size: height/40, color: Colors.grey[450], )
    ],),
  SizedBox(height: height/70,),
  Divider(color: Colors.grey,),
  SizedBox(height: height/70,),
  Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        'Style',
        style: TextStyle(
            color: Colors.black,
            fontSize: height / 40,
            fontWeight: FontWeight.w400),

      ),
      Icon(Icons.arrow_forward_ios, size: height/40, color: Colors.grey[450], )
    ],),
  SizedBox(height: height/70,),
  Divider(color: Colors.grey,),
  SizedBox(height: height/70,),
  Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        'Color',
        style: TextStyle(
            color: Colors.black,
            fontSize: height / 40,
            fontWeight: FontWeight.w400),

      ),
      Icon(Icons.arrow_forward_ios, size: height/40, color: Colors.grey[450], )
    ],),
  SizedBox(height: height/70,),
  Divider(color: Colors.grey,),
],),),
                SizedBox(height: height/50,),
                Center(
                  child: ShopperButton(
                    text: Text("View Results",
                      style: CustomTextStyle.buttontitle(context),),
                    onPressed: (){
                      Navigator.pushNamed(context, "/dynamicColor");
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