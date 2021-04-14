import 'package:flutter/material.dart';

import 'package:par_impar/number_controller.dart';

enum Answer { Even, Odd, Nothing }

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
  var answer = Answer.Nothing;

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
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.lightBlue[900])),
                  onPressed: () {
                    if (answer == Answer.Nothing) {
                      answer = Answer.Even;
                      setState(() {
                        isAnswered = true;
                      });
                    }
                  },
                  child: Text('Par'),
                ),
                SizedBox(width: 35),
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.lightBlue[900])),
                  onPressed: () {
                    if (answer == Answer.Nothing) {
                      answer = Answer.Odd;
                      setState(() {
                        isAnswered = true;
                      });
                    }
                  },
                  child: Text('Ímpar'),
                ),
              ],
            ),
            SizedBox(height: 135),
            isAnswered == true
                ? Container(
                    alignment: Alignment.center,
                    height: 50.0,
                    width: 200.0,
                    decoration: BoxDecoration(
                      color: Colors.blue[50],
                      border: Border.all(
                        width: 1.5,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 2.0,
                          offset: Offset(
                            1,
                            2,
                          ),
                        ),
                      ],
                    ),
                    child: Text(
                      answer == Answer.Even
                          ? controller.evenAnswer
                          : controller.oddAnswer,
                      style: TextStyle(
                        fontSize: 26,
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                : SizedBox(height: 10),
            SizedBox(height: 135),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isAnswered = false;
                  controller.newNumber;
                  answer = Answer.Nothing;
                });
              },
              child: Container(
                width: 85,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.refresh),
                    Text('Reiniciar'),
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
