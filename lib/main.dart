import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text('My first Barretej'), backgroundColor: Colors.blueGrey),
        body: Text('wat maak je me nuu'),
      ),
    );
  }
}