import 'package:app/core/constants/app_colors.dart';
import 'package:app/presentation/screens/splash/splash_screen.dart';
import 'package:app/routes/app_routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      title: "Ayurvedic Care",
      theme: ThemeData(colorScheme: AppColors.colorScheme),
      initialRoute: AppRoutes.splash,
      onGenerateRoute: AppRoutes.generateRoute,
    );
  }
}
