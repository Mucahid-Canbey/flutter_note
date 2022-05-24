import 'package:flutter/material.dart';

class ScaffoldLearn extends StatelessWidget {
  const ScaffoldLearn({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Text('Merhaba'),
      backgroundColor: Colors.red,
      floatingActionButton: FloatingActionButton(
          onPressed: () {}
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: const Drawer(),
      bottomSheet: const Text('data'),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.abc_outlined),label: 'A'),
        BottomNavigationBarItem(icon: Icon(Icons.abc_outlined),label: 'A')

      ]),
    );
  }
}
