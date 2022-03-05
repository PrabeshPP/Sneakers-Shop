// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nepseapp/view/widgets/UI/Profile/UI1.dart';

class ProfileUI extends StatelessWidget {
  const ProfileUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        SizedBox(
          height: size.height,
          width: size.width,
        ),
        const Positioned(child: CurvedContainer()),
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
            child: Material(
                color: Colors.transparent,
                child: IconButton(
                    iconSize: 30,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.edit_sharp,
                      color: Colors.white,
                    )))),
        Positioned(
            top: size.height * 0.1,
            right: size.width * 0.1,
            child: Container(
              height: size.height * 0.2,
              width: size.width * 0.3,
              decoration:  BoxDecoration(
                shape: BoxShape.circle,
                image: const DecorationImage(image: AssetImage("assets/images/goblin.jpg",
                  ),
                  fit: BoxFit.fill,
                ),
                border: Border.all(
                  color:const Color.fromARGB(255, 138, 122, 121),
                  width: 3
                ),
                ),
                
            )),
      ],
    );
  }
}
