import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
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
            Text(questions[questionIndex]),
            RaisedButton(
              child: Text('Answer 1'),
              color: Colors.blueAccent[400],
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: answerQuestion,
              color: Colors.green[400],
            ),
            RaisedButton(
                child: Text('Answer 3'),
                color: Colors.lime[400],
                onPressed: answerQuestion),
            RaisedButton(
                child: Text('Answer 4'),
                color: Colors.yellow[400],
                onPressed: answerQuestion),
          ],
        ),
      ),
    );
  }
}
