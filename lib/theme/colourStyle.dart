import 'package:flutter/material.dart';

class AppColors {
  static const primaryBlue = Color(0xFF003781);
  static const secondaryBlue = Color(0xFF1976D2);
  static const background = Color(0xFFF8FAFC);
  static const wrongRed = Color(0xFFB3261E);
  static const rightGreen = Color(0xFF6EC335);
  static const cardBackground = Colors.white;
}

final ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  primaryColor: AppColors.primaryBlue,
  scaffoldBackgroundColor: AppColors.background,
  colorScheme: ColorScheme.fromSeed(
    seedColor: AppColors.primaryBlue,
    primary: AppColors.primaryBlue,
    secondary: AppColors.secondaryBlue,
    error: AppColors.wrongRed,
    surface: AppColors.cardBackground,
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.primaryBlue,
    foregroundColor: Colors.white,
    elevation: 0,
    centerTitle: true,
  ),
);
