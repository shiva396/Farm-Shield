// ignore_for_file: avoid_print, prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_import

import 'package:farmshield/pages/home_page.dart';
import 'package:farmshield/widgets/scanning_screen.dart';
import 'package:farmshield/settings/account_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tflite/flutter_tflite.dart';
import 'package:get/get.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:pytorch_mobile/enums/dtype.dart';
import 'package:pytorch_mobile/model.dart';
import 'package:pytorch_mobile/pytorch_mobile.dart';

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
    loadModel();
    super.initState();
  }

  int pageNo = 0;

  // Model? _imageModel, _customModel;

  // String? _imagePrediction;
  // List? _prediction;
  // File? _image;
  // ImagePicker _picker = ImagePicker();

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
      //   setState(() {
      //     results = recognitions!;

      image = image;
      imageSelected = true;
    });
  }

  Future loadModel() async {
    Tflite.close();
    String? res;
    res = await Tflite.loadModel(
        model: "assets/model/model_unquant.tflite",
        labels: "assets/model/labels.txt",
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
        backgroundColor: Color.fromARGB(246, 207, 252, 230),
        body: pageNo == 0 ? const Home() : const AccountScreen(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 7, 255, 40),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
          onPressed: () async {
            showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                      // icon: Icon(Icons.abc),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      title: Text('identifydisease'.tr),
                      content: Text('Choose the method'.tr),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => pickImageFromCamera(),
                          child: Text('Take a Pic'.tr),
                        ),
                        TextButton(
                          onPressed: () => pickImageFromGallery(),
                          child: Text('Choose  from Gallery'.tr),
                        ),
                      ],
                    ));
          },
          child: const Icon(
            Icons.document_scanner_outlined,
          ), //icon inside button
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          height: MediaQuery.of(context).size.height * 0.065,
          color: Color(0xFF1DB954),
          shape: const CircularNotchedRectangle(),
          notchMargin: 7,
          elevation: 0,
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
    // await classifyDisease(image);
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
    // await classifyDisease(image);
    print(results);
    // ignore: use_build_context_synchronously
    Navigator.push(context, MaterialPageRoute(builder: (_) {
      return ScanningScreen(image: image, results: results);
    }));
  }
}
