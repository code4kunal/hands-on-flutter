import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite colour?',
      'answers': [
        {'text': 'Black', 'score': 9},
        {'text': 'Red', 'score': 9},
        {'text': 'Green', 'score': 9},
        {'text': 'Blue', 'score': 9}
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text':'Rabbit', 'score': 9}, 
        {'text':'Lion', 'score': 39}, 
        {'text':'Deer', 'score': 19}, 
        {'text':'Elephant', 'score': 29}],
    },
    {
      'questionText': 'What\'s your favorite instructor?',
      'answers': [
        {'text':'John', 'score': 9}, 
        {'text':'Purcell', 'score': 9}, 
        {'text':'Max', 'score': 9}, 
        {'text':'Kunal', 'score': 9}],
    }
  ];
  var _questionIndex = 0;
  var _totalScore = 0;
  void _answerQuestion(int score) {
    _totalScore += score; 
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
      ),
      body: _questionIndex < _questions.length
          ? Quiz(
              answerQuestion: _answerQuestion,
              questionIndex: _questionIndex,
              question: _questions)
          : Result(_totalScore),
    ));
  }
}
