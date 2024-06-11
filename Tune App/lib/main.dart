import 'package:music_notes_player_app_setup/views/tunes_view.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const TuneApp());
}

class TuneApp extends StatelessWidget {
  const TuneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Tune(),
    );
  }
}
