import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FlashSale extends StatelessWidget {
  const FlashSale({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Row(
      children: [
        Text("Flash Sale",
        style: TextStyle(
          color: Color.fromARGB(255, 209, 24, 24),
          fontFamily: GoogleFonts.roboto().fontFamily,
          fontSize: size.height*0.06
        ),),
        
      ],
    );
  }
}
