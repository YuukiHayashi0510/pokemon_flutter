import 'package:flutter/material.dart';
import './poke_list_item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeMode mode = ThemeMode.system;
    return MaterialApp(
      title: 'Pokemon Flutter',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: mode,
      home: const TopPage(),
    );
  }
}

class TopPage extends StatelessWidget {
  const TopPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) => PokeListItem(index: index)),
    );
  }
}

// class PikaButton extends StatelessWidget {
//   const PikaButton({Key? key, int? index}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       child: const Text('pikachu'),
//       onPressed: () => {
//         Navigator.of(context).push(
//           MaterialPageRoute(
//             builder: (BuildContext context) => const PokeDetail(),
//           ),
//         ),
//       },
//     );
//   }
// }