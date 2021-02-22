import 'package:flutter/material.dart';

import 'colors.dart';


class ShopperButton extends StatelessWidget {


  ShopperButton({@required this.onPressed, this.text,this.focusColor,this.disbaleColor,this.color});
  final GestureTapCallback onPressed;
  final Text text;
  final Color focusColor, disbaleColor,color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width/1.2,
      height: MediaQuery.of(context).size.height/16,
      child: RaisedButton(
        elevation: 0,
        focusColor: focusColor,
        disabledColor: disbaleColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
            // side: BorderSide(
            //   color: button1,
            // )
        ),
        color: color,
        textColor: Colors.white,
        padding: EdgeInsets.all(8.0),
        onPressed: onPressed,


        child: text,
      ),
    );
  }
}


class CustomerButton extends StatelessWidget {


  CustomerButton({@required this.onPressed, this.text,this.focusColor,this.disbaleColor});
  final GestureTapCallback onPressed;
  final Text text;
  final Color focusColor, disbaleColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width/1.2,
      height: MediaQuery.of(context).size.height/16,
      child: RaisedButton(
        elevation: 0,
        focusColor: focusColor,
        disabledColor: disbaleColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
            // side: BorderSide(
            //   color: button1,
            // )
        ),
        color: basicColorShopper.withOpacity(0.7),
        textColor: Colors.white,
        padding: EdgeInsets.all(8.0),
        onPressed: onPressed,


        child: text,
      ),
    );
  }
}
class NextButton extends StatelessWidget {


  NextButton({@required this.onPressed, this.text,this.focusColor,this.disbaleColor,this.colorss});
  final GestureTapCallback onPressed;
  final Text text;
  final Color focusColor, disbaleColor,colorss;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width/1.2,
      height: MediaQuery.of(context).size.height/16,
      child: RaisedButton(
        elevation: 0,
        focusColor: focusColor,
        disabledColor: disbaleColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
            // side: BorderSide(
            //   color: button1,
            // )
        ),
        color: buttonColor1,
        textColor: colorss,
        padding: EdgeInsets.all(8.0),
        onPressed: onPressed,


        child: text,
      ),
    );
  }
}



class CustomButton1 extends StatelessWidget {


  CustomButton1({@required this.onPressed, this.text,this.focusColor,this.disbaleColor});
  final GestureTapCallback onPressed;
  final Text text;
  final Color focusColor, disbaleColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width/1.4,
      height: MediaQuery.of(context).size.height/16,
      child: RaisedButton(
        focusColor: focusColor,
        disabledColor: disbaleColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
            // side: BorderSide(
            //   color: button1,
            // )
        ),
        color: buttonColor1.withOpacity(0.7),
        textColor: Colors.white,
        padding: EdgeInsets.all(8.0),
        onPressed: onPressed,


        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            text,
            SizedBox(width: 10,),
            Icon(Icons.lock,size: 18,),
          ],
        ),
      ),
    );
  }
}
class checkoutButton extends StatelessWidget {


  checkoutButton({@required this.onPressed, this.text,this.focusColor,this.disbaleColor,this.colors});
  final GestureTapCallback onPressed;
  final Text text;
  final Color focusColor, disbaleColor,colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width/1.2,
      height: MediaQuery.of(context).size.height/16,
      child: RaisedButton(
        elevation: 0,
        focusColor: focusColor,
        disabledColor: disbaleColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
            // side: BorderSide(
            //   color: button1,
            // )
        ),
        color: colors,
        textColor: Colors.white,
        padding: EdgeInsets.all(8.0),
        onPressed: onPressed,


        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            text,

          ],
        ),
      ),
    );
  }
}


class followButton extends StatelessWidget {


  followButton({@required this.onPressed, this.text,this.focusColor,this.disbaleColor,this.colors});
  final GestureTapCallback onPressed;
  final Text text;
  final Color focusColor, disbaleColor,colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width/4,
      height: MediaQuery.of(context).size.height/20,
      child: RaisedButton(
        focusColor: focusColor,
        disabledColor: disbaleColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            // side: BorderSide(
            //   color: button1,
            // )
        ),
        color: colors,
        textColor: Colors.white,
        padding: EdgeInsets.all(8.0),
        onPressed: onPressed,
        child: text,
      ),
    );
  }
}