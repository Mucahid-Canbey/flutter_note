import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextFieldLearn extends StatefulWidget {
  TextFieldLearn({Key? key}) : super(key: key);

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  FocusNode focusNodeTextFieldOne = FocusNode();
  FocusNode focusNodeTextFieldTwo = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        child: Column(
          children: [
            TextField(
              maxLength: 33, // Harf sınırlama

              //   Harf sayısı arttıkça renk koyulaşır
              buildCounter: (BuildContext context, {int? currentLength, bool? isFocused, int? maxLength}) {
                return _animatedContainer(currentLength);
              },
              keyboardType: TextInputType.emailAddress, // Klavye Mail tipinden açılır
              autofillHints: const [AutofillHints.email],
              autofocus: true,
              focusNode: focusNodeTextFieldOne,
              textInputAction: TextInputAction.next, // Alt satıra geçiş,
              decoration: const InputDecoration(
                prefix: Icon(Icons.mail), // yanına icon ekler
                border: OutlineInputBorder(), // etrafını kaplar
                labelText: 'Mail', // iç alana yazı yazar
                fillColor: Colors.white54, filled: true, // Arka Plan Rengi
              ),
            ),
            TextField(
              focusNode: focusNodeTextFieldTwo,
              minLines: 2,
              maxLines: 4,
            )
          ],
        ),
      ),
    );
  }

  AnimatedContainer _animatedContainer(int? currentLength) {
    return AnimatedContainer(
      // Harf renk geçiş zaman suresi

      duration: const Duration(seconds: 1),
      height: 10,
      width: 10.0 * (currentLength ?? 0),
      color: Colors.green[100 * ((currentLength ?? 0) ~/ 4)],
    );
  }
}
