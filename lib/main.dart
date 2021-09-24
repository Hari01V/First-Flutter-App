import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(FlutApp());
}

class FlutApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FlutAppState();
  }
}

class _FlutAppState extends State<FlutApp> {
  var _totalScore = 0;
  var _quesIndex = 0;
  final _ques = [
    {
      'quesText': 'Whats your fav color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1}
      ],
    },
    {
      'quesText': 'Whats your fav Animal?',
      'answers': [
        {'text': 'Rak', 'score': 10},
        {'text': 'Rabbit', 'score': 5},
        {'text': 'Lion', 'score': 3},
        {'text': 'Penguin', 'score': 1}
      ],
    },
    {
      'quesText': 'Whats your fav Anime?',
      'answers': [
        {'text': 'nothing', 'score': 10},
        {'text': 'everything', 'score': 5},
        {'text': 'something', 'score': 3},
        {'text': 'anything', 'score': 1}
      ],
    },
  ];

  void _answerQues(int score) {
    _totalScore += score;
    setState(() {
      _quesIndex += 1;
    });
    print('Answer chosen for ques ${_quesIndex}!!');
  }

  void _resetQuiz() {
    setState(() {
      _quesIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My FlutApp'),
        ),
        body: _quesIndex < _ques.length
            ? Quiz(_ques[_quesIndex], _answerQues)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
