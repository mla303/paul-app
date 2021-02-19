import 'package:flutter/material.dart';

class MyCircleAvatar extends StatelessWidget {
  final String imgUrl;
  const MyCircleAvatar({
    Key key,
    @required this.imgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.white,
          width: 0,
        ),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(.3),
              offset: Offset(0, 2),
              blurRadius: 5)
        ],
      ),
      child: CircleAvatar(
        backgroundImage: NetworkImage("$imgUrl"),
      ),
    );
  }
}


class NotificationCircleAvatar extends StatelessWidget {
  final String imgUrl;
  const NotificationCircleAvatar({
    Key key,
    @required this.imgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        border: Border.all(
          color: Colors.white,
          width: 0,
        ),
        image: DecorationImage(
          image: NetworkImage("$imgUrl"),
          fit: BoxFit.cover

        )
      ),
    );
  }
}

class MessagesCircleAvatar extends StatelessWidget {
  final String imgUrl;
  const MessagesCircleAvatar({
    Key key,
    @required this.imgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        border: Border.all(
          color: Colors.white,
          width: 0,
        ),
        image: DecorationImage(
          image: NetworkImage("$imgUrl"),
          fit: BoxFit.cover

        )
      ),
    );
  }
}
