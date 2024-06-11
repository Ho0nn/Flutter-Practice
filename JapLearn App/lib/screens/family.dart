import 'package:flutter/material.dart';
import 'package:langlearn/components/item.dart';
import 'package:langlearn/models/itemModel.dart';

class FamilyPage extends StatelessWidget {
  final List<ItemModel> familyMembers = const [
    ItemModel(
      sound: 'sounds/family_members/father.wav',
      img: 'assets/images/family_members/family_father.png',
      jpName: "chichi",
      enName: "father",
    ),
    ItemModel(
      sound: 'sounds/family_members/mother.wav',
      img: 'assets/images/family_members/family_mother.png',
      jpName: "haha",
      enName: "mother",
    ),
    ItemModel(
      sound: 'sounds/family_members/daughter.wav',
      img: 'assets/images/family_members/family_daughter.png',
      jpName: "musume",
      enName: "daughter",
    ),
    ItemModel(
      sound: 'sounds/family_members/son.wav',
      img: 'assets/images/family_members/family_son.png',
      jpName: "musuko",
      enName: "son",
    ),
    ItemModel(
      sound: 'sounds/family_members/grand father.wav',
      img: 'assets/images/family_members/family_grandfather.png',
      jpName: "sofu",
      enName: "grand father",
    ),
    ItemModel(
      sound: 'sounds/family_members/grand mother.wav',
      img: 'assets/images/family_members/family_grandmother.png',
      jpName: "obo",
      enName: "grand mother",
    ),
    ItemModel(
      sound: 'sounds/family_members/younger brohter.wav',
      img: 'assets/images/family_members/family_younger_brother.png',
      jpName: "shichi",
      enName: "younger brother",
    ),
    ItemModel(
      sound: 'sounds/family_members/younger sister.wav',
      img: 'assets/images/family_members/family_younger_sister.png',
      jpName: "imouto",
      enName: "younger sister",
    ),
    ItemModel(
      sound: 'sounds/family_members/olderbrother.wav',
      img: 'assets/images/family_members/family_older_brother.png',
      jpName: "ani",
      enName: "older brother",
    ),
    ItemModel(
      sound: 'sounds/family_members/older sister.wav',
      img: 'assets/images/family_members/family_older_sister.png',
      jpName: "ane",
      enName: "older sister",
    ),
  ];

  const FamilyPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Family',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        backgroundColor: const Color.fromARGB(255, 44, 36, 25),
      ),
      body: ListView.builder(
        itemCount: familyMembers.length,
        itemBuilder: (context, idx) {
          return Item(
            item: familyMembers[idx],
            color: const Color.fromARGB(255, 63, 53, 34),
          );
        },
      ),
    );
  }
}
