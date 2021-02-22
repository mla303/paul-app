import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:paul_app/widgets/CustomButton.dart';
import 'package:paul_app/widgets/colors.dart';
import 'package:paul_app/widgets/mywalkthrough.dart';
import 'package:paul_app/widgets/styles.dart';




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
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: currentPage == 0 || currentPage == 2
          ? Color(0xffFFC25D)
          : basicColorShopper,
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                flex: 0,
                child: InkWell(
                  onTap: () => lastPage
                  ? null
                  : Navigator.pushNamed(context, "/login"),
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(lastPage
                          ? ""
                          : "Skip",
                        style: CustomTextStyle.title(context),
                        textAlign: TextAlign.right,)),
                ),
              ),
              SizedBox(height: 50,),
              Expanded(
                flex: 3,
                child: PageView(
                  children: <Widget>[
                    myWalkthrough(

                      title: "Something here Something here",
                      content: "Something here, something here, something here",
                      // image: "images/walkthrough1.png",
                    ),
                    myWalkthrough(
                      title: "Something here Something here",
                      content: "Something here, something here, something here",
                      // image: "images/walkthrough2.png",
                    ),
                    myWalkthrough(
                      title: "Something here Something here",
                      content: "Something here, something here, something here",
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

                    activeColor: Colors.white, color: Colors.white,
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
              SizedBox(height: 40,),
              NextButton(
                text: Text(lastPage ? "Lovely.. On we go…" : "NEXT",style: TextStyle(fontSize: 14),),
                  colorss: Colors.black,
                focusColor: basicColorShopper,
                disbaleColor: Colors.white,
                onPressed: () => lastPage
                    ? Navigator.pushNamed(context, "/login")
                    : controller.nextPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeIn),
              ),
              SizedBox(height: 60,),
            ],
          ),
        ),
      ),
    );
  }
}