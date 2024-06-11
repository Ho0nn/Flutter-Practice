import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/categ_model.dart';
import 'package:news_app_ui_setup/widgets/category_card.dart';

class CategListView extends StatelessWidget {
  const CategListView({
    super.key,
  });
  final List<CategModel> categs = const [
    CategModel(
      img: 'assets/business.avif',
      categName: 'Business',
    ),
    CategModel(
      img: 'assets/entertaiment.avif',
      categName: 'Entertainment',
    ),
    CategModel(
      img: 'assets/health.avif',
      categName: 'Health',
    ),
    CategModel(
      img: 'assets/science.avif',
      categName: 'Science',
    ),
    CategModel(
      img: 'assets/technology.jpeg',
      categName: 'Technology',
    ),
    CategModel(
      img: 'assets/sports.avif',
      categName: 'Sports',
    ),
    CategModel(
      img: 'assets/general.avif',
      categName: 'General',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categs.length,
          itemBuilder: (context, index) {
            return CatCard(
              categ: categs[index],
            );
          }),
    );
  }
}
