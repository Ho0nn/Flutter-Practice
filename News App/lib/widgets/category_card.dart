import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/categ_model.dart';
import 'package:news_app_ui_setup/views/categ_view.dart';

class CatCard extends StatelessWidget {
  const CatCard({super.key, required this.categ});
  final CategModel categ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategView(
                CategName: categ.categName,
              );
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Container(
          height: 100,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromARGB(255, 209, 237, 255),
            image: DecorationImage(
              image: AssetImage(categ.img),
              fit: BoxFit.fill,
            ),
          ),
          child: Center(
            child: Text(
              categ.categName,
              style: const TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
