import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Mytheme {
  static lightTheme(BuildContext context) => ThemeData(
      canvasColor: creamColor,
      cardColor: Colors.deepOrangeAccent,
      appBarTheme: AppBarTheme(
          elevation: 10.0,
          backgroundColor: Colors.white,
          titleTextStyle: TextStyle(
              fontSize: 25,
              color: Colors.black,
              fontFamily: GoogleFonts.lato().fontFamily),
          systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarBrightness: Brightness.light,
              statusBarColor: Colors.transparent,
              statusBarIconBrightness: Brightness.dark)
              )
              );

  static darkTheme(BuildContext context) => ThemeData(
    canvasColor: darkCreamColor,
    cardColor: Colors.white,
     appBarTheme: AppBarTheme(
          elevation: 10.0,
          backgroundColor: Colors.white,
          titleTextStyle: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontFamily: GoogleFonts.lato().fontFamily),
          systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarBrightness: Brightness.dark,
              statusBarColor: Colors.transparent,
              statusBarIconBrightness: Brightness.light)
              )


  );

  static Color creamColor = const Color(0xfff5f5f5);
  static Color darkCreamColor = Colors.blueGrey.shade800;
}
