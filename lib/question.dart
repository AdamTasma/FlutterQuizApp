import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String
      questionText; //the final keyword tells flutter that questionText will never change after its initialization (which is necessary because its in a stateless widget)

// questionText is a property.

  Question(this.questionText);

//  Question({questionText}); this is an example of replacing line 6 with a named input

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
