import 'package:flutter/material.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(context) {
    final isCorrect = itemData['user_answer'] == itemData['correct_answer'];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(right: 12, top: 2),
          width: 28,
          height: 28,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isCorrect
                ? const Color.fromARGB(255, 43, 143, 105)
                : const Color.fromARGB(255, 184, 59, 59),
          ),
          child: Center(
            child: Text(
              ((itemData['question_index'] as int) + 1).toString(),
              style: const TextStyle(color: Colors.white, fontSize: 13),
            ),
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemData['question'] as String,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                itemData['user_answer'] as String,
                style: TextStyle(
                  color: isCorrect ? Colors.greenAccent : Colors.redAccent,
                  fontSize: 13,
                ),
              ),
              if (!isCorrect)
                Text(
                  'Correct answer: ${itemData['correct_answer']}',
                  style: const TextStyle(color: Colors.white70, fontSize: 12),
                ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ],
    );
  }
}