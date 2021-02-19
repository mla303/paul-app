import 'package:flutter/material.dart';
import 'package:paul_app/widgets/Lists.dart';
import 'package:paul_app/widgets/appBar.dart';
import 'package:paul_app/widgets/colors.dart';
import 'package:paul_app/widgets/mycircleavatar.dart';

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



    return Scaffold(
      backgroundColor: Colors.white,

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
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        image: DecorationImage(
                          image: NetworkImage(friendsList[i]['imgUrl']),
                          fit: BoxFit.cover
                        ),
                        border: Border.all(
                          color: Colors.white,
                          width: 3,
                        ),
                      ),
                      child: Stack(
                        children: <Widget>[

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
                      // height: 80,
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        // runAlignment: WrapAlignment.start,
                        // direction: Axis.horizontal,
                        // // spacing: ,
                        // alignment: WrapAlignment.start,
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
                                  : Container(),
                              Text("${friendsList[i]['lastMsgTime']}",style: TextStyle(fontSize: 8),),
                            ],
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          friendsList[i]['hasUnSeenMsgs']
                              ? Container(
                            alignment: Alignment.center,
                            height: 18,
                            width: 18,
                            decoration: BoxDecoration(
                              color: myGreen,
                              shape: BoxShape.circle,
                            ),
                            child: Text(
                              "${friendsList[i]['unseenCount']}",
                              style: TextStyle(color: Colors.white,fontSize: 12),
                            ),
                          )
                              : Container(
                            // height: 20,
                            // width: 20,
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