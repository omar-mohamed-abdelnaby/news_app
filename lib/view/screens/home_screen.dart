import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1877F2),
        title: Text(
          'News App',
          style: TextStyle(fontSize: 22, fontWeight: .bold),
        ),
        centerTitle: true,
      ),
      body: Image.network(src),
    );
  }
}

final String src =
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfiM0fcUpzEkbm88pjH3beCOEsQE1rtUZE2gW9SGbMsrcbZ9n-0OMDeCgC&s=10';
