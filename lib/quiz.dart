import 'package:first_flutter_app/question.dart';
import 'package:flutter/material.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  final question;
  final VoidCallback chooseAnswer;

  Quiz(@required this.question,@required this.chooseAnswer);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(question["questionText"] as String),
        ...(question['answer'] as List<String>)
            .map((answer) {
          return Answer(chooseAnswer, answer);
        })
      ],
    );
  }
}