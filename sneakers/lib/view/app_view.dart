import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nepseapp/repository/itemservices.dart';
import 'package:nepseapp/view/pages/cart_page.dart';
import 'package:nepseapp/view/pages/home_page.dart';
import 'package:nepseapp/view/pages/login_page.dart';




class AppView extends StatefulWidget {
  
  const AppView({Key? key}) : super(key: key);

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {

  
   int selectedIndex = 0;
  List<Widget> pages =  [HomePage(itemServices:ItemServices()), Profile(), CartPage(), CartPage()];
  void _onTapped(int value) {
    setState(() {
      selectedIndex = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          shape: Border(bottom: BorderSide(color: Theme.of(context).cardColor)),
          title: const Text("Sneakers Shop"),
        ),
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
