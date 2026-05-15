import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
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
        backgroundColor: Colors.blue[800],
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
                isPassed ? "Congrats" : "Better Luck Next Time",
                style: const TextStyle(
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
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
                    color: Colors.blue.shade700,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                      Text("Your Score", style: AppTextStyle.progressbar),
                      Text(
                        "$score / $totalQuestions",
                        style: const TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text("$percentage%", style: AppTextStyle.progressbar),
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