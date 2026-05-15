import 'package:flutter/material.dart';
import 'colourStyle.dart';

class AppTextStyle {
  static const TextStyle titleText = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 24,
    color: Colors.white,
  );

  static const TextStyle titleSubText = TextStyle(
    fontSize: 16,
    color: Colors.white70,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle questionText = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.black87,
    height: 1.4,
  );

  static const TextStyle optionText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle QCardHeadText = TextStyle(
    fontSize: 18,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle QCardText = TextStyle(
    fontSize: 14,
    color: Colors.white70,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle labelSmall = TextStyle(
    fontSize: 14,
    color: Colors.white,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle scoreDisplay = TextStyle(
    fontSize: 48,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static final TextStyle difficulty = TextStyle(
    fontSize: 12,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  // Legacy mappings for compatibility during refactoring
  static TextStyle get progressbar => labelSmall.copyWith(fontSize: 14);
  static TextStyle get ContainerQuestionText => questionText;
  static TextStyle get belowQuestionText => labelSmall.copyWith(color: Colors.grey[600], fontSize: 12);
}