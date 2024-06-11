// ignore: file_names
import 'package:audioplayers/audioplayers.dart';

class ItemModel {
  final String sound;
  final String? img;
  final String jpName;
  final String enName;
  const ItemModel(
      {this.img,
      required this.jpName,
      required this.enName,
      required this.sound});
  playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}
