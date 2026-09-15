import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.lightbulb,
            size: 100,
            color: Colors.amber.shade300,
          ),
          const SizedBox(height: 30),
          const Text(
            'Learn Flutter The Fun Way!',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30),
          TextButton.icon(
            onPressed: startQuiz,
            style: TextButton.styleFrom(foregroundColor: Colors.amber),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz', style: TextStyle(fontSize: 16)),
          ),
        ],
      ),
    );
  }
}