import 'package:flutter/material.dart';
import 'package:langlearn/components/item.dart';
import 'package:langlearn/models/itemModel.dart';

class NumbersPage extends StatelessWidget {
  final List<ItemModel> numbers = const [
    ItemModel(
      sound: 'sounds/numbers/number_one_sound.mp3',
      img: 'assets/images/numbers/number_one.png',
      jpName: "ichi",
      enName: "one",
    ),
    ItemModel(
      sound: 'sounds/numbers/number_two_sound.mp3',
      img: 'assets/images/numbers/number_two.png',
      jpName: "Ni",
      enName: "two",
    ),
    ItemModel(
      sound: 'sounds/numbers/number_three_sound.mp3',
      img: 'assets/images/numbers/number_three.png',
      jpName: "San",
      enName: "three",
    ),
    ItemModel(
      sound: 'sounds/numbers/number_four_sound.mp3',
      img: 'assets/images/numbers/number_four.png',
      jpName: "Shi",
      enName: "four",
    ),
    ItemModel(
      sound: 'sounds/numbers/number_five_sound.mp3',
      img: 'assets/images/numbers/number_five.png',
      jpName: "go",
      enName: "five",
    ),
    ItemModel(
      sound: 'sounds/numbers/number_six_sound.mp3',
      img: 'assets/images/numbers/number_six.png',
      jpName: "roku",
      enName: "six",
    ),
    ItemModel(
      sound: 'sounds/numbers/number_seven_sound.mp3',
      img: 'assets/images/numbers/number_seven.png',
      jpName: "shichi",
      enName: "seven",
    ),
    ItemModel(
      sound: 'sounds/numbers/number_eight_sound.mp3',
      img: 'assets/images/numbers/number_eight.png',
      jpName: "hachi",
      enName: "eight",
    ),
    ItemModel(
      sound: 'sounds/numbers/number_nine_sound.mp3',
      img: 'assets/images/numbers/number_nine.png',
      jpName: "Kyu",
      enName: "nine",
    ),
    ItemModel(
      sound: 'sounds/numbers/number_ten_sound.mp3',
      img: 'assets/images/numbers/number_ten.png',
      jpName: "juu",
      enName: "ten",
    ),
  ];

  const NumbersPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Numbers',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        backgroundColor: const Color.fromARGB(255, 44, 36, 25),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, idx) {
          return Item(
            color: Color.fromARGB(255, 52, 44, 34),
            item: numbers[idx],
          );
        },
      ),
    );
  }
}
