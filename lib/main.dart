import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/routes/app_routes.dart';
import 'package:news_app/core/theme/app_theme.dart';
import 'package:news_app/utils/bloc_observer.dart';
import 'package:news_app/view/screens/details_screen.dart';
import 'package:news_app/view/screens/home_screen.dart';
import 'package:news_app/view/screens/splach_screen.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: AppRoutes.splachScreen,
      routes: {
        AppRoutes.homeScreen: (context) => HomeScreen(),
        AppRoutes.detailsScreen: (context) => DetailsScreen(),
        AppRoutes.splachScreen: (context) => SplachScreen(),
      },
      theme: AppTheme.darkTheme,
      themeMode: .dark,
    );
  }
}