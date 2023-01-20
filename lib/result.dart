import 'package:flutter/material.dart';
import 'package:quizapp/quiz.dart';

class Result extends StatelessWidget {
  final Function() restart;
  final int resultScore;
  Result(this.restart,this.resultScore);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
               Text(
                '${resultScore}',
                style:const TextStyle(
                    fontSize: 50,
                    color: Colors.green,
                    fontWeight: FontWeight.bold),
              ),
              TextButton(
                  onPressed: restart,
                  child:const Text(
                    'Restart App',
                    style: TextStyle(fontSize: 20),
                  ))
            ],
          )),
    );
  }
}
