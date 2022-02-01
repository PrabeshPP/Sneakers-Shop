import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nepseapp/features/presentation/pages/login_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> pages = [
    Profile(),
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          shape: Border(bottom: BorderSide(color: Theme.of(context).cardColor)),
          title: const Text("Sneakers Shop"),
        ),
        body: Column(
          children: [],
        ),
        bottomNavigationBar: const BottomAppbar());
  }
}

class BottomAppbar extends StatefulWidget {
  const BottomAppbar({Key? key}) : super(key: key);

  @override
  State<BottomAppbar> createState() => _BottomAppbarState();
}

class _BottomAppbarState extends State<BottomAppbar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.notifications), label: "Notifications"),
        BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.cart_fill), label: "Cart"),
        BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.profile_circled), label: "Profile"),
      ],
      selectedFontSize: 20,
      selectedItemColor: Colors.deepOrangeAccent,
    );
  }
}
