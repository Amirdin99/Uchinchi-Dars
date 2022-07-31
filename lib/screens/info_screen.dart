import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  late int score;
  late int time;

  InfoScreen(this.time, this.score);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Score"),
      ),

      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 200,
              height: 50,
              child: Row(
                children: [
                  Text("Score"),
                  Text("${score}"),

                ],
              ),
            ),
            Container(
              width: 200,
              height: 50,
              child: Row(
                children: [
                  Text("Time"),
                  Text("${timeFormat(time)}"),

                ],
              ),
            )

          ],
        ),
      ),
    );
  }

  String timeFormat(int second) {
    String min = (second / 60.round() < 10
        ? '0${second / 60.round()}'
        : '${second / 60.round()}');
    String sec = ((second - second / 60).round() * 60 < 10
        ? '0${(second - second / 60).round() * 60}'
        : '${(second - second / 60).round() * 60}');
    return '$min:$sec';
  }
}
