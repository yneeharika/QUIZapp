import 'package:flutter/material.dart';
import 'package:quizapp/question.dart';
import 'package:quizapp/answer.dart';

class Quiz extends StatelessWidget {
  //const  Quiz({super.key});

  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
    required this.questions,
    required this.answerQuestion,
    required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 5),
        Image.asset('assets/images/quiz.png'),
        Question(questions[questionIndex]['questionText'] as String),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
            () => answerQuestion(answer['Score']),
            answer['Text'] as String,
          );
        }),
      ],
    );
  }
}
