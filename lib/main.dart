import 'package:flutter/material.dart';

import './result.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  void _reset() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What is your favourite Colour?',
        'answers': [
          {'text': 'Black', 'score': 1},
          {'text': 'Red', 'score': 2},
          {'text': 'Green', 'score': 3},
          {'text': 'White', 'score': 4}
        ],
      },
      {
        'questionText': 'What is your favourite sports?',
        'answers': [
          {'text': 'Tennis', 'score': 4},
          {'text': 'Golf', 'score': 1},
          {'text': 'Soccer', 'score': 2},
          {'text': 'Squash', 'score': 3}
        ]
      },
      {
        'questionText': 'Whats is favourite sports player?',
        'answers': [
          {'text': 'Federrer', 'score': 3},
          {'text': 'Tiger', 'score': 4},
          {'text': 'Nadal', 'score': 1},
          {'text': 'Djokovic', 'score': 1}
        ]
      }
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: (_questionIndex < questions.length)
              ? Column(
                  children: [
                    Quiz(
                        questions: questions,
                        questionIndex: _questionIndex,
                        answerQuestion: _answerQuestion)
                  ],
                )
              : Result(_totalScore, _reset)),
    );
  }
}
