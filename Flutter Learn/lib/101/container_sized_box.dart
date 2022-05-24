import 'package:flutter/material.dart';
class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:Column(
        children: [
          SizedBox(   // sizebox 1. Kullanımı
            width: 300,
            height: 200,
            child: Text('A'*500),
          ),
          const SizedBox.shrink(), //Ekranda Boş Bir Alan
          SizedBox.square(dimension: 50, // Kare Bir Alan
            child: Text('sss'*50),
          ),

          Container(
            height: 50,
            constraints: const BoxConstraints(maxWidth: 150, minWidth: 100, maxHeight: 100),
            child: Text('aa'*1),
            padding: const EdgeInsets.all(10), // içeriye pading atar
            margin: const EdgeInsets.all(10), // dışa atar

            decoration:  BoxDecoration( // rengi burda veririz
              color: Colors.red,
              borderRadius: BorderRadius.circular(10), // kenarları götürür
              gradient: const LinearGradient(colors: [Colors.white,Colors.red]),
              boxShadow: const[BoxShadow(color: Colors.green, offset: Offset(0.1, 1),blurRadius: 52)],
              // shape: BoxShape.circle, // yuvarlak yapar
              border: Border.all(width: 10,color: Colors.black), // etrafına çerçeve ekler

            ),

          ),

        ],
      ),
    );
  }
}

// birinci kullanım
class ProjeContainerDecoration extends BoxDecoration {

  ProjeContainerDecoration():super(
    borderRadius: BorderRadius.circular(10),
    gradient: const LinearGradient(colors: [Colors.white,Colors.red]),
    boxShadow: const[BoxShadow(color: Colors.green, offset: Offset(0.1, 1),blurRadius: 52)],
    // shape: BoxShape.circle,
    border: Border.all(width: 10,color: Colors.black),
  );
}

// ikinci kullanım
class ProjectUtility {
  static BoxDecoration  boxDecoration = BoxDecoration( // rengi burda veririz
    color: Colors.red,
    borderRadius: BorderRadius.circular(10), // kenarları götürür
    gradient: const LinearGradient(colors: [Colors.white,Colors.red]),
    boxShadow: const[BoxShadow(color: Colors.green, offset: Offset(0.1, 1),blurRadius: 52)],
    // shape: BoxShape.circle, // yuvarlak yapar
    border: Border.all(width: 10,color: Colors.black), // etrafına çerçeve ekler

  );
}