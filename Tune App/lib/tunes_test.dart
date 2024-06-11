import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class TuneTest extends StatelessWidget {
  const TuneTest({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 60,
            child: const Text(
              "Tunes",
              style: TextStyle(
                color: Color.fromARGB(255, 65, 1, 35),
                fontSize: 50,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              String sound = "note1.wav";
              final player = AudioPlayer();
              player.play(AssetSource(sound));
            },
            child: Container(
              height: 80,
              color: Color.fromARGB(255, 85, 9, 46),
            ),
          ),
          InkWell(
            onTap: () {
              String sound = "note2.wav";
              final player = AudioPlayer();
              player.play(AssetSource(sound));
            },
            child: Container(
              height: 80,
              color: Color.fromARGB(255, 111, 12, 63),
            ),
          ),
          InkWell(
            onTap: () {
              String sound = "note3.wav";
              final player = AudioPlayer();
              player.play(AssetSource(sound));
            },
            child: Container(
              height: 80,
              color: Color.fromARGB(255, 128, 28, 78),
            ),
          ),
          InkWell(
            onTap: () {
              String sound = "note4.wav";
              final player = AudioPlayer();
              player.play(AssetSource(sound));
            },
            child: Container(
              height: 80,
              color: Color.fromARGB(255, 163, 33, 98),
            ),
          ),
          InkWell(
            onTap: () {
              String sound = "note5.wav";
              final player = AudioPlayer();
              player.play(AssetSource(sound));
            },
            child: Container(
              height: 90,
              color: Color.fromARGB(255, 207, 58, 128),
            ),
          ),
          InkWell(
            onTap: () {
              String sound = "note6.wav";
              final player = AudioPlayer();
              player.play(AssetSource(sound));
            },
            child: Container(
              height: 90,
              color: Color.fromARGB(255, 225, 64, 153),
            ),
          ),
          InkWell(
            onTap: () {
              String sound = "note7.wav";
              final player = AudioPlayer();
              player.play(AssetSource(sound));
            },
            child: Container(
              height: 100,
              color: Color.fromARGB(255, 246, 162, 198),
            ),
          )
        ],
      ),
    );
  }
}
