import 'package:flutter/material.dart';
import 'package:quiz_app/questions.dart';
import 'package:quiz_app/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.chosenAnswers,
    required this.onRestart,
  });

  final List<String> chosenAnswers;
  final void Function() onRestart;
  // little helper to count how many were correct
  // could probably be a one-liner but this is easier for me to read
  int getCorrectAnswerCount() {
    int correctCount = 0;
    for (var i = 0; i < chosenAnswers.length; i++) {
      if (chosenAnswers[i] == questions[i].answers[0]) {
        correctCount = correctCount + 1;
      }
    }
    return correctCount;
  }

  @override
  Widget build(context) {
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = getCorrectAnswerCount();

    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'You got $numCorrectQuestions out of $numTotalQuestions right!',
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          QuestionsSummary(chosenAnswers),
          const SizedBox(height: 20),
          TextButton.icon(
            onPressed: onRestart,
            style: TextButton.styleFrom(foregroundColor: Colors.amber),
            icon: const Icon(Icons.refresh),
            label: const Text('Restart Quiz'),
          ),
        ],
      ),
    );
  }
}