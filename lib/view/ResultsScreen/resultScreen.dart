import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quizmaster/theme/colourStyle.dart';
import 'package:quizmaster/view/ResultsScreen/resultWidget.dart';

import '../../model/qModel.dart';
import '../../theme/textStyle.dart';

class ResultsScreen extends StatelessWidget {
  final Quiz quiz;
  final int score;
  final int totalQuestions;

  const ResultsScreen({
    super.key,
    required this.quiz,
    required this.score,
    required this.totalQuestions,
  });

  @override
  Widget build(BuildContext context) {
    final percentage = ((score / totalQuestions) * 100).toStringAsFixed(0);
    final isPassed = score >= totalQuestions * 0.6;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryBlue,
        foregroundColor: Colors.white,
        title: const Text("Quiz Results"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),

              Lottie.asset(
                isPassed
                    ? 'assets/Lottie/Trophy.json'
                    : 'assets/Lottie/wrong feedback.json',
                width: 200,
                height: 200,
              ),

              Text(
                isPassed ? "Congratulations!" : "Keep Practicing!",
                style: TextStyle(
                  color: isPassed ? AppColors.rightGreen : AppColors.wrongRed,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),

              const SizedBox(height: 20),

              Text(
                isPassed
                    ? "You have won the quiz"
                    : "You need to score 60% marks",
              ),

              const SizedBox(height: 20),

              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: AppColors.primaryBlue,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                      Text("Your Score", style: AppTextStyle.labelSmall),
                      Text(
                        "$score / $totalQuestions",
                        style: AppTextStyle.scoreDisplay,
                      ),
                      Text("$percentage%", style: AppTextStyle.labelSmall),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Performance Summary",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 16),

                    buildSummary(Icons.quiz, "Quiz Title", quiz.title),
                    buildSummary(Icons.category_outlined, "Category", quiz.category),
                    buildSummary(Icons.trending_up, "Difficulty", quiz.difficulty),
                    buildSummary(Icons.confirmation_number, "Correct Answers", "$score"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}