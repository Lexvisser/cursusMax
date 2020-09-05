import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('answer chosen');
  }

  @override
  Widget build(BuildContext context) {
    var questions = ['what\'s your favorite color', 'what\'s your penislength'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text('My first Barretje'), backgroundColor: Colors.blue),
        body: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('the question'),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: answerQuestion,
              color: Colors.green[400],
            ),
            RaisedButton(child: Text('Answer 3'), onPressed: answerQuestion),
          ],
        ),
      ),
    );
  }
}
