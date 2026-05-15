import 'package:flutter/material.dart';
import 'package:quizmaster/model/qModel.dart';
import 'package:quizmaster/theme/textStyle.dart';
import 'package:quizmaster/view/quizScreen/questionCard.dart';

import '../ResultsScreen/resultScreen.dart';

class QuizScreen extends StatefulWidget {
  final Quiz quiz;

  const QuizScreen({super.key, required this.quiz});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  late PageController _pageController;
  int _currentIndex = 0;
  late List<int?> selectedAnswers;
  int score = 0;
  bool quizCompleted = false;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    selectedAnswers = List<int?>.filled(widget.quiz.questions.length, null);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void selectAnswers(int answerIndex) {
    setState(() {
      selectedAnswers[_currentIndex] = answerIndex;
    });
  }

  void nextQuestion() {
    if (_currentIndex < widget.quiz.questions.length - 1) {
      _pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    } else {
      completeQuiz();
    }
  }

  void previousQuestion() {
    if (_currentIndex > 0) {
      _pageController.previousPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    }
  }

  void completeQuiz() {
    int calculatedScore = 0;
    for (int i = 0; i < widget.quiz.questions.length; i++) {
      if (selectedAnswers[i] == widget.quiz.questions[i].correctAnswer) {
        calculatedScore++;
      }
    }
    setState(() {
      score = calculatedScore;
      quizCompleted = true;
    });
  }

  @override
  Widget build(BuildContext context) {

    if(quizCompleted){
      return ResultsScreen(
        quiz : widget.quiz,
        score : score,
        totalQuestions : widget.quiz.questions.length,
      );
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue[800],
        foregroundColor: Colors.white,
        title: Text(widget.quiz.title),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.blue[800],
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Question ${_currentIndex + 1} of ${widget.quiz.questions
                          .length}",
                      style: AppTextStyle.progressbar,
                    ),
                    Text(
                      "${((_currentIndex + 1) / widget.quiz.questions.length *
                          100).toStringAsFixed(0)} \% ",
                      style: AppTextStyle.progressbar,
                    ),
                  ],
                ),
                SizedBox(height: 8),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: LinearProgressIndicator(
                    value: (_currentIndex + 1) / widget.quiz.questions.length,
                    minHeight: 5,
                    backgroundColor: Colors.white24,
                    valueColor: AlwaysStoppedAnimation(Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (index) {
                setState(
                        () => _currentIndex = index);
              },
              physics: NeverScrollableScrollPhysics(),
              itemCount: widget.quiz.questions.length,
              itemBuilder: (context, index) {
                final question = widget.quiz.questions[index];
                return QuestionCard(question: question,
                    selectedAnswer: selectedAnswers[index],
                    onSelectedAnswer: selectAnswers);
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: Colors.grey[50],
                border: Border(top: BorderSide(color: Colors.grey[200]!))
            ),
            child: Row(
              children: [
                Expanded(
                    child: ElevatedButton(
                      onPressed:_currentIndex>0 ? previousQuestion : null,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue[800],
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)
                        )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Previous",),
                      ),
                    )
                ),
                SizedBox(width: 12),
                Expanded(
                    child: ElevatedButton(
                      onPressed:selectedAnswers[_currentIndex] !=null ? nextQuestion : null,
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue[800],
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)
                          )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(_currentIndex == widget.quiz.questions.length -1 ?"Submit" : "Next",),
                      ),
                    )
                ),
              ],
            ),
          )

        ],
      ),
    );
  }
}
