import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  IconLearnView({Key? key, required String title}) : super(key: key);

  final IconSizes iconSize = IconSizes();
  final IconColors iconColor = IconColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Hello")),
      body: Column(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.message_outlined,
              color: Theme.of(context).backgroundColor, // icon renk.
              size: 40, // icon boyut.
            ),
          ),

          //
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.message_outlined,
              color: iconColor.amber,
              size: iconSize.iconSmall, // Class
            ),
          ),

          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.message_outlined,
              color: IconColors().red,
              size: IconSizes().iconSmall,
            ),
          ),
        ],
      ),
    );
  }
}

// icon Size class
class IconSizes {
  final double iconSmall = 30;
}

// icon color Class
class IconColors {
  final amber = Colors.amber;
  final red = Colors.red;
}
