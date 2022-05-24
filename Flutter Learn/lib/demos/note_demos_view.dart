// ignore: unused_import
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_101/101/image_learn.dart';

class NoteDemos extends StatelessWidget {
  const NoteDemos({Key? key, required String title}) : super(key: key);
  final _text = "Create your first note";
  final _description = "Add a note";
  final _createNote = "Create a Note";
  final _importNote = "Import Note";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      backgroundColor: Colors.blueGrey[50],
      body: Padding(
        padding: PaddingItems().horizontalPadding,
        child: Column(
          children: [
            PngImage(path: ImageItem().note),
            _TitleWidget(text: _text),
            Padding(
              padding: PaddingItems().verticalPadding,
              child: _SubTitleWidget(
                title: _description * 10,
                //textAlign: TextAlign.left,
              ),
            ),
            ElevatedButton(
                onPressed: () {},
                child: SizedBox(
                    height: ButtonHeights.butonHeight,
                    child: Center(
                        child: Text(
                      _createNote,
                      style: Theme.of(context).textTheme.headline5,
                    )))),
            TextButton(onPressed: () {}, child: Text(_importNote)),
            const SizedBox(
              height: ButtonHeights.butonHeight,
            )
          ],
        ),
      ),
    );
  }
}

/// Center text widget
class _SubTitleWidget extends StatelessWidget {
  const _SubTitleWidget({
    Key? key,
    // ignore: unused_element
    this.textAlign = TextAlign.center,
    required this.title,
  }) : super(key: key);
  final TextAlign textAlign;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      style: Theme.of(context)
          .textTheme
          .subtitle1
          ?.copyWith(color: Colors.black87, fontWeight: FontWeight.w400),
    );
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context)
          .textTheme
          .headline5
          ?.copyWith(color: Colors.black87, fontWeight: FontWeight.w800),
    );
  }
}

class PaddingItems {
  final EdgeInsets horizontalPadding =
      const EdgeInsets.symmetric(horizontal: 20);

  final EdgeInsets verticalPadding = const EdgeInsets.symmetric(vertical: 10);
}

class ButtonHeights {
  static const double butonHeight = 50;
}
