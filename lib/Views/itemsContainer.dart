import 'package:flutter/material.dart';
import 'package:paul_app/widgets/Lists.dart';
import 'package:paul_app/widgets/colors.dart';

class itemConatiner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
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
    );
  }
}
