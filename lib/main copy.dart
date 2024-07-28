import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Flutter Counter App',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(242, 231, 58, 46),
            ),
            textAlign: TextAlign.center,
          ),
        ),
        body: Center(
          child: Text('Hello, Flutter!'),
        ),
      ),
    );
  }
}
