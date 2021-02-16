 import 'package:flutter/material.dart';
import 'package:paul_app/widgets/Lists.dart';
import 'package:paul_app/widgets/appBar.dart';
import 'package:paul_app/widgets/colors.dart';
import 'package:paul_app/widgets/styles.dart';

class purchaseDetial extends StatefulWidget {
  @override
  _purchaseDetialState createState() => _purchaseDetialState();
}

class _purchaseDetialState extends State<purchaseDetial> {

  String itemCost = "170";
  String orderDate = "Monday, October 24";
  String orderTime = "10:00 AM";
  String oderAddress = "43 Bourke Street, Newbridge NSW 837 Raffles";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar1("Purchaces Detail"),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ListView.separated(
                itemCount: PurchasesDetailList.length,
                shrinkWrap: true,
                // physics: ClampingScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: ()
                    {
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 6),
                      child: Row(

                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [


                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 100.0,
                                width: 120.0,
                                decoration: BoxDecoration(
                                  // color: Colors.red,
                                    image: DecorationImage(
                                      image: AssetImage(
                                        PurchasesDetailList[index].img,
                                      ),
                                      fit: BoxFit.fill,
                                    )
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                    const EdgeInsets.only(left: 8.0, top: 6),
                                    child: Text(
                                      PurchasesDetailList[index].name,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: MediaQuery.of(context).size.height / 56,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),

                                  Padding(
                                    padding:
                                    const EdgeInsets.only(left: 8.0, top: 5),
                                    child: Text(
                                      "\$" +
                                          PurchasesDetailList[index].price,
                                      style: TextStyle(
                                          color: basicColorShopper,
                                          fontSize: MediaQuery.of(context).size.height / 60,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),




                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(8)),
                                border: Border.all(color: basicColorShopper)
                            ),
                            child: Padding(
                              padding:
                              const EdgeInsets.all(10),
                              child: Text( "x" +
                                  PurchasesDetailList[index].num.toString(),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: MediaQuery.of(context).size.height / 60,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return Divider(
                    thickness: 0.3,
                  );
                }
            ),
            Expanded(
              flex: 0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Your Purchase total..",
                        style: CustomTextStyle.normaltext2(context),
                      ),
                      SizedBox(height: 6,),
                      Text(
                        "Item Cost: \$ $itemCost",
                        style: CustomTextStyle.normaltext1(context),
                      ),
                      Text(
                        "Postage cost: Free Postage",
                        style: CustomTextStyle.normaltext2(context),
                      ),

                      Divider(),

                      Text(
                        "Order date",
                        style: CustomTextStyle.normaltext2(context),
                      ),
                      SizedBox(height: 6,),
                      Text(
                        "$orderDate",
                        style: CustomTextStyle.normaltext1(context),
                      ),

                      Text(
                        "$orderTime",
                        style: CustomTextStyle.normaltext1(context),
                      ),


                      Divider(),

                      Text(
                        "Will be posted to",
                        style: CustomTextStyle.normaltext2(context),
                      ),
                      SizedBox(height: 6,),
                      Text(
                        "$oderAddress",
                        style: CustomTextStyle.normaltext1(context),
                      ),
                      Divider(),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
