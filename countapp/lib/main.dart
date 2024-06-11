import 'package:flutter/material.dart';

void main() {
  runApp(CountApp());
}

class CountApp extends StatefulWidget {
  const CountApp({super.key});

  @override
  State<CountApp> createState() => _CountAppState();
}

class _CountAppState extends State<CountApp> {
  int cntA = 0, cntB = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 28, 81, 124),
          title: const Text(
            "Points Counter",
            style: TextStyle(
                fontFamily: "Pacifico",
                fontSize: 50,
                color: Color.fromARGB(255, 222, 211, 61)),
          ),
        ),
        body: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Column(
                children: [
                  const Text(
                    "TEAM A",
                    style: TextStyle(
                        fontFamily: "Pacifico",
                        fontSize: 40,
                        color: Color.fromARGB(255, 35, 74, 111)),
                  ),
                  Text(
                    '$cntA',
                    style: const TextStyle(
                      fontFamily: "Pacifico",
                      fontSize: 100,
                      color: Color.fromARGB(255, 28, 75, 111),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 28, 75, 111),
                        fixedSize: const Size(200, 60)),
                    onPressed: () {
                      cntA++;
                      setState(() {});
                    },
                    child: const Text(
                      "Points++",
                      style: TextStyle(
                        //  fontFamily: "Pacifico",
                        fontSize: 32,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 28, 75, 111),
                        fixedSize: const Size(200, 60)),
                    onPressed: () {
                      cntA += 2;
                      setState(() {});
                    },
                    child: const Text(
                      "+2 Points",
                      style: TextStyle(
                        //  fontFamily: "Pacifico",
                        fontSize: 32,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 28, 75, 111),
                        fixedSize: const Size(200, 60)),
                    onPressed: () {
                      cntA += 3;
                      setState(() {});
                    },
                    child: const Text(
                      "+3 Points",
                      style: TextStyle(
                        //  fontFamily: "Pacifico",
                        fontSize: 32,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 450,
                child: VerticalDivider(
                  color: Color.fromARGB(255, 28, 75, 111),
                  thickness: 2,
                  width: 100,
                  indent: 10,
                ),
              ),
              Column(
                children: [
                  const Text(
                    "TEAM B",
                    style: TextStyle(
                        fontFamily: "Pacifico",
                        fontSize: 40,
                        color: Color.fromARGB(255, 28, 75, 111)),
                  ),
                  Text(
                    '$cntB',
                    style: const TextStyle(
                      fontFamily: "Pacifico",
                      fontSize: 100,
                      color: Color.fromARGB(255, 28, 75, 111),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 28, 75, 111),
                        fixedSize: const Size(200, 60)),
                    onPressed: () {
                      cntB += 1;
                      setState(() {});
                    },
                    child: const Text(
                      "Points++",
                      style: TextStyle(
                          //  fontFamily: "Pacifico",
                          fontSize: 32,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 28, 75, 111),
                        fixedSize: const Size(200, 60)),
                    onPressed: () {
                      cntB += 2;
                      setState(() {});
                    },
                    child: const Text(
                      "+2 Points",
                      style: TextStyle(
                          //  fontFamily: "Pacifico",
                          fontSize: 32,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 28, 75, 111),
                        fixedSize: const Size(200, 60)),
                    onPressed: () {
                      cntB += 3;
                      setState(() {});
                    },
                    child: const Text(
                      "+3 Points",
                      style: TextStyle(
                          //  fontFamily: "Pacifico",
                          fontSize: 32,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                ],
              )
            ]),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 28, 75, 111),
                  fixedSize: const Size(200, 60)),
              onPressed: () {
                cntA = 0;
                cntB = 0;
                setState(() {});
              },
              child: const Text(
                "Reset",
                style: TextStyle(
                    //  fontFamily: "Pacifico",
                    fontSize: 32,
                    color: Color.fromARGB(255, 255, 255, 255)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
