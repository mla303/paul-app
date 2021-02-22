import 'package:flutter/material.dart';
import 'package:paul_app/Views/purchaseContainer.dart';
import 'package:paul_app/Views/purchaseDetail.dart';
import 'package:paul_app/Views/salesDetail.dart';
import 'package:paul_app/widgets/CustomButton.dart';
import 'package:paul_app/widgets/CustomTextField.dart';
import 'package:paul_app/widgets/Lists.dart';
import 'package:paul_app/widgets/appBar.dart';
import 'package:paul_app/widgets/colors.dart';
import 'package:paul_app/widgets/search_bar.dart';
import 'package:paul_app/widgets/styles.dart';
import 'package:paul_app/widgets/tabBar.dart';

import 'mySales.dart';

class orderPage extends StatefulWidget {
  @override
  _orderPageState createState() => new _orderPageState();
}

class _orderPageState extends State<orderPage> {

  String textPurchase = "Your purchases";
  String textSales = "Your Sales";


  @override
  void setState(fn) {
    // TODO: implement setState
    super.setState(fn);
  }


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;


    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,

        appBar: emptyAppBar("Orders"),


        body: Container(
          // color: whiteColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 0,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            width: width / 1.2,
                            child: Text(
                               "Orders",
                                style: CustomTextStyle.headig(context))),
                      ),
                    ],
                  ),
                ),

                Expanded(
                  flex: 2,
                  child: Container(
                    // color: Colors.redAccent,
                    // padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 0.0),
                    height: MediaQuery.of(context).size.height * 0.12,
                    width: width,

                    child: DefaultTabController(
                      length: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[


                          Container(
                            child: tabBarlabel(),
                          ),
                          Expanded(
                            child: Container(
                              child: TabBarView(
                                children: <Widget>[

                                  purchaseContainer(),
                                    mySalesContainer(),



                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
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
