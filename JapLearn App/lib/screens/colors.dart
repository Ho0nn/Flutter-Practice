import 'package:flutter/material.dart';
import 'package:langlearn/components/item.dart';
import 'package:langlearn/models/itemModel.dart';

class ColorsPage extends StatelessWidget {
  final List<ItemModel> colors = const [
    ItemModel(
      sound: 'sounds/family_members/father.wav',
      img: 'assets/images/colors/color_black.png',
      jpName: "chichi",
      enName: "Black",
    ),
    ItemModel(
      sound: 'sounds/family_members/mother.wav',
      img: 'assets/images/colors/color_brown.png',
      jpName: "haha",
      enName: "Brown",
    ),
    ItemModel(
      sound: 'sounds/family_members/daughter.wav',
      img: 'assets/images/colors/color_gray.png',
      jpName: "musume",
      enName: "Gray",
    ),
    ItemModel(
      sound: 'sounds/family_members/son.wav',
      img: 'assets/images/colors/color_red.png',
      jpName: "musuko",
      enName: "Red",
    ),
    ItemModel(
      sound: 'sounds/family_members/grand father.wav',
      img: 'assets/images/colors/yellow.png',
      jpName: "sofu",
      enName: "Yellow",
    ),
    ItemModel(
      sound: 'sounds/family_members/grand mother.wav',
      img: 'assets/images/colors/color_white.png',
      jpName: "obo",
      enName: "White",
    ),
    ItemModel(
      sound: 'sounds/family_members/younger brohter.wav',
      img: 'assets/images/colors/color_green.png',
      jpName: "shichi",
      enName: "Green",
    ),
    ItemModel(
      sound: 'sounds/family_members/younger sister.wav',
      img: 'assets/images/colors/color_dusty_yellow.png',
      jpName: "imouto",
      enName: "Dusty Yellow",
    ),
  ];

  const ColorsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Colors',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        backgroundColor: const Color.fromARGB(255, 44, 36, 25),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, idx) {
          return Item(
            item: colors[idx],
            color: const Color.fromARGB(255, 47, 38, 29),
          );
        },
      ),
    );
  }
}
