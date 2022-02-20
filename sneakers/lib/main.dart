import 'package:flutter/material.dart';
import 'package:nepseapp/view/pages/welcome_page.dart';
import 'package:nepseapp/view/widgets/utils/routes.dart';
import 'package:nepseapp/view/widgets/utils/theme.dart';

void main() {
  runApp(
     MyApp(
      appRouter: AppRouter(),
    ),
  );

}

class MyApp extends StatelessWidget {
  final AppRouter appRouter;
  const MyApp({Key? key,required this.appRouter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     
      themeMode: ThemeMode.light,
      theme: Mytheme.lightTheme(context),
      darkTheme: Mytheme.darkTheme(context),
      onGenerateRoute: appRouter.onGenerateRoutes,
      
    );
  }
}
