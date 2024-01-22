import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.amber[50],
      appBar: AppBar(
        title: Text('My first Flutter App'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Image(
          image: AssetImage('images/4k-nature.jpg'),
        ),
      ),
    ));
  }
}
