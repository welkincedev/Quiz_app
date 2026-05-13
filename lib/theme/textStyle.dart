import 'package:flutter/material.dart';
import 'colourStyle.dart';

class AppTextStyle {
  static const TextStyle titleText = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 22,
    color: Colors.white,
  );

  static const TextStyle questionText = TextStyle(
    fontSize: 16,
    color: AppColors.primaryPurple,
  );

  static const TextStyle QCardHeadText = TextStyle(
    fontSize: 16,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle QCardText = TextStyle(
    fontSize: 16,
    color: Colors.white70,
    fontWeight: FontWeight.w300

  );

  static const TextStyle answerText = TextStyle(
    fontSize: 16,
    color: AppColors.rightGreen,
    fontWeight: FontWeight.w600,
  );


  static const TextStyle progressbar = TextStyle(
    fontSize: 26,
    color: Colors.white,
  );
  static const TextStyle titleSubText = TextStyle(
    fontSize: 16,
    color: Colors.white,
  );
  static const TextStyle ContainerQuestionText = TextStyle(
    fontSize: 18,
    color: Colors.black,
    fontWeight: FontWeight.bold,
    height: 1.5,
  );

  static final TextStyle belowQuestionText = TextStyle(
    fontSize: 12,
    color: Colors.grey[600],
    fontWeight: FontWeight.w600,
    letterSpacing: 0.5
  );

  static final TextStyle difficulty = TextStyle(
      fontSize: 12,
      color: Colors.white,
      fontWeight: FontWeight.w600,
  );

}