import 'package:farmshield/utils/color_util.dart';
import 'package:farmshield/pages/plant_screen.dart';
import 'package:flutter/material.dart';

class PlantApp extends StatefulWidget {
  const PlantApp({super.key});

  @override
  State<PlantApp> createState() => _PlantAppState();
}

class _PlantAppState extends State<PlantApp> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                HexColor("61B688").withOpacity(0.7),
                HexColor("61B688").withOpacity(0.5),
                HexColor("61B688").withOpacity(0.4)
              ],
              begin: const FractionalOffset(0.0, 0.0),
              end: const FractionalOffset(0.0, 1.0),
              stops: const [0.0, 0.5, 1.0],
              tileMode: TileMode.clamp),
        ),
        child: const PlantScreen());
  }
}
