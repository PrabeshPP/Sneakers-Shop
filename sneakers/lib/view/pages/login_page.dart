// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var Size=MediaQuery.of(context).size;
    return Scaffold(
      body:Container(
      height: Size.height,
      width: Size.width,)

      
    );
  }
}