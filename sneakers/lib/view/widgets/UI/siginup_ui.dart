import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nepseapp/view/widgets/UI/siginUp_field.dart';

class SiginUpUI extends StatelessWidget {
  const SiginUpUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Sneakers",
        style: TextStyle(
          fontSize: 30,
          color: Colors.white,
          fontFamily: GoogleFonts.anton().fontFamily
        ),),
        const SiginUp()
      ],
    );
  }
}
