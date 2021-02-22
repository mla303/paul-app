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
    img: "images/122.png",
    type: "Pink Rose",
    price: "\$220",
    iconss: Icon(Icons.favorite_border,color: Colors.red,size: 14,)
  ),

  itemDetail(
    name:"Rings",
    img: "images/122.png",
    type: "Pure Gold",
    price: "\$420",
    iconss: Icon(Icons.favorite,color: Colors.red,size: 14,)
  ),
  itemDetail(
    name:"Toys",
    img: "images/122.png",
    type: "Cloths Toys",
    price: "\$120",
    iconss: Icon(Icons.favorite,color: Colors.red,size: 14,)
  ),
];


// ***************************************************************





class OrderDetail{
  String itemname;
  String price;

  OrderDetail({
    this.itemname,
    this.price,
  });
}


List OderList = [

  OrderDetail(
    itemname: "Bracelet x 1",
    price: "\$85"
  ),

  OrderDetail(
    itemname: "Watch",
    price: "\$5"
  ),
  OrderDetail(
    itemname: "Rings",
    price: "\$23"
  ),


];
// ***************************************************************





class reviewDetail{
  String comment;
  String rating;

  reviewDetail({
    this.comment,
    this.rating,
  });
}


List reviewsList = [

  reviewDetail(
      comment: "Really good",
      rating: "4"
  ),

  reviewDetail(
      comment: "feeling happy with 99 others at sector J street 22 house 29 DHA phase 2",
      rating: "3"
  ),
  reviewDetail(
      comment: "really bad",
      rating: "2"
  ),


];




// ***********************************************


List recentViewList = [

  itemDetail(
    name:"Jewelry",
    img: "images/163.png",
    type: "Pink Rose",
    price: "\$220",
    iconss: Icon(Icons.favorite_border,color: Colors.red,size: 14,)
  ),

  itemDetail(
    name:"Rings",
      img: "images/163.png",
    type: "Pure Gold",
    price: "\$420",
    iconss: Icon(Icons.favorite,color: Colors.red,size: 14,)
  ),
  itemDetail(
    name:"Toys",
      img: "images/163.png",
    type: "Cloths Toys",
    price: "\$120",
    iconss: Icon(Icons.favorite,color: Colors.red,size: 14,)
  ),
];


// ***********************************************************




class CatorgeryDetail{
  String name;
  String img;
  String Titems;


  CatorgeryDetail({
    this.name,
    this.img,
    this.Titems
  });
}


List CatogeryList = [

  CatorgeryDetail(
      name:"Jewelry",
      img: "images/jewellary.jpg",
      Titems: "493 ",
  ),

  CatorgeryDetail(
      name:"Toys",
      img: "images/toys.jpg",
      Titems: "300 ",
  ),

  CatorgeryDetail(
      name:"Rings",
      img: "images/rings.jpg",
      Titems: "200 ",
  ),
  CatorgeryDetail(
      name:"Jewelry",
      img: "images/jewellary.jpg",
      Titems: "493 ",
  ),

  CatorgeryDetail(
      name:"Toys",
      img: "images/toys.jpg",
      Titems: "300 ",
  ),

  CatorgeryDetail(
      name:"Rings",
      img: "images/rings.jpg",
      Titems: "200 ",
  ),
  CatorgeryDetail(
    name:"Jewelry",
    img: "images/jewellary.jpg",
    Titems: "493 ",
  ),

];





// ***********************************************************


List PurchasesList = [

  itemDetail(
      name:"Bracelets",
      img: "images/64.png",
      price: "400 ",
    type: "Signet Cuff Bracelet"
  ),
  itemDetail(
      name:"Toys",
      img: "images/64.png",
      price: "200 ",
    type: "Cloths Toys"
  ),

];


// ***********************************************************


List mySalesList = [

  itemDetail(
      name:"Bracelets",
      img: "images/64.png",
      price: "400 ",
    type: "Signet Cuff Bracelet"
  ),
  itemDetail(
      name:"Toys",
      img: "images/64.png",
      price: "200 ",
    type: "Cloths Toys"
  ),
  itemDetail(
      name:"Rings",
      img: "images/64.png",
      price: "120 ",
    type: "Real Gold"
  ),

];


// ***********************************************************


List jewelryList = [

  itemDetail(
      name:"Bracelets",
      img: "images/jewellary.png",
      price: "400 ",
    type: "Signet Cuff Bracelet"
  ),
  itemDetail(
      name:"Toys",
      img: "images/toys.png",
      price: "200 ",
    type: "Cloths Toys"
  ),
  itemDetail(
      name:"Rings",
      img: "images/rings.png",
      price: "120 ",
    type: "Real Gold"
  ),

];



// *************************************************************************



Color myGreen = Color(0xff4bb17b);
enum MessageType {sent, received}
List<Map<String, dynamic>> friendsList = [
  {
    'imgUrl':
    'https://cdn.pixabay.com/photo/2019/11/06/17/26/gear-4606749_960_720.jpg',
    'username': 'Cybdom Tech',
    'lastMsg': 'Hey, checkout my website: cybdom.tech ;)',
    'seen': true,
    'hasUnSeenMsgs': false,
    'unseenCount': 0,
    'lastMsgTime': '18:44',
    'isOnline': false
  },
  {

    'imgUrl': 'https://cdn.pixabay.com/photo/2019/11/06/17/26/gear-4606749_960_720.jpg',
    'username': 'Flutter Dev',
    'lastMsg': 'Hey, checkout my website: cybdom.tech ;)',
    'seen': false,
    'hasUnSeenMsgs': false,
    'unseenCount': 0,
    'lastMsgTime': '15 mins ago',
    'isOnline': false
  },
  {
    'imgUrl':
    'https://cdn.pixabay.com/photo/2019/11/05/08/52/adler-4603104_960_720.jpg',
    'username': 'Dart Dev',
    'lastMsg': 'Hey, checkout my website: cybdom.tech ;)',
    'seen': false,
    'hasUnSeenMsgs': true,
    'unseenCount': 3,
    'lastMsgTime': '2 hours ago',
    'isOnline': false
  },
  {
    'imgUrl':
    'https://cdn.pixabay.com/photo/2015/02/04/08/03/baby-623417_960_720.jpg',
    'username': 'Designer',
    'lastMsg': 'Hey, checkout my website: cybdom.tech ;)',
    'seen': true,
    'hasUnSeenMsgs': true,
    'unseenCount': 2,
    'lastMsgTime': '12 hours ago',
    'isOnline': false
  },
  {
    'imgUrl':
    'https://cdn.pixabay.com/photo/2019/11/06/17/26/gear-4606749_960_720.jpg',
    'username': 'FrontEnd Dev',
    'lastMsg': 'Hey, checkout my website: cybdom.tech ;)',
    'seen': false,
    'hasUnSeenMsgs': true,
    'unseenCount': 4,
    'lastMsgTime': 'Nov 2',
    'isOnline': false
  },
  {
    'imgUrl':
    'https://cdn.pixabay.com/photo/2015/01/08/18/29/entrepreneur-593358_960_720.jpg',
    'username': 'Full Stack Dev',
    'lastMsg': 'Hey, checkout my website: cybdom.tech ;)',
    'seen': false,
    'hasUnSeenMsgs': false,
    'unseenCount': 0,
    'lastMsgTime': 'Nov 6',
    'isOnline': false
  },
  {
    'imgUrl':
    'https://cdn.pixabay.com/photo/2015/01/08/18/29/entrepreneur-593358_960_720.jpg',
    'username': 'Backend Dev',
    'lastMsg': 'Hey, checkout my website: cybdom.tech ;)',
    'seen': false,
    'hasUnSeenMsgs': true,
    'unseenCount': 3,
    'lastMsgTime': 'Nov 8',
    'isOnline': false
  }
];


List<Map<String, dynamic>> messages = [
  {
    'status' : MessageType.received,
    'contactImgUrl' : 'https://cdn.pixabay.com/photo/2015/01/08/18/29/entrepreneur-593358_960_720.jpg',
    'contactName' : 'Client',
    'message' : 'Hi mate, I\d like to hire you to create a mobile app for my business' ,
    'time' : '08:43 AM'
  },
  {
    'status' : MessageType.sent,
    'message' : 'Hi, I hope you are doing great!' ,
    'time' : '08:45 AM'
  },
  {
    'status' : MessageType.sent,
    'message' : 'Please share with me the details of your project, as well as your time and budgets constraints.' ,
    'time' : '08:45 AM'
  },
  {
    'status' : MessageType.received,
    'contactImgUrl' : 'https://cdn.pixabay.com/photo/2015/01/08/18/29/entrepreneur-593358_960_720.jpg',
    'contactName' : 'Client',
    'message' : 'Sure, let me send you a document that explains everything.' ,
    'time' : '08:47 AM'
  },
  {
    'status' : MessageType.sent,
    'message' : 'Ok.' ,
    'time' : '08:45 AM'
  },
];


// ****************************************************



class followingDetails {
  String title;
  String profile;
  String city;
  String followType;

  followingDetails({
    this.title,
    this.profile,
    this.city,
    this.followType
});

}

List followingList = [

  followingDetails(
    title: "Little Fancy",
    city: "Morocco",
    profile: 'images/45Circle.png',
    followType: "Following"
  ),

  followingDetails(
    title: "Marry Fino",
    city: "New York",
      profile: 'images/45Circle.png',
    followType: "Follow"
  ),


];




// ***********************************************************




class purchaseDetail{
  String name;
  String price;
  String img;
  int num;


  purchaseDetail({
    this.name,
    this.price,
    this.img,
    this.num

  });
}


List PurchasesDetailList = [

  purchaseDetail(
      name:"Bracelets",
      img: "images/64.png",
      price: "400 ",
      num: 2
  ),
  purchaseDetail(
      name:"Toys",
      img: "images/64.png",
      price: "200 ",
      num: 1
  ),

];

List SalesDetailList = [

  purchaseDetail(
      name:"Bracelets",
      img: "images/jewellary.png",
      price: "400 ",
      num: 2
  ),

];

