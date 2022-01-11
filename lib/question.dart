import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  Question(this.questionText) {}

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Text(
          questionText,
          textAlign:TextAlign.center,
          style: TextStyle(
            fontSize: 30,
            
          ),
        ));
  }
}
