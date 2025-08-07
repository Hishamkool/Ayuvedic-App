import 'package:app/main.dart';
import 'package:app/presentation/provider/splash_provider.dart';
import 'package:app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    final splashProvider = Provider.of<SplashProvider>(context, listen: false);
    splashProvider.checkToken().then((_) {
      if (splashProvider.isLoggedIn) {
        navigatorKey.currentState?.pushNamed(AppRoutes.home);
      } else {
        navigatorKey.currentState?.pushNamed(AppRoutes.login);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/png/splash_background.png"),
            fit: BoxFit.cover,
          ),
        ),

        child: Image(image: AssetImage("assets/images/png/medium_logo.png")),
      ),
    );
  }
}
