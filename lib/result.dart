import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  // const Result({super.key});

  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;

    if (resultScore <= 8) {
      resultText = 'You are awesome!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable';
    } else if (resultScore >= 16) {
      resultText = 'You are Strange!';
    } else {
      resultText = 'You are so Bad!';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 18.0),
          child: ElevatedButton(
              onPressed: resetHandler,
              child: Text(
                "Restart Quiz!",
              )),
        )
      ],
    );
  }
}
