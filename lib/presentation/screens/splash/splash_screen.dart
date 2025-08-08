import 'package:app/core/constants/app_colors.dart';
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
    splashProvider.checkIfAlreadyLoggedIn().then((bool tokenExistsInStorage) async {
      await Future.delayed(Duration(seconds: 2)); // given some time for splash

      if (!mounted) return;
      if (tokenExistsInStorage) {
        Navigator.pushReplacementNamed(context, AppRoutes.home);
      } else {
        Navigator.pushReplacementNamed(context, AppRoutes.login);
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

        child: Column(
          children: [
            const Spacer(),
            const Image(image: AssetImage("assets/images/png/medium_logo.png")),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 100),
              child: CircularProgressIndicator(
                strokeWidth: 4.9,
                backgroundColor: AppColors.appThemeColor,
                color: AppColors.colorScheme.secondary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
