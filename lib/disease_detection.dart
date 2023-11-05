// ignore_for_file: avoid_print, prefer_const_literals_to_create_immutables

import 'package:farmshield/api/translator.dart';
import 'package:farmshield/calc/fertilizer_calculator.dart';
import 'package:farmshield/models/weather_model.dart';
import 'package:farmshield/pages/home_page.dart';
import 'package:farmshield/scanning_screen.dart';
import 'package:farmshield/services/weather_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tflite/flutter_tflite.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';

class DiseaseDetection extends StatefulWidget {
  const DiseaseDetection({super.key});

  @override
  State<DiseaseDetection> createState() => _DiseaseDetectionState();
}

class _DiseaseDetectionState extends State<DiseaseDetection> {
  late File image;
  List results = [];
  bool imageSelected = false;
  bool isOut = false;

  String name = "Harish";

  // @override
  // void initState() {
  //   super.initState();
  //   loadModel();
  // }

  int pageNo = 0;

  Future classifyDisease(File image) async {
    var recognitions = await Tflite.runModelOnImage(
      path: image.path, // required
      imageMean: 127.5, // defaults to 117.0
      imageStd: 127.5, // defaults to 1.0
      numResults: 2, // defaults to 5
      threshold: 0.2, // defaults to 0.1
    );

    setState(() {
      results = recognitions!;

      image = image;
      imageSelected = true;
    });
  }

  Future loadModel() async {
    Tflite.close();
    String? res;
    res = await Tflite.loadModel(
        model: "assets/model.tflite",
        labels: "assets/Labels.txt",
        numThreads: 1, // defaults to 1
        isAsset:
            true, // defaults to true, set to false to load resources outside assets
        useGpuDelegate:
            false // defaults to false, set to true to use GPU delegate
        );
    print(res);
  }

  @override
  void initState() {
    super.initState();

    loadModel();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(246, 242, 253, 248),
        body: pageNo == 0 ? const Home() : Translate(),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                      // icon: Icon(Icons.abc),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      title: const Text('Identify disease'),
                      content: const Text('Choose the method'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => pickImageFromCamera(),
                          child: const Text('Take a Pic'),
                        ),
                        TextButton(
                          onPressed: () => pickImageFromGallery(),
                          child: const Text('Choose  from Gallery'),
                        ),
                      ],
                    ));
          },
          child:
              const Icon(Icons.document_scanner_outlined), //icon inside button
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          //bottom navigation bar on scaffold
          color: const Color.fromARGB(255, 88, 232, 60),
          shape: const CircularNotchedRectangle(), //shape of notch
          notchMargin: 5,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: const Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                onPressed: () {
                  setState(() {
                    pageNo = 0;
                  });
                },
              ),
              IconButton(
                icon: const Icon(
                  Icons.people_alt_outlined,
                  color: Colors.white,
                ),
                onPressed: () {
                  setState(() {
                    pageNo = 1;
                  });

                  print(pageNo);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future pickImageFromGallery() async {
    final ImagePicker picker = ImagePicker();
    final XFile? pickedFile = await picker.pickImage(
      source: ImageSource.gallery,
    );
    setState(() {
      image = File(pickedFile!.path);
    });
    await classifyDisease(image);
    print(results);
    // ignore: use_build_context_synchronously
    Navigator.push(context, MaterialPageRoute(builder: (_) {
      return ScanningScreen(
        image: image,
        results: results,
      );
    }));
  }

  Future pickImageFromCamera() async {
    final ImagePicker picker = ImagePicker();
    final XFile? pickedFile = await picker.pickImage(
      source: ImageSource.camera,
    );
    setState(() {
      image = File(pickedFile!.path);
    });

    print('done');
    await classifyDisease(image);
    print(results);
    // ignore: use_build_context_synchronously
    Navigator.push(context, MaterialPageRoute(builder: (_) {
      return ScanningScreen(image: image, results: []);
    }));
  }
}


//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Text(
//             '🌿 FarmShield',
//           ),
//           centerTitle: true,
//         ),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const SizedBox(
//               height: 20,
//             ),
//             Center(
//               child: InkWell(
//                 onTap: () {
//                   pickImageFromCamera();
//                 },
//                 child: Container(
//                   width: 250,
//                   height: 50,
//                   decoration: BoxDecoration(
//                       color: const Color.fromARGB(255, 88, 237, 93),
//                       borderRadius: BorderRadius.circular(10)),
//                   child: const Padding(
//                     padding: EdgeInsets.all(8.0),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Icon(Icons.camera),
//                         SizedBox(
//                           width: 10,
//                         ),
//                         Text(
//                           'Pick Image Form Camera',
//                           style: TextStyle(
//                               color: Colors.black, fontWeight: FontWeight.bold),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             Center(
//               child: InkWell(
//                 onTap: () async {
//                   await pickImageFromGallery();
//                 },
//                 child: Container(
//                   width: 250,
//                   height: 50,
//                   decoration: BoxDecoration(
//                       color: Colors.green,
//                       borderRadius: BorderRadius.circular(10)),
//                   child: const Padding(
//                     padding: EdgeInsets.all(8.0),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Icon(Icons.file_copy),
//                         SizedBox(
//                           width: 10,
//                         ),
//                         Text(
//                           'Pick Image Form Gallery',
//                           style: TextStyle(
//                               color: Colors.black, fontWeight: FontWeight.bold),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 40,
//             ),
//           ],
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {},
//           child: const Icon(Icons.send), //icon inside button
//         ),
//         floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//         bottomNavigationBar: BottomAppBar(
//           //bottom navigation bar on scaffold
//           color: const Color.fromARGB(255, 88, 232, 60),
//           shape: const CircularNotchedRectangle(), //shape of notch
//           notchMargin: 5,
//           child: Row(
//             mainAxisSize: MainAxisSize.max,
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: <Widget>[
//               IconButton(
//                 icon: const Icon(
//                   Icons.menu,
//                   color: Colors.white,
//                 ),
//                 onPressed: () {},
//               ),
//               IconButton(
//                 icon: const Icon(
//                   Icons.people_alt_outlined,
//                   color: Colors.white,
//                 ),
//                 onPressed: () {},
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Future pickImageFromGallery() async {
//     final ImagePicker picker = ImagePicker();
//     final XFile? pickedFile = await picker.pickImage(
//       source: ImageSource.gallery,
//     );
//     setState(() {
//       image = File(pickedFile!.path);
//     });
//     await classifyDisease(image);
//     print(results);
//     // ignore: use_build_context_synchronously
//     Navigator.push(context, MaterialPageRoute(builder: (_) {
//       return ScanningScreen(
//         image: image,
//         results: results,
//       );
//     }));
//   }

//   Future pickImageFromCamera() async {
//     final ImagePicker picker = ImagePicker();
//     final XFile? pickedFile = await picker.pickImage(
//       source: ImageSource.camera,
//     );
//     setState(() {
//       image = File(pickedFile!.path);
//     });

//     print('done');
//     await classifyDisease(image);
//     print(results);
//     // ignore: use_build_context_synchronously
//     Navigator.push(context, MaterialPageRoute(builder: (_) {
//       return ScanningScreen(image: image, results: []);
//     }));
//   }
// }
