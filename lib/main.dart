import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  static const _questions = [
    // or you could write "final questions = const ["
    {
      // could also use Map(). its a key/value pair. "{}" is the shortcut way of writing Map()
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'blue', 'score': '1'},
        {'text': 'black', 'score': '2'},
        {'text': 'red', 'score': '3'},
        {'text': 'translucent', 'score': '4'},
      ],
    },
    {
      'questionText': "What\'s your favorite animal?",
      'answers': [
        {'text': 'zebra', 'score': '1'},
        {'text': 'flying squirrel', 'score': '2'},
        {'text': 'lioness', 'score': '3'},
        {'text': 'Butcher when not using his keyboard shortcuts', 'score': '4'},
      ],
    },
    {
      'questionText': 'Who\'s the best wife?',
      'answers': [
        {'text': 'Aubrey', 'score': '1'},
        {'text': 'Aubrey', 'score': '2'},
        {'text': 'Aubrey', 'score': '3'},
        {'text': 'Aubrey', 'score': '4'},
      ],
    }
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;

    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length // ternary expression yo
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(),
      ),
    );
  }
}
