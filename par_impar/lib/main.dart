import 'package:flutter/material.dart';

import 'package:par_impar/number_controller.dart';

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
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final controller = NumberController();

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
              'Numero: ' + controller.number,
              style: TextStyle(
                fontSize: 26,
              ),
            ),
            SizedBox(height: 35),
            Text(
              controller.answer,
              style: TextStyle(
                fontSize: 26,
              ),
            ),
            SizedBox(height: 35),
            ElevatedButton(
              onPressed: () {
                setState(() {});
              },
              child: Text('Restart'),
            ),
          ],
        ),
      ),
    );
  }
}
