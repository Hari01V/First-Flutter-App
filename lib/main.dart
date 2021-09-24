import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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
  var _quesIndex = 0;
  final ques = [
    {
      'quesText': 'Whats your fav color?',
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'quesText': 'Whats your fav Animal?',
      'answers': ['Rak', 'Rabbit', 'Lion', 'Penguin'],
    },
    {
      'quesText': 'Whats your fav Anime?',
      'answers': ['nothing', 'everything', 'something', 'anything'],
    },
  ];

  void _answerQues() {
    setState(() {
      _quesIndex += 1;
    });
    print('Answer chosen for ques ${_quesIndex}!!');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My FlutApp'),
        ),
        body: _quesIndex < ques.length
            ? Column(
                children: <Widget>[
                  Question(
                    (ques[_quesIndex]['quesText']).toString(),
                  ),
                  ...(ques[_quesIndex]['answers'] as List<String>)
                      .map((answer) => Answer(_answerQues, answer))
                      .toList(),
                ],
              )
            : Center(
                child: Text('Questions got over!!'),
              ),
      ),
    );
  }
}
