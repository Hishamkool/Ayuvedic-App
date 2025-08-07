import 'package:app/presentation/screens/login/login_page.dart';
import 'package:app/presentation/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppRoutes {
  static const String splash = '/';
  static const String login = '/login_screen';
  static const String home = '/home_screen';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case login:
        return MaterialPageRoute(builder: (_) => LoginPage());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text(
                "This page or route is not defined for ${settings.name}",
              ),
            ),
          ),
        );
    }
  }
}
