
import '../model/qModel.dart';

List<Question> getGeneralQuestions() {
  return [
    Question(
      id: 1,
      question: 'What is the capital of France?',
      options: ['London', 'Berlin', 'Paris', 'Madrid'],
      correctAnswer: 2,
      category: 'Geography',
      difficulty: 'Hard',
    ),
    Question(
      id: 2,
      question: 'Which planet is closest to the sun?',
      options: ['Venus', 'Mercury', 'Earth', 'Mars'],
      correctAnswer: 1,
      category: 'Science',
      difficulty: 'Hard',
    ),
    Question(
      id: 3,
      question: 'Who wrote Romeo and Juliet?',
      options: [
        'Mark Twain',
        'Shakespeare',
        'Jane Austen',
        'Charles Dickens',
      ],
      correctAnswer: 1,
      category: 'Literature',
      difficulty: 'Hard',
    ),
    Question(
      id: 4,
      question: 'What is the largest ocean?',
      options: ['Atlantic', 'Indian', 'Arctic', 'Pacific'],
      correctAnswer: 3,
      category: 'Geography',
      difficulty: 'Hard',
    ),
    Question(
      id: 5,
      question: 'How many continents are there?',
      options: ['5', '6', '7', '8'],
      correctAnswer: 2,
      category: 'Geography',
      difficulty: 'Hard',
    ),
    Question(
      id: 6,
      question: 'What is the chemical symbol for Gold?',
      options: ['Go', 'Gd', 'Au', 'Ag'],
      correctAnswer: 2,
      category: 'Science',
      difficulty: 'Hard',
    ),
    Question(
      id: 7,
      question: 'Who painted the Mona Lisa?',
      options: ['Michelangelo', 'Leonardo da Vinci', 'Raphael', 'Donatello'],
      correctAnswer: 1,
      category: 'Art',
      difficulty: 'Hard',
    ),
    Question(
      id: 8,
      question: 'What is the smallest country in the world?',
      options: ['Monaco', 'Vatican City', 'San Marino', 'Liechtenstein'],
      correctAnswer: 1,
      category: 'Geography',
      difficulty: 'Hard',
    ),
    Question(
      id: 9,
      question: 'How many sides does a hexagon have?',
      options: ['4', '5', '6', '7'],
      correctAnswer: 2,
      category: 'Math',
      difficulty: 'Hard',
    ),
    Question(
      id: 10,
      question: 'What is the speed of light?',
      options: [
        '300,000 km/s',
        '150,000 km/s',
        '450,000 km/s',
        '600,000 km/s',
      ],
      correctAnswer: 0,
      category: 'Science',
      difficulty: 'Hard',
    ),
  ];
}
