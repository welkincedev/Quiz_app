import 'package:quizmaster/model/qModel.dart';
import 'dartQuestions.dart';
import 'flutterQuestions.dart';
import 'generlQuestions.dart';
import 'indiaQuestions.dart';
import 'nationsQuestions.dart';
import 'natureQuestions.dart';

List<Quiz> getQuizes() {
  return [
    Quiz(id: 1,
        title: "Flutter Basics",
        descrpition: "About Flutter",
        category: "Flutter",
        totalQuestion: 6,
        duration: 2,
        difficulty: "Easy",
        questions: getFlutterQuestions()),
    Quiz(id: 2,
        title: "Dart Basics",
        descrpition: "About Dart",
        category: "Dart",
        totalQuestion: 10,
        duration: 3,
        difficulty: "Easy",
        questions: getDartQuestions()),
    Quiz(id: 3,
        title: "General Knowledge",
        descrpition: "About World",
        category: "GK",
        totalQuestion: 30,
        duration: 10,
        difficulty: "Medium",
        questions: getGeneralQuestions()),
    Quiz(
      id: 4,
      title: "Nations Quiz",
      descrpition: "Countries Around the World",
      category: "Nations",
      totalQuestion: 5,
      duration: 5,
      difficulty: "Medium",
      questions: getNationQuestions(),
    ),

    Quiz(
      id: 5,
      title: "India Quiz",
      descrpition: "About India",
      category: "India",
      totalQuestion: 5,
      duration: 5,
      difficulty: "Easy",
      questions: getIndiaQuestions(),
    ),

    Quiz(
      id: 6,
      title: "Nature Quiz",
      descrpition: "Earth & Environment",
      category: "Nature",
      totalQuestion: 5,
      duration: 5,
      difficulty: "Easy",
      questions: getNatureQuestions(),
    ),

  ];
}