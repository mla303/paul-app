
import 'package:flutter/material.dart';
import 'package:paul_app/widgets/CustomButton.dart';
import 'package:paul_app/widgets/CustomTextField.dart';
import 'package:paul_app/widgets/Lists.dart';
import 'package:paul_app/widgets/colors.dart';
import 'package:paul_app/widgets/search_bar.dart';
import 'package:paul_app/widgets/styles.dart';

import 'allCategories.dart';





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
        // backgroundColor: Color(0xfff7f7f7),

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

                            //notification icon with badge
                            Stack(
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
                          ],
                        ),


                        Container(
                            width:width/1.2,
                            child: Text("Your Club Home", style: CustomTextStyle.headig(context))),

                      ],
                    ),
                  ),


                  SizedBox(height: 15,),

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
                              spacing: 8,
                              // // alignment: WrapAlignment.center,
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                const SizedBox(height: 6,),

                                //Catergory
                                Container(
                                  width:width/1.1,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Popular Categories",
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
                                Container(
                                  // color: Colors.redAccent,
                                  padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 0.0),
                                  height: MediaQuery.of(context).size.height /14,
                                  width: width,

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
                                              height: height/20,
                                              width: width/3.6,
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
                                Text(
                                  "Latest items",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),

                                Container(
               // color: Colors.redAccent,
                                  padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 0.0),
                                  height: MediaQuery.of(context).size.height * 0.24,
                                  width: width,

                                  child: ListView.separated(
                                      itemCount: latestItemList.length,
                                      shrinkWrap: true,
                                      // physics: ClampingScrollPhysics(),
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (context, index) {
                                        return GestureDetector(
                                          onTap: ()
                                          {
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 4),
                                            child: Container(
                                              // height: MediaQuery.of(context).size.height * 0.16,
                                              width: MediaQuery.of(context).size.width / 2.4,

                                              // decoration: ,
                                              child: Card(
                                                elevation: 2,
                                                shadowColor: Colors.grey,
                                                color: Colors.grey[200],
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(12.0),
                                                  // side: BorderSide(width: 1,color: Colors.grey[200])
                                                ),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [

                                                    Stack(
                                                      children: <Widget>[

                                                        ClipRRect(
                                                          borderRadius: BorderRadius.only(
                                                            topLeft: Radius.circular(12),
                                                            topRight: Radius.circular(12),
                                                          ),
                                                          child: Image.asset(
                                                            latestItemList[index].img,
                                                            height: MediaQuery.of(context).size.height *
                                                                0.14,
                                                            width: MediaQuery.of(context).size.width,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                        Positioned(
                                                          right: 5,
                                                          top: 5,
                                                          child: latestItemList[index].iconss,

                                                        )

                                                      ],
                                                    ),



                                                    Padding(
                                                      padding:
                                                      const EdgeInsets.only(left: 8.0, top: 6),
                                                      child: Text(
                                                        latestItemList[index].name,
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: height / 56,
                                                            fontWeight: FontWeight.w500),
                                                      ),
                                                    ),

                                                    Padding(
                                                      padding:
                                                      const EdgeInsets.only(left: 8.0, top: 0),
                                                      child: Text(
                                                        latestItemList[index].type,
                                                        style: TextStyle(
                                                            color: Colors.grey,
                                                            fontSize: height / 66,
                                                            fontWeight: FontWeight.w400),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                      const EdgeInsets.only(left: 8.0, top: 5),
                                                      child: Text(
                                                        latestItemList[index].price,
                                                        style: TextStyle(
                                                            color: basicColorShopper,
                                                            fontSize: height / 60,
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
                                          width: 3,
                                        );
                                      }
                                  ),
                                ),


                                const SizedBox(height: 12,),



                                //Recently viewed.
                                Text(
                                  "Recently viewed",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),

                                Container(
                                  // color: Colors.redAccent,
                                  padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 0.0),
                                  height: MediaQuery.of(context).size.height * 0.24,
                                  width: width,

                                  child: ListView.separated(
                                      itemCount: recentViewList.length,
                                      shrinkWrap: true,
                                      // physics: ClampingScrollPhysics(),
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (context, index) {
                                        return GestureDetector(
                                          onTap: ()
                                          {
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 4),
                                            child: Container(
                                              // height: MediaQuery.of(context).size.height * 0.16,
                                              width: MediaQuery.of(context).size.width / 2.4,

                                              // decoration: ,
                                              child: Card(
                                                elevation: 2,
                                                shadowColor: Colors.grey,
                                                color: Colors.grey[200],
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(12.0),
                                                  // side: BorderSide(width: 1,color: Colors.grey[200])
                                                ),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [

                                                    Stack(
                                                      children: <Widget>[

                                                        ClipRRect(
                                                          borderRadius: BorderRadius.only(
                                                            topLeft: Radius.circular(12),
                                                            topRight: Radius.circular(12),
                                                          ),
                                                          child: Image.asset(
                                                            recentViewList[index].img,
                                                            height: MediaQuery.of(context).size.height *
                                                                0.14,
                                                            width: MediaQuery.of(context).size.width,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                        Positioned(
                                                          right: 5,
                                                          top: 5,
                                                          child: recentViewList[index].iconss,

                                                        )

                                                      ],
                                                    ),



                                                    Padding(
                                                      padding:
                                                      const EdgeInsets.only(left: 8.0, top: 6),
                                                      child: Text(
                                                        recentViewList[index].name,
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: height / 56,
                                                            fontWeight: FontWeight.w500),
                                                      ),
                                                    ),

                                                    Padding(
                                                      padding:
                                                      const EdgeInsets.only(left: 8.0, top: 0),
                                                      child: Text(
                                                        recentViewList[index].type,
                                                        style: TextStyle(
                                                            color: Colors.grey,
                                                            fontSize: height / 66,
                                                            fontWeight: FontWeight.w400),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                      const EdgeInsets.only(left: 8.0, top: 5),
                                                      child: Text(
                                                        recentViewList[index].price,
                                                        style: TextStyle(
                                                            color: basicColorShopper,
                                                            fontSize: height / 60,
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
                                          width: 3,
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