import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Answer extends StatelessWidget {
  //const Answer({super.key});

  final VoidCallback selectHandler;
  final String answerText;

  const Answer(this.selectHandler, this.answerText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        width: 250,
        child: ElevatedButton(
          onPressed: selectHandler,
          child: Text(
            answerText,
            style: GoogleFonts.acme(fontSize: 25, color: Colors.black),
          ),
          style: ElevatedButton.styleFrom(primary: Colors.orange),
        ),
      ),
      SizedBox(height: 18.0)
    ]);
  }
}
