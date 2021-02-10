import 'package:flutter/material.dart';
import 'package:paul_app/widgets/Lists.dart';
import 'package:paul_app/widgets/appBar.dart';
import 'package:paul_app/widgets/colors.dart';

import 'chatScreen.dart';





class messages extends StatefulWidget {

 // final String titles;
 //
 // const messages(this.titles);

  @override
  _messagesState createState() => new _messagesState();
}


class _messagesState extends State<messages> {


  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      // backgroundColor: Color(0xfff7f7f7),

      appBar: customAppBar1("Messages"),

        body: SafeArea(
          child: ListView.builder(
            itemCount: friendsList.length,
            itemBuilder: (ctx, i) {
              return Column(
                children: <Widget>[
                  ListTile(
                    isThreeLine: true,
                    onLongPress: () {},
                    onTap: () =>   Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ChatScreen()),
                    ),
                    leading: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 3,
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(.3),
                              offset: Offset(0, 5),
                              blurRadius: 25)
                        ],
                      ),
                      child: Stack(
                        children: <Widget>[
                          Positioned.fill(
                            child: CircleAvatar(
                              backgroundImage:
                              NetworkImage(friendsList[i]['imgUrl']),
                            ),
                          ),
                          friendsList[i]['isOnline']
                              ? Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              height: 15,
                              width: 15,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                  width: 3,
                                ),
                                shape: BoxShape.circle,
                                color: online,
                              ),
                            ),
                          )
                              : Container(),
                        ],
                      ),
                    ),
                    title: Text(
                      "${friendsList[i]['username']}",
                      style: Theme.of(context).textTheme.title,
                    ),
                    subtitle: Text(
                      "${friendsList[i]['lastMsg']}",
                      style: !friendsList[i]['seen']
                          ? Theme.of(context)
                          .textTheme
                          .subtitle
                          .apply(color: Colors.black87)
                          : Theme.of(context)
                          .textTheme
                          .subtitle
                          .apply(color: Colors.black54),
                    ),
                    trailing: Container(
                      width: 60,
                      child: Wrap(
                        // crossAxisAlignment: CrossAxisAlignment.end,
                        // crossAxisAlignment: WrapCrossAlignment.start,
                        // runAlignment: WrapAlignment.start,
                        direction: Axis.horizontal,
                        // spacing: ,
                        alignment: WrapAlignment.end,
                        children: <Widget>[
                          Wrap(
                            // mainAxisSize: MainAxisSize.min,
                            direction: Axis.horizontal,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: <Widget>[
                              friendsList[i]['seen']
                                  ? Icon(
                                Icons.check,
                                size: 15,
                              )
                                  : Container(height: 15, width: 15),
                              Text("${friendsList[i]['lastMsgTime']}",style: TextStyle(fontSize: 10),),
                            ],
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          friendsList[i]['hasUnSeenMsgs']
                              ? Container(
                            alignment: Alignment.center,
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                              color: myGreen,
                              shape: BoxShape.circle,
                            ),
                            child: Text(
                              "${friendsList[i]['unseenCount']}",
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                              : Container(
                            height: 25,
                            width: 25,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider()
                ],
              );
            },
          ),
        ),

    );
  }

}