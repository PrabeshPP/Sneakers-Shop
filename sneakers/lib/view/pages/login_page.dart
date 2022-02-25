// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({ Key? key }) : super(key: key);

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