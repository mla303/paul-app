import 'package:flutter/material.dart';

import 'colors.dart';


class CustomTextField extends StatelessWidget {


  CustomTextField({@required this.hinttext,this.text,this.obscureText,this.textInputType,this.textInputAction,this.textColor,this.iconButton});
  final String hinttext,text;
  final bool obscureText;
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  final Color textColor;
  final IconButton iconButton;





  @override
  Widget build(BuildContext context) {



    TextEditingController _controller=text!=null?TextEditingController(text: text):null;
    if(_controller!=null) {
      _controller.selection = TextSelection.fromPosition(
          TextPosition(offset: _controller.text.length));
    }
    OutlineInputBorder outlineInputBorder =  const OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.white, width: 0.0),
    );


    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return
      Container(
      width: width/1.2,
      child: TextFormField(
        style: TextStyle(
            color: blackColor,
            fontSize: 14
        ),

        textInputAction: textInputAction!=null?textInputAction:TextInputAction.next,
        keyboardType: textInputType,
        obscureText: obscureText == null ? false : obscureText,
        onFieldSubmitted: (_) => FocusScope.of(context).nextFocus(),
        cursorColor: blackColor,
        decoration: new InputDecoration(
            contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),

            suffixIcon: iconButton,

            border: new OutlineInputBorder(
                borderRadius: const BorderRadius.all(
                  const Radius.circular(8.0),
                ),
                borderSide: BorderSide(color: Color(0xffF3F3F3))
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                const Radius.circular(8.0),
              ),
              borderSide: BorderSide(color: Color(0xffF3F3F3)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                const Radius.circular(8.0),
              ),
              borderSide: BorderSide(color: Color(0xffF3F3F3)),
            ),



            filled: true,
            hintStyle: new TextStyle(color: Colors.grey[800].withOpacity(0.5),fontSize: 14),
            hintText: hinttext,
            fillColor: grayColor
        ),
      ),
    );
  }
}
class largeTextField extends StatelessWidget {


  largeTextField({@required this.hinttext,this.text,this.obscureText,this.textInputType,this.textInputAction,this.textColor,this.iconButton});
  final String hinttext,text;
  final bool obscureText;
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  final Color textColor;
  final IconButton iconButton;





  @override
  Widget build(BuildContext context) {



    TextEditingController _controller=text!=null?TextEditingController(text: text):null;
    if(_controller!=null) {
      _controller.selection = TextSelection.fromPosition(
          TextPosition(offset: _controller.text.length));
    }
    OutlineInputBorder outlineInputBorder =  const OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.white, width: 0.0),
    );


    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return
      Container(
      width: width/1.1,
      // height: height/5,
      child: TextFormField(
        style: TextStyle(
            color: blackColor,
            fontSize: 14,
        ),
maxLines: 5,
        textInputAction: textInputAction!=null?textInputAction:TextInputAction.next,
        keyboardType: textInputType,
        obscureText: obscureText == null ? false : obscureText,
        onFieldSubmitted: (_) => FocusScope.of(context).nextFocus(),
        cursorColor: blackColor,
        decoration: new InputDecoration(
            contentPadding: new EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),

            suffixIcon: iconButton,

            border: new OutlineInputBorder(
                borderRadius: const BorderRadius.all(
                  const Radius.circular(8.0),
                ),
                borderSide: BorderSide(color: Color(0xffF3F3F3))
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                const Radius.circular(8.0),
              ),
              borderSide: BorderSide(color: Color(0xffF3F3F3)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                const Radius.circular(8.0),
              ),
              borderSide: BorderSide(color: Color(0xffF3F3F3)),
            ),



            filled: true,
            hintStyle: new TextStyle(color: Colors.grey[800].withOpacity(0.5),fontSize: 14),
            hintText: hinttext,
            fillColor: grayColor
        ),
      ),
    );
  }
}
class smallTextField extends StatelessWidget {


  smallTextField({@required this.hinttext,this.text,this.obscureText,this.textInputType,this.textInputAction,this.textColor,this.iconButton});
  final String hinttext,text;
  final bool obscureText;
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  final Color textColor;
  final IconButton iconButton;





  @override
  Widget build(BuildContext context) {



    TextEditingController _controller=text!=null?TextEditingController(text: text):null;
    if(_controller!=null) {
      _controller.selection = TextSelection.fromPosition(
          TextPosition(offset: _controller.text.length));
    }
    OutlineInputBorder outlineInputBorder =  const OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.white, width: 0.0),
    );


    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return
      Container(
        width: width/2.6,
        //height: height/5,
        child: TextFormField(
          style: TextStyle(
            color: blackColor,
            fontSize: 14,
          ),
         // maxLines: 5,
          textInputAction: textInputAction!=null?textInputAction:TextInputAction.next,
          keyboardType: textInputType,
          obscureText: obscureText == null ? false : obscureText,
          onFieldSubmitted: (_) => FocusScope.of(context).nextFocus(),
          cursorColor: blackColor,
          decoration: new InputDecoration(
              contentPadding: new EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),

              suffixIcon: iconButton,

              border: new OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(8.0),
                  ),
                  borderSide: BorderSide(color: Color(0xffF3F3F3))
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(
                  const Radius.circular(8.0),
                ),
                borderSide: BorderSide(color: Color(0xffF3F3F3)),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(
                  const Radius.circular(8.0),
                ),
                borderSide: BorderSide(color: Color(0xffF3F3F3)),
              ),



              filled: true,
              hintStyle: new TextStyle(color: Colors.grey[800].withOpacity(0.5),fontSize: 14),
              hintText: hinttext,
              fillColor: grayColor
          ),
        ),
      );
  }
}


class customtextField extends StatelessWidget {


  customtextField({@required this.hinttext,this.text,this.obscureText,this.textInputType,this.textInputAction,this.textColor,this.iconButton});
  final String hinttext,text;
  final bool obscureText;
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  final Color textColor;
  final IconButton iconButton;





  @override
  Widget build(BuildContext context) {



    TextEditingController _controller=text!=null?TextEditingController(text: text):null;
    if(_controller!=null) {
      _controller.selection = TextSelection.fromPosition(
          TextPosition(offset: _controller.text.length));
    }
    OutlineInputBorder outlineInputBorder =  const OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.white, width: 0.0),
    );


    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return
      Container(
      width: width/2.2,
      child: TextFormField(
        style: TextStyle(
            color: basicColorShopper,
            fontSize: 14
        ),

        textInputAction: textInputAction!=null?textInputAction:TextInputAction.next,
        keyboardType: textInputType,
        obscureText: obscureText == null ? false : obscureText,
        onFieldSubmitted: (_) => FocusScope.of(context).nextFocus(),
        cursorColor: basicColorShopper,
        decoration: new InputDecoration(
            contentPadding: new EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),

            suffixIcon: iconButton,

            border: new OutlineInputBorder(
                borderRadius: const BorderRadius.all(
                  const Radius.circular(8.0),
                ),
                borderSide: BorderSide(color: Color(0xffF3F3F3))
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                const Radius.circular(8.0),
              ),
              borderSide: BorderSide(color: Color(0xffF3F3F3)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                const Radius.circular(8.0),
              ),
              borderSide: BorderSide(color: Color(0xffF3F3F3)),
            ),



            filled: true,
            hintStyle: new TextStyle(color: Colors.grey[800].withOpacity(0.5),fontSize: 14),
            hintText: hinttext,
            fillColor: textFieldFilledColor,
        ),
      ),
    );
  }
}