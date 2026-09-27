class NewsModel {
  String? status;
  int? totalResults;
  List<ArticleModel>? articles;
  NewsModel({
    required this.status,
    required this.totalResults,
    required this.articles,
  });

  NewsModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    totalResults = json['totalResults'];
    if (json['articles'] != null) {
      articles = <ArticleModel>[];
      json['articles'].forEach((v) {
        articles!.add(ArticleModel.fromJson(v));
      });
    }
  }
}

class ArticleModel {
  String? title;
  String? description;
  String? urlToImage;
  String? author;
  String? content;
  ArticleModel({
    required this.title,
    required this.description,
    required this.urlToImage,
    required this.author,
    required this.content,
  });

  ArticleModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    urlToImage = json['urlToImage'];
    author = json['author'];
    content = json['content'];
  }
}
