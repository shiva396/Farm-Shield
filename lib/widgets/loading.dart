// ignore_for_file: unused_import

import 'package:farmshield/authentication/signin.dart';
import 'package:farmshield/constants.dart';
import 'package:farmshield/screens/disease_detection.dart';
import 'package:farmshield/calc/fertilizer_calculator.dart';
import 'package:farmshield/pages/plant_custom.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => const DiseaseDetection()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: LottieBuilder.asset('assets/json/loading.json'),
    ));
  }
}
