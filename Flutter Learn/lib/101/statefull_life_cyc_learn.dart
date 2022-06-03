import 'package:flutter/material.dart';

class StatefullLifeCycLearn extends StatefulWidget {
  const StatefullLifeCycLearn({Key? key, required String title, required this.message}) : super(key: key);
  final String message;
  @override
  State<StatefullLifeCycLearn> createState() => _StatefullLifeCycLearnState();
}

class _StatefullLifeCycLearnState extends State<StatefullLifeCycLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: widget.message.length.isOdd ? const Text('Kelime Tek') : const Text('Kelime Çift'),),
      body: widget.message.length.isOdd 
      ? TextButton(onPressed: () {}, child: Text(widget.message))
      :ElevatedButton(onPressed: () {}, child: Text(widget.message)),
    );
  }
}
