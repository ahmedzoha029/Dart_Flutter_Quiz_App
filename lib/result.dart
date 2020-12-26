import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetQuiz;

  Result(this.totalScore, this.resetQuiz);

  String get resultPhrase {
    String resultText;

    if (totalScore > 10) {
      resultText = 'Congratulations you win.....!';
    } else {
      resultText = 'Sorry you lose Try Again....:(';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          onPressed: resetQuiz,
          child: Text('Restart Quiz'),
          textColor: Colors.blue,
        )
      ],
    ));
  }
}
