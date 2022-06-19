import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),

        /// 'Column()' Widgetların alt alta durmasını sağlar.
        body: Center(
          child: Column(
            children: [
              ///
              /// 'SizedBox()' Bir görsel veya nesneyi boyutlandırabiilriz.
              SizedBox(
                width: 300, // Genişlik
                height: 200, // Yükseklik
                child: Text('Hello, ' * 500),
              ),

              const SizedBox.shrink(), // Boş bir alan için.
              //  Bir kutu oluşturur .
              SizedBox.square(
                dimension: 50,
                child: Text('MC ' * 50),
              ),

              /// 'Container()'  şekillendirebileceğimiz ve içerisine nesneler
              /// yerleştirebileceğimiz kutular olarak tanımlayabiliriz.
              Container(
                //  Kutu Kısıtlamaları
                constraints: const BoxConstraints(maxWidth: 200, minWidth: 111, maxHeight: 100, minHeight: 11),
                padding: const EdgeInsets.all(10), // iç alanın boşluğunu ayarlar.
                margin: const EdgeInsets.all(10), //  Dış alanın boşluğunu ayarlar
                decoration: ProjectUtilty.boxDecoration,
                child: Text(
                  'B, ' * 500,
                  maxLines: 2,
                ),
              )
            ],
          ),
        ));
  }
}

class ProjectUtilty {
  static BoxDecoration boxDecoration = BoxDecoration(
    // Kutunun kenarlarını oval yapar.
    borderRadius: BorderRadius.circular(10),
    // Renk Geçişi
    gradient: const LinearGradient(colors: [Colors.yellow, Colors.red]),
    // Kutu gölge.
    boxShadow: const [BoxShadow(color: Colors.green, offset: Offset(5.8, 22), blurRadius: 11)],
    // shape: BoxShape.circle | Daire Kutu
    border: Border.all(width: 11, color: Colors.white38), // Kutuya çerçeve ekler
  );
}
