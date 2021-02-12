
import 'package:flutter/material.dart';
import 'package:paul_app/Views/purchaseContainer.dart';
import 'package:paul_app/widgets/colors.dart';
import 'package:paul_app/widgets/tabBar.dart';

import 'itemPage.dart';
import 'itemsContainer.dart';
import 'mySales.dart';


class MyAppss extends StatelessWidget {
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
              title: 'HomeScreen App',
              home: ProfileFirst(),
            );
          },
        );
      },
    );
  }
}

class ProfileFirst extends StatefulWidget {
  ProfileFirst({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ProfileFirstState createState() => _ProfileFirstState();
}

class _ProfileFirstState extends State<ProfileFirst> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F8FA),
      body: Wrap(
        spacing: -30,
        direction: Axis.vertical,
        // overflow: Overflow.visible,
        children: <Widget>[

          Container(
            decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                    image: AssetImage("images/shop.jpg"),
                    colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.dstATop ),
                    fit: BoxFit.fill
                )
            ),
            // color: Colors.blue[600],
            height: 40 * SizeConfig.heightMultiplier,
            width: SizeConfig._screenWidth,
            child: Padding(
              padding:  EdgeInsets.only(left: 10.0, right: 10.0, top: 15 * SizeConfig.heightMultiplier),
              child: Column(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text("Little Fancy", style: TextStyle(
                          color: Colors.white,
                          fontSize: 3 * SizeConfig.textMultiplier,
                          fontWeight: FontWeight.bold
                      ),),
                      SizedBox(height: 1 * SizeConfig.heightMultiplier,),
                      Text("Your story about what you do..", style: TextStyle(
                        color: Colors.white60,
                        fontSize: 1.5 * SizeConfig.textMultiplier,
                      ),)
                    ],
                  ),
                  SizedBox(height: 4 * SizeConfig.heightMultiplier,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text("543", style: TextStyle(
                              color: Colors.white,
                              fontSize: 3 * SizeConfig.textMultiplier,
                              fontWeight: FontWeight.bold
                          ),),
                          Text("Following", style: TextStyle(
                            color: Colors.white70,
                            fontSize: 1.9 * SizeConfig.textMultiplier,
                          ),),
                        ],
                      ),
                      Container(
                        height: 11 * SizeConfig.heightMultiplier,
                        width: 22 * SizeConfig.widthMultiplier,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage("https://cdn.pixabay.com/photo/2015/09/02/13/24/girl-919048_960_720.jpg"))
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white60),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Follow shop", style: TextStyle(
                              color: Colors.white60,
                              fontSize: 1.8 * SizeConfig.textMultiplier
                          ),),
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ),



          Container(
            height: 63 * SizeConfig.heightMultiplier,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30.0),
                  topLeft: Radius.circular(30.0),
                )
            ),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top:8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.star,color: basicColorcustomer,size: 18,),
                        Text("4.9", style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 2.2 * SizeConfig.textMultiplier
                        ),),
                      ],
                    ),
                  ),
                  SizedBox(height: 3 * SizeConfig.heightMultiplier,),

                  Container(
                    // color: Colors.redAccent,
                    // padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 0.0),
                    height: 55 * SizeConfig.heightMultiplier,
                    width: SizeConfig._screenWidth,

                    child: DefaultTabController(
                      length: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            child: venderPprofile(),
                          ),
                          Expanded(
                            child: TabBarView(
                              children: <Widget>[
                                GestureDetector(
                                    onTap: ()
                                    {

                                    },
                                    child: itemConatiner()),

                                GestureDetector( onTap: ()
                                {

                                },
                                    child: mySalesContainer()),

                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

        ],
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