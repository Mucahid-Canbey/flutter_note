import 'package:flutter/material.dart';
import 'package:flutter_101/core/random_image.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({
    Key? key,
    required String title,
  }) : super(key: key);
  final imageUrl = 'https://picsum.photos/200/300';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                onTap: () {},
                title: const RandomImage(),
                subtitle: const Text('How do You use your card'),
                leading: const Icon(Icons.money),
                trailing:
                    const SizedBox(width: 20, child: Icon(Icons.chevron_right)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
