import 'package:flutter/material.dart';
import 'package:paul_app/widgets/CustomButton.dart';
import 'package:paul_app/widgets/CustomTextField.dart';
import 'package:paul_app/widgets/Lists.dart';
import 'package:paul_app/widgets/appBar.dart';
import 'package:paul_app/widgets/colors.dart';
import 'package:paul_app/widgets/styles.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class Reviews extends StatefulWidget {
  @override
  _ReviewsState createState() => new _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,

        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text('Reviews', style: TextStyle(color: Colors.black,), textAlign: TextAlign.center),
          iconTheme: IconThemeData(color: Colors.black),
        ),

        body: Container(
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

                  Center(
                    child: Text(
                      'How would you rate this seller',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: height / 40,
                          fontWeight: FontWeight.w400),

                    ),
                  ),
SizedBox(height: height/60,),
                  Center(
                    child: SmoothStarRating(
                        allowHalfRating: true,
                        onRated: (v) {
                        },
                        // starCount: reviewsList[index].rating,
                        rating: 3,
                        // rating: rating,
                        size: height/25,
                        isReadOnly:false,
                        filledIconData: Icons.star,
                        halfFilledIconData: Icons.star,
                        color: Colors.deepOrange,
                        borderColor: Colors.deepOrange,
                        spacing:3.0
                    ),
                  ),
                 // Divider(color: Colors.grey, thickness: 0.5,),
                  SizedBox(height: height/60,),
                  Center(
                    child: Text(
                      'Leave comment about it',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: height / 40,
                          fontWeight: FontWeight.w400),

                    ),
                  ),
                  SizedBox(height: height/60,),


                  Center(
                    child: CustomTextField
                      (
                      hinttext: "Write a Comment",
                      obscureText: false,
                      textInputType: TextInputType.emailAddress,
                    ),
                  ),

                  SizedBox(height: height/60,),
                  Center(
                    child: ShopperButton(
                      text: Text("Submit",
                        style: CustomTextStyle.buttonTextWhite(context),),
                      onPressed: (){
                        // Navigator.pushNamed(context, "/ShopperAddress");
                      },
                      focusColor: Colors.white,
                      disbaleColor:Colors.white,
                      color: basicColorShopper,
                    ),
                  ),



                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
