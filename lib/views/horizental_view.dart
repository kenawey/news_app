import 'package:flutter/material.dart';
import 'package:news_app/views/categroy_clicked_view.dart';

import '../widgets/category_card.dart';

class HorizentalView extends StatelessWidget {
  const HorizentalView({super.key});

  @override
  Widget build(BuildContext context) {
    var category = [
      "sports",
      "business",
      "entertainment",
      "general",
      "health",
      "science",
      "technology"
    ];
    List<Widget> myList = category.map((e) => CategoryCard(e)).toList();
    return SizedBox(
      height: MediaQuery.sizeOf(context).height / 6,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: category.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CategoryClickedView(
                          title: category[index],
                        )));
          },
          child: CategoryCard(
            category[index],
          ),
        ),
      ),
    );
  }
}
