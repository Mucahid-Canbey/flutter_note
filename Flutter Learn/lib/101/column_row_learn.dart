import 'package:flutter/material.dart';

class ColumnRowLearn extends StatelessWidget {
  const ColumnRowLearn({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          //4+2+2+2
          // Ekranda, %25 alanı kapsar | row ve column da kullanılır.
          Expanded(
            flex: 4, // %40 Alan Kapsar
            child: Row(
              children: [
                Expanded(
                  child: Container(color: Colors.red),
                ),
                Expanded(
                  child: Container(color: Colors.blue),
                ),
                Expanded(
                  child: Container(color: Colors.yellow),
                ),
                Expanded(
                  child: Container(color: Colors.greenAccent),
                ),
              ],
            ),
          ),
          // 'Spacer()' Boşluk Bırakır
          const Spacer(flex: 2),
          Expanded(
              flex: 2,
              child: Row(
                //  Ana Özelliğini kullanmak istiyorsan 'mainAxisAlignment:'
                //  Eşit Parçaya  Böler  !
                //  mainAxisAlignment: MainAxisAlignment.spaceAround,

                //  Birmirinden Tamamen Uzaklaştırır
                //  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                //  Birbirine Olabilecek En Yakın Mesafeyi Sağlar
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                // Ara Özelliğini kullanıyorsan 'crossAxisAlignment:'
                crossAxisAlignment: CrossAxisAlignment.center, // Ortalar
                mainAxisSize: MainAxisSize.min, //Birleştirir
                children: const [
                  Text('a'),
                  Text('a2'),
                  Text('a3'),
                ],
              )),
          SizedBox(
            height: ProjectContainerSize.cardHeight,
            child: Column(children: const [
              Expanded(child: Text('data')),
              Expanded(child: Text('data')),
              Expanded(child: Text('data')),
              Spacer(),
              Expanded(child: Text('data')),
            ]),
          )
        ],
      ),
    );
  }
}

class ProjectContainerSize {
  static const double cardHeight = 200;
}
