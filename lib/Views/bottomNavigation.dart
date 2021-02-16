
import 'package:flutter/material.dart';
import 'package:paul_app/Views/addProductDone.dart';
import 'package:paul_app/Views/search.dart';
import 'package:paul_app/Views/vendorAccount.dart';
import 'package:paul_app/Views/wishList.dart';
import 'package:paul_app/widgets/colors.dart';
import 'package:paul_app/widgets/fab_bottom_app_bar.dart';

import 'AddProduct.dart';
import 'allCategories.dart';
import 'allMessages.dart';
import 'chatScreen.dart';
import 'homePage.dart';
import 'orders.dart';



class bottomNavigation extends StatefulWidget {
  @override
  _bottomNavigationState createState() => new _bottomNavigationState();
}

class _bottomNavigationState extends State<bottomNavigation> with TickerProviderStateMixin {
  int _selectedTab = 0;


  final _pageOptions = [

    homePage(),
    messages(),
    orderPage(),
    VendorAccount(),



    // user_home(),
    // user_search(),
    // user_Calender(),
    // user_notification(),
    // user_profile(),

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _pageOptions[_selectedTab],
      bottomNavigationBar: FABBottomAppBar(
        centerItemText: 'Sell',

        iconSize: 20,
        color: Colors.grey,
        selectedColor: basicColorShopper,
        notchedShape: CircularNotchedRectangle(),
        onTabSelected: (int index) {
          setState(() {
            _selectedTab = index;
          });
        },
        items: [
          FABBottomAppBarItem(iconData: Icons.home_outlined, text: 'Browse',),
          FABBottomAppBarItem(iconData: Icons.messenger, text: 'Messages'),
          FABBottomAppBarItem(iconData: Icons.shopping_cart, text: 'Orders'),
          FABBottomAppBarItem(iconData: Icons.person_outline, text: 'Account'),

        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _buildFab(), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget _buildFab() {
    return FloatingActionButton(
      backgroundColor: basicColorcustomer,
      onPressed: ()
      {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (Context) => AddProduct()));
      },
      tooltip: 'Increment',
      child: Icon(Icons.camera_alt),
      elevation: 2.0,
    );
  }

}