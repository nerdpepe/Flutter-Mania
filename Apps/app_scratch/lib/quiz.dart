import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List questions;
  final int quesIndex;
  final Function(int) answerChosen;

  Quiz(this.questions, this.quesIndex, this.answerChosen);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[quesIndex]['questionText'].toString(),
        ),
        ...(questions[quesIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) => Answer(() => answerChosen(answer['score'] as int),
                answer['text'].toString()))
            .toList()
      ],
    );
  }
}
