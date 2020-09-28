import 'package:flutter/material.dart';

import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'what\'s your favorite color',
      'what\'s your penislength',
      'hahahaha',
      'hoeoeoeoeoeoe',
      'kasdjkhasdkjfhkjasdhf',
      'lsdakl;asdfkl;sdkl;kl;sdkl;sdl;k'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text('My first Barretje'), backgroundColor: Colors.blue),
        body: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Question(questions[_questionIndex]),
            RaisedButton(
              child: Text('Answer 1'),
              color: Colors.blueAccent[400],
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: _answerQuestion,
              color: Colors.green[400],
            ),
            RaisedButton(
                child: Text('Answer 3'),
                color: Colors.lime[400],
                onPressed: _answerQuestion),
            RaisedButton(
                child: Text('Answer 4'),
                color: Colors.yellow[400],
                onPressed: _answerQuestion),
            RaisedButton(
                child: Text("Highlight"),
                highlightColor: Colors.red, //Replace with actual colors
                color: Colors.yellow,
                onPressed: _answerQuestion),
          ],
        ),
      ),
    );
  }
}
