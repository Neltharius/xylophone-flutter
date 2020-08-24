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
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(1, Colors.red),
                buildKey(2, Colors.orange),
                buildKey(3, Colors.yellow),
                buildKey(4, Colors.green),
                buildKey(5, Colors.teal),
                buildKey(6, Colors.blue),
                buildKey(7, Colors.purple),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void playsound(int noteNumber) {
    final AudioCache player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  Expanded buildKey(int noteNumber, MaterialColor buttonColor) {
    return Expanded(
      child: FlatButton(
        onPressed: () => playsound(noteNumber),
        color: buttonColor,
        child: Text(''),
      ),
    );
  }
}
