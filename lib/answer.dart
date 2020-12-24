import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function answerHandler;

  Answer(this.answerText, this.answerHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        onPressed: answerHandler,
        child: Text(answerText),
        textColor: Colors.white,
        color: Colors.blue,
      ),
    );
  }
}
