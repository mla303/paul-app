import 'package:flutter/material.dart';
import 'package:paul_app/widgets/Lists.dart';
import 'package:paul_app/widgets/colors.dart';

class mySalesContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    return ListView.separated(
        itemCount: mySalesList.length,
        shrinkWrap: true,
        // physics: ClampingScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: ()
            {
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6,vertical: 6),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [


                  Container(
                    height: 100.0,
                    width: 120.0,
                    decoration: BoxDecoration(
                      // color: Colors.red,
                      image: DecorationImage(
                        image: AssetImage(
                          mySalesList[index].img,
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
                          mySalesList[index].name,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: height / 56,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding:
                        const EdgeInsets.only(left: 8.0, top: 0),
                        child: Text(
                          mySalesList[index].type,
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: height / 66,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Padding(
                        padding:
                        const EdgeInsets.only(left: 8.0, top: 5),
                        child: Text(
                          "\$" +
                              mySalesList[index].price,
                          style: TextStyle(
                              color: basicColorShopper,
                              fontSize: height / 60,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
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
    );
  }
}
