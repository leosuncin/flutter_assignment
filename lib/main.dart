// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

import 'package:flutter/material.dart';
import './text.dart';
import './text_control.dart';

void main() {
  runApp(Homework());
}

class Homework extends StatefulWidget {
  @override
  _HomeworkState createState() => _HomeworkState();
}

class _HomeworkState extends State<Homework> {
  final List<String> _fortunes = const [
    'The faster we go, the rounder we get.',
    'Cloning is the sincerest form of flattery.',
    'You will be awarded a medal for disregarding safety in saving someone.',
    'Never underestimate the power of human stupidity.',
    'I understand why you\'re confused.  You\'re thinking too much.',
    'Man is the only animal that blushes -- or needs to.',
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Assignment'),
      ),
      body: Column(
        children: <Widget>[
          Fortune(_fortunes[_currentIndex]),
          TextControl(
            buttonText: 'Next fortune',
            onNextText: () {
              setState(() {
                _currentIndex = _currentIndex <= (_fortunes.length - 2)
                    ? _currentIndex + 1
                    : 0;
              });
            },
          ),
        ],
      ),
    ));
  }
}
