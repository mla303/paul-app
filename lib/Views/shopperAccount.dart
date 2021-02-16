
import 'package:checkbox_grouped/checkbox_grouped.dart';
import 'package:flutter/material.dart';
import 'package:paul_app/widgets/CustomButton.dart';
import 'package:paul_app/widgets/CustomTextField.dart';
import 'package:paul_app/widgets/colors.dart';
import 'package:paul_app/widgets/styles.dart';





class ShopperAccount extends StatefulWidget {
  @override
  _ShopperAccountState createState() => new _ShopperAccountState();
}




class _ShopperAccountState extends State<ShopperAccount> {




  @override
  Widget build(BuildContext context) {
    GroupController controller = GroupController();
    bool multiSelection= false;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,

          iconTheme: IconThemeData(color: basicColorShopper),
        ),
        // backgroundColor: Color(0xfff7f7f7),

        // appBar: customAppBar1("Sign In"),

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
                  Text(
                    'Hello Shopper:) ',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: height / 25,
                        fontWeight: FontWeight.w400),

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
                        'Your Menu',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: height / 40,
                            fontWeight: FontWeight.w400),

                      ),

                    ), ),
                  SizedBox(height: height/15,),
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
                            'Settings',
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
                            'Wishlist',
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
                            'Your Fave Shops',
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
                  SizedBox(height: height/20,),
                  Divider(color: basicColorcustomer, thickness: 1,),
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
                          'Open a shop',
                          style: TextStyle(
                              color: basicColorcustomer,
                              fontSize: height / 40,
                              fontWeight: FontWeight.w500),

                        ),
                        Icon(Icons.arrow_forward_ios, size: height/40, color: basicColorcustomer, )
                      ],),
                  ),
                  SizedBox(height: height/70,),
                  Divider(color: basicColorcustomer, thickness: 1,),



                ],
              ),
            ),
          ),
        ),

      ),
    );
  }

}