import 'package:flutter/material.dart';
import 'package:quiz_app/questions.dart';
import 'package:quiz_app/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);

    if (currentQuestionIndex < questions.length - 1) {
      setState(() {
        currentQuestionIndex = currentQuestionIndex + 1;
      });
    }
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];

    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            currentQuestion.text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 40),
          ...currentQuestion.getShuffledAnswers().map((answer) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 14),
              child: AnswerButton(
                answerText: answer,
                onTap: () {
                  answerQuestion(answer);
                },
              ),
            );
          }),
        ],
      ),
    );
  }
}