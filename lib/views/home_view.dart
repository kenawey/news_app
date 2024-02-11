import 'package:flutter/material.dart';
import 'package:news_app/views/horizental_view.dart';
import 'package:news_app/widgets/vertica_view_bulider.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("News",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black)),
            Text("Cloud ",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.orange))
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
      ),
      body: const CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(child: HorizentalView()),
          // SliverToBoxAdapter(child: VerticalView()), // this class is used to convert list view to sliver
          VerticalViewBuilder(
              'general'), // we do not need to convert this because it return sliver List
        ],
      ),
    );
  }
}
