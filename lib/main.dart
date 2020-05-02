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
        'answers': ['Black', 'Red', 'Green', 'White'],
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': ['Rabbit', 'Snake', 'Elephant', 'Deer'],
      },
      {
        'questionText': 'What\'s your favorite instructor?',
        'answers': ['John', 'Purcell', 'Max', 'Alan'],
      }
    ];
  var _questionIndex = 0;

  void _answerQuestion() {
   
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if(_questionIndex < _questions.length){
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
      ? Quiz(answerQuestion: _answerQuestion,
             questionIndex: _questionIndex,
             question: _questions)
      : Result() ,
    ));
  }
}
