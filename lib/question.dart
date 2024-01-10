import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 20),
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.all(10),
        child: Text(
          questionText,
          style: GoogleFonts.actor(fontSize: 35, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
