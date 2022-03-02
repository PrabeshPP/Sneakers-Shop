import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nepseapp/view/widgets/UI/siginUp_field.dart';

class SiginUpUI extends StatelessWidget {
  const SiginUpUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
              EdgeInsets.only(top: size.height * 0.1, left: size.width * 0.18),
          child: Row(
            children: [
              Text(
                "Sneakers",
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontFamily: GoogleFonts.permanentMarker().fontFamily),
              ),
              SizedBox(
                height: size.height * 0.1,
                width: size.width * 0.16,
                child: Image.asset(
                  "assets/images/shoesIcon.png",
                  fit: BoxFit.contain,
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: size.width * 0.15),
          child: const SiginUp(),
        )
      ],
    );
  }
}
