class Article {
  final String? author;
  final String? title;
  final String? description;
  final String url;
  final String? urlToImage;
  final DateTime? publishedAt;
  final String? content;

  Article({
    this.author,
    this.title,
    this.description,
    required this.url,
    this.urlToImage,
    this.publishedAt,
    this.content,
  });
  factory Article.fromJson(json) => Article(
        author: json['author'],
        title: json['title'],
        url: json['url'],
        description: json['description'],
        urlToImage: json['urlToImage'],
      );
}
