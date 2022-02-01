import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Mytheme {
  static lightTheme(BuildContext context) => ThemeData(
    appBarTheme:const  AppBarTheme(
      elevation: 0.0,
      backgroundColor: Colors.white,
      titleTextStyle: TextStyle(
        color: Colors.black
      ),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark
      )
    )
  );
}
