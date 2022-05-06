import 'package:first_flutter_app/answer.dart';
import 'package:first_flutter_app/question.dart';
import 'package:first_flutter_app/quiz.dart';
import 'package:first_flutter_app/result.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var questions = [
    {
      'questionText': "What's your name?",
      'answer': ["Nour", "Asma", "Oussema"]
    },
    {
      'questionText': 'How old are you?',
      'answer': ["20", "19", "21"]
    },
    {
      'questionText': "How much money do you have?",
      'answer': ["0", "20DT", "100DT"]
    },
    {
      'questionText': "do you have a boyfriend?",
      'answer': ["Menedroush", "Yes", "No"]
    }
  ];
  var answer = "";
  var _questionIndex = 0;

  void _chooseAnswer() {
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("my app"),
        ),
        body: _questionIndex < questions.length
            ? Quiz(questions[_questionIndex], _chooseAnswer)
            : Result(),
      ),
    );
  }
}
