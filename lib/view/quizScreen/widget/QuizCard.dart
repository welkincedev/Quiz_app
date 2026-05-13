import 'package:flutter/material.dart';
import 'package:quizmaster/theme/textStyle.dart';
import '../../../model/qModel.dart';
import '../quizScreen.dart';


Widget buildQuizCard(BuildContext context, Quiz quiz) {
  Color difficultycolour;
  switch (quiz.difficulty) {
    case "Easy":
      difficultycolour = Colors.green;
      break;
    case "Medium":
      difficultycolour = Colors.yellow;
      break;
    case "Hard":
      difficultycolour = Colors.red;
      break;
    default:
      difficultycolour = Colors.blue;
  }
  return Card(
    margin: EdgeInsets.only(bottom: 10),
    elevation: 4,
    child: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue.shade500,Colors.blueAccent,Colors.blue.shade900],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => QuizScreen(quiz: quiz)),
          );
        },
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(quiz.title, style: AppTextStyle.QCardHeadText),
                        SizedBox(height: 6),
                        Text(
                          quiz.descrpition,
                          style: AppTextStyle.QCardText,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: Icon(Icons.quiz,),
                  ),SizedBox(width: 12,),
                  Row(
                    children: [
                      _buildInfoChip(
                        Icons.help_outline,
                        '${quiz.totalQuestion} Questions',
                      ),
                      const SizedBox(width: 12),
                      _buildInfoChip(
                        Icons.timer_outlined,
                        '${quiz.duration} mins',
                      ),
                      const SizedBox(width: 12),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Text(
                          quiz.difficulty,
                          style: AppTextStyle.difficulty),
                      ),
                    ],
                  ),
                ],
          ),
        ]),
      ),
    ),
  )
  );
}


Widget _buildInfoChip(IconData icon, String text) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
    decoration: BoxDecoration(
      color: Colors.grey[100],
      borderRadius: BorderRadius.circular(6),
    ),
    child: Row(
      children: [
        Icon(icon, size: 14, color: Colors.black),
        const SizedBox(width: 4),
        Text(text, style: TextStyle(fontSize: 11, color: Colors.black,fontWeight: FontWeight.bold)),
      ],
    ),
  );
}