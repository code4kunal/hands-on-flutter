import 'package:flutter/material.dart';

import'./question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion(int state) {
    setState(() {
      questionIndex = state;
    });
  print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite colour?',
      'What\'s your favorite animal?',
      'What\'s your favorite food?'
    ];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
      ),
      body: Column(children: [
        Question(questions[questionIndex]),
        RaisedButton(
          child: Text('Answer1'),
          onPressed: () => answerQuestion(0),
        ),
        RaisedButton(
          child: Text('Answer2'),
          onPressed: () => answerQuestion(1),
        ),
        RaisedButton(
          child: Text('Answer3'),
          onPressed:
            () => answerQuestion(2)
        ),
      ]),
    ));
  }
}
