import 'package:flutter/material.dart';
import 'package:quizmaster/theme/colourStyle.dart';
import 'package:quizmaster/theme/textStyle.dart';
import '../../model/qModel.dart';

class QuestionCard extends StatelessWidget {
  final Question question;
  late final int? selectedAnswer;
  final Function(int) onSelectedAnswer;

  QuestionCard({
    required this.question,
    required this.selectedAnswer,
    required this.onSelectedAnswer,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppColors.primaryBlue.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                "${question.question} ?",
                style: AppTextStyle.ContainerQuestionText,
              ),
            ),
          ),
          SizedBox(height: 20),
          Text("Select Answer", style: AppTextStyle.belowQuestionText),
          SizedBox(height: 20),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: question.options.length,
            itemBuilder: (contex, index) {
              return buildOptionButton(context, index, question.options[index]);
            },
          ),
        ],
      ),
    );
  }

  Widget buildOptionButton(BuildContext context, int index, String options) {
    final isSelected = selectedAnswer == index;
    return GestureDetector(
      onTap: () => onSelectedAnswer(index),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        margin: EdgeInsets.only(bottom: 12),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primaryBlue : Colors.white,
          border: Border.all(
            color: isSelected ? AppColors.primaryBlue : Colors.grey.shade300,
          ),
          borderRadius: BorderRadius.circular(12),
          boxShadow: isSelected
              ? [
                  BoxShadow(
                    color: AppColors.primaryBlue.withOpacity(0.3),
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                ]
              : [],
        ),
        child: Row(
          children: [
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                color: isSelected ? Colors.white : Colors.transparent,
                border: Border.all(
                  color: isSelected ? Colors.white : Colors.grey,
                ),
                borderRadius: BorderRadius.circular(6),
              ),
              child: isSelected
                  ? Icon(
                      Icons.check,
                      fontWeight: FontWeight.bold,
                      size: 16,
                      color: AppColors.primaryBlue,
                    )
                  : null,
            ),
            SizedBox(width: 16),
            Expanded(
              child: Text(
                options,
                style: AppTextStyle.optionText.copyWith(
                  color: isSelected ? Colors.white : Colors.black87,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
