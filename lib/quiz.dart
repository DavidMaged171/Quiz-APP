import 'package:flutter/material.dart';
import 'package:quizapp/question.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  
final List<Map<String, Object>> question ;final int questionsIndex;
final Function answerQuestion;
Quiz({this.question,this.questionsIndex,this.answerQuestion});
  @override
  Widget build(BuildContext context) {
    return Column(
            children: [
              Question(question[questionsIndex]['question Text']),
              ...(question[questionsIndex]['answers']as List<Map<String,Object>>) .map((answer){
                return Answer(answer['text'], ()=>answerQuestion(answer['score']),);
              }).toList(), 
              
            ],
          );
  }
}