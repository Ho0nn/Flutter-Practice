import 'package:music_notes_player_app_setup/models/tune_model.dart';
import 'package:music_notes_player_app_setup/widgets/tune_item.dart';
import 'package:flutter/material.dart';
class Tune extends StatelessWidget {
  const Tune({super.key});
  final List<TuneModel> tunes = const [
    TuneModel(col: Color.fromARGB(255, 74, 2, 51), sound: "note4.wav"),
    TuneModel(col: Color.fromARGB(255, 96, 10, 69), sound: "note1.wav"),
    TuneModel(col: Color.fromARGB(255, 117, 29, 87), sound: "note2.wav"),
    TuneModel(col: Color.fromARGB(255, 151, 0, 101), sound: "note3.wav"),
    TuneModel(col: Color.fromARGB(255, 187, 4, 126), sound: "note5.wav"),
    TuneModel(col: Color.fromARGB(255, 188, 61, 146), sound: "note6.wav"),
    TuneModel(col: Color.fromARGB(255, 219, 123, 187), sound: "note7.wav"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 54, 4, 32),
        title: const Text(
          "Tunes",
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 35,
          ),
        ),
      ),
      body: Column(
        children: tunes.map((e) => TuneItem(tune: e)).toList(),
      ),
    );
  }
}
