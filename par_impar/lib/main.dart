import 'package:flutter/material.dart';

import 'package:par_impar/number_controller.dart';

enum Answer { Even, Odd }

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final controller = NumberController();
  bool isAnswered = false;
  var answer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'O Número [ ${controller.number} ] é:',
              style: TextStyle(
                fontSize: 26,
              ),
            ),
            SizedBox(height: 35),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blueGrey)),
                  onPressed: () {
                    answer = Answer.Even;
                    setState(() {
                      isAnswered = true;
                    });
                  },
                  child: Text('Par'),
                ),
                SizedBox(width: 35),
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blueGrey)),
                  onPressed: () {
                    answer = Answer.Odd;
                    setState(() {
                      isAnswered = true;
                    });
                  },
                  child: Text('Ímpar'),
                ),
              ],
            ),
            SizedBox(height: 135),
            isAnswered == true
                ? Text(
                    answer == Answer.Even
                        ? controller.evenAnswer
                        : controller.oddAnswer,
                    style: TextStyle(
                      fontSize: 26,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                : SizedBox(height: 10),
            SizedBox(height: 135),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isAnswered = false;
                  controller.newNumber;
                });
              },
              child: Container(
                width: 75,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.refresh),
                    Text('Restart'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
