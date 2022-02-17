import 'package:flutter/material.dart';
import 'package:nepseapp/view/app_view.dart';
import 'package:nepseapp/view/widgets/utils/theme.dart';

void main() {
  runApp(
    const MyApp(),
  );

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const AppView(),
      themeMode: ThemeMode.light,
      theme: Mytheme.lightTheme(context),
      darkTheme: Mytheme.darkTheme(context),
      
    );
  }
}
