import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizapp/quiz.dart';
import 'package:quizapp/result.dart';

class QuizHome extends StatefulWidget {
  const QuizHome({super.key});

  @override
  State<QuizHome> createState() => _QuizHomeState();
}

class _QuizHomeState extends State<QuizHome> {
  final _questions = const [
    {
      'questionText': ' What\'s your favourite color?',
      'answers': [
        {'Text': 'Black', 'Score': 10},
        {'Text': 'Red', 'Score': 5},
        {'Text': 'Green', 'Score': 3},
        {'Text': 'White', 'Score': 1}
      ],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'Text': 'Rabit', 'Score': 2},
        {'Text': 'Snake', 'Score': 5},
        {'Text': 'Elephant', 'Score': 8},
        {'Text': 'Black', 'Score': 10}
      ]
    },
    {
      'questionText': 'Who\'s your favourite instructor?',
      'answers': [
        {'Text': 'Maxwell', 'Score': 11},
        {'Text': 'faf du plessis', 'Score': 31},
        {'Text': 'rabada', 'Score': 8},
        {'Text': 'pollard', 'Score': 9}
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print("_questionIndex");

    if (_questionIndex < _questions.length) {
      print("We have more questions!");
    } else {
      print("No more questions!");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        centerTitle: true,
        title: Text("QUIZ APP",
            style: GoogleFonts.acme(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black)),
      ),
      body: _questionIndex < _questions.length
          ? Quiz(
              answerQuestion: _answerQuestion,
              questionIndex: _questionIndex,
              questions: _questions,
            )
          : Result(_totalScore, _resetQuiz),
    );
  }
}
