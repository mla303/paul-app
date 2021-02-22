import 'package:flutter/material.dart';
import 'package:paul_app/widgets/CustomButton.dart';
import 'package:paul_app/widgets/Lists.dart';
import 'package:paul_app/widgets/appBar.dart';
import 'package:paul_app/widgets/colors.dart';
import 'package:paul_app/widgets/styles.dart';

import 'checkout.dart';
import 'mySales.dart';

class basket extends StatefulWidget {
  @override
  _basketState createState() => _basketState();
}

class _basketState extends State<basket> {

  String itemCost = "170";
  String orderDate = "Monday, October 24";
  String orderTime = "10:00 AM";
  String oderAddress = "43 Bourke Street, Newbridge NSW 837 Raffles";
  String itemprice = "\$85";
  String postagePrice = "\$90";
  String total = "\$175";

  @override
  void setState(fn) {
    // TODO: implement setState
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: customAppBar1("Sales Detail"),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            mySalesContainer(),
            Expanded(
              flex: 0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [


                      Divider(),
                      Text(
                        "Order",
                        style: CustomTextStyle.normaltext2(context),
                      ),
                      SizedBox(height: 6,),
                      Text(
                        "$itemprice",
                        style: CustomTextStyle.normaltext2(context),
                      ),
                      SizedBox(height: 6,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Rings x2",
                            style: CustomTextStyle.normaltext2(context),
                          ),
                          Text(
                            "$itemprice",
                            style: CustomTextStyle.normaltext2(context),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Toys x1",
                            style: CustomTextStyle.normaltext2(context),
                          ),
                          Text(
                            "$postagePrice",
                            style: CustomTextStyle.normaltext2(context),
                          ),
                        ],
                      ),
                      SizedBox(height: 6,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total",
                            style: CustomTextStyle.normaltext2(context),
                          ),
                          Text(
                            "$total",
                            style: CustomTextStyle.normaltext2(context),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Center(
                        child: checkoutButton(
                          text: Text("Go-to checkout",
                            style: CustomTextStyle.buttontitle(context),),
                          onPressed: (){

                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (Context) => Checkout()));

                            },
                          colors: basicColorcustomer,
                        ),
                      ),
                      SizedBox(height: 8,),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
