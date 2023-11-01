// ignore_for_file: avoid_print, prefer_const_literals_to_create_immutables

import 'package:farmshield/scanning_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tflite/flutter_tflite.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

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

  @override
  void initState() {
    super.initState();
    loadModel();
  }

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
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            '🌿 FarmShield',
          ),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            Center(
              child: InkWell(
                onTap: () {
                  pickImageFromCamera();
                },
                child: Container(
                  width: 250,
                  height: 50,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 88, 237, 93),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.camera),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Pick Image Form Camera',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: InkWell(
                onTap: () async {
                  await pickImageFromGallery();
                },
                child: Container(
                  width: 250,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.file_copy),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Pick Image Form Gallery',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.send), //icon inside button
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
                  Icons.menu,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(
                  Icons.people_alt_outlined,
                  color: Colors.white,
                ),
                onPressed: () {},
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


// import 'package:flutter/material.dart';
// import 'package:flutter_mobile_vision_2/flutter_mobile_vision_2.dart';
// // import 'package:flutter_mobilevision/flutter_mobilevision.dart';
// import 'package:pytorch_mobile/pytorch_mobile.dart';
// import 'dart:io';
// import 'package:image_picker/image_picker.dart';

// class DiseaseDetection extends StatefulWidget {
//   const DiseaseDetection({Key? key});

//   @override
//   _DiseaseDetectionState createState() => _DiseaseDetectionState();
// }

// class _DiseaseDetectionState extends State<DiseaseDetection> {
//   late File image;
//   List results = [];
//   bool imageSelected = false;
//   bool isOut = false;
//   late  PyTorchMobile pyTorchModel;

//   @override
//   void initState() {
//     super.initState();
//     loadPyTorchModel();
//   }

//   Future<void> classifyDisease(File image) async {
//     // Perform inference with the PyTorch model.
//     // You need to adapt this part to your specific PyTorch model implementation.
//     // For PyTorch model inference, refer to the 'pytorch_mobile' package documentation.

//     // Sample code (replace with actual model inference):
//     var inputTensor = ...; // Convert image to a PyTorch tensor
//     var outputTensor = pyTorchModel.forward(inputTensor);
    
//     // Process the outputTensor to get results.

//     setState(() {
//       results = ...; // Process the PyTorch model output.
//       image = image;
//       imageSelected = true;
//     });
//   }

//   Future<void> loadPyTorchModel() async {
//     // Load the PyTorch model.
//     pyTorchModel = await PyTorchMobile.loadModel('assets/model.pt');
//     print('PyTorch model loaded');
//   }

//   Future<void> pickImageFromGallery() async {
//     final ImagePicker picker = ImagePicker();
//     final XFile? pickedFile = await picker.pickImage(
//       source: ImageSource.gallery,
//     );
//     setState(() {
//       image = File(pickedFile!.path);
//     });
//     await classifyDisease(image);
//     print(results);
//   }

//   Future<void> pickImageFromCamera() async {
//     final ImagePicker picker = ImagePicker();
//     final XFile? pickedFile = await picker.pickImage(
//       source: ImageSource.camera,
//     );
//     setState(() {
//       image = File(pickedFile!.path);
//     });

//     await classifyDisease(image);
//     print(results);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Text(
//             '🌿 Plant Disease Detection',
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
//                       color: Colors.green,
//                       borderRadius: BorderRadius.circular(10)),
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: const [
//                         Icon(Icons.camera),
//                         SizedBox(
//                           width: 10,
//                         ),
//                         Text(
//                           'Pick Image From Camera',
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
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: const [
//                         Icon(Icons.file_copy),
//                         SizedBox(
//                           width: 10,
//                         ),
//                         Text(
//                           'Pick Image From Gallery',
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
//       ),
//     );
//   }
// }
