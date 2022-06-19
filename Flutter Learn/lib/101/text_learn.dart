import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  const TextLearnView({Key? key, required String title}) : super(key: key);
  ProjectKeys get keys => ProjectKeys();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        //  'Column()' Widgetların alt alta durmasını sağlar
        child: Column(
          // 'mainAxisAlignment: MainAxisAlignment' içeriği hizalar
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text(
              ('Örnek Text, ' * 10),

              style: const TextStyle(
                  wordSpacing: 11, //  Kelimeler arasına boşluk.
                  letterSpacing: 2, //  Harflerin ve kelimelerin arasına boşluk.
                  fontSize: 22, //  Text boyut.
                  fontWeight: FontWeight.w600, //  Kalınlaştırma.
                  decoration: TextDecoration.underline, //  Altını çizer.
                  fontStyle: FontStyle.italic, //  İtalik yazı.
                  color: Colors.green, //  Text Renk
                  backgroundColor: Colors.amberAccent // Arka plan renk.
                  ),

              maxLines: 2, //  Satır belirleme.
              overflow: TextOverflow.ellipsis, // Üç nokta bırakır.
              textAlign: TextAlign.center, //  Text yönünü belirler.
            ),
            Text(
              ('Merhaba, ' * 10),

              style: ProjectStyles.welcomeStyle,

              maxLines: 2, //  Satır belirleme.
              overflow: TextOverflow.ellipsis, // Üç nokta bırakır.
              textAlign: TextAlign.center, //  Text yönünü belirler.
            ),
            Text(
              (keys.welcomeKeys * 10),

              style: Theme.of(context).textTheme.headline5?.copyWith(
                    color: ProjectColors.welcomeColor,
                  ),

              maxLines: 2, //  Satır belirleme.
              overflow: TextOverflow.ellipsis, // Üç nokta bırakır.
              textAlign: TextAlign.center, //  Text yönünü belirler.
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectStyles {
  static TextStyle welcomeStyle = const TextStyle(
      wordSpacing: 11, //  Kelimeler arasına boşluk.
      letterSpacing: 2, //  Harflerin ve kelimelerin arasına boşluk.
      fontSize: 22, //  Text boyut.
      fontWeight: FontWeight.w600, //  Kalınlaştırma.
      decoration: TextDecoration.underline, //  Altını çizer.
      fontStyle: FontStyle.italic, //  İtalik yazı.
      color: Colors.green, //  Text Renk
      backgroundColor: Colors.amberAccent // Arka plan renk.
      );
}

class ProjectColors {
  static Color welcomeColor = Colors.red;
}

class ProjectKeys {
  final String welcomeKeys = 'sos, ';
}
