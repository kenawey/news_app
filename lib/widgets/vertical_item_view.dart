import 'package:flutter/material.dart';
import 'package:news_app/models/articl_model.dart';
import 'package:news_app/views/item-web-view.dart';

class VerticalItemView extends StatelessWidget {
  final Article article;

  const VerticalItemView({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    // List<NewsItem> Items = [
    //   NewsItem(
    //     "سعر االدولار ",
    //     "الدولار طاير فى الهواء ويصعد الى البرج ",
    //     const AssetImage("assets/images/dollar.jpg"),
    //   )
    // ];
    /*  var item = NewsItem(
      "سعر االدولار ",
      "الدولار طاير فى الهواء ويصعد الى البرج الدولار طاير فى الهواء ويصعد الى البرجالدولار طاير فى الهواء ويصعد الى البرجالدولار طاير فى الهواء ويصعد الى البرجالدولار طاير فى الهواء ويصعد الى البرجالدولار طاير فى الهواء ويصعد الى البرجالدولار طاير فى الهواء ويصعد الى البرج ",
      const AssetImage("assets/images/dollar.jpg"),
    );*/

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NewsItemWebView(article: article),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: article.urlToImage != null
            ? Column(
                children: [
                  ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      child: Image.network(
                        article.urlToImage ??
                            'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
                      )),
                  Text(
                    maxLines: 2,
                    article.title ?? ' empty title',
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        overflow: TextOverflow.ellipsis),
                  ),
                  Text(
                    maxLines: 2,
                    article.description ?? "No Description",
                    style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        overflow: TextOverflow.ellipsis),
                  ),
                  const Divider(
                    thickness: 5,
                    color: Colors.black,
                  )
                ],
              )
            : Column(
                children: [
                  Text(
                    maxLines: 4,
                    article.title ?? ' empty title',
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        overflow: TextOverflow.ellipsis),
                  ),
                  Text(
                    maxLines: 2,
                    article.description ?? "No Description",
                    style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        overflow: TextOverflow.ellipsis),
                  ),
                  const Divider(
                    thickness: 5,
                    color: Colors.black,
                  )
                ],
              ),
      ),
    );
  }
}
