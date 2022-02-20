import 'package:flutter/material.dart';
import 'package:nepseapp/view/app_view.dart';
import 'package:nepseapp/view/pages/welcome_page.dart';
import 'package:nepseapp/view/widgets/utils/routes.dart';
import 'package:nepseapp/view/widgets/utils/theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

bool? seen;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  seen = sharedPreferences.getBool("Seen") ?? false;
  runApp(
    MyApp(
      appRouter: AppRouter(),
    ),
  );
}

class MyApp extends StatelessWidget {
  final AppRouter appRouter;
  const MyApp({Key? key, required this.appRouter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: Mytheme.lightTheme(context),
      darkTheme: Mytheme.darkTheme(context),
      home: seen! ? const AppView() : const WelcomePage(),
    );
  }
}
