import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String quesText;

  Question(this.quesText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(10, 6, 10, 6),
      child: Text(
        quesText,
        style: TextStyle(fontSize: 26),
        textAlign: TextAlign.center,
      ),
    );
  }
}
