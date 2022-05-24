import 'package:flutter/material.dart';
class PaddingLearn extends StatelessWidget {
  const PaddingLearn({Key? key, required String title}) : super(key: key);

  // Padding iki componet arası boşluk bırakır
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: ProjectPadding.pagePaddingVertical,
        child: Column(
          children: [

            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10)  ,
                child : Container(color: Colors.white,height: 100,)),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
              child: Container(color: Colors.redAccent,height: 100,),
            ),

             Padding(
               //const EdgeInsets.only(right: 20)
              padding: ProjectPadding.pagePaddingRightOnly + ProjectPadding.pagePaddingVertical,  // Class Padding
              child: const Text("data"),
            ),
          ],
    ),
      ),
    );
  }
}

class ProjectPadding {
  static const pagePaddingVertical= EdgeInsets.symmetric(vertical: 10);
  static const pagePaddingRightOnly= EdgeInsets.only(right: 10);
}