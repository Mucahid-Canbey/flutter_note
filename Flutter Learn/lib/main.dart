import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_101/101/custom_widget_learn.dart';

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
        cardTheme: CardTheme(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
        ),
        errorColor: ColorItems.porchase,
          appBarTheme: const AppBarTheme(
            centerTitle: true,
            systemOverlayStyle: SystemUiOverlayStyle.light,
            backgroundColor: Colors.transparent,
            elevation: 0.22,
          )
      ),
      home:   CustomWidgetLearn(title: 'Demos Learn',),
    );
  }
}


