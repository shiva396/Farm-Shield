import 'dart:io';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DetectionDeteils extends StatefulWidget {
  DetectionDeteils({super.key, required this.image, required this.results});

  File image;
  List results;

  @override
  State<DetectionDeteils> createState() => _DetectionDeteilsState();
}

class _DetectionDeteilsState extends State<DetectionDeteils> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: widget.results.isEmpty
              ? const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Warning',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.error,
                      color: Colors.red,
                      size: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                )
              : const Text(
                  'Identified Disease',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
        ),
        const SizedBox(
          height: 50,
        ),
        Center(
            child: Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)),
                child: Image.file(
                  widget.image,
                  fit: BoxFit.fill,
                ))),
        const SizedBox(
          height: 50,
        ),
        Center(
          child: Text(
            widget.results.isEmpty
                ? 'Caution Error'
                : widget.results[0]['label'].toString(),
            style: const TextStyle(
                fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(18.0, 8, 18, 8),
          child: Center(
            child: widget.results.isEmpty
                ? const Text(
                    'Description : This is not a leaf object',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.red,
                        fontWeight: FontWeight.bold),
                  )
                : Text(
                    'Possible Causes : ${Diseases(widget.results[0]['label'].toString())[0]}',
                    style: const TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(18.0, 8, 18, 8),
          child: Text(
            widget.results.isEmpty
                ? ''
                : 'Possible Solution : ${Diseases(widget.results[0]['label'].toString())[1]}',
            style: const TextStyle(
                fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        )
      ],
    ));
  }

  // ignore: non_constant_identifier_names
  List Diseases(name) {
    String possibleCauses = '';
    String possibleSolution = '';

    switch (name) {
      case "Pepper Bell Bacterial Spot":
        possibleCauses =
            "Caused by Xanthomonas bacteria, spread through splashing rain.";
        possibleSolution =
            "Spray early and often. Use copper and Mancozeb sprays.";
        break;

      case "Pepper Bell Healthy":
        possibleCauses = "Crops are okay.";
        possibleSolution = "Good Condition";
        break;

      case "Potato Early Blight":
        possibleCauses =
            "The fungus Alternaria solani, high humidity and long periods of leaf wetness.";
        possibleSolution =
            "Maintaining optimum growing conditions: proper fertilization, irrigation, and pests management.";
        break;

      case "Potato Healthy":
        possibleCauses = "Crops are okay.";
        possibleSolution = "Good Condition";
        break;

      case "Potato Late Blight":
        possibleCauses =
            "Occurs in humid regions with temperatures ranging between 4 and 29 °C.";
        possibleSolution =
            "Eliminating cull piles and volunteer potatoes, using proper harvesting and storage practices, and applying fungicides when necessary.";
        break;

      case "Tomato Bacterial Spot":
        possibleCauses =
            "Xanthomonas bacteria which can be introduced into a garden on contaminated seed and transplants, which may or may not show symptoms.";
        possibleSolution =
            "Remove symptomatic plants from the field or greenhouse to prevent the spread of bacteria to healthy plants.";
        break;

      case "Tomato Early Blight":
        possibleCauses =
            "The fungus Alternaria solani, high humidity and long periods of leaf wetness.";
        possibleSolution =
            "Maintaining optimum growing conditions: proper fertilization, irrigation, and pests management.";
        break;

      case "Tomato Healthy":
        possibleCauses = "Crops are okay.";
        possibleSolution = "Good Condition";
        break;

      case "Tomato Late Blight":
        possibleCauses = "Caused by the water mold Phytophthora infestans.";
        possibleSolution = "Timely application of fungicide";
        break;

      case "Tomato Leaf Mold":
        possibleCauses = "High relative humidity (greater than 85%).";
        possibleSolution =
            "Growing leaf mold resistant varieties, use drip irrigation to avoid watering foliage.";
        break;

      case "Tomato Septoria Leaf Spot":
        possibleCauses =
            "It is a fungus and spreads by spores most rapidly in wet or humid weather. Attacks plants in the nightshade family, and can be harbored on weeds within this family.";
        possibleSolution =
            "Remove infected leaves immediately, use organic fungicide options.";
        break;

      case "Tomato Spotted Spider Mites":
        possibleCauses =
            "Spider mite feeding on leaves during hot and dry conditions.";
        possibleSolution =
            "Aiming a hard stream of water at infested plants to knock spider mites off the plants. Also use of insecticidal soaps, horticultural oils.";
        break;

      case "Tomato Target Spot":
        possibleCauses =
            "The fungus Corynespora cassiicola which spreads to plants.";
        possibleSolution =
            "Planting resistant varieties, keeping farms free from weeds.";
        break;

      case "Tomato Mosaic Virus":
        possibleCauses =
            "Spread by aphids and other insects, mites, fungi, nematodes, and contact; pollen and seeds can carry the infection as well.";
        possibleSolution =
            "No cure for infected plants, remove all infected plants and destroy them.";
        break;

      case "Tomato Yellow Leaf Curl Virus":
        possibleCauses =
            "Physically spread plant-to-plant by the silverleaf whitefly.";
        possibleSolution =
            "Chemical control: Imidacloprid should be sprayed on the entire plant and below the leaves.";
        break;

      default:
        possibleCauses = "";
        possibleSolution = "";
        break;
    }

    return [possibleCauses, possibleSolution];
  }
}
