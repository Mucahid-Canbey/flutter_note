import 'package:flutter/material.dart';

// üst üste binen tasarımlarda kullanılır

class StackLearn extends StatelessWidget {
  const StackLearn({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        // Son Giren Çıkıyor...
        children: [
          Container(
            color: Colors.redAccent,
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Container(
              color: Colors.blueAccent,
              height: 100,
            ),
          ),
          Positioned(
              right: 0,
              left: 0,
              top: 25,
              height: 100,
              child: Container(
                color: Colors.greenAccent,
              )),
          Positioned.fill(
              top: 100,
              right: 200,
              child: Container(
                color: const Color.fromARGB(255, 240, 105, 163),
              ))
        ],
      ),
    );
  }
}
