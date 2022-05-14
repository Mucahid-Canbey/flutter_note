import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  const TextLearnView({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Metinsel ifadeleri kullanıcıya gösterdiğimiz görsel nesnedir.
            //Birinci Text
            const Text(
              "Merhaba",

              style: TextStyle(
                wordSpacing: 3, // Kelimeler arasına boşluk.
                letterSpacing: 2, // Harflerin ve kelimelerin arasına boşluk.
                fontSize: 44, // Text Boyutu.
                fontWeight: FontWeight.w600, // Text kalınlaştırma.
                decoration: TextDecoration.underline, // Metnin Altını Çizer.
                fontStyle: FontStyle.italic, // İtalik yazı.
                color: Colors.redAccent, // Metnin Rengi
              ),

              maxLines: 2, // Satır belirleme.
              overflow: TextOverflow.ellipsis, // Üç nokta bırakır.
              textAlign: TextAlign.right, // Text Yönünü belirler.
            ),


            Text(
              "Birinci Text",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right,
              style: ProjectStyles.newStyle,
            ),


            Text(
                "İkinci Text",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.right,
                style: Theme.of(context).textTheme.headline3?.copyWith(color: Colors.yellow)
            ),

          ],
        ),
      ),
    );
  }
}


// TextStle Class
class ProjectStyles {
  static TextStyle newStyle = const TextStyle(
    wordSpacing: 3,
    letterSpacing: 2,
    fontSize: 44,
    fontWeight: FontWeight.w600,
    decoration: TextDecoration.underline,
    fontStyle: FontStyle.italic,
    color: Color.fromARGB(255, 53, 9, 172),
  );
}
