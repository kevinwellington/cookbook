import 'package:flutter/material.dart';

class MyFavoritesPage extends StatefulWidget {
  const MyFavoritesPage({super.key});

  @override
  State<MyFavoritesPage> createState() => _MyFavoritesPageState();
}


class _MyFavoritesPageState extends State<MyFavoritesPage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Center(
            child: Text('Favorites', style: TextStyle(color: Colors.white, fontSize: 50,),)
          )
        ],
      )
      ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}
