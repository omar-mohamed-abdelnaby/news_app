import 'package:flutter/material.dart';
import 'package:news_app/core/routes/app_routes.dart';

class SplachScreen extends StatelessWidget {
  const SplachScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed(AppRoutes.homeScreen);
          },
          child: Text('Go To Home'),
        ),
      ),
    );
  }
}
