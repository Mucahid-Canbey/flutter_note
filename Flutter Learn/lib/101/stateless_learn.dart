import 'package:flutter/material.dart';

class StatelessLearn extends StatelessWidget {
  const StatelessLearn({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const TitelTextWidget(
            text: 'mucahid-1'),
          _emtyBox(),
          const TitelTextWidget(
            text: 'mucahid-2'),
          _emtyBox(),
          const TitelTextWidget(
            text: 'mucahid-3'),
          _emtyBox(),
          const TitelTextWidget
          (text: 'mucahid-4'),
          const _CustomContainer(),
        ],
      ),
    );
  }

  //Basit companetler için StatelessWidget yerine 'Extract' metot
  SizedBox _emtyBox() => const SizedBox(
        height: 55,
      );
}

//  Dışarıdan parametre almak
class TitelTextWidget extends StatelessWidget {
  const TitelTextWidget({Key? key, required this.text}) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline3,
    );
  }
}

// sayfaya özel private olması için başına "_" ekleriz
class _CustomContainer extends StatelessWidget {
  const _CustomContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20), 
        color: Colors.white),
    );
  }
}
