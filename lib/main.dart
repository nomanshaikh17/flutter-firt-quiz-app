import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

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
  var _questionIndex = 0;
  int _score = 0;
  final Questions = const [
    {
      "questionText": "what's your favourite color",
      "answers": [
        {"text": "red", "score": 10},
        {"text": "green", "score": 5},
        {"text": "blue", "score": 3},
        {"text": "yellow", "score": 1}
      ]
    },
    {
      "questionText": "what's your favourite animal",
      "answers": [
        {"text": "rabit", "score": 10},
        {"text": "snack", "score": 5},
        {"text": "elephant", "score": 3},
        {"text": "lion", "score": 1}
      ]
    },
    {
      "questionText": "who's your favourite instructor",
      "answers": [
        {"text": "max", "score": 10},
        {"text": "max", "score": 5},
        {"text": "max", "score": 3},
        {"text": "max", "score": 1}
      ]
    },
  ];

  void _reset() {
    setState(() {
      _score = 0;
      _questionIndex = 0;
    });
  }

  void _answer(answerScore) {
    setState(() {
      _score += answerScore;
    });

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app'),
        ),
        body: (_questionIndex < Questions.length)
            ? Quiz(
                answer: _answer,
                questionIndex: _questionIndex,
                Questions: Questions,
              )
            : Result(_score,_reset),
      ),
    );
  }
}
