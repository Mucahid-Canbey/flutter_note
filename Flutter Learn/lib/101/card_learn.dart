import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children:  [

          Card(
            margin:ProjectMarginCard.marginCard , // Margin Class

            color: Colors.blueAccent,
            child: SizedBox(height: 100,width: 300,child: Center(child: Text('Ali')),),
           // shape: StadiumBorder(),
           // shape: CircleBorder(),
           //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

          ),

          _CustomCard(
            child: SizedBox(
              height: 100,width: 300,
              child: Center(child: Text('Ali')),),),

          Card(
            color: Theme.of(context).colorScheme.error,
            child: const SizedBox(height: 100,width: 100,
            ),
          ),

        ],

      ),
    );
  }
}

class _CustomCard extends StatelessWidget {
  const _CustomCard({Key? key, required this.child}) : super(key: key);

  final Widget child;
  @override
  Widget build(BuildContext context) {

    return Card(
      margin:ProjectMarginCard.marginCard ,

      child: child,
      //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    );
  }
}


class ProjectMarginCard{
  static const marginCard = EdgeInsets.all(10);
}