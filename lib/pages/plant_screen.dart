// ignore_for_file: unused_field, library_private_types_in_public_api

import 'dart:async';

import 'package:farmshield/utils/time_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:rive/rive.dart';

class PlantScreen extends StatefulWidget {
  const PlantScreen({Key? key}) : super(key: key);

  @override
  _PlantScreenState createState() => _PlantScreenState();
}

class _PlantScreenState extends State<PlantScreen> {
  Artboard? _riveArtboard;
  StateMachineController? _controller;
  SMIInput<double>? _progress;
  String plantButtonText = "";

  late Timer _timer;
  int _treeProgress = 0;
  int _treeMaxProgress = 60;

  @override
  void initState() {
    super.initState();
    plantButtonText = "Plant";
    // Load the animation file from the bundle, note that you could also
    // download this. The RiveFile just expects a list of bytes.
    rootBundle.load('assets/model/tree_demo.riv').then(
      (data) async {
        // Load the RiveFile from the binary data.
        final file = RiveFile.import(data);

        // The artboard is the root of the animation and gets drawn in the
        // Rive widget.
        final artboard = file.mainArtboard;
        var controller = StateMachineController.fromArtboard(artboard, 'Grow');
        if (controller != null) {
          artboard.addController(controller);
          _progress = controller.findInput('input');
        }
        setState(() => _riveArtboard = artboard);
      },
    );
  }

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_treeProgress == _treeMaxProgress) {
          stopTimer();
          plantButtonText = "Plant";
          _treeProgress = 0;
          _treeMaxProgress = 60;
        } else {
          setState(() {
            _treeProgress++;
            _progress?.value = _treeProgress.toDouble();
          });
        }
      },
    );
  }

  void stopTimer() {
    setState(() {
      _timer.cancel();
    });
  }

  @override
  Widget build(BuildContext context) {
    double treeWidth = MediaQuery.of(context).size.width - 40;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    size: 30,
                    color: Colors.white,
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                "stayfocused".tr,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: Center(
                child: _riveArtboard == null
                    ? const SizedBox()
                    : Container(
                        width: treeWidth,
                        height: treeWidth,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(treeWidth / 2),
                            border:
                                Border.all(color: Colors.white12, width: 10)),
                        child: Rive(
                            alignment: Alignment.center,
                            artboard: _riveArtboard!),
                      ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                intToTimeLeft(_treeMaxProgress - _treeProgress).toString(),
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 30),
              child: Text(
                "timelefttogrowtheplant".tr,
                style: TextStyle(
                    color: Colors.white60,
                    fontSize: 20,
                    fontWeight: FontWeight.normal),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 100),
              child: MaterialButton(
                height: 40.0,
                minWidth: 180.0,
                elevation: 8.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                color: Colors.green,
                textColor: Colors.white,
                onPressed: () {
                  if (_treeProgress > 0) {
                    stopTimer();
                    plantButtonText = "plant".tr;
                    _treeProgress = 0;
                    _treeMaxProgress = 60;
                  } else {
                    plantButtonText = "surrender".tr;
                    startTimer();
                  }
                },
                splashColor: Colors.redAccent,
                child: Text(plantButtonText),
              ),
            )
          ],
        ),
      ),
    );
  }
}
