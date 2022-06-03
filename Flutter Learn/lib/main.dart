import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_101/101/column_row_learn.dart';
import 'package:flutter_101/101/custom_widget_learn.dart';
import 'package:flutter_101/101/indicator_learn.dart';
import 'package:flutter_101/101/list_tile_learn.dart';
import 'package:flutter_101/101/stack_learn.dart';
import 'package:flutter_101/101/statefull_learn.dart';
import 'package:flutter_101/demos/stack_demo_view.dart';

import '101/color_learn.dart';

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
          listTileTheme:
              const ListTileThemeData(contentPadding: EdgeInsets.zero),
          progressIndicatorTheme: const ProgressIndicatorThemeData(
            color: Colors.white,
          ),
          cardTheme: CardTheme(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          errorColor: ColorItems.porchase,
          appBarTheme: const AppBarTheme(
            centerTitle: true,
            systemOverlayStyle: SystemUiOverlayStyle.light,
            backgroundColor: Colors.transparent,
            elevation: 0.22,
          )),
      home: StatefullLearn(
        title: 'Statefull Learn',
      ),
    );
  }
}
