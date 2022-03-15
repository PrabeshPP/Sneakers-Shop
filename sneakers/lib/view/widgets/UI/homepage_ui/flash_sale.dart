import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FlashSale extends StatelessWidget {
  const FlashSale({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(
          top: size.height * 0.04,
          left: size.width * 0.032,
          right: size.width * 0.032),
      child: Row(
        children: [
          Text(
            "Flash Sale",
            style: TextStyle(
                color: Colors.black,
                fontFamily: GoogleFonts.roboto().fontFamily,
                fontSize: size.height * 0.028),
          ),
        ],
      ),
    );
  }
}

class TimerSale extends StatelessWidget {
  const TimerSale({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Row(
      children: [
        Text(
          "Closing in:",
          style: TextStyle(
              color: Colors.black,
              fontFamily: GoogleFonts.roboto().fontFamily,
              fontSize: size.height * 0.028),
        )
      ],
    );
  }
}
