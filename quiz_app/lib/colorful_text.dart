import 'dart:math';
import 'package:flutter/material.dart';

class ColorfulText extends StatefulWidget {
  const ColorfulText({super.key});
  @override
  State<ColorfulText> createState() {
    return ColorfulTextState();
  }
}

class ColorfulTextState extends State<ColorfulText> {
  final randomizer = Random();
  var colors = [Colors.blue, Colors.amber, Colors.pink, Colors.teal];
  int select = 0;
  void startQuiz() {
    setState(() {
      select = randomizer.nextInt(colors.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/logo.png', color: colors[select]),
        Text(
          "Learn Flutter in a fun way!",
          style: TextStyle(color: colors[select], fontSize: 28),
        ),
        OutlinedButton(
          onPressed: startQuiz,
          child: Text(
            'Start Quiz',
            style: TextStyle(color: colors[select], fontSize: 28),
          ),
        )
      ],
    );
  }
}