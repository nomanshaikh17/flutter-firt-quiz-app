import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function reset;

  Result(this.score,this.reset);

  String get resultPhrase {
    String resulttext;
    if (score <= 8) {
      resulttext = "you are awsome";
    } else if (score <= 12) {
      resulttext = "you are good";
    } else if (score <= 15) {
      resulttext = "you are fine";
    } else {
      resulttext = "you bad";
    }
    return resulttext;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: [
      Text(
        resultPhrase,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
      FlatButton(child: Text("Reset Quiz"),onPressed: reset,)
    ]));
  }
}
