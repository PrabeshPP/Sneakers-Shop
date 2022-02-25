import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nepseapp/view/widgets/clipper/left_clipper.dart';

class LoginUi extends StatelessWidget {
  const LoginUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size= MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
         SizedBox(
           height: size.height,
           width: size.width,
           
         ),
         Positioned(
           right: 0,
           child:LeftClipper())

        ],
      ),
    );
  }
}
