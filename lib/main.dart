import 'package:flutter/material.dart';
import 'package:quizmaster/data/dataQuiz.dart';
import 'package:quizmaster/theme/colourStyle.dart';
import 'package:quizmaster/theme/textStyle.dart';
import 'package:quizmaster/view/quizScreen/widget/QuizCard.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: false,
          fontFamily: "Mont-ExtraLightDEMO"
      ),
      home: QuizHomePage(),
    );
  }
}

class QuizHomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final quizes = getQuizes();
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(expandedHeight: 200,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.white,Colors.blue,Color(0xFF003781),
                    ],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("QuizMaster", style: AppTextStyle.titleText
                      ),
                      SizedBox(height: 8),
                      Text("Test you knowledge", style: AppTextStyle.titleSubText,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverPadding(padding: EdgeInsetsGeometry.all(10),
            sliver: SliverList(delegate: SliverChildBuilderDelegate((context,index){
              final quiz = quizes[index];
              return buildQuizCard(context,quiz);
            }, childCount: quizes.length),
            )
          )
        ],
      ),
    );
  }


}
