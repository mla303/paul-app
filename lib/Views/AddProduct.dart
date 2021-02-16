
import 'package:checkbox_grouped/checkbox_grouped.dart';
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
          title: Text('Your items', style: TextStyle(color: Colors.black), textAlign: TextAlign.center),
          iconTheme: IconThemeData(color:  Colors.black),
        ),

        body: Container(
          height: height,
          width: width,
          // color: Colors.red,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:30,vertical: 15),
            child: SingleChildScrollView(
              child: Column(

                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  SizedBox(height: height/30,),

                  Container(height: height/30,
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
                  //SizedBox(height: height/70,),
                  Container(height: height/30,
                    width: width/2.5,


                    child:Center(
                      child: Text(
                        'Upload up to 6 photos here',
                        style: TextStyle(

                            color: Colors.grey,
                            fontSize: height / 60,
                            fontWeight: FontWeight.w400),

                      ),

                    ), ),
                  SizedBox(height: height/50,),
                  Row(children: [
                    Container(

                      child: DottedBorder(
                        color: basicColorShopper,//color of dotted/dash line
                        strokeWidth: 1.5, //thickness of dash/dots
                        dashPattern: [10,6],
                        child: Container(
                          height: height/10,
                          width: width/4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.camera_alt_outlined, size: height/40, color: basicColorShopper, ),
                              SizedBox(
                                height: height/70,
                              ),
                              Text(
                                'Add Product',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: height / 60,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],),
                        ),
                      ),
                      //   decoration: BoxDecoration(
                      //   color: Colors.grey,
                      //   // image: DecorationImage(
                      //   //   image: AssetImage(''),
                      //   //   fit: BoxFit.fill,
                      //   // )
                      // ),
                    ),
                    SizedBox(width: width/50,),
                    Container(

                      child: DottedBorder(
                        color: basicColorShopper,//color of dotted/dash line
                        strokeWidth: 1.5, //thickness of dash/dots
                        dashPattern: [10,6],
                        child: Container(
                          height: height/10,
                          width: width/4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.camera_alt_outlined, size: height/40, color: basicColorShopper, ),
                              SizedBox(
                                height: height/70,
                              ),
                              Text(
                                'Add Product',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: height / 60,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],),
                        ),
                      ),
                      //   decoration: BoxDecoration(
                      //   color: Colors.grey,
                      //   // image: DecorationImage(
                      //   //   image: AssetImage(''),
                      //   //   fit: BoxFit.fill,
                      //   // )
                      // ),
                    ),
                    SizedBox(width: width/50,),
                    Container(

                      child: DottedBorder(
                        color: basicColorShopper,//color of dotted/dash line
                        strokeWidth: 1.5, //thickness of dash/dots
                        dashPattern: [10,6],
                        child: Container(
                          height: height/10,
                          width: width/4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.camera_alt_outlined, size: height/40, color: basicColorShopper, ),
                              SizedBox(
                                height: height/70,
                              ),
                              Text(
                                'Add Product',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: height / 60,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],),
                        ),
                      ),
                      //   decoration: BoxDecoration(
                      //   color: Colors.grey,
                      //   // image: DecorationImage(
                      //   //   image: AssetImage(''),
                      //   //   fit: BoxFit.fill,
                      //   // )
                      // ),
                    ),
                  ],),
                  SizedBox(height: height/80,),
                  Container(height: height/30,
                    width: width/1.7,


                    child:Text(
                      'Top tip! Try to take photos in natural day light ',
                      style: TextStyle(

                          color: Colors.grey,
                          fontSize: height / 70,
                          fontWeight: FontWeight.w400),

                    ), ),
                  SizedBox(height: height/70,),
                  CustomTextField
                    (
                    hinttext: "Your item title:)",
                    obscureText: false,
                    textInputType: TextInputType.text,
                  ),
                  SizedBox(height: height/70,),
                  CustomTextField
                    (
                    hinttext: "Add a one linear about your item",
                    obscureText: false,
                    textInputType: TextInputType.text,
                  ),
                  SizedBox(height: height/70,),
                  CustomTextField
                    (
                    hinttext: "& a full write up… Be sure to include All your great features here :)",
                    obscureText: false,
                    textInputType: TextInputType.text,
                  ),
                  SizedBox(height: height/70,),
                  CustomTextField
                    (
                    hinttext: "Your Price",
                    obscureText: false,
                    textInputType: TextInputType.text,
                  ),
                  SizedBox(height: height/70,),
                  CustomTextField
                    (
                    hinttext: "Stock Quantity",
                    obscureText: false,
                    textInputType: TextInputType.text,
                  ),
                  SizedBox(height: height/70,),
                  Container(height: height/35,
                    width: width/2.5,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
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
                 // SizedBox(height: height/70,),
                  Container(height: height/30,
                    width: width/2.7,


                    child:Center(
                      child: Text(
                        'Select a main & then sub',
                        style: TextStyle(

                            color: Colors.grey,
                            fontSize: height / 60,
                            fontWeight: FontWeight.w400),

                      ),

                    ), ),
                  SizedBox(height: height/60,),
                  Container(child: Column(children: [
                    InkWell(
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
                          Icon(Icons.arrow_forward_ios, size: height/40, color: Colors.grey[450], )
                        ],),
                    ),
                    SizedBox(height: height/70,),
                    Divider(color: Colors.grey,),
                    SizedBox(height: height/70,),
                    InkWell(
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
                          Icon(Icons.arrow_forward_ios, size: height/40, color: Colors.grey[450], )
                        ],),
                    ),
                    SizedBox(height: height/70,),
                    Divider(color: Colors.grey,),
                  ],),),
                  SizedBox(height: height/50,),
                  Container(height: height/35,
                    width: width/3.5,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
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
                  Container(height: height/30,
                    width: width/2.7,


                    child:Center(
                      child: Text(
                        'Select a main & then sub',
                        style: TextStyle(

                            color: Colors.grey,
                            fontSize: height / 60,
                            fontWeight: FontWeight.w400),

                      ),

                    ), ),

                  SizedBox(height: height/70,),
                  Container(child: Column(children: [
                    InkWell(
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
                          Icon(Icons.arrow_forward_ios, size: height/40, color: Colors.grey[450], )
                        ],),
                    ),
                    SizedBox(height: height/70,),
                    Divider(color: Colors.grey,),
                    SizedBox(height: height/70,),
                    InkWell(
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
                          Icon(Icons.arrow_forward_ios, size: height/40, color: Colors.grey[450], )
                        ],),
                    ),
                    SizedBox(height: height/70,),
                    Divider(color: Colors.grey,),
                    SizedBox(height: height/70,),
                    InkWell(
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
                          Icon(Icons.arrow_forward_ios, size: height/40, color: Colors.grey[450], )
                        ],),
                    ),
                    SizedBox(height: height/70,),
                    Divider(color: Colors.grey,),
                    SizedBox(height: height/70,),
                    InkWell(
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
                          Icon(Icons.arrow_forward_ios, size: height/40, color: Colors.grey[450], )
                        ],),
                    ),
                    SizedBox(height: height/70,),
                    Divider(color: Colors.grey,),
                    SizedBox(height: height/70,),
                  ],),),
                  Container(height: height/35,
                    width: width/2.5,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: basicColorShopper,

                    ),
                    child:Center(
                      child: Text(
                        'Add Personalisations',
                        style: TextStyle(

                            color: Colors.white,
                            fontSize: height / 60,
                            fontWeight: FontWeight.w400),

                      ),

                    ), ),

                  Container(height: height/30,
                    width: width/2,


                    child:Center(
                      child: Text(
                        'Do you offer custom text or extras',
                        style: TextStyle(

                            color: Colors.grey,
                            fontSize: height / 60,
                            fontWeight: FontWeight.w400),

                      ),

                    ), ),
                  SizedBox(height: height/50,),
                  Container(child: Column(children: [

                    InkWell(
                      onTap: ()
                      {
                        // Navigator.pushNamed(context, "/forgetPassword");
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Custom text',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: height / 40,
                                fontWeight: FontWeight.w400),

                          ),
                          Icon(Icons.arrow_forward_ios, size: height/40, color: Colors.grey[450], )
                        ],),
                    ),
                    SizedBox(height: height/70,),
                    Divider(color: Colors.grey,),
                    SizedBox(height: height/70,),
                    InkWell(
                      onTap: ()
                      {
                        // Navigator.pushNamed(context, "/forgetPassword");
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Choises',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: height / 40,
                                fontWeight: FontWeight.w400),

                          ),
                          Icon(Icons.arrow_forward_ios, size: height/40, color: Colors.grey[450], )
                        ],),
                    ),
                    SizedBox(height: height/70,),


                  ],),),
                  SizedBox(height: height/10,),
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

      ),
    );
  }

}