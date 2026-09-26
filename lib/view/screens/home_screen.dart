import 'package:flutter/material.dart';
import 'package:news_app/api/result_api.dart';
import 'package:news_app/data/api_manager.dart';
import 'package:news_app/data/news_model.dart';
import 'package:news_app/view/widgets/item_card_news.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<ArticleModel> article = [];
  String? error;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    getArticles();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('News App')),
      body: isLoading
          ? _loadingView() : error != null ? _errorView()
          : _successview()
    );
  }

  Widget _successview(){
    return ListView.builder(
              itemBuilder: (context, index) =>
                  ItemCardNews(article: article[index]),
              itemCount: article.length,
            );
  }

  Widget _loadingView(){
    return Center(child: CircularProgressIndicator());
  }

  Widget _errorView() {
    return Center(child: Text(error!, style: TextStyle(
      fontSize: 30,
      color: Colors.red,
    ),));
  }

  void getArticles() async {
    final result = await ApiManager.getNews();
    // var newsModel = await ApiManager.getNews();
    // article = newsModel.articles ?? [];
    // setState(() {});
    switch (result) {
      case Success<NewsModel>():
        article = result.data.articles ?? [];
      case Error<NewsModel>():
        error = result.error;
    }
    isLoading = false;
    setState(() {});
  }
}
