import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: PlayButtonsPage(),
        ),
      ),
    );
  }
}

class PlayButtonsPage extends StatelessWidget {
  var colors = [
    (Colors.red),
    (Colors.orange),
    (Colors.yellow),
    (Colors.green),
    (Colors.teal),
    (Colors.blue),
    (Colors.purple),
  ];

  List _makeChildrenButtons() {
    List<Widget> children = new List();
    for (int i = 1; i <= 7; i++) {
      children.add(
        Expanded(
          child: FlatButton(
            color: colors[i - 1],
            onPressed: () {
              final player = AudioCache();
              player.play('note$i.wav');
            },
          ),
        ),
      );
    }
    return children;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: _makeChildrenButtons(),
    );
  }
}
