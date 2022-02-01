import 'package:flutter/material.dart';
import 'package:nepseapp/features/presentation/pages/home_page.dart';
import 'package:nepseapp/features/presentation/widgets/utils/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      home:const HomePage(),
     themeMode: ThemeMode.light,
     theme: Mytheme.lightTheme(context),
    );
  }
}