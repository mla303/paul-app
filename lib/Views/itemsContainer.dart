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

        childAspectRatio: (2 / 3),
        controller: new ScrollController(keepScrollOffset: false),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: List.generate(
            recentViewList.length,
                (index) {
              return GestureDetector(
                onTap: () {},

                child: Container(
                  // height: MediaQuery.of(context).size.height * 0.16,
                  width: MediaQuery.of(context).size.width / 3,

                  // decoration: ,
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
                          height: MediaQuery.of(context).size.height * 0.22,
                          width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: Colors.grey[100],
                                borderRadius: BorderRadius.all(Radius.circular(12)),
                                image: DecorationImage(
                                  image: AssetImage( recentViewList[index].img,),
                                  fit: BoxFit.cover,
                                )
                              ),
                              // child: Image.asset(
                              //   recentViewList[index].img,
                              //   height: MediaQuery.of(context).size.height *
                              //       0.22,
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
                                  child: recentViewList[index].iconss),

                            )

                          ],
                        ),



                        Padding(
                          padding:
                          const EdgeInsets.only(left: 8.0, top: 6),
                          child: Text(
                            recentViewList[index].name,
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
                            recentViewList[index].type,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: height / 56,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                        Padding(
                          padding:
                          const EdgeInsets.only(left: 8.0, top: 0),
                          child: Text(
                            recentViewList[index].price,
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: height /60,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }).toList(),
      ),
    );
  }
}
