import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calulator",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: CalcPage(),
    );
  }
}

class CalcPage extends StatefulWidget {
  @override
  _CalcPageState createState() => _CalcPageState();
}

class _CalcPageState extends State<CalcPage> {
  final TextEditingController _firstNum = TextEditingController();
  final TextEditingController _secondNum = TextEditingController();
  String result = " ";
  void _add() {
    int first = int.parse(_firstNum.text);
    int second = int.parse(_secondNum.text);
    setState(() {
      result = (first + second).toString();
    });
  }

  void _sub() {
    int first = int.parse(_firstNum.text);
    int second = int.parse(_secondNum.text);
    setState(() {
      result = (first - second).toString();
    });
  }

  @override
  Widget build(Object context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Calculator"),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            TextField(
              controller: _firstNum,
              decoration: const InputDecoration(labelText: "First Number"),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: _secondNum,
              decoration: const InputDecoration(labelText: "Second Number"),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Ressult : $result",
              style: const TextStyle(fontSize: 24),
            ),
            Row(
              children: [
                ElevatedButton(onPressed: _add, child: const Text("Add")),
                ElevatedButton(onPressed: _sub, child: const Text("Sub")),
              ],
            ),
          ],
        ));
  }
}
