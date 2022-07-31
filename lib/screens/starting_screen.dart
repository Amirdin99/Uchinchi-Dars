import 'dart:async';

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:uchinchidarsflutter/screens/info_screen.dart';
import 'package:uchinchidarsflutter/screens/settings_screen.dart';

import 'main_screen.dart';

void main() => runApp(StartScreen());

class StartScreen extends StatelessWidget {
  late AudioCache cache; //=AudioCache();
  AudioPlayer player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 50,
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MainScreen()));
                },
                child: Text(
                  "New Game",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(primary: Colors.teal),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 8),
              height: 50,
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                },
                child: Text(
                  "About",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(primary: Colors.teal),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 8),
              height: 50,
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  //player.play(UrlSource('sounds/muzika.mp3'));
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AudioFile()));
                },
                child: Text(
                  "Settings",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(primary: Colors.teal),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _playFile() async {
    player.play(UrlSource('sounds/muzika.mp3'));
  }
}
