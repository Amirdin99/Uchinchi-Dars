import 'package:audioplayers/src/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';


class AudioFile extends StatefulWidget {
  const AudioFile({Key? key}) : super(key: key);

  @override
  State<AudioFile> createState() => _AudioFileState();
}

class _AudioFileState extends State<AudioFile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "DarkMode",
                style: TextStyle(
                  color: Colors.indigo,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "LightMode",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
            Container(

              margin: EdgeInsets.only(top: 10),

              child: LiteRollingSwitch(
                value: true,
                colorOn: Colors.greenAccent,
                colorOff: Colors.red,
                textOn: "ON",
                textOff: "OF",
                iconOn: Icons.done,
                iconOff: Icons.alarm_off,
                textSize: 18.0,
                onChanged: (bool position){
                  print("This button is ${position}");


                },


              ),

            ),
          ],
        ),
      ),
    );
  }
}
