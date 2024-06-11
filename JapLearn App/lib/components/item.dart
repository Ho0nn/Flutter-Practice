import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:langlearn/models/itemModel.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:langlearn/screens/numbers.dart';
import 'package:langlearn/models/itemModel.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.item, required this.color});
  final ItemModel item;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: color,
      child: Row(
        children: [
          Container(
            color: const Color.fromARGB(255, 225, 220, 177),
            child: Image.asset(item.img!),
          ),
          Expanded(child: ItemInfo(item: item)),
        ],
      ),
    );
  }
}

class ItemInfo extends StatelessWidget {
  const ItemInfo({super.key, required this.item});
  final ItemModel item;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                item.jpName,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              Text(
                item.enName,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
        const Spacer(
          flex: 1,
        ),
        IconButton(
          onPressed: () {
            item.playSound();
          },
          icon: const Icon(
            Icons.play_arrow,
            color: Color.fromARGB(255, 255, 255, 255),
            size: 32,
          ),
        ),
      ],
    );
  }
}

class phrasesItem extends StatelessWidget {
  const phrasesItem({super.key, required this.item, required this.col});
  final ItemModel item;
  final Color col;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: col,
      child: ItemInfo(
        item: item,
      ),
    );
  }
}
