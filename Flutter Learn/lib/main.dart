import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_101/101/app_bar.dart';
import 'package:flutter_101/101/button_learn.dart';
import 'package:flutter_101/101/card_learn.dart';
import 'package:flutter_101/101/container_sized_box.dart';

import '101/padding_learn.dart';
import '101/stateless_learn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,

      // Projenin geneline tanımlama.

      theme: ThemeData.light().copyWith(
          appBarTheme: const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      )),
      home: CardLearn(
        title: '',
      ),
    );
  }
}
