import 'package:flutter/material.dart';
import 'package:paul_app/widgets/CustomButton.dart';
import 'package:paul_app/widgets/CustomTextField.dart';
import 'package:paul_app/widgets/Lists.dart';
import 'package:paul_app/widgets/appBar.dart';
import 'package:paul_app/widgets/colors.dart';
import 'package:paul_app/widgets/mycircleavatar.dart';
import 'package:paul_app/widgets/search_bar.dart';
import 'package:paul_app/widgets/styles.dart';

class following extends StatefulWidget {
  @override
  _followingState createState() => new _followingState();
}

class _followingState extends State<following> {

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    final orientation = MediaQuery.of(context).orientation;

    return SafeArea(
      child: Scaffold(
        // backgroundColor: Color(0xfff7f7f7),

        appBar: customAppBar1(""),

        body: Container(
          // color: whiteColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 0,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 3),
                        child: Container(
                            width: width / 1.1,
                            child: Text("Fave Shops",
                                style: CustomTextStyle.headig(context))),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Expanded(
                  flex: 2,
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: followingList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 10,bottom: 10),
                        child: ListTile(
                          dense: true,
                          onTap: (){
                            // Navigator.push(context,
                            //     MaterialPageRoute(builder: (context) => friend_profile()));
                            // print("Hell");
                          },

                          leading: MyCircleAvatar(
                            imgUrl: followingList[index].profile,
                          ),
                          title:  Text(
                              followingList[index].title,
                              style: CustomTextStyle.Listtext1(context)
                          ),
                          subtitle: Text(
                              followingList[index].city,
                              style: CustomTextStyle.Listtext2(context)
                          ),
                          trailing: followButton(
                              colors: followingList[index].followType == "Follow"
                                  ? basicColorShopper
                                  : Colors.grey,
                            onPressed: (){
                              setState(() {
                                followingList[index].followType == "Following"
                                    ? followingList[index].followType = "Follow"
                                    : followingList[index].followType = "Following";
                              });
                            },
                            text: Text(followingList[index].followType),

                          ),

                        ),
                      );
                    },
//
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
