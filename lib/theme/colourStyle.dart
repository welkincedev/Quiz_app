import 'package:flutter/material.dart';

class AppColors {
  static const primaryPurple = Color(0xFF3B297E);
  static const secondaryPurple = Color(0xFF5A1C97);
  static const background = Color(0xFFF2F2F2);
  static const wrongRed = Color(0xFFB3261E);
  static const rightGreen = Color(0xFF6EC335);

}

final ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  fontFamily: "Borscha",
  colorScheme: const ColorScheme.light(
    primary: AppColors.primaryPurple,
    onPrimary: Colors.white,
    secondary: AppColors.secondaryPurple,
    onSecondary: Colors.white,
    surface: Colors.white,
    onSurface: Colors.black,
    error: AppColors.wrongRed,
  ),

  scaffoldBackgroundColor: AppColors.background,
);
