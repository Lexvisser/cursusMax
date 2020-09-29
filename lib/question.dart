import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
        color: Colors.black,
        border: Border.all(
          color: Colors.red, //                   <--- border color
          width: 5.0,
        ),
        borderRadius: BorderRadius.all(Radius.circular(30.0)));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(10),
        decoration: myBoxDecoration(),
        child: Text(
          questionText,
          style: TextStyle(
              fontSize: 28, fontWeight: FontWeight.bold, color: Colors.blue),
          textAlign: TextAlign.center,
        ));
  }
}
