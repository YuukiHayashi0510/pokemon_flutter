import 'package:flutter/material.dart';
import './poke_list_item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokemon Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TopPage(),
    );
  }
}

class TopPage extends StatelessWidget {
  const TopPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  padding: const EdgeInsets.all(32),
                  child: Image.network(
                    "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/25.png",
                    height: 100,
                    width: 100,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text(
                    'No.25',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const Text(
              'pikachu',
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            // Chipでの実装ver
            // const Chip(
            //   label: Text('electric'),
            //   backgroundColor: Colors.yellow,
            // ),
              // Containerでの実装
            Container(
              child: const Text('electric'),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
        ]),
=======
      body: SafeArea(
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
          itemCount: 898,
          itemBuilder: (context, index) => PokeListItem(index: index),
        ),
>>>>>>> step3
      ),
    );
  }
}
