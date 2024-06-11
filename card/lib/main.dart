import 'package:flutter/material.dart';

void main() {
  runApp(const BusinessApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
        ),
        appBar: AppBar(
          title: const Text('Home'),
          backgroundColor: const Color.fromARGB(255, 204, 161, 69),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 14, vertical: 20),
              height: 40.8,
              width: 80,
              color: const Color.fromARGB(255, 179, 152, 251),
              child: const Text('hello world'),
            ),
            Container(
              height: 50,
              width: 60,
              color: Colors.green,
              child: const Text('hello Haneen'),
            ),
            Container(
              height: 50,
              width: 60,
              color: Colors.blue,
              child: const Text('hello '),
            ),
          ],
        ),
      ),
    );
  }
}

class BirthCard extends StatelessWidget {
  const BirthCard({super.key});
  @override
  build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFC8A83D),
        body: Center(
          child: Image(
            image: AssetImage("images/1706568718878.png"),
          ),
        ),
      ),
    );
  }
}

class BusinessApp extends StatelessWidget {
  const BusinessApp({super.key});
  @override
  build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF26435F),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 135,
              backgroundColor: Colors.yellow,
              child: CircleAvatar(
                radius: 130,
                backgroundImage: AssetImage("images/1657990405584.jpg"),
              ),
            ),
            const Text(
              "Haneen Mohamed",
              style: TextStyle(
                  color: Colors.white, fontSize: 30, fontFamily: 'Pacifico'),
            ),
            const Text(
              "Katkota ",
              style: TextStyle(
                  color: Colors.yellow, fontSize: 20, fontFamily: 'Pacifico'),
            ),
            const Divider(
              color: Colors.white,
              thickness: 1,
              indent: 50,
              endIndent: 50,
              height: 40,
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: const ListTile(
                leading: Icon(
                  Icons.account_tree_sharp,
                  size: 32,
                  color: Color(0xFF26435F),
                ),
                title: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                  child: Text(
                    "Hanona",
                    style: TextStyle(
                        fontFamily: "Pacifico",
                        fontSize: 30,
                        color: Color(0xFF26435F)),
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: const ListTile(
                leading: Icon(
                  Icons.phone,
                  size: 32,
                  color: Color(0xFF26435F),
                ),
                title: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                  child: Text(
                    "(+20) 1559844210",
                    style: TextStyle(
                        fontFamily: "Pacifico",
                        fontSize: 30,
                        color: Color(0xFF26435F)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.white,
                ),
                height: 70,
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Icon(
                        Icons.email,
                        size: 32,
                        color: Color(0xFF26435F),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: Text(
                        "Hanona0010@gmail.com",
                        style: TextStyle(
                            fontFamily: "Pacifico",
                            fontSize: 30,
                            color: Color(0xFF26435F)),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
