// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
// import 'package:flutter/widgets.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int soundNumber) {
    final player = AudioPlayer();
    player.play(
      AssetSource('note$soundNumber.wav'),
    );
  }
              


  Expanded buildKey({required Color color, required int soundNumber}) {
    return Expanded(
      child: TextButton(
        // color: color,
        onPressed: () async{
          playsound(soundNumber);
        },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(color)),
        child: Text(
                    'Press Me for soundnumber $soundNumber',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, soundNumber: 1),
              buildKey(color: Colors.orange, soundNumber: 2),
              buildKey(color: Colors.yellow, soundNumber: 3),
              buildKey(color: Colors.green, soundNumber: 4),
              buildKey(color: Colors.teal, soundNumber: 5),
              buildKey(color: Colors.blue, soundNumber: 6),
              // Expanded(
              //   child: TextButton(
              //     onPressed: () async {
              //       playsound(1);
              //     },
              //     child: Text(
              //       'Press Me 1',
              //       style: TextStyle(color: Colors.white),
              //     ),
              //     style: ButtonStyle(
              //         backgroundColor: MaterialStateProperty.all(Colors.red)),
              //   ),
              // ),
              // Expanded(
              //   child: TextButton(
              //     onPressed: () async {
              //       playsound(2);
              //     },
              //     child: Text(
              //       'Press Me 2',
              //       style: TextStyle(color: Colors.white),
              //     ),
              //     style: ButtonStyle(
              //         backgroundColor: MaterialStateProperty.all(Colors.orange)),
              //   ),
              // ),
              // Expanded(
              //   child: ElevatedButton(
              //     onPressed: () async {
              //       playsound(3);
              //     },
              //     child: Text(
              //       'Press Me 3',
              //       style: TextStyle(color: Colors.white), // Initial color
              //     ),style: ButtonStyle(
              //         backgroundColor: MaterialStateProperty.all(Colors.yellow)),
              //   ),
              // ),
              // Expanded(
              //   child: ElevatedButton(
              //     onPressed: () async {
              //       playsound(4);
              //     },
              //     child: Text(
              //       'Press Me 4',
              //       style: TextStyle(color: Colors.white), // Initial color
              //     ),
              //     style: ButtonStyle(
              //         backgroundColor: MaterialStateProperty.all(Colors.green)),
              //   ),
              // ),
              // Expanded(
              //   child: ElevatedButton(
              //     onPressed: () async {
              //       playsound(5);
              //     },
              //     child: Text(
              //       'Press Me 5',
              //       style: TextStyle(color: Colors.white), // Initial color
              //     ),
              //     style: ButtonStyle(
              //         backgroundColor: MaterialStateProperty.all(Colors.blue)),
              //   ),
              // ),
              // Expanded(
              //   child: ElevatedButton(
              //     onPressed: () async {
              //       playsound(6);
              //     },
              //     child: Text(
              //       'Press Me 6',
              //       style: TextStyle(color: Colors.white), // Initial color
              //     ),
              //     style: ButtonStyle(
              //         backgroundColor: MaterialStateProperty.all(Colors.indigo)),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
