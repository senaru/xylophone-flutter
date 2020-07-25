import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(
              children: <Widget>[
                FlatButton(
                  color: Colors.red,
                  onPressed: () {
                    playSound('1');
                  },
                ),
                FlatButton(
                  color: Colors.orange,
                  onPressed: () {
                    playSound('2');
                  },
                ),
                FlatButton(
                  color: Colors.yellow,
                  onPressed: () {
                    playSound('3');
                  },
                ),
                FlatButton(
                  color: Colors.green,
                  onPressed: () {
                    playSound('4');
                  },
                ),
                FlatButton(
                  color: Colors.teal,
                  onPressed: () {
                    playSound('5');
                  },
                ),
                FlatButton(
                  color: Colors.lightBlue,
                  onPressed: () {
                    playSound('6');
                  },
                ),
                FlatButton(
                  color: Colors.deepPurple,
                  onPressed: () {
                    playSound('7');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
