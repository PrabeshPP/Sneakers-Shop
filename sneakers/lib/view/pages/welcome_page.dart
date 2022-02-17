import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Theme.of(context).canvasColor
        ),
    
        child: Column(
          children:[
            Image.asset("assets/welcome_shoes.png",
          height: MediaQuery.of(context).size.height*0.4,
          width: MediaQuery.of(context).size.width*0.7,),
    
          const Text("Your Favourite \n Shoes")
          ]),
        
      ),
    );
  }
}