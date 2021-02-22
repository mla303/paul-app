import 'package:flutter/material.dart';

import 'colors.dart';

class myWalkthrough extends StatefulWidget {
  String title;
  String content;
  String image;


  myWalkthrough(
      {this.title,
        this.content,
        this.image,});

  @override
  WalkthroughState createState() {
    return new WalkthroughState();
  }
}

class WalkthroughState extends State<myWalkthrough>
    with SingleTickerProviderStateMixin {
  Animation animation;
  AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = new AnimationController(
        vsync: this, duration: new Duration(milliseconds: 800));
    animation = new Tween(begin: -250.0, end: 0.0).animate(new CurvedAnimation(
        parent: animationController, curve: Curves.easeInOut));

    animation.addListener(() => setState(() {}));

    animationController.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.transparent,
      padding: const EdgeInsets.all(20.0),
      child: new Material(
        color: Colors.transparent,
        animationDuration: new Duration(milliseconds: 800),
        elevation: 0.0,
        borderRadius: new BorderRadius.all(Radius.circular(5.0)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

            // Transform(
            //   transform:
            //   new Matrix4.translationValues(0, 2.0, 6.0),
            //   child: new Image(
            //     image: AssetImage(widget.image),
            //     height: MediaQuery.of(context).size.height/3,
            //   ),
            // ),

            SizedBox(height: 30,),

            new Transform(
              transform:
              new Matrix4.translationValues(animation.value, 0.0, 0.0),
              child: new Text(
                widget.title,
                style: new TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),

            SizedBox(height: 20,),
            new Transform(
              transform:
              new Matrix4.translationValues(animation.value, 0.0, 0.0),
              child: new Text(widget.content,
                  softWrap: true,
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 15.0,
                      color: Colors.white)),
            ),

          ],
        ),
      ),
    );
  }
}