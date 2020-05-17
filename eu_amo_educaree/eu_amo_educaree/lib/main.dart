import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Educaree',
            style:
                TextStyle(fontFamily: 'Raleway', color: Colors.tealAccent[200]),
          ),
        ),
        backgroundColor: Colors.indigo[400],
      ),
      body: Center(
        child: Image(image: AssetImage('assets\\images\\educaree_logo.jpg')),
      ),
      backgroundColor: Colors.purple[700],
    ),
  ));
}
