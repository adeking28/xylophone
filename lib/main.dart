import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main(List<String> args) => runApp(XlophoneApp());

class XlophoneApp extends StatelessWidget {
  void playSound(int soundNumbers) {
    final player = AudioCache();
    player.play('assets_note$soundNumbers.wav');
  }

  Expanded buildKey({backgroundColor, soundNumbers}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: backgroundColor),
        child: Text('Tap to play'),
        onPressed: () {
          playSound(soundNumbers);
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
            children: [
              buildKey(backgroundColor: Colors.red, soundNumbers: 1),
              buildKey(backgroundColor: Colors.yellow, soundNumbers: 2),
              buildKey(backgroundColor: Colors.purple, soundNumbers: 3),
              buildKey(backgroundColor: Colors.green, soundNumbers: 4),
              buildKey(backgroundColor: Colors.orange, soundNumbers: 5),
              buildKey(backgroundColor: Colors.blueGrey, soundNumbers: 6),
              buildKey(backgroundColor: Colors.pinkAccent, soundNumbers: 7),
            ],
          ),
        ),
      ),
    );
  }
}
