// ignore_for_file: unused_import

import 'package:farmshield/disease_detection.dart';
import 'package:farmshield/calculator/fertilizer_calculator.dart';
import 'package:farmshield/pages/weather_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

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
          context,
          MaterialPageRoute(
              builder: (_) => const FertilizerCalculator(
                    type: "banana",
                  )));

      // WeatherPage()));
      // DiseaseDetection()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: LottieBuilder.asset('assets/loading.json'),
    ));
  }
}
