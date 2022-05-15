import 'package:flutter/material.dart';
class IconLearnView extends StatelessWidget {
  IconLearnView({Key? key, required String title}) : super(key: key);
  final IconSizes iconSize = IconSizes();
  final IconColors iconColor = IconColors();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
          title: const Text("Hello")),
      body: Column(
        children: [

          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.message_outlined,
              color: Colors.red,
              size: 40,
            ),
          ),

          // Birinci Yöntem Class
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.message_outlined,
              color: iconColor.dullTurquoise,
              size: iconSize.iconSmall,
            ),
          ),

          // İkinci Yöntem Class
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.message_outlined,
              color: IconColors().dullTurquoise ,
              size: IconSizes().iconSmall,
            ),
          ),
        ],


      ),
    );
  }
}

class IconSizes {
  final double  iconSmall = 30;
}

class IconColors {
  final  dullTurquoise = Color(0xFF557D73);
}