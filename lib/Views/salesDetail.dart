import 'package:flutter/material.dart';
import 'package:paul_app/widgets/Lists.dart';
import 'package:paul_app/widgets/appBar.dart';
import 'package:paul_app/widgets/colors.dart';
import 'package:paul_app/widgets/styles.dart';

class salesDetial extends StatefulWidget {
  @override
  _salesDetialState createState() => _salesDetialState();
}

class _salesDetialState extends State<salesDetial> {

  String itemCost = "170";
  String orderDate = "Monday, October 24";
  String orderTime = "10:00 AM";
  String oderAddress = "43 Bourke Street, Newbridge NSW 837 Raffles";
  String itemprice = "\$85";
  String postagePrice = "\$3";
  String total = "\$88";

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: customAppBar1("Sales Detail"),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ListView.separated(
                itemCount: SalesDetailList.length,
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
                                height: height/12,
                                width: width/6,
                                decoration: BoxDecoration(
                                  // color: Colors.red,
                                    image: DecorationImage(
                                      image: AssetImage(
                                        SalesDetailList[index].img,
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
                                      SalesDetailList[index].name,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: MediaQuery.of(context).size.height / 54,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),

                                  Padding(
                                    padding:
                                    const EdgeInsets.only(left: 8.0, top: 2),
                                    child: Text(
                                      "\$" +
                                          SalesDetailList[index].price,
                                      style: TextStyle(
                                          color: Colors.grey,
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
                                  SalesDetailList[index].num.toString(),
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
                        "please post to..",
                        style: CustomTextStyle.normaltext2(context),
                      ),
                      SizedBox(height: 6,),
                      Text(
                        "$oderAddress",
                        style: CustomTextStyle.normaltext1(context),
                      ),
                      Divider(),
                      Text(
                        "Order detail",
                        style: CustomTextStyle.normaltext2(context),
                      ),
                      SizedBox(height: 6,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Signet Cuff Bracelet x 1",
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
                            "Postage",
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
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
