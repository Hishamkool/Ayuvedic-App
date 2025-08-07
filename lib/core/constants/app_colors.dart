import 'package:flutter/material.dart';

class AppColors {
  static const ColorScheme colorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF006837), // Deep green
    onPrimary: Color(0xFFFFFFFF), // White text on green
    secondary: Color(0xFF8CC63F), // Light green
    onSecondary: Color(0xFF000000), // Default text
    surface: Color(0xFFF1F1F1), // Card/container background
    onSurface: Color(0xFF3A3939), // Text on cards
    error: Color(0xFFF24E1E), // Error/delete
    onError: Color(0xFFFFFFFF), // Error text/icons
  );

  static Color appThemeColor = Color.fromRGBO(0, 104, 55, 1);

  /* textfiled colors */
  static Color textfiledBorder = Color.fromRGBO(0, 0, 0, 0.1);
  static Color textfiledFill = Color.fromRGBO(217, 217, 217, 0.25);

  static Color hyperLinks = Color.fromRGBO(0, 40, 252, 1);  
}
