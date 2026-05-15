import '../model/qModel.dart';

List<Question> getIndiaQuestions() {
  return [

    Question(
      id: 6,
      question: 'What is the capital of India?',
      options: ['Mumbai', 'Delhi', 'Kolkata', 'Chennai'],
      correctAnswer: 1,
      category: 'India',
      difficulty: 'Easy',
    ),

    Question(
      id: 7,
      question: 'Which is the national animal of India?',
      options: ['Lion', 'Tiger', 'Elephant', 'Peacock'],
      correctAnswer: 1,
      category: 'India',
      difficulty: 'Easy',
    ),

    Question(
      id: 8,
      question: 'Who is known as the Father of the Nation in India?',
      options: [
        'Jawaharlal Nehru',
        'Subhash Chandra Bose',
        'Mahatma Gandhi',
        'B. R. Ambedkar'
      ],
      correctAnswer: 2,
      category: 'India',
      difficulty: 'Easy',
    ),

    Question(
      id: 9,
      question: 'Which river is considered holy in India?',
      options: ['Yamuna', 'Godavari', 'Ganga', 'Narmada'],
      correctAnswer: 2,
      category: 'India',
      difficulty: 'Easy',
    ),

    Question(
      id: 10,
      question: 'Which Indian festival is known as the Festival of Lights?',
      options: ['Holi', 'Diwali', 'Eid', 'Pongal'],
      correctAnswer: 1,
      category: 'India',
      difficulty: 'Easy',
    ),
  ];
}