import 'package:flutter/material.dart';
import 'package:flutter_101/101/button_learn.dart';
import 'package:flutter_101/101/container_sized_box.dart';
import 'package:flutter_101/101/scaffold_learn.dart';
import 'package:flutter_101/101/text_learn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ButtonLearn(
        title: 'Button Learn',
      ),
    );
  }
}
