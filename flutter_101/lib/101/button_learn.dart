import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
              // Arka planı olmayam button
              child: Text("Save",
                  style: Theme.of(context).textTheme.subtitle1), //Text Style
              style: ButtonStyle(
                //Birinci yol Style
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.redAccent),
              ),
              onPressed: () {}),
          ElevatedButton(
              // Arka planı olan Button
              onPressed: () {},
              child: const Text('data')),
          IconButton(
              // icon
              onPressed: () {},
              icon: const Icon(Icons.account_circle)),
          FloatingActionButton(
            // ekrana duyarlı çalışır , icon
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
          OutlinedButton(
            // çerçeveli button

            style: OutlinedButton.styleFrom(
              //İkinci yol Style
              backgroundColor: Colors.deepPurpleAccent,
              padding: const EdgeInsets.all(11), // etrafına boşluk verir

              shape: const CircleBorder(), // buton yuvarlak yapar
            ),
            onPressed: () {},
            child: const Text('data'),
          ),
          InkWell(
            // Alanı olmadan text de tıklmayı sağlar
            onTap: () {},
            child: const Text('data'),
          ),
          Container(
            height: 200,
            color: Colors.blueGrey,
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.black38,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
              ),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 20, bottom: 20, right: 40, left: 40),
                child: Text(
                  'Place bid',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ))
        ],
      ),
    );
  }
}

// Not
// CircleBorder() ,RoundedRectangleBorder()
