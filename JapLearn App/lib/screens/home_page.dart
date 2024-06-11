import 'package:flutter/material.dart';
import 'package:langlearn/components/category.dart';
import 'package:langlearn/screens/colors.dart';
import 'package:langlearn/screens/family.dart';
import 'package:langlearn/screens/numbers.dart';
import 'package:langlearn/screens/pharses.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 161, 150, 125),
      appBar: AppBar(
        title: const Text(
          "T o k u",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        backgroundColor: const Color.fromARGB(255, 44, 36, 25),
      ),
      body: Column(
        children: [
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const NumbersPage();
                }),
              );
            },
            text: "Number",
            col: const Color.fromARGB(255, 56, 44, 32),
          ),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const FamilyPage();
                }),
              );
            },
            text: 'Family Members',
            col: const Color.fromARGB(255, 63, 53, 34),
          ),
          Category(
            text: 'Colors',
            col: const Color.fromARGB(255, 73, 59, 45),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const ColorsPage();
                }),
              );
            },
          ),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const PharsesPage();
                }),
              );
            },
            text: 'pharses',
            col: const Color.fromARGB(255, 96, 77, 58),
          )
        ],
      ),
    );
  }
}
