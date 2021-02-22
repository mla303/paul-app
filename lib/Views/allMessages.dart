import 'package:flutter/material.dart';
import 'package:paul_app/widgets/Lists.dart';
import 'package:paul_app/widgets/appBar.dart';
import 'package:paul_app/widgets/colors.dart';
import 'package:paul_app/widgets/mycircleavatar.dart';
import 'package:paul_app/widgets/styles.dart';

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


    return Scaffold(
      backgroundColor: Colors.white,

      appBar: emptyAppBar("Messages"),

        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Container(
                        width: width / 1.2,
                        child: Text("All of your messages",
                          style: CustomTextStyle.headig(context),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 5,),


              Expanded(
                flex: 2,
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

                        ),
                        Divider()
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),

    );
  }

}