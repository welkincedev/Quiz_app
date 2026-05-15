import '../model/qModel.dart';

List<Question> getNatureQuestions() {
  return [

    Question(
      id: 11,
      question: 'Which is the largest rainforest in the world?',
      options: [
        'Congo Rainforest',
        'Amazon Rainforest',
        'Daintree Forest',
        'Sundarbans'
      ],
      correctAnswer: 1,
      category: 'Nature',
      difficulty: 'Easy',
    ),

    Question(
      id: 12,
      question: 'What gas do plants absorb from the atmosphere?',
      options: ['Oxygen', 'Nitrogen', 'Carbon Dioxide', 'Hydrogen'],
      correctAnswer: 2,
      category: 'Nature',
      difficulty: 'Easy',
    ),

    Question(
      id: 13,
      question: 'Which is the tallest mountain in the world?',
      options: [
        'K2',
        'Kangchenjunga',
        'Mount Everest',
        'Makalu'
      ],
      correctAnswer: 2,
      category: 'Nature',
      difficulty: 'Easy',
    ),

    Question(
      id: 14,
      question: 'What is the main source of energy for Earth?',
      options: ['Moon', 'Wind', 'Sun', 'Water'],
      correctAnswer: 2,
      category: 'Nature',
      difficulty: 'Easy',
    ),

    Question(
      id: 15,
      question: 'Which ocean is the largest?',
      options: [
        'Atlantic Ocean',
        'Indian Ocean',
        'Pacific Ocean',
        'Arctic Ocean'
      ],
      correctAnswer: 2,
      category: 'Nature',
      difficulty: 'Easy',
    ),
  ];
}