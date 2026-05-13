import 'package:flutter/material.dart';
import 'package:quizmaster/model/qModel.dart';
import 'package:lottie/lottie.dart';
import 'package:quizmaster/theme/textStyle.dart';
import 'package:quizmaster/view/ResultsScreen/resultWidget.dart';

class ResultsScreen extends StatelessWidget {
  late Quiz quiz;
  late int score;
  late int totalQuestions;

  ResultsScreen({
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
        title: Text("Quiz Results"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Lottie.asset(
                isPassed
                    ? 'assets/Lottie/Trophy.json'
                    : 'assets/Lottie/wrong feedback.json',
                width: 200,
                height: 200,
              ),
              Text(
                isPassed ? "Congrats" : "Better Luck Next Time",
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 20),
              Text(
                isPassed
                    ? "You have Won the Quiz"
                    : "You Need to score 60% Marks",
              ),
              SizedBox(height: 20),
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade700,
                    borderRadius: BorderRadius.circular(16),
                  ),

                  child: Column(
                    children: [
                      Text("Your Score", style: AppTextStyle.progressbar),
                      Text(
                        "$score / $totalQuestions",
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("$percentage %", style: AppTextStyle.progressbar),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Performance Summary"),
                    buildSummary(
                      Icon(Icons.quiz),
                      "Quiz Title",
                      "Dart Programming",
                    ),
                    buildSummary(
                      Icons.category_outlined,
                      "Quiz Title",
                      "Dart Programming",
                    ),
                    buildSummary(
                      Icons.trending_up,
                      "Quiz Title",
                      "Dart Programming",
                    ),
                    buildSummary(
                      Icons.confirmation_number,
                      "Correct Answers",
                      "$score",
                    ),
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
