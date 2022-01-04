import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int number) {
    final player = AudioCache();
    player.play('note$number.wav');
  }

  Expanded xyloKey({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              xyloKey(color: Colors.red, soundNumber: 1),
              xyloKey(color: Colors.orange, soundNumber: 2),
              xyloKey(color: Colors.yellow, soundNumber: 3),
              xyloKey(color: Colors.green, soundNumber: 4),
              xyloKey(color: Colors.blue, soundNumber: 5),
              xyloKey(color: Colors.indigo, soundNumber: 6),
              xyloKey(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
