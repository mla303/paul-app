import 'package:flutter/material.dart';
import 'package:paul_app/widgets/Lists.dart';
import 'package:paul_app/widgets/appBar.dart';
import 'package:paul_app/widgets/styles.dart';


class wishList extends StatefulWidget {
  @override
  _wishListState createState() => new _wishListState();
}

class _wishListState extends State<wishList> {

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    final orientation = MediaQuery.of(context).orientation;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,

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
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        width: width / 1.2,
                        child: Text("Wish List",
                            style: CustomTextStyle.headig(context))),
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

                        childAspectRatio: (2 / 3),
                        controller: new ScrollController(keepScrollOffset: false),
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        children: List.generate(
                            wishItemList.length,
                            (index) {
                          return GestureDetector(
                            onTap: () {},

                            child: Card(
                              elevation: 0,
                              shadowColor: Colors.white,
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                                // side: BorderSide(width: 1,color: Colors.grey[200])
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Stack(
                                    children: <Widget>[

                                      Container(
                                        height: MediaQuery.of(context).size.height *
                                            0.22,
                                        width: MediaQuery.of(context).size.width,
                                        decoration: BoxDecoration(
                                            color: Colors.grey[100],
                                            borderRadius: BorderRadius.all(Radius.circular(12)),
                                            image: DecorationImage(
                                              image: AssetImage(wishItemList[index].img,),
                                              fit: BoxFit.cover,
                                            )
                                        ),
                                        // child: Image.asset(
                                        //   recentViewList[index].img,
                                        //   height: MediaQuery.of(context).size.height *
                                        //       0.18,
                                        //   width: MediaQuery.of(context).size.width,
                                        //   fit: BoxFit.cover,
                                        // ),
                                      ),
                                      Positioned(
                                        right: 5,
                                        top: 5,
                                        child: Container(

                                            height: 25,
                                            width: 25,
                                            decoration: new BoxDecoration(
                                              shape: BoxShape.circle,// You can use like this way or like the below line
                                              color: Colors.white,
                                            ),
                                            child: wishItemList[index].iconss),

                                      )

                                    ],
                                  ),



                                  Padding(
                                    padding:
                                    const EdgeInsets.only(left: 8.0, top: 6),
                                    child: Text(
                                      wishItemList[index].name,
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: height / 60,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),

                                  Padding(
                                    padding:
                                    const EdgeInsets.only(left: 8.0, top: 0),
                                    child: Text(
                                      wishItemList[index].type,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: height / 56,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                    const EdgeInsets.only(left: 8.0, top: 0),
                                    child: Text(
                                      wishItemList[index].price,
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: height /60,
                                          fontWeight: FontWeight.w600),
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
