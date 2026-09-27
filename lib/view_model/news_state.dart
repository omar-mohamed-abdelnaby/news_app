import 'package:news_app/data/news_model.dart';

abstract class NewsState {}

class NewsLoading extends NewsState {}

class NewsSuccess extends NewsState {
  List<ArticleModel> article;
  NewsSuccess(this.article);
}

class NewsError extends NewsState {
  String messageError;
  NewsError(this.messageError);
}
