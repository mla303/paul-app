import 'package:flutter/material.dart';
import 'package:paul_app/Views/purchaseContainer.dart';
import 'package:paul_app/widgets/Lists.dart';
import 'package:paul_app/widgets/appBar.dart';
import 'package:paul_app/widgets/colors.dart';
import 'package:paul_app/widgets/search_bar.dart';
import 'package:paul_app/widgets/styles.dart';
import 'package:paul_app/widgets/tabBar.dart';

import 'allCategories.dart';
import 'mySales.dart';





class searchPage extends StatefulWidget {
  @override
  _searchPageState createState() => new _searchPageState();
}




class _searchPageState extends State<searchPage> {



  final typesOfitems = ['Jewelry','Wedding','Shoes','Clothing','Accessories','Toys',];

  int _counter = 12;

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,

          appBar: customAppBar1("Sign In"),

        body: Container(
          // color: whiteColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:4,vertical: 10),
            child: Column(

                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[


                  Expanded(
                    flex: 0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,

                        children: [

                          searchBar(),

                          Text(
                            "Cancel",
                            style: TextStyle(
                                color: basicColorShopper,
                                fontSize: height / 54,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
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
                        length: typesOfitems.length,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              child: searchTab(),
                            ),
                            Expanded(
                              child: Container(
                                child: TabBarView(
                                  children: <Widget>[
                                    purchaseContainer(),
                                    mySalesContainer(),
                                    purchaseContainer(),
                                    mySalesContainer(),
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