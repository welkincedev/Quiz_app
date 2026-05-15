import 'package:flutter/material.dart';

import '../../../model/qModel.dart';
import '../../../theme/textStyle.dart';

Widget buildQuizCard(BuildContext context, Quiz quiz) {
  Color difficultyColor;

  switch (quiz.difficulty) {
    case "Easy":
      difficultyColor = Colors.green;
      break;

    case "Medium":
      difficultyColor = Colors.orange;
      break;

    case "Hard":
      difficultyColor = Colors.red;
      break;

    default:
      difficultyColor = Colors.blue;
  }

  return Container(
    margin: const EdgeInsets.only(bottom: 16),
    padding: const EdgeInsets.all(16),

    decoration: BoxDecoration(
      gradient: const LinearGradient(
        colors: [
          Color(0xFF0D47A1),
          Color(0xFF1565C0),
          Color(0xFF42A5F5),
          Color(0xFF53BCFF),],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),

      borderRadius: BorderRadius.circular(18),

      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.15),
          blurRadius: 8,
          offset: const Offset(0, 4),
        ),
      ],
    ),

    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(quiz.title, style: AppTextStyle.QCardHeadText),

                  const SizedBox(height: 8),

                  Text(quiz.descrpition, style: AppTextStyle.QCardText),
                ],
              ),
            ),

            const SizedBox(width: 12),

            Container(
              padding: const EdgeInsets.all(10),

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),

              child: const Icon(Icons.quiz_outlined, color: Colors.black87),
            ),
          ],
        ),

        const SizedBox(height: 18),

        Wrap(
          spacing: 10,
          runSpacing: 10,

          children: [
            buildChip(Icons.help_outline, "${quiz.totalQuestion} Qs"),

            buildChip(Icons.timer_outlined, "${quiz.duration} mins"),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),

              decoration: BoxDecoration(
                color: difficultyColor,
                borderRadius: BorderRadius.circular(12),
              ),

              child: Text(
                quiz.difficulty,

                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget buildChip(IconData icon, String text) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 18),
        const SizedBox(width: 6),
        Text(text),
      ],
    ),
  );
}
