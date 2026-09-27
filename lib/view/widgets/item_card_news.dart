import 'package:flutter/material.dart';
import 'package:news_app/data/news_model.dart';
import 'package:news_app/view/widgets/image_news.dart';

class ItemCardNews extends StatelessWidget {
  const ItemCardNews({super.key, required this.article});

  final ArticleModel article;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: .start,
        spacing: 10,
        children: [
          ImageNews(image: article.urlToImage ?? src),
          Text(article.author ?? "", style: Theme.of(context).textTheme.titleSmall),
          Text(
            article.content ?? "",
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ],
      ),
    );
  }
}

final String src =
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfiM0fcUpzEkbm88pjH3beCOEsQE1rtUZE2gW9SGbMsrcbZ9n-0OMDeCgC&s=10';
