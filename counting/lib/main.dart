import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int cnt = 0;
  void _increment() {
    setState(() {
      cnt++;
    });
  }

  void _decrement() {
    setState(() {
      cnt--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Count App",
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: const Color.fromARGB(255, 16, 65, 139),
          ),
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: _decrement,
                  child: const Text(
                    "Minus",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                Text(
                  "$cnt",
                  style: const TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 25, 98, 154),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: _increment,
                  child: const Text(
                    "Plus",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
