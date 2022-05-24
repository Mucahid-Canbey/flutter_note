import 'package:flutter/material.dart';

class AppBarLearnView extends StatelessWidget {
  const AppBarLearnView ({Key? key,required String title}) : super(key: key);
  final String _title = 'Welcome Learn';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),

        //Hepsi Main genel temalarına tanımlandı

        // Arka Plan Rengine uyar
        //elevation: 2, // Trans ın şeffaflığını belirtir
        //systemOverlayStyle: SystemUiOverlayStyle.light, // Status bar rengi
        // abbar genel ayarlandırma
       // actionsIconTheme: const IconThemeData(color: Colors.red,size: 44),
        // automaticallyImplyLeading: false  ,

        //Sol bölüm
        leading: const Icon(Icons.chevron_left), // Icon
        centerTitle: true, // Title Ortalar

        // Sağ bölüm
        actions: [IconButton(onPressed:() {}, icon: const Icon(Icons.mark_email_unread),

        ),
          const Center(child: CircularProgressIndicator(),)],//Loading
      ),
      body: Column(children: const [
      ],),

    );

  }
}
