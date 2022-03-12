import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OfferCard extends StatelessWidget {
  const OfferCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.all(size.height * 0.025),
      child: Stack(
        children: [
          Container(
            height: size.height * 0.16,
            width: size.width * 0.9,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 139, 126, 4),
                borderRadius: BorderRadius.circular(size.width * 0.06)),
          ),
          Positioned(
              top: size.height * 0.01,
              left: size.width * 0.06,
              child: Text(
                "HOT SALE",
                style: TextStyle(
                    color: Colors.white, fontSize: size.height * 0.03),
              )),
          Positioned(
              top: size.height * 0.046,
              left: size.width * 0.06,
              child: Text(
                "50%",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: size.height * 0.03,
                    fontFamily: GoogleFonts.anton().fontFamily),
              )),
          Positioned(
              top: size.height * 0.046,
              left: size.width * 0.22,
              child: Text(
                "OFF",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: size.height * 0.03,
                ),
              )),
          Positioned(
              top: size.height * 0.1,
              left: size.width * 0.06,
              child: Text(
                "Puma ",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: size.height * 0.03,
                    fontFamily: GoogleFonts.sansitaSwashed().fontFamily),
              )),
          Positioned(
              right: 0,
              child: Container(
                height: size.height * 0.16,
                width: size.width * 0.48,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(size.width * 0.06),
                        bottomRight: Radius.circular(size.width * 0.06))),
                child: Image.asset(
                  "assets/images/RunningCartoon.png",
                  fit: BoxFit.contain,
                ),
              )),
        ],
      ),
    );
  }
}
