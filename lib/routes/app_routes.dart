import 'package:app/presentation/screens/login/login_page.dart';
import 'package:app/presentation/screens/patient%20list/home_patient_list_page.dart';
import 'package:app/presentation/screens/register/register_page.dart';
import 'package:app/presentation/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String splash = '/';
  static const String login = '/login_page';
  static const String home = '/home_page';
  static const String register = '/register_page';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case login:
        return MaterialPageRoute(builder: (_) => LoginPage());
      case home:
        return MaterialPageRoute(builder: (_) => HomePatientListPage());
      case register:
        return MaterialPageRoute(builder: (_) => RegisterPage());

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
