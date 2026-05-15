import 'package:flutter/material.dart';
import 'package:quizmaster/theme/colourStyle.dart';

import 'package:quizmaster/data/dataQuiz.dart';
import 'package:quizmaster/theme/textStyle.dart';
import 'package:quizmaster/view/quizScreen/widget/QuizCard.dart';
import 'package:quizmaster/view/quizScreen/quizScreen.dart';

class QuizHomeScreen extends StatelessWidget {
  const QuizHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final quizes = getQuizes();

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 160,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.white,
                  AppColors.secondaryBlue,
                  AppColors.primaryBlue,
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("QuizMaster", style: AppTextStyle.titleText),
                  const SizedBox(height: 8),
                  Text(
                    "Test your knowledge",
                    style: AppTextStyle.titleSubText,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(10),
              itemCount: quizes.length,
              itemBuilder: (context, index) {
                final quiz = quizes[index];

                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => QuizScreen(quiz: quiz),
                      ),
                    );
                  },
                  borderRadius: BorderRadius.circular(18),
                  child: buildQuizCard(context, quiz),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
