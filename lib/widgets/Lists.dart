import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


List categoryList = [

  Category(
      name:"Wedding",
  ),

  Category(
      name:"Clothing",
  ),
  Category(
      name:"Something",
  ),
  Category(
      name:"Shoes",
  ),

  Category(
      name:"Home & Living",
  ),

];

class Category{
  String name;
  Category({
    this.name,
  });
}

// ***********************************************


class itemDetail{
  String name;
  String type;
  String price;
  String img;
  Icon iconss;


  itemDetail({
    this.name,
    this.type,
    this.price,
    this.img,
    this.iconss
  });
}


List latestItemList = [

  itemDetail(
    name:"Jewelry",
    img: "images/jewellary.png",
    type: "Pink Rose",
    price: "\$220",
    iconss: Icon(Icons.favorite_border,color: Colors.red,)
  ),

  itemDetail(
    name:"Rings",
    img: "images/rings.png",
    type: "Pure Gold",
    price: "\$420",
    iconss: Icon(Icons.favorite,color: Colors.red,)
  ),
  itemDetail(
    name:"Toys",
    img: "images/toys.png",
    type: "Cloths Toys",
    price: "\$120",
    iconss: Icon(Icons.favorite,color: Colors.red,)
  ),
];