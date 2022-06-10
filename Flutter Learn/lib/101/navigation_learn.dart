import 'package:flutter/material.dart';
import 'package:flutter_101/101/image_learn.dart';

class NavigationLearn extends StatefulWidget {
  const NavigationLearn({Key? key}) : super(key: key);

  @override
  State<NavigationLearn> createState() => _NavigationLearnState();
}

class _NavigationLearnState extends State<NavigationLearn> with NavigatorManger {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.navigation_rounded),
        onPressed: () {
          navigaterToWidget(context, const ImageLearn(title: 'sos'));
        },
      ),
    );
  }
}

mixin NavigatorManger {
  void navigaterToWidget(BuildContext context, Widget widget) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) {
        return widget;
      },
      fullscreenDialog: true, //Yukarıdan aşığıya açılan sayfa
      settings: const RouteSettings(),
    ));
  }
}
