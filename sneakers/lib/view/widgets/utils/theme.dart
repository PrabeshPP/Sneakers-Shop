import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Mytheme {
  static lightTheme(BuildContext context) => ThemeData(
      canvasColor: Colors.white,
      cardColor: darkCreamColor,
      primaryColor: textLightColor,
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
              statusBarIconBrightness: Brightness.dark)));

  static darkTheme(BuildContext context) => ThemeData(
      canvasColor: Colors.black,
      cardColor: creamColor,
      primaryColor: textDarkColor,
      
      appBarTheme: AppBarTheme(
          elevation: 10.0,
          backgroundColor: Colors.black,
          titleTextStyle: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontFamily: GoogleFonts.lato().fontFamily),
          systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: Colors.black,
              statusBarIconBrightness: Brightness.dark)));

  static Color creamColor = const Color(0xfff5f5f5);
  static Color darkCreamColor = Colors.blueGrey.shade900;
  static Color textLightColor = Colors.black;
  static Color textDarkColor = Colors.white;
}
