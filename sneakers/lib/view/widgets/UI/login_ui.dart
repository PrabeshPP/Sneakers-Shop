import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nepseapp/view/widgets/clipper/big_clipper.dart';
import 'package:nepseapp/view/widgets/clipper/small_clipper.dart';

class LoginUi extends StatelessWidget {
  const LoginUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size= MediaQuery.of(context).size;
    return Material(
     
      child: Stack(
        children: [
         SizedBox(
           height: size.height,
           width: size.width,
           
           
         ),
         const Positioned(
           right: 0,
           child:BigClipper()),
         const Positioned(
           right: 0,
           child:LeftClipper()),

            Positioned(
             top: size.height*0.1,
             left: size.width*0.4
             ,child: const Text("Login",
           style: TextStyle(color: Colors.white,
           fontSize: 35,
           fontWeight: FontWeight.bold),
           ))


        ],
      ),
    );
  }
}
