import 'package:quizmaster/model/qModel.dart';

List<Question> getFlutterQuestions() {
  return [
    Question(
      id: 1,
      question: "Who Developed Flutter",
      options: ["a google", "b microsoft", "c apple"],
      correctAnswer: 1,
      category: "flutter",
      difficulty: "Easy",
    ),

    Question(
      id: 2,
      question: "Flutter Language",
      options: ["a python", "b dart", "c java"],
      correctAnswer: 2,
      category: "flutter",
      difficulty: "Easy",
    ),

    Question(
      id: 3,
      question: "Flutter came on",
      options: ["a 2002", "b 2005", "c 2007"],
      correctAnswer: 3,
      category: "flutter",
      difficulty: "Easy",
    ),
    Question(
      id: 4,
      question: "Widget is",
      options: ["a window", "b screen", "c element"],
      correctAnswer: 3,
      category: "flutter",
      difficulty: "Easy",
    ),
    Question(
      id: 5,
      question: "Define Statefull?",
      options: ["a Changable ", "b immutable", "c Both"],
      correctAnswer: 3,
      category: "flutter",
      difficulty: "Easy",
    ),
    Question(
      id: 6,
      question: "When its used for multiple flow things?",
      options: ["a Row ", "b Coloumn", "c Grid"],
      correctAnswer: 3,
      category: "flutter",
      difficulty: "Easy",
    ),
    Question(
      id: 7,
      question: 'Flutter uses which programming'
          ' language?',
      options: ['Java', 'Kotlin', 'Dart', 'Swift'],
      correctAnswer: 2,
      category: 'Flutter',
      difficulty: 'Easy',
    ),
    Question(
      id: 8,
      question: 'What is the purpose of Scaffold?',
      options: [
        'Provides Material design layout',
        'Creates a new screen',
        'Manages state',
        'All of above',
      ],
      correctAnswer: 0,
      category: 'Flutter',
      difficulty: 'Easy',
    ),
    Question(
      id: 9,
      question: 'Which widget is used for scrolling?',
      options: ['Column', 'ListView', 'Row', 'Container'],
      correctAnswer: 1,
      category: 'Flutter',
      difficulty: 'Easy',
    ),
    Question(
      id: 10,
      question: 'PageView is used for?',
      options: [
        'Horizontal scrolling',
        'Vertical scrolling',
        'Both',
        'Neither',
      ],
      correctAnswer: 2,
      category: 'Flutter',
      difficulty: 'Easy',
    ),
  ];
}
