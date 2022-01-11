import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function reset;
  int _score;
Result(this.reset,this._score);

  String get resultPhrase{
    String resultText;
    if(_score>=70)
      resultText="You are awesome !";
    else if(_score>=40)
      resultText="Pretty Likable !";
    else 
      resultText="Not good !";
    
    return resultText;

  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            "Your score is ${_score} ",
            //textAlign: TextAlign.center,
            
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            resultPhrase,
            //textAlign: TextAlign.center,
            
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          FlatButton(
            onPressed: reset,
            child: Text(
              "Restart the quiz!",
              style: TextStyle(
                fontSize: 35,
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
