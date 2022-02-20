import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nepseapp/view/app_view.dart';
import 'package:nepseapp/view/pages/welcome_page.dart';

class AppRouter {
  Route? onGenerateRoutes(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const WelcomePage());

      case '/appView':
        return MaterialPageRoute(builder: (_) => const AppView());

      default:
        return null;
    }
  }
}
