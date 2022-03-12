import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nepseapp/repository/itemservices.dart';
import 'package:nepseapp/view/pages/Home/cart_page.dart';
import 'package:nepseapp/view/pages/Home/home_page.dart';
import 'package:nepseapp/view/pages/Home/login_page.dart';
import 'package:nepseapp/view/pages/Home/profile_page.dart';






class AppView extends StatefulWidget {
  
  const AppView({Key? key}) : super(key: key);

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {

  
   int selectedIndex = 3;
  List<Widget> pages =  [HomePage(itemServices:ItemServices()), CartPage(), CartPage(),ProfilePage() ];
  void _onTapped(int value) {
    setState(() {
      selectedIndex = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar:PreferredSize(preferredSize: Size.fromHeight(0.0),child: AppBar(
         elevation: 0.0,
       )),
        body: pages.elementAt(selectedIndex),
        bottomNavigationBar:BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home" ),
        BottomNavigationBarItem(
            icon: Icon(Icons.notifications), label: "Notifications"),
        BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.cart_fill), label: "Cart"),
        BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.profile_circled), label: "Profile"),
      ],
      selectedFontSize: 14,
      selectedItemColor: Colors.teal,
      currentIndex: selectedIndex,
      onTap: _onTapped,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      unselectedFontSize: 12,
    ) );
  }
}
