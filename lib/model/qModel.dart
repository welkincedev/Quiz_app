class Question {
  final int id;
  final String question;
  final List<String> options;
  final int correctAnswer;
  final String category;
  final String difficulty;

  Question({
    required this.id,
    required this.question,
    required this.options,
    required this.correctAnswer,
    required this.category,
    required this.difficulty,
  });
}

class Quiz {
  final int id;
  final String title;
  final String descrpition;
  final String category;
  final int totalQuestion;
  final int duration;
  final String difficulty;
  final List<Question> questions;

  Quiz({
    required this.id,
    required this.title,
    required this.descrpition,
    required this.category,
    required this.totalQuestion,
    required this.duration,
    required this.difficulty,
    required this.questions,
  });
}
