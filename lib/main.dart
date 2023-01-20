import 'package:flutter/material.dart';
import 'package:quizapp/quiz.dart';
import 'package:quizapp/result.dart';
import 'Question.dart';
import 'answer.dart';

main() => runApp(MyApp());
 
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

Color mjorColor = Colors.white;
Color minorColor = Colors.black;

class _MyAppState extends State<MyApp> {
  bool isSwitch = false;
  final question = [
    {
      'questionText': 'what\'s your fav Color?',
      'answers': [
        {'text': 'Red', 'score': 10},
        {'text': 'Black', 'score': 20},
        {'text': 'Green', 'score': 30},
        {'text': 'Blue', 'score': 40},
      ]
    },
    {
      'questionText': 'what\'s your fav Animal?',
      'answers': [
        {'text': 'Cat', 'score': 10},
        {'text': 'Dog', 'score': 20},
        {'text': 'Tiger', 'score': 30},
        {'text': 'Lion', 'score': 40},
      ]
    },
    {
      'questionText': 'what\'s your fav Car?',
      'answers': [
        {'text': 'BMW', 'score': 40},
        {'text': 'GMC', 'score': 30},
        {'text': 'Fiat', 'score': 10},
        {'text': 'Skoda', 'score': 20},
      ],
    },
    {
      'questionText': 'what\'s your fav City?',
      'answers': [
        {'text': 'Alex', 'score': 40},
        {'text': 'Zag', 'score': 20},
        {'text': 'Cairo', 'score': 30},
        {'text': 'Giza', 'score': 10},
      ],
    },
  ];
  int totalScore = 0;
  int questionIndex = 0;

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  void answerQuestion() {
    setState(() {
      questionIndex += 1;
    });
    print('Answer chosen!');
    print(questionIndex);
    print(totalScore);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
          actions: [
            Switch(
              value: isSwitch,
              onChanged: (value) {
                setState(() {
                  isSwitch = value;
                  print(isSwitch);
                  if (isSwitch == true) {
                    mjorColor = Colors.black;
                    minorColor = Colors.white;
                  }
                  if (isSwitch == false) {
                    mjorColor = Colors.white;
                    minorColor = Colors.black;
                  }
                });
              },
            ),
          ],
        ),
        body: Container(
            color: mjorColor,
            child: questionIndex < question.length
                ? Quiz(question, questionIndex, answerQuestion)
                : Result(resetQuiz, totalScore)),
      ),
    );
  }
}
