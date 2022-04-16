import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void playSound(int noteNumber) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  Expanded buildElement({required int num, required Color color}) {
    return Expanded(
      child: MaterialButton(
        color: color,
        onPressed: () {
          playSound(num);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildElement(num: 1, color: Colors.red),
              buildElement(num: 2, color: Colors.orange),
              buildElement(num: 3, color: Colors.yellow),
              buildElement(num: 4, color: Colors.green),
              buildElement(num: 5, color: Colors.teal),
              buildElement(num: 6, color: Colors.blue),
              buildElement(num: 7, color: Colors.purple)
            ],
          ),
        ),
      ),
    );
  }
}
