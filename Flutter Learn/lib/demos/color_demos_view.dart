import 'dart:developer';

import 'package:flutter/material.dart';

class ColorDemos extends StatefulWidget {
  const ColorDemos({Key? key, required this.initialColor}) : super(key: key);
  final Color? initialColor;

  @override
  State<ColorDemos> createState() => _ColorDemosState();
}

class _ColorDemosState extends State<ColorDemos> {
  Color? _backgroundColor;
  void chaneBackgroundColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }

  @override
  void initState() {
    super.initState();
    _backgroundColor = widget.initialColor ?? Colors.transparent;
  }

  @override
  void didUpdateWidget(covariant ColorDemos oldWidget) {
    super.didUpdateWidget(oldWidget);
    //print(oldWidget.initialColor != _backgroundColor);  Birinci yöntem
    //inspect(widget);  ikinci yöntem
    if (widget.initialColor != _backgroundColor && widget.initialColor != null) {
      chaneBackgroundColor(widget.initialColor!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      bottomNavigationBar: BottomNavigationBar(
          // Hangi id tıkladığını söyler
          onTap: _ColorOntap,
          items: const [
            BottomNavigationBarItem(
                icon: _ColorContainer(
                  color: Colors.redAccent,
                ),
                label: 'RED'),
            BottomNavigationBarItem(
                icon: _ColorContainer(
                  color: Colors.yellowAccent,
                ),
                label: 'YELLOW'),
            BottomNavigationBarItem(
                icon: _ColorContainer(
                  color: Colors.blue,
                ),
                label: 'Blue'),
          ]),
    );
  }

  void _ColorOntap(value) {
    print(value);
    if (value == _MyColors.red.index) {
      chaneBackgroundColor(Colors.red.shade200);
    } else if (value == _MyColors.yellow.index) {
      chaneBackgroundColor(Colors.yellow.shade200);
    } else if (value == _MyColors.blue.index) {
      chaneBackgroundColor(Colors.blue.shade200);
    }
  }
}

enum _MyColors { red, yellow, blue }

class _ColorContainer extends StatelessWidget {
  const _ColorContainer({
    Key? key,
    required this.color,
  }) : super(key: key);
  // ignore: non_constant_identifier_names
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: 10,
      height: 10,
    );
  }
}
