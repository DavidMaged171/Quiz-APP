import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function fun;
  Answer(this.answerText,this.fun);
  @override
  Widget build(BuildContext context) {
    return Container(
      
      width: double.infinity,
      child: RaisedButton(
        onPressed: fun,
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(
          answerText,
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
