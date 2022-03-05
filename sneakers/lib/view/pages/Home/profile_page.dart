import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math' as Math;

import 'package:nepseapp/view/widgets/UI/Profile/UI1.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Material(
        child: Stack(
      children: [
        const CurvedContainer(),
        Positioned(
            top: size.height * 0.02,
            left: size.width * 0.06,
            child: Text(
              "Goblin Prince",
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: GoogleFonts.lato().fontFamily,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            )),
        Positioned(
            top: size.height * 0.06,
            left: size.width * 0.06,
            child: Text(
              "demogoblin@gmail.com",
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: GoogleFonts.lato().fontFamily,
                  fontWeight: FontWeight.bold,
                  fontSize: 12),
            )),
            Positioned(
            top: size.height * 0.02,
            right: size.width * 0.06,
            child:Material(
              color: Colors.transparent,
              child: InkWell(
                splashColor: Colors.teal,
                onTap: (){
                  
                },
                child: const Icon(Icons.edit_sharp,
                color: Colors.white,),
              ),
            )
            ),
      ],
    ));
  }
}
