
import 'package:flutter/material.dart';
import 'package:paul_app/Views/basket.dart';
import 'package:paul_app/Views/notification.dart';
import 'package:paul_app/Views/viewItems.dart';
import 'package:paul_app/widgets/CustomButton.dart';
import 'package:paul_app/widgets/CustomTextField.dart';
import 'package:paul_app/widgets/Lists.dart';
import 'package:paul_app/widgets/colors.dart';
import 'package:paul_app/widgets/search_bar.dart';
import 'package:paul_app/widgets/styles.dart';

import 'allCategories.dart';
import 'following.dart';





class homePage extends StatefulWidget {
  @override
  _homePageState createState() => new _homePageState();
}




class _homePageState extends State<homePage> {


  int _counter = 12;

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,

          // appBar: customAppBar1("Sign In"),

        body: Container(
          // color: whiteColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:4,vertical: 10),
            child: Column(

                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 0,
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,

                          children: [
                            SizedBox(width:6,),

                            searchBar(),
                            SizedBox(width:6,),
                            //notification icon with badge
                            GestureDetector(
                              onTap: (){
                                Navigator.of(context).push(
                                    MaterialPageRoute(builder: (Context) => notification()));
                              },
                              child: Stack(
                                children: <Widget>[
                                  new Icon(Icons.notifications,size: 26,),
                                  new Positioned(
                                    right: 0,
                                    child: new Container(
                                      padding: EdgeInsets.all(1),
                                      decoration: new BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      constraints: BoxConstraints(
                                        minWidth: 12,
                                        minHeight: 12,
                                      ),
                                      child: new Text(
                                        '$_counter',
                                        style: new TextStyle(
                                          color: Colors.white,
                                          fontSize: 8,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),


                        Container(
                            width:width/1.1,
                            child: Text("Your Club Home", style: CustomTextStyle.headig(context))),

                      ],
                    ),
                  ),


                  SizedBox(height: 5,),

                  Expanded(
                    flex: 2,
                    child: SingleChildScrollView(
                      physics: ClampingScrollPhysics(),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Wrap(
                              direction: Axis.vertical,
                              spacing: 2,
                              // // alignment: WrapAlignment.center,
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                const SizedBox(height: 6,),

                                //Catergory
                                Container(
                                  width:width/1.1,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left:9.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Categories",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        InkWell(
                                          onTap: (){

                                            Navigator.of(context).push(
                                                MaterialPageRoute(builder: (Context) => allCatorgies()));

                                          },
                                          child: Row(
                                            children: [
                                              Text(
                                                "See all",
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w500),
                                              ),
                                              const SizedBox(width: 3,),
                                              Icon(Icons.arrow_forward_ios,size: 13,color: Colors.grey,)
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: height/70,),
                                Container(
                                  // color: Colors.redAccent,
                                  padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 0.0),
                                  height: MediaQuery.of(context).size.height /16,
                                  width: width/1.1,

                                  child: ListView.separated(
                                      itemCount: categoryList.length,
                                      shrinkWrap: false,
                                      physics: ClampingScrollPhysics(),
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (context, index) {
                                        return GestureDetector(
                                          onTap: ()
                                          {
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 6),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: basicColorShopper,
                                                borderRadius: BorderRadius.circular(10)
                                              ),
                                              // height: height/20,
                                              width: width/3,
                                              child: Center(
                                                child: RichText(
                                                  textAlign: TextAlign.center,
                                                  text: TextSpan(
                                                      style: CustomTextStyle.normaltext3(context),
                                                      children: <TextSpan>[
                                                        TextSpan(text: categoryList[index].name,),

                                                      ]
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                      separatorBuilder: (BuildContext context, int index) {
                                        return SizedBox(
                                          height: 10,
                                          // width: 6,
                                        );
                                      }),
                                ),



                                const SizedBox(height: 12,),


                                //Latest items
                                Padding(
                                  padding: const EdgeInsets.only(left:9.0),
                                  child: Text(
                                    "Latest items",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),

                                Container(
               // color: Colors.redAccent,
                                  padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 0.0),
                                  height: MediaQuery.of(context).size.height * 0.24,
                                  width: width/1.1,

                                  child: ListView.separated(
                                      itemCount: latestItemList.length,
                                      shrinkWrap: true,
                                      // physics: ClampingScrollPhysics(),
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (context, index) {
                                        return GestureDetector(
                                          onTap: ()
                                          {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(builder: (Context) => viewItems()));
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 0),
                                            child: Container(
                                              // height: MediaQuery.of(context).size.height * 0.16,
                                              width: MediaQuery.of(context).size.width / 3,

                                              // decoration: ,
                                              child: Card(
                                                elevation: 0,
                                                shadowColor: Colors.white,
                                                color: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(12.0),
                                                  // side: BorderSide(width: 1,color: Colors.grey[200])
                                                ),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [

                                                    Stack(
                                                      children: <Widget>[

                                                        Container(

                                                          decoration: BoxDecoration(
                                                            color: Colors.grey[100],
                                                            borderRadius: BorderRadius.all(Radius.circular(5)),
                                                          ),
                                                          child: Image.asset(
                                                            latestItemList[index].img,
                                                            height: MediaQuery.of(context).size.height *
                                                                0.15,
                                                            width: MediaQuery.of(context).size.width,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                        Positioned(
                                                          right: 5,
                                                          top: 5,
                                                          child: Container(

                                                            height: 25,
                                                              width: 25,
                                                              decoration: new BoxDecoration(
                                                                shape: BoxShape.circle,// You can use like this way or like the below line
                                                                color: Colors.white,
                                                              ),
                                                              child: latestItemList[index].iconss),

                                                        )

                                                      ],
                                                    ),



                                                    Padding(
                                                      padding:
                                                      const EdgeInsets.only(left: 8.0, top: 6),
                                                      child: Text(
                                                        latestItemList[index].name,
                                                        style: TextStyle(
                                                            color: Colors.grey,
                                                            fontSize: height / 60,
                                                            fontWeight: FontWeight.w500),
                                                      ),
                                                    ),

                                                    Padding(
                                                      padding:
                                                      const EdgeInsets.only(left: 8.0, top: 0),
                                                      child: Text(
                                                        latestItemList[index].type,
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: height / 56,
                                                            fontWeight: FontWeight.w300),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                      const EdgeInsets.only(left: 8.0, top: 0),
                                                      child: Text(
                                                        latestItemList[index].price,
                                                        style: TextStyle(
                                                            color: Colors.grey,
                                                            fontSize: height /60,
                                                            fontWeight: FontWeight.w600),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                      separatorBuilder: (BuildContext context, int index) {
                                        return SizedBox(
                                          width: 5,
                                        );
                                      }
                                  ),
                                ),


                                const SizedBox(height: 12,),



                                //Recently viewed.
                                Padding(
                                  padding: const EdgeInsets.only(left:9.0),
                                  child: Text(
                                    "Recently viewed",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),

                                Container(
                                  // color: Colors.redAccent,
                                  padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 0.0),
                                  height: MediaQuery.of(context).size.height * 0.24,
                                  width: width/1.1,

                                  child: ListView.separated(
                                      itemCount: latestItemList.length,
                                      shrinkWrap: true,
                                      // physics: ClampingScrollPhysics(),
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (context, index) {
                                        return GestureDetector(
                                          onTap: ()
                                          {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(builder: (Context) => viewItems()));
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 0),
                                            child: Container(
                                              // height: MediaQuery.of(context).size.height * 0.16,
                                              width: MediaQuery.of(context).size.width / 3,

                                              // decoration: ,
                                              child: Card(
                                                elevation: 0,
                                                shadowColor: Colors.white,
                                                color: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(12.0),
                                                  // side: BorderSide(width: 1,color: Colors.grey[200])
                                                ),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [

                                                    Stack(
                                                      children: <Widget>[

                                                        Container(

                                                          decoration: BoxDecoration(
                                                            color: Colors.grey[100],
                                                            borderRadius: BorderRadius.all(Radius.circular(5)),
                                                          ),
                                                          child: Image.asset(
                                                            latestItemList[index].img,
                                                            height: MediaQuery.of(context).size.height *
                                                                0.15,
                                                            width: MediaQuery.of(context).size.width,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                        Positioned(
                                                          right: 5,
                                                          top: 5,
                                                          child: Container(

                                                              height: 25,
                                                              width: 25,
                                                              decoration: new BoxDecoration(
                                                                shape: BoxShape.circle,// You can use like this way or like the below line
                                                                color: Colors.white,
                                                              ),
                                                              child: latestItemList[index].iconss),

                                                        )

                                                      ],
                                                    ),



                                                    Padding(
                                                      padding:
                                                      const EdgeInsets.only(left: 8.0, top: 6),
                                                      child: Text(
                                                        latestItemList[index].name,
                                                        style: TextStyle(
                                                            color: Colors.grey,
                                                            fontSize: height / 60,
                                                            fontWeight: FontWeight.w500),
                                                      ),
                                                    ),

                                                    Padding(
                                                      padding:
                                                      const EdgeInsets.only(left: 8.0, top: 0),
                                                      child: Text(
                                                        latestItemList[index].type,
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: height / 56,
                                                            fontWeight: FontWeight.w300),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                      const EdgeInsets.only(left: 8.0, top: 0),
                                                      child: Text(
                                                        latestItemList[index].price,
                                                        style: TextStyle(
                                                            color: Colors.grey,
                                                            fontSize: height /60,
                                                            fontWeight: FontWeight.w600),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                      separatorBuilder: (BuildContext context, int index) {
                                        return SizedBox(
                                          width: 5,
                                        );
                                      }
                                  ),
                                ),



                              ],
                            ),
                          ),

                          SizedBox(height: 16,),


                        ],
                      ),
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