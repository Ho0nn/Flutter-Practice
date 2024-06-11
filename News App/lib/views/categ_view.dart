import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/widgets/new_build_view.dart';
import 'package:news_app_ui_setup/widgets/news_list_views.dart';

class CategView extends StatelessWidget {
  // ignore: non_constant_identifier_names
  const CategView({super.key, required this.CategName});
  // ignore: non_constant_identifier_names
  final String CategName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          NewsListViewBuilder(
            categName: CategName,
          ),
        ],
      ),
    );
  }
}
