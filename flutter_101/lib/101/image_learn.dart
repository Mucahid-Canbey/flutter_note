import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children:  [
          SizedBox(
            height: 300,
            width: 400,
            child: PngImage(path: ImageItem().apple,

              //fit : BoxFit.scaleDown,
              // fit : BoxFit.fitWidth,
              // fit : BoxFit.fitHeight

            ),
          ),
        ],
      )
    );
  }
}

class ImageItem{
  final String ayakkabi = "FJkNpveVUAEsbwK.jpg";
  final String apple = "png-apple-logo-9735";
}

class PngImage extends StatelessWidget {
  const PngImage({Key? key, required this.path}) : super(key: key);

  final String path ;

  @override
  Widget build(BuildContext context) {
    return Image.asset( _nameWithPath, fit : BoxFit.cover,);
    }
    String get _nameWithPath => 'png/$path.png';
}

