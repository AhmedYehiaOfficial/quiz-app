import 'package:flutter/material.dart';

import 'Question.dart';
import 'answer.dart';
class Quiz extends StatelessWidget {
final question;
final int questionIndex;
final Function() answerQuestion;
Quiz(this.question,this.questionIndex,this.answerQuestion);


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          question[questionIndex]['questionText'].toString(),
        ),
        ...(question[questionIndex]['answers'] as List<Map<String,Object>>).map((asnwer) {
          return Answer(answerQuestion, asnwer['text'].toString());
        }).toList(),
      ],
    );
  }
}
