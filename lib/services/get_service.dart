import 'package:dio/dio.dart';

import '../models/articl_model.dart';

class Services {
  static final Dio dio = Dio();
  static Future<List<Article>> getHttp(String category) async {
    try {
      Response response = await dio.get(
          "https://newsapi.org/v2/top-headlines?category=$category&country=eg&apiKey=29da7158651b44748e164f40d8b213e7");
      Map<String, dynamic> jsonData = response.data;
      // print(jsonData.values.lastOrNull);
      List<dynamic> myData = await jsonData['articles'];
      List<Article> articles = myData.map((e) => Article.fromJson(e)).toList();
      //articles.forEach(print);

      return articles;
    } catch (e) {
      return [];
    }
  }
}
