import 'package:app/core/constants/app_colors.dart';
import 'package:app/presentation/provider/login_provider.dart';
import 'package:app/presentation/provider/splash_provider.dart';
import 'package:app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();  
  final prefs = await SharedPreferences.getInstance();
  await prefs.clear(); // to temporarily clear share prefs every time app loads instead of logout
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SplashProvider()),
        ChangeNotifierProvider(create: (_) => LoginProvider()),

      ],
      child: MyApp(),
    ),
  );
}

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      title: "Ayurvedic Care",
      theme: ThemeData(
        colorScheme: AppColors.colorScheme,
        fontFamily: "Poppins",
      ),
      initialRoute: AppRoutes.splash,
      onGenerateRoute: AppRoutes.generateRoute,
    );
  }
}
