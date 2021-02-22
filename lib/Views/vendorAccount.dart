
import 'package:checkbox_grouped/checkbox_grouped.dart';
import 'package:flutter/material.dart';
import 'package:paul_app/Views/ShopperSettings.dart';
import 'package:paul_app/Views/following.dart';
import 'package:paul_app/Views/orders.dart';
import 'package:paul_app/Views/vendorSetting.dart';
import 'package:paul_app/Views/wishList.dart';
import 'package:paul_app/Views/yourItem.dart';
import 'package:paul_app/widgets/CustomButton.dart';
import 'package:paul_app/widgets/CustomTextField.dart';
import 'package:paul_app/widgets/colors.dart';
import 'package:paul_app/widgets/styles.dart';

import 'AddProduct.dart';





class VendorAccount extends StatefulWidget {
  @override
  _VendorAccountState createState() => new _VendorAccountState();
}




class _VendorAccountState extends State<VendorAccount> {




  @override
  Widget build(BuildContext context) {
    GroupController controller = GroupController();
    bool multiSelection= false;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
       elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        // backgroundColor: Color(0xfff7f7f7),

        // appBar: customAppBar1("Sign In"),

        body: Container(
          height: height,
          width: width,
          // color: Colors.red,
          child: SingleChildScrollView(
            child: Column(

              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left:15.0, right: 0),                  child: Text(
                    'Hello Handcrafter:) ',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: height / 25,
                        fontWeight: FontWeight.w400),

                  ),
                ),
                SizedBox(height: height/30,),
                Padding(
                  padding: const EdgeInsets.only(left:15.0, right: 0),
                  child: Container(height: height/20,
                    width: width/2.3,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: basicColorcustomer,

                    ),
                    child:Center(
                      child: Text(
                        'Your Shop menu',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: height / 40,
                            fontWeight: FontWeight.w400),

                      ),

                    ), ),
                ),


                SizedBox(height: height/30,),
                Container(child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(left:15.0, right: 15),
                    child: InkWell(
                      onTap: ()
                      {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (Context) => AddProduct()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Add items',
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
                  Divider(color: Color(0xff707070), thickness: 0.2,),
                  SizedBox(height: height/70,),
                  Padding(
                    padding: const EdgeInsets.only(left:15.0, right: 15),
                    child: InkWell(
                      onTap: ()
                      {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (Context) => yourItems()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Edit items',
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
                  Divider(color: Color(0xff707070), thickness: 0.2,),
                  SizedBox(height: height/70,),
                  Padding(
                    padding: const EdgeInsets.only(left:15.0, right: 15),
                    child: InkWell(
                      onTap: ()
                      {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (Context) => orderPage()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Orders',
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
                  Divider(color: Color(0xff707070), thickness: 0.2,),
                  SizedBox(height: height/70,),
                  Padding(
                    padding: const EdgeInsets.only(left:15.0, right: 15),
                    child: InkWell(
                      onTap: ()
                      {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (Context) => VendorSetting()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Setting, Postage, Shop front',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: height / 40,
                                fontWeight: FontWeight.w400),

                          ),
                          Icon(Icons.arrow_forward_ios, size: height/40,  color: Colors.grey,)
                        ],),
                    ),
                  ),
                  SizedBox(height: height/70,),
                  Divider(color: Color(0xff707070), thickness: 0.2,),
                ],),),
                SizedBox(height: height/50,),
                Padding(
                  padding: const EdgeInsets.only(left:15.0, right: 15),
                  child: Container(height: height/20,
                    width: width/2.5,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: basicColorShopper,

                    ),
                    child:Center(
                      child: Text(
                        'Your Menu',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: height / 40,
                            fontWeight: FontWeight.w400),

                      ),

                    ), ),
                ),
                SizedBox(height: height/15,),
                Container(child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(left:15.0, right: 15),
                    child: InkWell(
                      onTap: ()
                      {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (Context) => ShopperSettings()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Settings',
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
                  Divider(color: Color(0xff707070), thickness: 0.2,),
                  SizedBox(height: height/70,),
                  Padding(
                    padding: const EdgeInsets.only(left:15.0, right: 15),
                    child: InkWell(
                      onTap: ()
                      {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (Context) => wishList()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Wishlist',
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
                  Divider(color: Color(0xff707070), thickness: 0.2,),
                  SizedBox(height: height/70,),
                  Padding(
                    padding: const EdgeInsets.only(left:15.0, right: 15),
                    child: InkWell(
                      onTap: ()
                      {
                        // Navigator.of(context).push(
                        //     MaterialPageRoute(builder: (Context) => follo wing()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Your Fave Shops',
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
                  Divider(color: Color(0xff707070), thickness: 0.2,),
                  SizedBox(height: height/15,),
                  Divider(color: Color(0xff707070), thickness: 0.2,),
                ],),),








              ],
            ),
          ),
        ),

      ),
    );
  }

}