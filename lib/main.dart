import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:quizapp/answer.dart';
import 'package:quizapp/question.dart';
import 'package:quizapp/quiz.dart';
import 'package:quizapp/result.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Queue <int>_scores=new Queue();

  void _resetQuiz() {
    setState(() {
      _questionsIndex = 0;
      _totalScore = 0;
      _scores.clear();
    });
  }

  List<Map<String, Object>> _question = [
    {
      'question Text': "What's your favourite color?",
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Green', 'score': 20},
        {'text': 'Blue', 'score': 30},
        {'text': 'Yellow', 'score': 40}
      ]
    },
    {
      'question Text': "What's your favourite Subject?",
      'answers': [
        {'text': 'Math', 'score': 10},
        {'text': 'Science', 'score': 20},
        {'text': 'Arabic', 'score': 30},
        {'text': 'English', 'score': 40}
      ]
    },
    {
      'question Text': "What's your favourite Programming Language?",
      'answers': [
        {'text': 'C++', 'score': 10},
        {'text': 'Dart', 'score': 20},
        {'text': 'C#', 'score': 30},
        {'text': 'Java', 'score': 40}
      ]
    },
  ];
  void answerQuestion(int score) {
    setState(() {
        _scores.add(score);
      _questionsIndex++;
      _totalScore += score;

    });
    print(_totalScore);
  }
  
  var _questions = [
    "What's your favourite color?",
    "What's your favourite subject?"
  ];
  int _questionsIndex = 0, _totalScore = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: Container(
          child: _questionsIndex < _question.length
              ? Quiz(
                  answerQuestion: answerQuestion,
                  questionsIndex: _questionsIndex,
                  question: _question,
                )
              : Result(_resetQuiz, _totalScore),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_back),
          onPressed: () {
            setState(
              () {
                
                if(_questionsIndex>0){
                  _totalScore-=_scores.last;
                  _scores.removeLast();
                  _questionsIndex--;
                }
                    
              },
            );
            print(_totalScore);
          },
        ),
      ),
    );
  }
}
