import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function() function;
//Constructor
  Answer(this.function,this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20),
      child: ElevatedButton(
        onPressed:function ,
        child: Text(
          '${answerText}',
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
