import 'package:flutter/material.dart';
import 'package:paul_app/widgets/CustomButton.dart';
import 'package:paul_app/widgets/CustomTextField.dart';
import 'package:paul_app/widgets/Lists.dart';
import 'package:paul_app/widgets/appBar.dart';
import 'package:paul_app/widgets/colors.dart';
import 'package:paul_app/widgets/search_bar.dart';
import 'package:paul_app/widgets/styles.dart';

class itemPage extends StatefulWidget {
  @override
  _itemPageState createState() => new _itemPageState();
}

class _itemPageState extends State<itemPage> {

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        // backgroundColor: Color(0xfff7f7f7),

        appBar: customAppBar1(""),

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
                            child: Text("Wedding",
                                style: CustomTextStyle.headig(context))),
                      ),


                      Row(
                        children: [
                          Expanded( flex:1,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: grayColor,
                                  border: Border.all(color: basicColorShopper.withOpacity(0.2))
                                ),
                                height: 34,
                                // color: Colors.red,
                              child: Wrap(
                                spacing: 3,
                                runAlignment: WrapAlignment.center,
                                alignment: WrapAlignment.center,

                                children: <Widget>[
                                  Icon(Icons.sort,size: 20,color: Colors.grey,),
                                  Text("Sort",style: CustomTextStyle.normaltext1(context),)
                                ],
                              ),
                              )),

                          Expanded( flex:1,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: grayColor,
                                    border: Border.all(color: basicColorShopper.withOpacity(0.2))
                                ),
                                height: 34,
                              child: Wrap(
                                spacing: 3,
                                runAlignment: WrapAlignment.center,
                                alignment: WrapAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.filter_alt_rounded,size: 20,color: Colors.grey,),
                                  Text("Narrow that down",style: CustomTextStyle.normaltext1(context),)
                                ],
                              ),
                              )),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Expanded(
                  flex: 2,
                  child: SingleChildScrollView(
                    child: Container(
                      // color: Colors.redAccent,
                      padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 0.0),
                      // height: MediaQuery.of(context).size.height * 0.21,
                      width: width,

                      child: GridView.count(
                        crossAxisCount: 2,

                        childAspectRatio: (3 / 3),
                        controller: new ScrollController(keepScrollOffset: false),
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        children: List.generate(
                            recentViewList.length,
                            (index) {
                          return GestureDetector(
                            onTap: () {},

                            child: Card(
                              elevation: 0,
                              shadowColor: Colors.grey,
                              color: Colors.grey[200],
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(12.0),
                                // side: BorderSide(width: 1,color: Colors.grey[200])
                              ),
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(12),
                                      topRight: Radius.circular(12),
                                    ),

                                    child: Image.asset(recentViewList[index].img,
                                      height: MediaQuery.of(context).size.height * 0.14,
                                      width: MediaQuery.of(context).size.width,
                                      fit: BoxFit.cover,
                                    ),
                                  ),


                                  Positioned(
                                    right: 5,
                                    top: 5,
                                    child: latestItemList[index].iconss,

                                  ),


                                  Positioned(
                                    bottom: 31,
                                    left:10,
                                    child: Text(
                                      recentViewList[index].name,
                                      style: TextStyle(
                                          color: basicColorShopper,
                                          fontSize: height / 50,
                                          fontWeight:
                                              FontWeight.w500),
                                    ),
                                  ),

                                  Positioned(
                                    bottom: 16,
                                    left:10,
                                    child: Text(
                                      recentViewList[index].type,
                                      style: TextStyle(
                                          color: basicColorShopper,
                                          fontSize: height / 56,
                                          fontWeight:
                                              FontWeight.w500),
                                    ),
                                  ),

                                  Positioned(
                                    bottom:4,
                                    left:10,
                                    child: Text(
                                        recentViewList[index].price ,
                                      style: TextStyle(
                                          color:
                                              basicColorShopper,
                                          fontSize: height / 66,
                                          fontWeight:
                                              FontWeight.w400),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }).toList(),
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
