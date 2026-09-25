import 'package:flutter/material.dart';
import 'package:news_app/core/routes/app_routes.dart';
import 'package:news_app/core/theme/app_theme.dart';
import 'package:news_app/view/screens/details_screen.dart';
import 'package:news_app/view/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: AppRoutes.detailsScreen,
      routes: {
        AppRoutes.homeScreen: (context) => HomeScreen(),
        AppRoutes.detailsScreen: (context) => DetailsScreen(),
      },
      theme: AppTheme.darkTheme,
      themeMode: .dark,
    );
  }
}