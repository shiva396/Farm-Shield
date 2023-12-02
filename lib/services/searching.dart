import 'package:farmshield/pages/information.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class CustomSearchDelegate extends SearchDelegate {
// start
  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.blue;
    }
    return Colors.green;
  }

  //colors for the containers
  List color_items = [
    [const Color.fromARGB(255, 117, 191, 226), const Color(0xff73A1F9)],
    [const Color(0xffFFB157), const Color(0xffFFA057)],
    [const Color(0xffD76895), const Color(0xff8F7AFE)],
    [Colors.pink, Colors.red],
    [
      const Color(0xff42E695),
      const Color(0xff388288),
    ],
  ];

  //boolean for attendance
  bool? attenbool = true;

  //over

// Demo list to show querying
  List<String> searchTerms = [
    'apple',
    'mango',
    'potato',
    'tomato',
    'corn',
    'soybean',
    'grape',
    'orange',
    'strawberry',
    'guava',
    'pomegranate',
    'coriander',
    'cherry',
    'lemon'
  ];
  List<String> nutrientDescriptions = [
    'fiber_vitamin_c',
    'vitamin_a_vitamin_c',
    'p_potassium_vitamin_b6',
    't_lycopene_vitamin_c',
    'fiber_vitamin_b',
    'soy_protein_iron',
    'antioxidants_resveratrol',
    'o_vitamin_c_fiber',
    'straw_vitamin_c_antioxidants',
    'vitamin_c_fiber',
    'pomegr_antioxidants_vitamin_c',
    'cori_antioxidants_vitamin_k',
    'c_antioxidants_vitamin_c',
    'vitamin_c_citric_acid',
  ];

// first overwrite to
// clear the search text
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

// second overwrite to pop out of search menu
  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

// third overwrite to show query result
  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }

    if (matchQuery.isEmpty) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset("assets/json/notfound.json"),
          const Text(
            "Search not found",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          )
        ],
      );
    } else {
      return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          int colorCount = 0;
          var result = matchQuery[index];
          if (index >= color_items.length) {
            colorCount = index % color_items.length;
          } else {
            colorCount = index;
          }
          var height = MediaQuery.of(context).size.height;
          var width = MediaQuery.of(context).size.width;
          return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => InformationPage(
                            item: result,
                            item_index: searchTerms.indexOf(result))));
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Stack(
                  children: [
                    Container(
                      height: height * 0.15,
                      width: width,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: color_items[colorCount],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: color_items[colorCount][1],
                            blurRadius: 12,
                            offset: const Offset(0, 6),
                          )
                        ],
                        borderRadius: BorderRadius.circular(19),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      top: height * 0.0001,
                      child: CustomPaint(
                        size: const Size(100, 150),
                        painter: Custompaint(12, color_items[colorCount][0],
                            color_items[colorCount][1]),
                      ),
                    ),
                    Positioned(
                      left: width * 0.02,
                      top: height * 0.03,
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage(
                          'assets/icons/${result.toLowerCase()}.png',
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      left: width * 0.25,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          result.tr.toUpperCase(),
                          style: const TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    Positioned(
                        left: width * 0.28,
                        top: 60,
                        child: Text(
                          nutrientDescriptions[index].tr,
                          style: const TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(210, 10, 8, 8),
                              fontWeight: FontWeight.w500),
                        ))
                  ],
                ),
              ));
        },
      );
    }
  }

// last overwrite to show the
// querying process at the runtime
  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    int colorCount = 0;

    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        if (index >= color_items.length) {
          colorCount = index % color_items.length;
        } else {
          colorCount = index;
        }
        return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => InformationPage(
                          item: result,
                          item_index: searchTerms.indexOf(result))));
            },
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Stack(
                children: [
                  Container(
                    height: height * 0.15,
                    width: width,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: color_items[colorCount],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: color_items[colorCount][1],
                          blurRadius: 12,
                          offset: const Offset(0, 6),
                        )
                      ],
                      borderRadius: BorderRadius.circular(19),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    top: height * 0.0001,
                    child: CustomPaint(
                      size: const Size(100, 150),
                      painter: Custompaint(12, color_items[colorCount][0],
                          color_items[colorCount][1]),
                    ),
                  ),
                  Positioned(
                    left: width * 0.02,
                    top: height * 0.03,
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(
                        'assets/icons/${result.toLowerCase()}.png',
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: width * 0.25,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        result.tr.toUpperCase(),
                        style: const TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  Positioned(
                      left: width * 0.28,
                      top: 60,
                      child: Text(
                        nutrientDescriptions[index].tr,
                        style: const TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(210, 10, 8, 8),
                            fontWeight: FontWeight.w500),
                      ))
                ],
              ),
            ));
      },
    );
  }
}

class PlaceInfo {
  PlaceInfo(this.startColor, this.endColor);
  final Color startColor;
  final Color endColor;
}

class Custompaint extends CustomPainter {
  final double radius;
  final Color startColor;
  final Color endColor;
  Custompaint(this.radius, this.startColor, this.endColor);
  @override
  void paint(Canvas canvas, Size size) {
    var radius = 24.0;
    var paint = Paint();
    paint.shader = ui.Gradient.linear(
        const Offset(0, 0), Offset(size.width, size.height), [
      HSLColor.fromColor(startColor).withLightness(0.8).toColor(),
      endColor
    ]);
    var path = Path()
      ..moveTo(0, size.height)
      ..lineTo(size.width - radius, size.height)
      ..quadraticBezierTo(
          size.width, size.height, size.width, size.height - radius)
      ..lineTo(size.width, radius)
      ..quadraticBezierTo(size.width, 0, size.width - radius, 0)
      ..lineTo(size.width - 1.5 * radius, 0)
      ..quadraticBezierTo(-radius, 2 * radius, 0, size.height)
      ..close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
