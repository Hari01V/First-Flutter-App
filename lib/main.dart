import 'package:flutter/material.dart';

import './question.dart';

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

  void _answerQues() {
    setState(() {
      _quesIndex += 1;
    });
    print('Answer chosen for ques ${_quesIndex}!!');
  }

  @override
  Widget build(BuildContext context) {
    var ques = [
      'Whats your fav color?',
      'Whats your fav animal?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My FlutApp'),
        ),
        body: Column(
          children: <Widget>[
            Question(ques.elementAt(_quesIndex)),
            ElevatedButton(
              onPressed: _answerQues,
              child: Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: () => {print('Chosen Answer 2!!')},
              child: Text('Answer 2'),
            ),
            ElevatedButton(
              onPressed: _answerQues,
              child: Text('Answer 3'),
            ),
            ElevatedButton(
              onPressed: _answerQues,
              child: Text('Answer 4'),
            ),
          ],
        ),
      ),
    );
  }
}
