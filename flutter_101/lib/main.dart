import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_101/101/app_bar.dart';
import 'package:flutter_101/101/button_learn.dart';
import 'package:flutter_101/101/color_learn.dart';
import 'package:flutter_101/101/container_sized_box.dart';
import 'package:flutter_101/101/icon_learn.dart';
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
      debugShowCheckedModeBanner: false,

      theme: ThemeData.dark().copyWith(
        errorColor: ColorItems.porchase,
          appBarTheme: const AppBarTheme(
            centerTitle: true,
            systemOverlayStyle: SystemUiOverlayStyle.light,
            backgroundColor: Colors.transparent,
            elevation: 0.22,
          )
      ),
      home:  ColorLearn(title: 'Color Learn',),
    );
  }
}


