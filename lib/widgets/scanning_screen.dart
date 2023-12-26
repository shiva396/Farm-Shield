// ignore_for_file: avoid_print

import 'dart:io';

import 'package:farmshield/pages/detection_image.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

// import '../screens/detection_image.dart';

// ignore: must_be_immutable
class ScanningScreen extends StatefulWidget {
  ScanningScreen({super.key, required this.image, required this.results});

  File image;
  List results;

  @override
  State<ScanningScreen> createState() => _ScanningScreenState();
}

class _ScanningScreenState extends State<ScanningScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      print(widget.results);
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) {
        // return 
        return DetectionDeteils(image: widget.image, results: widget.results);
      }));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        body: Center(
      child: LottieBuilder.asset('assets/json/scan.json'),
    ));
  }
}
