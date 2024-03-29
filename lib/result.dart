import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  //a getter (which uses the 'get' keyword) is a method that can never receive arguments
  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultScore <= 3) {
      resultText = 'You always chose the first option.';
    } else if (resultScore <= 6) {
      resultText = 'This is the end of the quiz.';
    } else if (resultScore <= 10) {
      resultText = 'Oy, this quiz makes no sense.';
    } else {
      resultText = 'You have scored highly.';
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
          FlatButton(
            child: Text('Restart Quiz!'),
            textColor: Colors.blue,
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
