import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetFunc;

  Result(this.resultScore, this.resetFunc);

  //GETTER
  String get resultPhrase {
    var resultText = 'You did it !';
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent';
    } else if (resultScore <= 12) {
      resultText = 'You are pretty likeable';
    } else if (resultScore <= 16) {
      resultText = 'You are strange';
    } else {
      resultText = 'You are bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: () {
              resetFunc();
            },
            style: ButtonStyle(
                foregroundColor:
                    MaterialStateProperty.all(Colors.blue.shade400)),
            child: Text('Reset the Quiz!'),
          )
        ],
      ),
    );
  }
}
