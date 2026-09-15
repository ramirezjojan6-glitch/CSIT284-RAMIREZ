import 'package:flutter/material.dart';
import 'package:quiz_app/questions.dart';
import 'package:quiz_app/summary_item.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.chosenAnswers, {super.key});

  final List<String> chosenAnswers;

  List<Map<String, Object>> get summaryData {
    return List.generate(chosenAnswers.length, (index) {
      return {
        'question_index': index,
        'question': questions[index].text,
        'correct_answer': questions[index].answers[0],
        'user_answer': chosenAnswers[index],
      };
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return SummaryItem(data);
          }).toList(),
        ),
      ),
    );
  }
}