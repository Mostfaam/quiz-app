
// ignore_for_file: prefer_typing_uninitialized_variables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:quiz_app/question.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
final List<Map<String, Object>> question;
final int questionIndex;
final Function(int s) answerQuestion;

const Quiz(this.question, this.questionIndex, this.answerQuestion);

@override
Widget build(BuildContext context) {
return Column(
children: [
Question(question[questionIndex]["questionText"]),
...(question[questionIndex]["answer"] as List<Map<String, Object>>).map(
(answer) => Answer(answer["text"].toString(),
() => answerQuestion(int.parse(answer["score"].toString()))))
],
);
}
}