import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final Map<String, Object> ques_obj;
  final Function answer_handler;

  Quiz(
    @required this.ques_obj,
    @required this.answer_handler,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Question(
            (ques_obj['quesText']).toString(),
          ),
          ...(ques_obj['answers'] as List<Map<String, Object>>)
              .map(
                (answer) => Answer(
                  () => answer_handler(answer['score']),
                  answer['text'].toString(),
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
