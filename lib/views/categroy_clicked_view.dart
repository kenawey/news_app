import 'package:flutter/material.dart';
import 'package:news_app/widgets/vertica_view_bulider.dart';

class CategoryClickedView extends StatelessWidget {
  const CategoryClickedView({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: CustomScrollView(
        slivers: [
          VerticalViewBuilder(
            title,
          )
        ],
      ),
    );
  }
}
