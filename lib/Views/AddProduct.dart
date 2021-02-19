
import 'package:checkbox_grouped/checkbox_grouped.dart';
import 'package:dashed_container/dashed_container.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:paul_app/Views/addProductDone.dart';
import 'package:paul_app/widgets/CustomButton.dart';
import 'package:paul_app/widgets/CustomTextField.dart';
import 'package:paul_app/widgets/appBar.dart';
import 'package:paul_app/widgets/colors.dart';
import 'package:paul_app/widgets/styles.dart';





class AddProduct extends StatefulWidget {
  @override
  _AddProductState createState() => new _AddProductState();
}




class _AddProductState extends State<AddProduct> {




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
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text('Your item', style: TextStyle(color: Colors.black), textAlign: TextAlign.center),
          iconTheme: IconThemeData(color:  Colors.black),
        ),

        body: Container(
          height: height,
          width: width,
          // color: Colors.red,
          child: SingleChildScrollView(
            child: Column(

              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                SizedBox(height: height/30,),

                Padding(
                  padding: const EdgeInsets.only(left:15.0, right: 15.0),
                  child: Container(height: height/27,
                    width: width/2.4,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
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
              //  SizedBox(height: height/80,),
                //SizedBox(height: height/70,),
                Padding(
                  padding: const EdgeInsets.only(left:15.0, right: 15.0),
                  child: Container(height: height/30,
                    width: width/2.3,


                    child:Center(
                      child: Text(
                        'Upload up to 6 photos here',
                        style: TextStyle(

                            color: Colors.black,
                            fontSize: height / 55,
                            fontWeight: FontWeight.w700),

                      ),

                    ), ),
                ),
                SizedBox(height: height/50,),
                Padding(
                  padding: const EdgeInsets.only(left:10.0, right: 5.0),
                  child: Row(children: [
                    ImageUploadContainer(),
                    // SizedBox(width: width/80,),
                    ImageUploadContainer(),
                    // SizedBox(width: width/80,),
                    ImageUploadContainer(),

                  ],),
                ),
                SizedBox(height: height/80,),
                Padding(
                  padding: const EdgeInsets.only(left:18.0, right: 15.0),
                  child: Container(height: height/30,
                    width: width/1.4,


                    child:Text(
                      'Top tip! Try to take photos in natural day light ',
                      style: TextStyle(

                          color: Colors.black,
                          fontSize: height / 55,
                          fontWeight: FontWeight.w600),

                    ), ),
                ),
                SizedBox(height: height/70,),
                Padding(
                  padding: const EdgeInsets.only(left:18.0, right: 15.0),
                  child: CustomTextField
                    (
                    hinttext: "Your item title:)",
                    obscureText: false,
                    textInputType: TextInputType.text,
                  ),
                ),
                SizedBox(height: height/70,),
                Padding(
                  padding: const EdgeInsets.only(left:18.0, right: 15.0),
                  child: CustomTextField
                    (
                    hinttext: "Add a one linear about your item",
                    obscureText: false,
                    textInputType: TextInputType.text,
                  ),
                ),
                SizedBox(height: height/70,),
                Padding(
                  padding: const EdgeInsets.only(left:18.0, right: 45.0),
                  child: largeTextField
                    (
                    hinttext: "& a full write up… Be sure to include All your great features here :)",
                    obscureText: false,
                    textInputType: TextInputType.text,
                  ),
                ),
                Container(
                  width: width/1.07,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                   Padding(
                     padding: const EdgeInsets.only(left:15.0, right: 15.0),
                     child: smallTextField
                       (
                       hinttext: "Your Price",
                       obscureText: false,
                       textInputType: TextInputType.text,
                     ),
                   ),
                   SizedBox(height: height/70,),
                   Padding(
                     padding: const EdgeInsets.only(left:15.0, right: 15.0),
                     child: smallTextField
                       (
                       hinttext: "Stock Quantity",
                       obscureText: false,
                       textInputType: TextInputType.text,
                     ),
                   ),
               ],),
                ),
                SizedBox(height: height/50,),
                Padding(
                  padding: const EdgeInsets.only(left:15.0, right: 15.0),
                  child: Container(height: height/27,
                    width: width/2.5,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: basicColorShopper,

                    ),
                    child:Center(
                      child: Text(
                        'Add your categories here',
                        style: TextStyle(

                            color: Colors.white,
                            fontSize: height / 60,
                            fontWeight: FontWeight.w400),

                      ),

                    ), ),
                ),
               // SizedBox(height: height/70,),
                Padding(
                  padding: const EdgeInsets.only(left:15.0, right: 15.0),
                  child: Container(height: height/30,
                    width: width/2.5,


                    child:Center(
                      child: Text(
                        'Select a main & then sub',
                        style: TextStyle(

                            color: Colors.black,
                            fontSize: height / 55,
                            fontWeight: FontWeight.w700),

                      ),

                    ), ),
                ),
                SizedBox(height: height/60,),
                Container(child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(left:20.0, right: 15.0),
                    child: InkWell(
                      onTap: ()
                      {
                        // Navigator.pushNamed(context, "/forgetPassword");
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Main Category',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: height / 40,
                                fontWeight: FontWeight.w400),

                          ),
                          Icon(Icons.arrow_forward_ios, size: height/40,  color: Colors.grey, )
                        ],),
                    ),
                  ),
                  SizedBox(height: height/70,),
                  Divider(color: Colors.grey,),
                  SizedBox(height: height/70,),
                  Padding(
                    padding: const EdgeInsets.only(left:20.0, right: 15.0),
                    child: InkWell(
                      onTap: ()
                      {
                        // Navigator.pushNamed(context, "/forgetPassword");
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Sub-category',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: height / 40,
                                fontWeight: FontWeight.w400),

                          ),
                          Icon(Icons.arrow_forward_ios, size: height/40,  color: Colors.grey, )
                        ],),
                    ),
                  ),
                  SizedBox(height: height/70,),
                  Divider(color: Colors.grey,),
                ],),),
                SizedBox(height: height/50,),
                Padding(
                  padding: const EdgeInsets.only(left:15.0, right: 15.0),
                  child: Container(height: height/27,
                    width: width/3.5,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: basicColorShopper,

                    ),
                    child:Center(
                      child: Text(
                        'item Specifics',
                        style: TextStyle(

                            color: Colors.white,
                            fontSize: height / 60,
                            fontWeight: FontWeight.w400),

                      ),

                    ), ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:15.0, right: 15.0),
                  child: Container(height: height/30,
                    width: width/2.5,


                    child:Center(
                      child: Text(
                        'Select a main & then sub',
                        style: TextStyle(

                            color: Colors.black,
                            fontSize: height / 55,
                            fontWeight: FontWeight.w700),

                      ),

                    ), ),
                ),

                SizedBox(height: height/70,),
                Container(child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(left:20.0, right: 15.0),
                    child: InkWell(
                      onTap: ()
                      {
                        // Navigator.pushNamed(context, "/forgetPassword");
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Brand',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: height / 40,
                                fontWeight: FontWeight.w400),

                          ),
                          Icon(Icons.arrow_forward_ios, size: height/40,  color: Colors.grey,  )
                        ],),
                    ),
                  ),
                  SizedBox(height: height/70,),
                  Divider(color: Colors.grey,),
                  SizedBox(height: height/70,),
                  Padding(
                    padding: const EdgeInsets.only(left:20.0, right: 15.0),
                    child: InkWell(
                      onTap: ()
                      {
                        // Navigator.pushNamed(context, "/forgetPassword");
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Size',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: height / 40,
                                fontWeight: FontWeight.w400),

                          ),
                          Icon(Icons.arrow_forward_ios, size: height/40,  color: Colors.grey,  )
                        ],),
                    ),
                  ),
                  SizedBox(height: height/70,),
                  Divider(color: Colors.grey,),
                  SizedBox(height: height/70,),
                  Padding(
                    padding: const EdgeInsets.only(left:20.0, right: 15.0),
                    child: InkWell(
                      onTap: ()
                      {
                        // Navigator.pushNamed(context, "/forgetPassword");
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Style',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: height / 40,
                                fontWeight: FontWeight.w400),

                          ),
                          Icon(Icons.arrow_forward_ios, size: height/40,  color: Colors.grey,  )
                        ],),
                    ),
                  ),
                  SizedBox(height: height/70,),
                  Divider(color: Colors.grey,),
                  SizedBox(height: height/70,),
                  Padding(
                    padding: const EdgeInsets.only(left:20.0, right: 15.0),
                    child: InkWell(
                      onTap: ()
                      {
                        // Navigator.pushNamed(context, "/forgetPassword");
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Color',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: height / 40,
                                fontWeight: FontWeight.w400),

                          ),
                          Icon(Icons.arrow_forward_ios, size: height/40, color: Colors.grey, )
                        ],),
                    ),
                  ),
                  SizedBox(height: height/70,),
                  Divider(color: Colors.grey,),
                  SizedBox(height: height/70,),
                ],),),
                SizedBox(height: height/20,),
                Center(
                  child: ShopperButton(
                    text: Text("List item",
                      style: CustomTextStyle.buttontitle(context),),
                    onPressed: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (Context) => addProductDone()));
                    },
                    color: basicColorShopper,
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

class ImageUploadContainer extends StatelessWidget {
  ImageUploadContainer({this.onTap});
  final Function onTap;

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap,
        child: DashedContainer(
          child: Container(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.camera_alt_rounded,
                  color: basicColorShopper,
                  size: 18,
                ),
                Text(
                  'Add Product',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: height / 60,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            height: 70,
            width: 80.0,
            decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
          ),
          dashColor: basicColorShopper,
          borderRadius: 4.0,
          dashedLength: 6.0,
          blankLength: 5.0,
          strokeWidth: 2.0,
        ),
      ),
    );
  }
}