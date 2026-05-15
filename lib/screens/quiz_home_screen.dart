import 'package:flutter/material.dart';

import 'package:quizmaster/data/dataQuiz.dart';
import 'package:quizmaster/theme/textStyle.dart';
import 'package:quizmaster/view/quizScreen/widget/QuizCard.dart';

class QuizHomeScreen extends StatelessWidget {
  const QuizHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final quizes = getQuizes();

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            pinned: true,

            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.white, Colors.blue, Color(0xFF003781)],

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
            ),
          ),

          SliverPadding(
            padding: const EdgeInsets.all(10),

            sliver: SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                final quiz = quizes[index];

                return buildQuizCard(context, quiz);
              }, childCount: quizes.length),
            ),
          ),
        ],
      ),
    );
  }
}
