import 'package:flutter/material.dart';
import 'package:paul_app/widgets/Lists.dart';
import 'package:paul_app/widgets/appBar.dart';
import 'package:paul_app/widgets/colors.dart';
import 'package:paul_app/widgets/mycircleavatar.dart';
import 'package:paul_app/widgets/reciveMessages.dart';
import 'package:paul_app/widgets/sentMessages.dart';



class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  bool _showBottom = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        backgroundColor: basicColorShopper,
        iconTheme: IconThemeData(color: Colors.white),

        titleSpacing: 0,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            MyCircleAvatar(
              imgUrl: friendsList[0]['imgUrl'],
            ),
            SizedBox(width: 15),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Ali Talib",
                  style: TextStyle(color: Colors.white,fontSize: height/44),
                  overflow: TextOverflow.clip,
                ),
              ],
            )
          ],
        ),

      ),

      body: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Column(
              children: <Widget>[
                SizedBox(height: 10,),
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.all(15),
                    itemCount: messages.length,
                    itemBuilder: (ctx, i) {
                      if (messages[i]['status'] == MessageType.received) {
                        return ReceivedMessagesWidget(i: i);
                      } else {
                        return SentMessageWidget(i: i);
                      }
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(15.0),
                  height: 61,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(35.0),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0, 3),
                                  blurRadius: 5,
                                  color: Colors.grey)
                            ],
                          ),
                          child: Row(
                            children: <Widget>[
                              IconButton(
                                  icon: Icon(Icons.face,color: basicColorShopper,), onPressed: () {}),
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Type Something...",
                                      border: InputBorder.none),
                                ),
                              ),
                              IconButton(
                                icon: Icon(Icons.attach_file),
                                onPressed: () {
                                  _showBottom = true;
                                  // setState(() {
                                  //
                                  // });
                                },
                              ),
                              IconButton(
                                icon: Icon(Icons.send),
                                onPressed: () {},
                              ),

                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 15),
                      // Container(
                      //   padding: const EdgeInsets.all(15.0),
                      //   decoration: BoxDecoration(
                      //       color: online, shape: BoxShape.circle),
                      //   child: InkWell(
                      //     child: Icon(
                      //       Icons.keyboard_voice,
                      //       color: Colors.white,
                      //     ),
                      //     onLongPress: () {
                      //       setState(() {
                      //         _showBottom = true;
                      //       });
                      //     },
                      //   ),
                      // )
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned.fill(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _showBottom = false;
                });
              },
            ),
          ),
          _showBottom
              ? Positioned(
            bottom: 90,
            left: 25,
            right: 25,
            child: Container(
              padding: EdgeInsets.all(25.0),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 5),
                      blurRadius: 15.0,
                      color: Colors.grey)
                ],
              ),
              child: GridView.count(
                mainAxisSpacing: 21.0,
                crossAxisSpacing: 21.0,
                shrinkWrap: true,
                crossAxisCount: 3,
                children: List.generate(
                  icons.length,
                      (i) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.grey[200],
                        border: Border.all(color: online, width: 2),
                      ),
                      child: IconButton(
                        icon: Icon(
                          icons[i],
                          color: online,
                        ),
                        onPressed: () {},
                      ),
                    );
                  },
                ),
              ),
            ),
          )
              : Container(),
        ],
      ),
    );
  }
}

List< IconData> icons = [
  Icons.image,
  Icons.camera,
  Icons.file_upload,
  Icons.folder,
  Icons.gif
];
