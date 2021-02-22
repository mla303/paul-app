import 'package:flutter/material.dart';
import 'package:paul_app/widgets/Lists.dart';
import 'package:paul_app/widgets/colors.dart';

class purchaseContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return ListView.separated(
        itemCount: PurchasesList.length,
        shrinkWrap: true,
        // physics: ClampingScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: ()
            {
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 6),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [


                  Container(
                    height: height/12,
                    width: width/6,
                    decoration: BoxDecoration(
                      // color: Colors.red,
                      image: DecorationImage(
                        image: AssetImage(
                          PurchasesList[index].img,
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
                        const EdgeInsets.only(left: 8.0, top: 0),
                        child: Text(
                          PurchasesList[index].name,
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: height / 60,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding:
                        const EdgeInsets.only(left: 8.0, top: 5),
                        child: Text(
                          PurchasesList[index].type,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: height / 56,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Padding(
                        padding:
                        const EdgeInsets.only(left: 8.0, top: 5),
                        child: Text(
                          "\$" +
                          PurchasesList[index].price,
                          style: TextStyle(
                              color: Colors.grey,
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
