import '../model/qModel.dart';

List<Question> getNationQuestions() {
  return [

    Question(
      id: 1,
      question: 'Which country has the largest population?',
      options: ['India', 'USA', 'China', 'Russia'],
      correctAnswer: 0,
      category: 'Nations',
      difficulty: 'Medium',
    ),

    Question(
      id: 2,
      question: 'What is the capital of France?',
      options: ['Berlin', 'Madrid', 'Paris', 'Rome'],
      correctAnswer: 2,
      category: 'Nations',
      difficulty: 'Easy',
    ),

    Question(
      id: 3,
      question: 'Which country is known as the Land of the Rising Sun?',
      options: ['China', 'Japan', 'Thailand', 'Korea'],
      correctAnswer: 1,
      category: 'Nations',
      difficulty: 'Easy',
    ),

    Question(
      id: 4,
      question: 'Which country has the most pyramids?',
      options: ['Egypt', 'Mexico', 'Sudan', 'Peru'],
      correctAnswer: 2,
      category: 'Nations',
      difficulty: 'Hard',
    ),

    Question(
      id: 5,
      question: 'What is the smallest country in the world?',
      options: ['Monaco', 'Vatican City', 'Maldives', 'Singapore'],
      correctAnswer: 1,
      category: 'Nations',
      difficulty: 'Easy',
    ),
  ];
}