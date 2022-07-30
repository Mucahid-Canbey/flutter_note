import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            TextButton(onPressed: () {}, child: const Text("index Save")),
            ElevatedButton(onPressed: () {}, child: const Text('data file')),
            IconButton(onPressed: () {}, icon: const Icon(Icons.account_circle)),
            FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.add),
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text('Welcome'),
            ),
            InkWell(
              onTap: () {},
              child: const Text('Google'),
            ),
            const SizedBox(
              height: 200,
            ),
            ElevatedButton(

                style: ElevatedButton.styleFrom(

                  primary: Colors.yellow,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20))),),

                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 20, bottom: 20, right: 40, left: 40),
                  child:
                      Text('Place bid', 
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                        color: Colors.black87)),
                ))
          ],
        ),
      ),
    );
  }
}

// Not
// CircleBorder() ,RoundedRectangleBorder()
