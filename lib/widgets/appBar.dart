import 'package:flutter/material.dart';
import 'colors.dart';
import 'styles.dart';

class customAppBar extends StatelessWidget implements PreferredSizeWidget {

  final String appbarText;
  customAppBar(
      this.appbarText,
      );

  Size get preferredSize => const Size.fromHeight(50);
  
  @override
  Widget build(BuildContext context) {
    return AppBar(
        centerTitle: true,
        backgroundColor: basicColorShopper,
        title: Text(appbarText,style: CustomTextStyle.title(context),),
        iconTheme: IconThemeData(color: whiteColor),
        automaticallyImplyLeading: true,
      actions:<Widget> [
         IconButton(
            onPressed: (){
              Navigator.pushNamed(context, "/notifi");
            },
            icon: Icon(Icons.notifications,color: Colors.white,))

      ],

    );
  }
}



class customAppBar1 extends StatelessWidget implements PreferredSizeWidget {

  final String appbarText;
  customAppBar1(
      this.appbarText,
      );

  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(appbarText,style: CustomTextStyle.title(context),),
        iconTheme: IconThemeData(color:  Colors.black),
        automaticallyImplyLeading: true,

    );
  }
}
