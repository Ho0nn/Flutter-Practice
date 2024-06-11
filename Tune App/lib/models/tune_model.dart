import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
class TuneModel {
  final Color col;
  final String sound;
  const TuneModel(
    {
      required this.col,
      required this.sound});
  void playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}
