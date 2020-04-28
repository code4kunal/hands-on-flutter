import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  void answerQuestion(){
    print('Answer chosen!');
  }
  @override
  Widget build(BuildContext context) {
    // var questions = [
    //   'What\'s your favorite colour?',
    //   'What\'s your favorite animal?'
    // ];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
      ),
      body: Column(children: [
        Text('The question!'),
        RaisedButton(
          child: Text('Answer1'),
          onPressed: answerQuestion,
        ),
        RaisedButton(
          child: Text('Answer2'),
          onPressed: () => 
            print('Answer 2 chosen'),
        ),
        RaisedButton(
          child: Text('Answer3'),
          onPressed: () {
            print('Answer 3 chosen');
          },
        ),
      ]),
    ));
  }
}
