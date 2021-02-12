import 'package:flutter/material.dart';
import 'package:paul_app/widgets/CustomButton.dart';
import 'package:paul_app/widgets/CustomTextField.dart';
import 'package:paul_app/widgets/Lists.dart';
import 'package:paul_app/widgets/appBar.dart';
import 'package:paul_app/widgets/colors.dart';
import 'package:paul_app/widgets/search_bar.dart';
import 'package:paul_app/widgets/styles.dart';

import 'itemPage.dart';

class allCatorgies extends StatefulWidget {
  @override
  _allCatorgiesState createState() => new _allCatorgiesState();
}

class _allCatorgiesState extends State<allCatorgies> {

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    final orientation = MediaQuery.of(context).orientation;

    return SafeArea(
      child: Scaffold(
        // backgroundColor: Color(0xfff7f7f7),

        appBar: customAppBar1("Categories"),

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
                            child: Text("Categories",
                                style: CustomTextStyle.headig(context))),
                      ),

                      Container(


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
                            CatogeryList.length,
                            (index) {
                          return GestureDetector(
                            onTap: () {

                              Navigator.of(context).push(
                                  MaterialPageRoute(builder: (Context) => itemPage()));
                            },

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

                                    child: Image.asset(CatogeryList[index].img,
                                      height: MediaQuery.of(context).size.height * 0.14,
                                      width: MediaQuery.of(context).size.width,
                                      fit: BoxFit.cover,
                                    ),
                                  ),


                                  Positioned(
                                    bottom: 18,
                                    left:10,
                                    child: Text(
                                      CatogeryList[index].name,
                                      style: TextStyle(
                                          color: basicColorShopper,
                                          fontSize: height / 50,
                                          fontWeight:
                                              FontWeight.w500),
                                    ),
                                  ),

                                  Positioned(
                                    bottom:4,
                                    left:12,
                                    child: Text(
                                      CatogeryList[index].Titems + "items",
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
