import 'package:flutter/material.dart';
import 'package:langlearn/components/item.dart';
import 'package:langlearn/models/itemModel.dart';

class PharsesPage extends StatelessWidget {
  final List<ItemModel> phrasesList = const [
    ItemModel(
      sound: 'sounds/numbers/number_one_sound.mp3',
      jpName: "ichi",
      enName: "one",
    ),
    ItemModel(
      sound: 'sounds/numbers/number_two_sound.mp3',
      jpName: "Ni",
      enName: "two",
    ),
    ItemModel(
      sound: 'sounds/numbers/number_three_sound.mp3',
      jpName: "San",
      enName: "three",
    ),
    ItemModel(
      sound: 'sounds/numbers/number_four_sound.mp3',
      jpName: "Shi",
      enName: "four",
    ),
    ItemModel(
      sound: 'sounds/numbers/number_five_sound.mp3',
      jpName: "go",
      enName: "five",
    ),
    ItemModel(
      sound: 'sounds/numbers/number_six_sound.mp3',
      jpName: "roku",
      enName: "six",
    ),
    ItemModel(
      sound: 'sounds/numbers/number_seven_sound.mp3',
      jpName: "shichi",
      enName: "seven",
    ),
    ItemModel(
      sound: 'sounds/numbers/number_eight_sound.mp3',
      jpName: "hachi",
      enName: "eight",
    ),
    ItemModel(
      sound: 'sounds/numbers/number_nine_sound.mp3',
      jpName: "Kyu",
      enName: "nine",
    ),
    ItemModel(
      sound: 'sounds/numbers/number_ten_sound.mp3',
      jpName: "juu",
      enName: "ten",
    ),
  ];

  const PharsesPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Phrases',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        backgroundColor: const Color.fromARGB(255, 44, 36, 25),
      ),
      body: ListView.builder(
        itemCount: phrasesList.length,
        itemBuilder: (context, idx) {
          return phrasesItem(
              item: phrasesList[idx], col: const Color.fromARGB(255, 80, 60, 51));
        },
      ),
    );
  }
}
