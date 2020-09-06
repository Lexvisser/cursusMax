import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
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
    var questions = ['what\'s your favorite color', 'what\'s your penislength'];
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
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print('hello'),
              color: Colors.green[400],
            ),
            RaisedButton(
                child: Text('Answer 3'),
                onPressed: () {
                  //...
                  print('hello again');
                }),
          ],
        ),
      ),
    );
  }
}
