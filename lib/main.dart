import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());





class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
   static const questions = [ // or you could write "final questions = const ["
    {
      // could also use Map(). its a key/value pair. "{}" is the shortcut way of writing Map()
      'questionText': 'What\'s your favorite color?',
      'answers': ['blue', 'black', 'red', 'green'],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['tiger', 'lion', 'bears', 'dogs'],
    },
    {'questionText': 'Who\'s your favorite wife?',
      'answers': ['Aubrey', 'Aubrey', 'Aubrey', 'Aubrey'],
    }
  ];

  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);

//    if (_questionIndex < questions.length) {
//      print('we have more questions');
//    }
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < questions.length  // ternary expresssion yo
            ?
            : Center(
          child: Text('end of the quizz'),
        ),
      ),
    );
  }
}
