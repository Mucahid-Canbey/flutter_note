import 'package:flutter/material.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({Key? key, required String title}) : super(key: key);

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  final _pageController = PageController(viewportFraction: 0.7); // ikinci sayfa ön izlenim sağlar
  int _currentPageIndex = 0;
  void _updatePageIndex(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(_currentPageIndex.toString()),
          ),
          const Spacer(),
          FloatingActionButton(
            onPressed: () {
              _pageController.previousPage(duration: _DurationUtility._durationLow, curve: Curves.slowMiddle);
            },
            child: const Icon(Icons.chevron_left),
          ),
          FloatingActionButton(
            onPressed: () {
              _pageController.nextPage(duration: _DurationUtility._durationLow, curve: Curves.slowMiddle);
            },
            child: const Icon(Icons.chevron_right),
          )
        ],
      ),

      // Slaytlı geçiş efekti
      body: PageView(
        padEnds: false,
        controller: _pageController,
        onPageChanged: _updatePageIndex,
        children: [
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.deepPurpleAccent,
          ),
        ],
      ),
    );
  }
}

class _DurationUtility {
  static const _durationLow = Duration(seconds: 1);
}
