import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function Questionanswer;
  final String answer;

  Answer(this.Questionanswer,this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answer),
        onPressed: Questionanswer,
      ),
    );
  }
}
