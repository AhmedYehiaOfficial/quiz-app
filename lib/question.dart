import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: double.infinity,
      child: Text(
        questionText,
        style: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.blue
        ),
      ),
    );
  }
}
