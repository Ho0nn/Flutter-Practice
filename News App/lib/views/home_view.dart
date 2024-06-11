import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app_ui_setup/models/article_model.dart';
import 'package:news_app_ui_setup/services/news_servise.dart';
import 'package:news_app_ui_setup/widgets/categ_list_view.dart';
import 'package:news_app_ui_setup/widgets/new_build_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 3,
        backgroundColor: const Color.fromARGB(255, 236, 147, 227),
        title: const Text(
          'News Cloud',
          style: TextStyle(
            color: Color.fromARGB(255, 6, 71, 123),
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: CategListView(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 30,
              ),
            ),
            NewsListViewBuilder(
              categName: "general",
            ),
          ],
        ),
      ),
    );
  }
}
