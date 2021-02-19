import 'package:flutter/material.dart';
import 'package:paul_app/widgets/styles.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import 'CustomButton.dart';
import 'CustomTextField.dart';
import 'Lists.dart';
import 'colors.dart';

class ReviewsContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      // color: whiteColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
        child: SingleChildScrollView(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[


              Container(
                // color: Colors.redAccent,
                padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 0.0),
                height: MediaQuery.of(context).size.height /4,
                width: width,

                child: ListView.separated(
                    itemCount: reviewsList.length,
                    shrinkWrap: false,
                    physics: ClampingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(reviewsList[index].comment,
                            style: CustomTextStyle.normaltext2(context),
                          ),
                          SmoothStarRating(
                              allowHalfRating: true,
                              onRated: (v) {
                              },
                              // starCount: reviewsList[index].rating,
                              rating: 4,
                              // rating: rating,
                              size: height/40,
                              isReadOnly:true,
                              filledIconData: Icons.star,
                              halfFilledIconData: Icons.star,
                              color: Colors.deepOrange,
                              borderColor: Colors.deepOrange,
                              spacing:3.0
                          ),
                        ],
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return  Divider(color: Colors.grey, thickness: 0.5,);
                    }),
              ),
              // SizedBox(height: height/70,),





            ],
          ),
        ),
      ),
    );
  }
}
