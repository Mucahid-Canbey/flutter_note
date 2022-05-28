import 'package:flutter/material.dart';

class IndicatorLearn extends StatelessWidget {
  const IndicatorLearn({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [CenterCircularProgres()],
      ),
      body: const LinearProgressIndicator(),
    );
  }
}

class CenterCircularProgres extends StatelessWidget {
  const CenterCircularProgres({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: CircularProgressIndicator(
      strokeWidth: 10,
      backgroundColor: Colors.red,
    ));
  }
}
