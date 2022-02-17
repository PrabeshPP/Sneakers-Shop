// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:  Column(
        children: [
          Center(
            child:InkWell(
              onTap: (){
                
              },
              child: Ink(
                height:100 ,
                width: 100,
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
      
    );
  }
}

