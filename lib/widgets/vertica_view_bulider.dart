import 'package:flutter/material.dart';
import 'package:news_app/models/articl_model.dart';
import 'package:news_app/views/vertical%20_view.dart';

import '../services/get_service.dart';

class VerticalViewBuilder extends StatefulWidget {
  final String category;

  const VerticalViewBuilder(this.category, {super.key});

  @override
  State<VerticalViewBuilder> createState() => _VerticalViewBuilderState();
}

class _VerticalViewBuilderState extends State<VerticalViewBuilder> {
  /*late final List<Article> articles;
  bool isLoading = true;*/
  var futureData;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    futureData = Services.getHttp(widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Article>>(
      future: futureData,
      builder: (context, snapshot) {
        return snapshot.hasData
            ? VerticalView(articles: snapshot.data ?? [])
            : snapshot.hasError
                ? SliverToBoxAdapter(
                    child: Container(
                      height: MediaQuery.sizeOf(context).height / 2,
                      child: const Center(
                        child: Text(
                          "Oops there in an error ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )
                : SliverToBoxAdapter(
                    child: Container(
                    height: MediaQuery.sizeOf(context).height / 2,
                    child: const Center(
                      child: CircularProgressIndicator(),
                    ),
                  ));
      },
    );

    // that is an initial code before refactring ui
    /*isLoading
        ? SliverToBoxAdapter(
            child: Container(
            height: MediaQuery.sizeOf(context).height / 2,
            child: const Center(
              child: CircularProgressIndicator(),
            ),
          ))
        : articles.isNotEmpty
            ? VerticalView(articles: articles)
            : SliverToBoxAdapter(
                child: Container(
                  height: MediaQuery.sizeOf(context).height / 2,
                  child: const Center(
                    child: Text("Oops there in an error ",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ),
              );
  */
  }
}
