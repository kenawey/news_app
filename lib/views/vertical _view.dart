import 'package:flutter/material.dart';
import 'package:news_app/widgets/vertical_item_view.dart';

import '../models/articl_model.dart';

class VerticalView extends StatelessWidget {
  final List<Article> articles;

  const VerticalView({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    /*
    // that the old solution When we make scroll view that contain two list views
    Expanded(
      flex: 0,
      child: ListView.builder(
        // physics: AlwaysScrollableScrollPhysics(),
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: 20,
        itemBuilder: (context, index) => VerticalItemView(),
      ),
    );*/

    /*ListView.builder(
      // physics: AlwaysScrollableScrollPhysics(),
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      // physics: NeverScrollableScrollPhysics(),
      itemCount: 20,
      itemBuilder: (context, index) => VerticalItemView(),
    )*/

    return SliverList(
        delegate: SliverChildBuilderDelegate(
            childCount: articles.length,
            (context, index) => VerticalItemView(
                  article: articles[index],
                )));
  }
}
