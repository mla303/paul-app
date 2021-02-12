import 'package:flutter/material.dart';
import 'package:paul_app/widgets/colors.dart';

class searchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8,vertical: 8),
      height: 61,
      width: MediaQuery.of(context).size.width/1.3,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: grayColor,
                borderRadius: BorderRadius.circular(8.0),
                // boxShadow: [
                //   BoxShadow(
                //       offset: Offset(0, 3),
                //       blurRadius: 3,
                //       color: Colors.grey)
                // ],
              ),
              child: Row(
                children: <Widget>[
                  IconButton(
                      icon: Icon(Icons.search,color: Colors.grey,), onPressed: () {}),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Search...",
                          border: InputBorder.none),
                    ),
                  ),

                ],
              ),
            ),
          ),


        ],
      ),
    );
  }
}


