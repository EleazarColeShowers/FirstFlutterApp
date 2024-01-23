import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
    var question = [
      'What is your favorite color?',
      'What is your favorite food?',
    ];

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp>{  

var questionIndex= 0;

  void selectAnswer() {
    setState(() {
      if(questionIndex<question.length-1){          
        questionIndex=questionIndex+1;
      }
      else{
        questionIndex=0;
      }
    });
    print(questionIndex);
  }

  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.amber[50],
      appBar: AppBar(
        title: Text('My first Flutter App'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: [
          Text(question[questionIndex]),
          //single line function:
          ElevatedButton(
              onPressed: () => print('Answer 1 selected'),
              child: Text('Answer 1')),
          //multi-line function
          ElevatedButton(
              onPressed: () {
                print('Answer 2 selected');
              },
              child: Text('Answer 2')),
          //normal function
          ElevatedButton(onPressed: selectAnswer, child: Text('Answer 3')),
          ElevatedButton(onPressed: selectAnswer, child: Text('Answer 4')),
        ],
      ),
    ));
  }
}
