import 'package:flutter/material.dart';
import 'package:langlearn/screens/home_page.dart';

void main() {
  runApp(const LangLearn());
}

class LangLearn extends StatelessWidget {
  const LangLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
