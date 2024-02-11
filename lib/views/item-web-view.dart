import 'package:flutter/material.dart';
import 'package:news_app/models/articl_model.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsItemWebView extends StatefulWidget {
  NewsItemWebView({super.key, required this.article});
  final Article article;

  @override
  State<NewsItemWebView> createState() => _NewsItemWebViewState();
}

class _NewsItemWebViewState extends State<NewsItemWebView> {
  late final controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = WebViewController()
      ..loadRequest(Uri.parse(widget.article.url));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blueAccent,
        title: Text(
          widget.article.title ?? "No Title ",
        ),
        centerTitle: true,
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}
