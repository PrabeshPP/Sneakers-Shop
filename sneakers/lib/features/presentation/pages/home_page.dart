import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const  Text("Sneakers Shop"),
      ),
      body: Column(
        children: [
          Container(
            color: Theme.of(context).cardColor,
            height: MediaQuery.of(context).size.height*0.1,
            width: MediaQuery.of(context).size.width*0.2,
          )
        ],
      ),
    );
  }
}