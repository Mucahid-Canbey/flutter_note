import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            SizedBox(
              height: 300,
              width: 400,
              child: PngImage(
                path: ImageItem().apple,
              ),
              //fit : BoxFit.scaleDown,
              // fit : BoxFit.fitWidth,
              // fit : BoxFit.fitHeight
            ),
            SizedBox(
              height: 300,
              width: 400,
              child: Image.network(
                "https://elements-cover-images-0.imgix.net/98aa7c09-7eed-417f-9abc-601154e408de?auto=compress%2Cformat&fit=max&w=710&s=209e65ea4acb49ffd30e48695ae58409",
                errorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.abc_outlined), // Icon Hata alırsa çıkar
              ),
            )
          ],
        ));
  }
}

class ImageItem {
  final String apple = "png-apple-logo-9735";
  final String note = "note";
}

class PngImage extends StatelessWidget {
  const PngImage({Key? key, required this.path}) : super(key: key);

  final String path;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      _nameWithPath,
      fit: BoxFit.cover,
      height: 300,
      width: 300,
    );
  }

  String get _nameWithPath => 'png/$path.png';
}
