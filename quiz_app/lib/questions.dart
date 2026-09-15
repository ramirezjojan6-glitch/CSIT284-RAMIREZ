import 'package:quiz_app/quiz_question.dart';

const questions = [
  QuizQuestion(
    'What is the basic building block of a Flutter user interface?',
    [
      'Widgets',
      'Views',
      'Elements',
      'Components',
    ],
  ),
  QuizQuestion(
    'How do you usually create a Flutter UI?',
    [
      'By nesting widgets together in code',
      'By dragging elements onto a canvas',
      'By writing HTML and CSS',
      'By using XML layout files',
    ],
  ),
  QuizQuestion(
    'Why would you use a StatefulWidget?',
    [
      'When the UI needs to change while the app is running',
      'When you never need to update the screen',
      'When you want a faster app startup time',
      'When the widget has no data at all',
    ],
  ),
  QuizQuestion(
    'Which widget type should you try to use more often?',
    [
      'StatelessWidget',
      'StatefulWidget',
      'It does not matter which one you pick',
      'Neither, always use InheritedWidget',
    ],
  ),
  QuizQuestion(
    'What happens when you call setState() inside a widget?',
    [
      'Flutter rebuilds that widget using the new data',
      'The whole app closes and restarts',
      'Nothing changes on the screen at all',
      'It permanently deletes the widget',
    ],
  ),
  QuizQuestion(
    'What programming language is used to write Flutter apps?',
    [
      'Dart',
      'Java',
      'Swift',
      'Kotlin',
    ],
  ),
];