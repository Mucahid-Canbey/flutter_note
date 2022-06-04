import 'dart:ffi';

import 'package:flutter/material.dart';

class StatefullLifeCycLearn extends StatefulWidget {
  const StatefullLifeCycLearn({Key? key, required String title, required this.message}) : super(key: key);
  final String message;
  @override
  State<StatefullLifeCycLearn> createState() => _StatefullLifeCycLearnState();
}

class _StatefullLifeCycLearnState extends State<StatefullLifeCycLearn> {
  String _message = '';
  late final bool _is0dd;
  @override
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _computeName();
  }

  void initState() {
    super.initState();
    _message = widget.message;
    _is0dd = widget.message.length.isOdd;

    _computeName();
  }

  void _computeName() {
    if (_is0dd) {
      _message += ' = Çift';
    } else {
      _message += ' = Tek';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_message)),
      body: _is0dd
          ? TextButton(onPressed: () {}, child: Text(_message))
          : ElevatedButton(onPressed: () {}, child: Text(_message)),
    );
  }
}
