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
    // loadModel();
    super.initState();
  }

  int pageNo = 0;

  String choosen = "";

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

  Future loadModel({required String path, required String label}) async {
    Tflite.close();
    String? res;
    res = await Tflite.loadModel(
        model: path,
        labels: label,
        numThreads: 1, // defaults to 1
        isAsset:
            true, // defaults to true, set to false to load resources outside assets
        useGpuDelegate:
            false // defaults to false, set to true to use GPU delegate
        );
    print(res);
  }

  List list = ["Mango", "Tomato", "Potato"];
  String dropdownValue = "Mango";

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
                      content: DropdownMenu<String>(
                        initialSelection: list.first,
                        onSelected: (String? value) {
                          // This is called when the user selects an item.
                          setState(() {
                            dropdownValue = value!;
                          });
                        },
                        dropdownMenuEntries:
                            list.map<DropdownMenuEntry<String>>((value) {
                          return DropdownMenuEntry<String>(
                              value: value, label: value);
                        }).toList(),
                      ),

                      actions: <Widget>[
                        TextButton(
                          onPressed: () async {
                            if (dropdownValue == "Mango") {
                              await loadModel(
                                  path:
                                      "assets/model/Mango/model_unquant.tflite",
                                  label: "assets/model/Mango/labels.txt");
                            } else if (dropdownValue == "Tomato") {
                              await loadModel(
                                  path:
                                      "assets/model/Tomato/model_unquant.tflite",
                                  label: "assets/model/Tomato/labels.txt");
                            } else if (dropdownValue == "Potato") {
                              await loadModel(
                                  path:
                                      "assets/model/Potato/model_unquant.tflite",
                                  label: "assets/model/Potato/labels.txt");
                            } else if (dropdownValue == "Guava") {
                              await loadModel(
                                  path:
                                      "assets/model/Guava/model_unquant.tflite",
                                  label: "assets/model/Guava/labels.txt");
                            } else if (dropdownValue == "Cotton") {
                              await loadModel(
                                  path:
                                      "assets/model/Cotton/model_unquant.tflite",
                                  label: "assets/model/Cotton/labels.txt");
                            }
                            await pickImageFromCamera();
                          },
                          child: Text('takeapic'.tr),
                        ),
                        TextButton(
                          onPressed: () async {
                            if (dropdownValue == "Mango") {
                              await loadModel(
                                  path:
                                      "assets/model/Mango/model_unquant.tflite",
                                  label: "assets/model/Mango/labels.txt");
                            } else if (dropdownValue == "Tomato") {
                              await loadModel(
                                  path:
                                      "assets/model/Tomato/model_unquant.tflite",
                                  label: "assets/model/Tomato/labels.txt");
                            } else if (dropdownValue == "Potato") {
                              await loadModel(
                                  path:
                                      "assets/model/Potato/model_unquant.tflite",
                                  label: "assets/model/Potato/labels.txt");
                            } else if (dropdownValue == "Guava") {
                              await loadModel(
                                  path:
                                      "assets/model/Guava/model_unquant.tflite",
                                  label: "assets/model/Guava/labels.txt");
                            } else if (dropdownValue == "Cotton") {
                              await loadModel(
                                  path:
                                      "assets/model/Cotton/model_unquant.tflite",
                                  label: "assets/model/Cotton/labels.txt");
                            }
                            await pickImageFromGallery();
                          },
                          child: Text('choosefromgallery'.tr),
                        ),
                      ],
                    ));
          },
          child: const Icon(Icons.document_scanner_outlined,
              color: Colors.black), //icon inside button
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
    if (dropdownValue == "Mango") {
      print("Mango");
    } else if (dropdownValue == "Tomato") {
      print("Tomato");
    }
    await classifyDisease(image);
    // await classifyDisease(image);
    print(results);
    // ignore: use_build_context_synchronously
    Navigator.push(context, MaterialPageRoute(builder: (_) {
      return ScanningScreen(image: image, results: results);
    }));
  }
}
