import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:news_app/api/result_api.dart';
import 'package:news_app/data/news_model.dart';

class ApiManager {
  static Future<ResultApi<NewsModel>> getNews() async {
    //https://newsapi.org/v2/everything?q=bitcoin&apiKey=96e81a556a344cac98279ca970e18c85
    try {
      Uri url = Uri.https("newsapi.org", "/v2/everything", {
        "q": "bitcoin",
        "apiKey": "96e81a556a344cac98279ca970e18c85",
      });
      var response = await http.get(url);
      if (response.statusCode >= 200 && response.statusCode < 300) {
        String responseString = response.body;
        var json = jsonDecode(responseString);
        // class model json to object
        return Success(NewsModel.fromJson(json));
      } else {
        return Error("Error From Server");
      }
    } on SocketException {
      return Error("Error From internet. try again...");
    } catch (e) {
      return Error('Error $e');
    }
  }
}
