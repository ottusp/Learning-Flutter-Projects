import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Center(child: Text('I am rich')),
            backgroundColor: Colors.blueGrey[800]),
        backgroundColor: Colors.blueGrey[300],
        body: Center(
          child: Image(
            image: AssetImage('images\\diamond.png'),
          ),
        ),
      ),
    ),
  );
}
