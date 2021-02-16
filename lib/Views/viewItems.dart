
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:paul_app/Views/basket.dart';
import 'package:paul_app/Views/bottomNavigation.dart';
import 'package:paul_app/Views/purchaseContainer.dart';
import 'package:paul_app/Views/reviews.dart';
import 'package:paul_app/Views/vendorProfile.dart';
import 'package:paul_app/widgets/CustomButton.dart';
import 'package:paul_app/widgets/CustomTextField.dart';
import 'package:paul_app/widgets/appBar.dart';
import 'package:paul_app/widgets/colors.dart';
import 'package:paul_app/widgets/mycircleavatar.dart';
import 'package:paul_app/widgets/styles.dart';
import 'package:paul_app/widgets/tabBar.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'itemPage.dart';
import 'itemsContainer.dart';
import 'mySales.dart';


class viewItems extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              home: detailPage(),
            );
          },
        );
      },
    );
  }
}

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

class detailPage extends StatefulWidget {


  @override
  _ProfileFirstState createState() => _ProfileFirstState();
}

class _ProfileFirstState extends State<detailPage> {

  bool _isExpanded = false;

  ///Toogle the box to expand or collapse
  void _toogleExpand() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  var options = ['Birthday', 'Toys', 'Rings',];
  var _Selectedoptions = 'Birthday';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar1("Your Item"),
      backgroundColor: Color(0xffF8F8FA),
      body: SingleChildScrollView(
        child: Wrap(
          spacing: -30,
          direction: Axis.vertical,
          // overflow: Overflow.visible,
          children: <Widget>[


            Container(
              height: 300,
              width: SizeConfig._screenWidth,
              child: CarouselSlider(
                  options: CarouselOptions(
                    height: MediaQuery.of(context).size.height,
                    aspectRatio: 16 / 9,
                    scrollPhysics: NeverScrollableScrollPhysics(),
                    viewportFraction: 1.0,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 6),
                    autoPlayAnimationDuration:
                    Duration(milliseconds: 2000),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    //onPageChanged: callbackFunction,
                    scrollDirection: Axis.horizontal,
                  ),
                  items: imgList.map((item) {
                    return Container(
                      margin: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: CachedNetworkImage(
                        imageUrl: item,
                        placeholder: (context, url) =>
                            Center(child: CircularProgressIndicator()),
                        errorWidget: (context, url, error) =>
                            Icon(Icons.error),
                      ),
                    );
                  }).toList()),
            ),




            Container(
              height: 63 * SizeConfig.heightMultiplier,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.0),
                    topLeft: Radius.circular(20.0),
                  )
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Text("Home & Living", style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                fontSize: 1.6 * SizeConfig.textMultiplier
                            ),),    Text("\$120", style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                fontSize: 1.8 * SizeConfig.textMultiplier
                            ),

                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Text("Wooden Bar Stool", style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 2.6 * SizeConfig.textMultiplier
                            ),),    Text("\$85", style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 2 * SizeConfig.textMultiplier
                            ),

                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 3 * SizeConfig.heightMultiplier,),

                     Center(
                       child: Container(
                         width: 44 * SizeConfig.heightMultiplier,
                         decoration: BoxDecoration(
                           color: grayColor,
                           borderRadius: BorderRadius.all(Radius.circular(12))
                         ),
                         child: Padding(
                           padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                           child: Column(
                             // mainAxisAlignment: MainAxisAlignment.start,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [

                               Row(
                                 children: [
                                   GestureDetector(
                                     onTap: (){
                                       Navigator.of(context).push(
                                           MaterialPageRoute(builder: (Context) => vendorProfile()));
                                     },
                                     child: MyCircleAvatar(
                                       imgUrl: 'https://cdn.pixabay.com/photo/2015/01/08/18/29/entrepreneur-593358_960_720.jpg',
                                     ),
                                   ),
                                   SizedBox(width: 1 * SizeConfig.heightMultiplier,),
                                   Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Text("Made and sold by",style:TextStyle(
                                         fontSize: 12,
                                         fontWeight: FontWeight.w600,
                                         color: Colors.grey
                                       ),),
                                       Text("Paul",style:TextStyle(
                                         fontSize: 14,
                                         fontWeight: FontWeight.w600,
                                         color: Colors.grey
                                       ),),
                                     ],
                                   )
                                 ],
                               ) ,


                               Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [

                                   Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       SmoothStarRating(
                                         rating: 4,
                                         isReadOnly: false,
                                         size: 16,
                                         color: Colors.yellow,

                                         filledIconData: Icons.star,
                                         halfFilledIconData: Icons.star_half,
                                         defaultIconData: Icons.star_border,
                                         starCount: 5,
                                         allowHalfRating: true,
                                         spacing: 2.0,
                                         onRated: (value) {
                                           print("rating value -> $value");
                                           // print("rating value dd -> ${value.truncate()}");
                                         },
                                       ),
                                       GestureDetector(
                                         onTap: (){
                                           Navigator.of(context).push(
                                               MaterialPageRoute(builder: (Context) => Reviews()));

                                         },
                                         child: Text("View / Leave review",style:TextStyle(
                                           fontSize: 12,
                                           fontWeight: FontWeight.w600,
                                           color: Colors.grey
                                         ),),
                                       ),
                                     ],
                                   ),

                                   GestureDetector(
                                     onTap: (){
                                       Navigator.of(context).push(
                                           MaterialPageRoute(builder: (Context) => itemPage()));
                                     },
                                     child: Row(
                                       children: [
                                         Container(
                                           height: 40,
                                             width: 40,
                                           decoration: BoxDecoration(
                                             borderRadius: BorderRadius.circular(6),
                                             color: Colors.white,
                                           ),
                                         child: Center(child: Icon(Icons.message_outlined,color: Colors.blue,size: 16,)),
                                         ),
                                         SizedBox(width: 1 * SizeConfig.heightMultiplier,),
                                         Container(
                                           height: 40,
                                             width: 40,
                                           decoration: BoxDecoration(
                                             borderRadius: BorderRadius.circular(6),
                                             color: Colors.white,
                                           ),
                                         child: Center(child: Icon(Icons.favorite,color: Colors.red,size: 18,)),
                                         ),
                                       ],
                                     ),
                                   ),

                                 ],
                               ),




                             ],
                           ),
                         ),
                       ),
                     ),

                      SizedBox(height: 1 * SizeConfig.heightMultiplier,),
                      Text("This is a one line about this item",style:TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.black
                      ),),
                      SizedBox(height: 1 * SizeConfig.heightMultiplier,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),

                  //main Card started
                  child: Wrap(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text("What is Lorem Ipsum Lorem Ipsum is simply dummy text of the "
                          "printing and typesetting industry Lorem Ipsum has been the"
                          "industry's standard dummy text ever since the 1500s ",
                        style:TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                      ),
                      ),



                      ExpandedSection(
                        expand: _isExpanded,
                        child: Text("When an unknown printer took a galley of type and scrambled "
                            "it to make a type",
                          style:TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),),
                      ),

                      GestureDetector(
                        onTap: _toogleExpand,
                        child: Padding(
                          padding:
                          const EdgeInsets.only(top: 6.0, bottom: 8),
                          child: Center(
                              child: Text(
                                  _isExpanded == false
                                      ? "See More..."
                                      : "Close.",
                                  style: TextStyle(
                                      fontSize: 12, color: basicColorShopper))),
                        ),
                      ),
                    ],
                  ),
                ),


                      Text("Personalistaion options",
                        style:TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: basicColorShopper,
                        ),
                      ),

                      SizedBox(height: 2 * SizeConfig.heightMultiplier,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Custom text",
                            style:TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),

                          customtextField(),
                        ],
                      ),
                      SizedBox(height: 2 * SizeConfig.heightMultiplier,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Choices",
                            style:TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),

                          Container(
                            width: MediaQuery.of(context).size.width/2.2,
                            decoration: BoxDecoration(

                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 0,
                                  blurRadius: 2,
                                  offset: Offset(0, 3), // changes position of shadow
                                ),
                              ],

                              // border: Border.all(
                              //   color: basicColor,
                              // ),
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                              color: Colors.white,
                            ),

                            child: DropdownButtonHideUnderline(
                              child: Padding(
                                padding: const EdgeInsets.only(left:18.0,right: 8),
                                child: ButtonTheme(
                                  child: DropdownButton<String>(
                                    //hint: Text("Select Airport"),
                                    items: options.map((String dropDownStringItem) {
                                      return DropdownMenuItem<String>(
                                        value: dropDownStringItem,
                                        child: Text(dropDownStringItem,style:
                                        TextStyle(color: basicColorShopper, letterSpacing: 1),),
                                      );
                                    }).toList(),
                                    onChanged: (String newValueSelected) {
                                      // Your code to execute, when a menu item is selected
                                      // from drop down
                                      setState(() {
                                        _Selectedoptions = newValueSelected;
                                      });
                                      // Navigator.pushReplacement(
                                      //     context,
                                      //     PageTransition(
                                      //       curve: Curves.bounceOut,
                                      //       type: PageTransitionType.rotate,
                                      //       alignment: Alignment.topCenter,
                                      //       child: WelcomeScreen(),
                                      //     ));
                                    },
                                    value: _Selectedoptions,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 10 * SizeConfig.heightMultiplier,),

                      Text("- Made by : Me",
                        style:TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: basicColorShopper,
                        ),
                      ),
                      Text("- Made to order: No",
                        style:TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: basicColorShopper,
                        ),
                      ),
                      SizedBox(height: 2 * SizeConfig.heightMultiplier,),
                      Center(
                        child: CustomerButton(
                          text: Text("Love it! Add to basket",style: CustomTextStyle.normaltext3(context),),
                            disbaleColor: basicColorShopper,
                            onPressed: (){
                              Navigator.of(context).push(
                                  MaterialPageRoute(builder: (Context) => basket()));
                            }),
                      )
                    ],
                  ),
                ),
              ),
            ),



          ],
        ),
      ),

    );
  }

}

class SizeConfig {
  static double _screenWidth;
  static double _screenHeight;
  static double _blockSizeHorizontal = 0;
  static double _blockSizeVertical = 0;

  static double textMultiplier;
  static double imageSizeMultiplier;
  static double heightMultiplier;
  static double widthMultiplier;
  static bool isPortrait = true;
  static bool isMobilePortrait = false;

  void init(BoxConstraints constraints, Orientation orientation) {
    if (orientation == Orientation.portrait) {
      _screenWidth = constraints.maxWidth;
      _screenHeight = constraints.maxHeight;
      isPortrait = true;
      if (_screenWidth < 450) {
        isMobilePortrait = true;
      }
    } else {
      _screenWidth = constraints.maxHeight;
      _screenHeight = constraints.maxWidth;
      isPortrait = false;
      isMobilePortrait = false;
    }

    _blockSizeHorizontal = _screenWidth / 100;
    _blockSizeVertical = _screenHeight / 100;

    textMultiplier = _blockSizeVertical;
    imageSizeMultiplier = _blockSizeHorizontal;
    heightMultiplier = _blockSizeVertical;
    widthMultiplier = _blockSizeHorizontal;

    print(_blockSizeHorizontal);
    print(_blockSizeVertical);
  }
}


class ExpandedSection extends StatefulWidget {
  final Widget child;
  final bool expand;
  ExpandedSection({this.expand = false, this.child});

  @override
  _ExpandedSectionState createState() => _ExpandedSectionState();
}

class _ExpandedSectionState extends State<ExpandedSection>
    with SingleTickerProviderStateMixin {
  AnimationController expandController;
  Animation<double> animation;

  @override
  void initState() {
    super.initState();
    prepareAnimations();
  }

  ///Setting up the animation
  void prepareAnimations() {
    expandController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    Animation curve = CurvedAnimation(
      parent: expandController,
      curve: Curves.fastOutSlowIn,
    );
    animation = Tween(begin: 0.0, end: 1.0).animate(curve)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void didUpdateWidget(ExpandedSection oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.expand) {
      expandController.forward();
    } else {
      expandController.reverse();
    }
  }

  @override
  void dispose() {
    expandController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
        axisAlignment: 1.0, sizeFactor: animation, child: widget.child);
  }
}