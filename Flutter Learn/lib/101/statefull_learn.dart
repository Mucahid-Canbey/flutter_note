import 'package:flutter/material.dart';

import '../product/counter_helo_button.dart';

// değişmez bir widget ve dışardan haberleştiğimiz kısım.
class StatefullLearn extends StatefulWidget {
  const StatefullLearn({Key? key, required String title}) : super(key: key);

  @override
  State<StatefullLearn> createState() => _StatefullLearnState();
}

// asıl işlemleri yaptığımız kısım
class _StatefullLearnState extends State<StatefullLearn> {
  @override
  int _countValue = 0;
  void incrementValue() {
    setState(() {
      _countValue = _countValue + 1;
    });
  }

  void deincrementValue() {
    setState(() {
      _countValue = _countValue - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _incrementButton(),
          _deincrementButton(),
        ],
      ),
      body: Column(
        children: [
          Center(
              child: Text(
            _countValue.toString(),
            style: Theme.of(context).textTheme.headline2,
          )),
          const Placeholder(),
          const CounterHelloButton()
        ],
      ),
    );
  }

  Padding _deincrementButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: FloatingActionButton(
        onPressed: () {
          deincrementValue();
        },
        child: const Icon(Icons.remove),
      ),
    );
  }

  FloatingActionButton _incrementButton() {
    return FloatingActionButton(
      onPressed: () {
        incrementValue();
      },
      child: const Icon(Icons.add),
    );
  }
}
