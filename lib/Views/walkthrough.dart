import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:paul_app/widgets/CustomButton.dart';
import 'package:paul_app/widgets/colors.dart';
import 'package:paul_app/widgets/mywalkthrough.dart';




class WalkThrough extends StatefulWidget {
  @override
  WalkThroughState createState() {
    return WalkThroughState();
  }
}

class WalkThroughState extends State<WalkThrough> {
  final PageController controller = new PageController();
  int currentPage = 0;
  bool lastPage = false;

  void _onPageChanged(int page) {
    setState(() {
      currentPage = page;
      if (currentPage == 2) {
        lastPage = true;
      } else {
        lastPage = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(),
          ),
          Expanded(
            flex: 3,
            child: PageView(
              children: <Widget>[
                myWalkthrough(
                  title: "Plan Your Trip",
                  content: "Book one of our unique hotel to \n escape the ordinary",
                  // image: "images/walkthrough1.png",
                ),
                myWalkthrough(
                  title: "Find Best Deal",
                  content: "Find deals for any season from cosy \n country home to city flats",
                  // image: "images/walkthrough2.png",
                ),
                myWalkthrough(
                  title: "User Privacy",
                  content: "Book one of our unique hotel to \n escape the ordinary",
                  // image: "images/walkthrough1.png",
                ),
              ],
              controller: controller,
              onPageChanged: _onPageChanged,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: new DotsIndicator(
              position: currentPage.toDouble(),
              dotsCount: 3,
              decorator: DotsDecorator(

                activeColor: basicColorShopper, color: Colors.grey,
                activeSize: Size(14, 14),
                activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
              ),
//                      numberOfDot: pageLength,
//                      position: currentIndexPage,
//                      dotColor: Colors.black87,
//                      dotActiveColor: Colors.amber
//
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[


                // FlatButton(
                //   child: Text(lastPage ? "" : "SKIP",
                //       style: TextStyle(
                //           color: basicColorShopper,
                //           fontWeight: FontWeight.bold,
                //           fontSize: 16.0)),
                //   onPressed: () =>
                //   lastPage ? null : Navigator.pushNamed(context, "/login"),
                // ),
                CustomerButton(
                  text: Text(lastPage ? "Lovely.. On we go…" : "NEXT",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0)),
                  onPressed: () => lastPage
                      ? Navigator.pushNamed(context, "/login")
                      : controller.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeIn),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}