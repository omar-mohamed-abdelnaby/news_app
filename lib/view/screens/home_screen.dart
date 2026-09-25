import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('News App')),
      body: ItemCardNews(),
    );
  }
}

class ItemCardNews extends StatelessWidget {
  const ItemCardNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: .start,
        spacing: 10,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              src,
              height: 200,
              width: double.infinity,
              fit: .cover,
            ),
          ),
          Text('Europe', style: Theme.of(context).textTheme.titleSmall),
          Text(
            'Russian warship: Moskva sinks in Black Sea',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ],
      ),
    );
  }
}

final String src =
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfiM0fcUpzEkbm88pjH3beCOEsQE1rtUZE2gW9SGbMsrcbZ9n-0OMDeCgC&s=10';
