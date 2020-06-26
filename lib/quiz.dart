import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> Questions;
  final Function answer;
  final int questionIndex;

  Quiz(
      {@required this.Questions,
      @required this.answer,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          Questions[questionIndex]["questionText"],
        ),
        ...(Questions[questionIndex]["answers"] as List<Map<String,Object>>)
            .map((answers) {
          return Answer(()=>answer(answers["score"]), answers["text"]);
        }).toList(),
      ],
    );
  }
}
