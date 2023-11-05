import 'package:farmshield/api/translator.dart';
import 'package:farmshield/loading.dart';
import 'package:flutter/material.dart';

// void main() => runApp(
//       const MaterialApp(
//         home: Translate(),
//       ),
//     );

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // primarySwatch: Colors.brown,
        colorSchemeSeed: Color.fromARGB(255, 206, 188, 255),
      ),
      home: const Loading(),
    );
  }
}
