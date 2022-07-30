import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarLearn extends StatelessWidget {
  const AppBarLearn({Key? key, required String title}) : super(key: key);
  final String _title = 'Welcome Learn';
  final String _title2 = 'Tool Bar';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _title,
        ),
        // Metni ortalar.
        centerTitle: true,
        // Arka Planı Şefaflaştırı.
        backgroundColor: Colors.transparent,
        // Belirginliği ayarlar
        elevation: 0,
        // default left buton kapatma
        automaticallyImplyLeading: false,

        actionsIconTheme: const IconThemeData(color: Colors.yellow, size: 33),
        // Tool bar bölümünün rengi.
        systemOverlayStyle: SystemUiOverlayStyle.light,
        // Tool bar text renk.
        toolbarTextStyle: const TextStyle(color: Colors.red),
        // icon.
        leading: const Icon(Icons.chevron_left),
        // Sağ tarafa alma.
        leadingWidth: 33,

        // 'actions[]' Appbar'da Sağ tarafı kullanmaya yarar.
        actions: [
          // App bar'ın sağ tarafını kullanır.
          IconButton(onPressed: () {}, icon: const Icon(Icons.mark_email_read)),
          const Center(
              // loading
              child: CircularProgressIndicator()),
          Text(
            _title2,
          ),
        ],
      ),
    );
  }
}
