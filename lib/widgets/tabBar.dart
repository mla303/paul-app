
import 'package:flutter/material.dart';
import 'package:paul_app/widgets/colors.dart';


TabBar tabBarlabel() => TabBar(
    tabs: <Widget>[
      Tab(
        text: "Purchases",
      ),
      Tab(
        text: "My Sales",
      ),
    ],

    labelColor: Colors.black,
//    labelPadding: EdgeInsets.symmetric(vertical: 6),
    labelStyle: TextStyle(fontSize: 16),
    indicatorColor: basicColorShopper,
    isScrollable: true,

    unselectedLabelColor: Colors.black,
    unselectedLabelStyle: TextStyle(fontSize: 12),
    onTap: (index)
    {
      var content = "";
      switch(index){
        case 0:
          content = "Purchases";
          break;
        case 1:
          content = "My Sales";
          break;
      }
      print("$content");
    }
);




TabBar searchTab() => TabBar(
    tabs: <Widget>[
      Tab(
        text: "Jewelry",
      ),
      Tab(
        text: "Wedding",
      ),
      Tab(
        text: "Shoes",
      ),
      Tab(
        text: "Clothing",
      ),
      Tab(
        text: "Accessories",
      ),
      Tab(
        text: "Toys",
      ),
    ],

    labelColor: Colors.black,
//    labelPadding: EdgeInsets.symmetric(vertical: 6),
    labelStyle: TextStyle(fontSize: 16),
    indicatorColor: basicColorShopper,
    isScrollable: true,

    unselectedLabelColor: Colors.black,
    unselectedLabelStyle: TextStyle(fontSize: 12),
    onTap: (index)
    {
      var content = "";
      switch(index){
        case 0:
          content = "Purchases";
          break;
        case 1:
          content = "My Sales";
          break;
      }
      print("$content");
    }
);