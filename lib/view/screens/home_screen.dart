import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/data/news_model.dart';
import 'package:news_app/view/widgets/item_card_news.dart';
import 'package:news_app/view_model/news_cubit.dart';
import 'package:news_app/view_model/news_state.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewsCubit()..getArticles(),
      child: Scaffold(
        appBar: AppBar(title: Text('News App')),
        body: BlocBuilder<NewsCubit, NewsState>(
          builder: (context, state) {
            if (state is NewsSuccess) {
              return _successview(state.article);
            }
            if (state is NewsError) {
              return _errorView(state.messageError);
            }
            return _loadingView();
          },
        ),
      ),
    );
  }

  Widget _successview(List<ArticleModel> article) {
    return ListView.builder(
      itemBuilder: (context, index) => ItemCardNews(article: article[index]),
      itemCount: article.length,
    );
  }

  Widget _loadingView() {
    return Center(child: CircularProgressIndicator());
  }

  Widget _errorView(String error) {
    return Center(
      child: Text(error, style: TextStyle(fontSize: 30, color: Colors.red)),
    );
  }
}
