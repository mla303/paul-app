import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:paul_app/widgets/appBar.dart';
import 'package:paul_app/widgets/mycircleavatar.dart';
import 'package:paul_app/widgets/styles.dart';





class notification extends StatefulWidget {
  @override
  notificationState createState() => notificationState();
}

class notificationState extends State<notification> {

  List listdata = [
    listItems(
      message: "Congrats! You have a new order from mrs smith",
      imageUrl: 'https://cdn.pixabay.com/photo/2019/11/03/20/11/portrait-4599553_960_720.jpg',
    ),

    listItems(
      message: "You have a new message.",
      imageUrl: 'https://cdn.pixabay.com/photo/2015/01/08/18/29/entrepreneur-593358_960_720.jpg',
    ),


    listItems(
      message: "Talha khan",
      imageUrl: 'https://cdn.pixabay.com/photo/2019/11/03/20/11/portrait-4599553_960_720.jpg',
    ),



  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
       appBar: customAppBar1("Notification"),

        body: Scrollbar(
          thickness: 2,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            child: ListView.separated(

              itemCount: listdata.length,
              itemBuilder: (context, index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: width/1.4,
                      child: Text(
                          listdata[index].message,
                          style: CustomTextStyle.normaltext1(context),

                      ),
                    ),

                    NotificationCircleAvatar(
                      imgUrl: listdata[index].imageUrl,
                    ),

                  ],
                );
              },
                separatorBuilder: (BuildContext context, int index) {
                  return Divider(
                    height: 20,
                    thickness: 1,
                    // width: 6,
                  );
                }
            ),
          ),
        ),
      ),
    );
  }
}

class listItems {
  String message;
  String imageUrl;


  listItems({
    this.message,
    this.imageUrl,

  });
}
