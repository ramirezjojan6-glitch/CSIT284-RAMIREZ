import 'package:flutter/material.dart';
import 'colorful_text.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ColorfulText(), 
        ),
      ),
    );
  }
}