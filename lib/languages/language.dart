// import 'package:flutter/material.dart';
// // import 'package:translator/translator.dart';

// class App extends StatefulWidget {
//   const App({super.key});

//   @override
//   _AppState createState() => _AppState();
// }

// class _AppState extends State<App> {
//   GoogleTranslator translator =
//       new GoogleTranslator(); //using google translator

//   late String out;
//   final lang = TextEditingController(); //getting text

//   void trans() {
//     translator
//         .translate(lang.text, to: 'mr') //translating to hi = hindi
//         .then((output) {
//       setState(() {
//         out = output
//             as String; //placing the translated text to the String to be used
//       });
//       print(out);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Transalate !!"),
//       ),
//       body: Container(
//         child: Center(
//             child: Column(
//           children: <Widget>[
//             TextField(
//               controller: lang,
//             ),
//             ElevatedButton(
//               // color: Colors.red,
//               child: Text(
//                   "Press !!"), //on press to translate the language using function
//               onPressed: () {
//                 trans();
//               },
//             ),
//             Text(out.toString()) //translated string
//           ],
//         )),
//       ),
//     );
//   }
// }
