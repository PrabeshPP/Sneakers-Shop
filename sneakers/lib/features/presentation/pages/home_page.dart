import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nepseapp/features/presentation/pages/cart_page.dart';
import 'package:nepseapp/features/presentation/pages/login_page.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   int selectedIndex = 0;
  List<Widget> pages = const [Profile(), Profile(), CartPage(), CartPage()];
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


