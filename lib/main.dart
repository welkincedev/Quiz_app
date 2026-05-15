import 'package:flutter/material.dart';
import 'package:quizmaster/screens/splash_screen.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: false, fontFamily: "Mont-ExtraLightDEMO"),
      home: const SplashScreen(),
    );
  }
}
