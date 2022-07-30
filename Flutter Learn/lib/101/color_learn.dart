import 'package:flutter/material.dart';

class ColorLearn extends StatelessWidget {
  const ColorLearn({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Theme.of(context).errorColor,
        child: Text('data'),
      ),
    );
  }
}

class ColorItems {
  static Color porchase = const Color(0xffEDBf61);
  static Color sulu = const Color.fromRGBO(198, 237, 97, 1);
}
