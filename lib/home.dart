import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  List<Card> _buildGridCards(int count) {
    List<Card> cards = List.generate(
      count,
          (int index) {
        return Card(
          clipBehavior: Clip.antiAlias,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AspectRatio(
                aspectRatio: 18.0 / 11.0,
                child: Image.asset('assets/diamond.png'),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Text('Title'),
                    SizedBox(height: 8.0),
                    Text('Secondary Text'),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
    return cards;
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu, semanticLabel: 'menu',),
          onPressed: (){ print('Menu button');},
        ),
        title: const Text("Shrine"),
        actions: <Widget>[
          IconButton(onPressed: (){print('Search button');}, icon: Icon(Icons.search, semanticLabel: 'Search',)),
          IconButton(onPressed: (){print('Filter button');}, icon: Icon(Icons.tune , semanticLabel: 'filter',),)
        ],
      ),
      body: GridView.count(
          crossAxisCount: 2,
        padding: const EdgeInsets.all(16),
        childAspectRatio: 8.0/9.0,
        children: _buildGridCards(10),

      ),
    );
  }
}
