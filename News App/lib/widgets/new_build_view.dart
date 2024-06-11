import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/article_model.dart';
import 'package:news_app_ui_setup/services/news_servise.dart';
import 'package:news_app_ui_setup/widgets/news_list_views.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({
    super.key,
    required this.categName,
  });
  final String categName;
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;
  @override
  void initState() {
    super.initState();
    future = NewsService(Dio()).getNews(categName: widget.categName);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListView(articles: snapshot.data ?? []);
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: ErrorMessage(),
            );
          } else {
            return const SliverToBoxAdapter(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        });
  }
}

class ErrorMessage extends StatelessWidget {
  const ErrorMessage({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return const Text("Oops there is an ERROR!");
  }
}
