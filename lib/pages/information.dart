// ignore_for_file: non_constant_identifier_names, unused_local_variable

import 'package:farmshield/calc/fertilizer_calculator.dart';
import 'package:farmshield/settings/setting_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InformationPage extends StatefulWidget {
  final String item;
  final int item_index;

  const InformationPage(
      {super.key, required this.item, required this.item_index});

  @override
  State<InformationPage> createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
  var plants = [
    [
      'apple_species_name'.tr,
      'apple_family_name'.tr,
      'apple_description'.tr,
      ['apple_disease_1'.tr, 'apple_disease_2'.tr, 'apple_disease_3'.tr],
      'apple_disease_prevention'.tr,
      'apple_fertilizer'.tr,
      'apple_precautions'.tr,
    ],
    [
      'mango_species_name'.tr,
      'mango_family_name'.tr,
      'mango_description'.tr,
      ['mango_disease_1'.tr, 'mango_disease_2'.tr, 'mango_disease_1'.tr],
      'mango_disease_prevention'.tr,
      'mango_fertilizer'.tr,
      'mango_precautions'.tr,
    ],
    [
      'potato_species_name'.tr,
      'potato_family_name'.tr,
      'potato_description'.tr,
      ['potato_disease_1'.tr, 'potato_disease_2'.tr, 'potato_disease_1'.tr],
      'potato_disease_prevention'.tr,
      'potato_fertilizer'.tr,
      'potato_precautions'.tr
    ],
    [
      'tomato_species_name'.tr,
      'tomato_family_name'.tr,
      'tomato_description'.tr,
      ['tomato_disease_1'.tr, 'tomato_disease_2'.tr, 'tomato_disease_3'.tr],
      'tomato_disease_prevention'.tr,
      'tomato_fertilizer'.tr,
      'tomato_precautions'.tr
    ],
    [
      'corn_species_name'.tr,
      'corn_family_name'.tr,
      'corn_description'.tr,
      ['corn_disease_1'.tr, 'corn_disease_2'.tr, 'corn_disease_3'.tr],
      'corn_disease_prevention'.tr,
      'corn_fertilizer'.tr,
      'corn_precautions'.tr
    ],
    [
      'soybean_species_name'.tr,
      'soybean_family_name'.tr,
      'soybean_description'.tr,
      ['soybean_disease_1'.tr, 'soybean_disease_2'.tr, 'soybean_disease_3'.tr],
      'soybean_disease_prevention'.tr,
      'soybean_fertilizer'.tr,
      'soybean_precautions'.tr
    ],
    [
      'grape_species_name'.tr,
      'grape_family_name'.tr,
      'grape_description'.tr,
      ['grape_disease_1'.tr, 'grape_disease_2'.tr, 'grape_disease_3'.tr],
      'grape_disease_prevention'.tr,
      'grape_fertilizer'.tr,
      'grape_precautions'.tr
    ],
    [
      'orange_species_name'.tr,
      'orange_family_name'.tr,
      'orange_description'.tr,
      ['orange_disease_1'.tr, 'orange_disease_2'.tr, 'orange_disease_3'.tr],
      'orange_disease_prevention'.tr,
      'orange_fertilizer'.tr,
      'orange_precautions'.tr
    ],
    [
      'strawberry_species_name'.tr,
      'strawberry_family_name'.tr,
      'strawberry_description'.tr,
      [
        'strawberry_disease_1'.tr,
        'strawberry_disease_2'.tr,
        'strawberry_disease_3'.tr
      ],
      'strawberry_disease_prevention'.tr,
      'strawberry_fertilizer'.tr,
      'strawberry_precautions'.tr
    ],
    [
      'guava_species_name'.tr,
      'guava_family_name'.tr,
      'guava_description'.tr,
      ['guava_disease_1'.tr, 'guava_disease_2'.tr, 'guava_disease_3'.tr],
      'guava_disease_prevention'.tr,
      'guava_fertilizer'.tr,
      'guava_precautions'.tr
    ],
    [
      'pomegranate_species_name'.tr,
      'pomegranate_family_name'.tr,
      'pomegranate_description'.tr,
      [
        'pomegranate_disease_1'.tr,
        'pomegranate_disease_2'.tr,
        'pomegranate_disease_3'.tr
      ],
      'pomegranate_disease_prevention'.tr,
      'pomegranate_fertilizer'.tr,
      'pomegranate_precautions'.tr
    ],
    [
      'coriander_species_name'.tr,
      'coriander_family_name'.tr,
      'coriander_description'.tr,
      [
        'coriander_disease_1'.tr,
        'coriander_disease_2'.tr,
        'coriander_disease_3'.tr
      ],
      'coriander_disease_prevention'.tr,
      'coriander_fertilizer'.tr,
      'coriander_precautions'.tr
    ],
    [
      'cherry_species_name'.tr,
      'cherry_family_name'.tr,
      'cherry_description'.tr,
      ['cherry_disease_1'.tr, 'cherry_disease_2'.tr, 'cherry_disease_3'.tr],
      'cherry_disease_prevention'.tr,
      'cherry_fertilizer'.tr,
      'cherry_precautions'.tr
    ],
    [
      'lemon_species_name'.tr,
      'lemon_family_name'.tr,
      'lemon_description'.tr,
      ['lemon_disease_1'.tr, 'lemon_disease_2'.tr, 'lemon_disease_3'.tr],
      'lemon_disease_prevention'.tr,
      'lemon_fertilizer'.tr,
      'lemon_precautions'.tr
    ]
  ];

  Map<String, String> plant_species = {};
  Map<String, String> plant_family = {};
  Map<String, String> plant_description = {};
  Map<String, String> plant_disease_prevention = {};
  Map<String, String> plant_fertilizer = {};
  Map<String, String> plant_precausion = {};

  @override
  void initState() {
    super.initState();
    plant_species = {
      "apple": plants[0][0].toString(),
      "mango": plants[1][0].toString(),
      "potato": plants[2][0].toString(),
      "tomato": plants[3][0].toString(),
      "corn": plants[4][0].toString(),
      "soybean": plants[5][0].toString(),
      "grape": plants[6][0].toString(),
      "orange": plants[7][0].toString(),
      "strawberry": plants[8][0].toString(),
      "guava": plants[9][0].toString(),
      "pomegranate": plants[10][0].toString(),
      "coriander": plants[11][0].toString(),
      "cherry": plants[12][0].toString(),
      "lemon": plants[13][0].toString(),
    };

    plant_family = {
      "apple": plants[0][1].toString(),
      "mango": plants[1][1].toString(),
      "potato": plants[2][1].toString(),
      "tomato": plants[3][1].toString(),
      "corn": plants[4][1].toString(),
      "soybean": plants[5][1].toString(),
      "grape": plants[6][1].toString(),
      "orange": plants[7][1].toString(),
      "strawberry": plants[8][1].toString(),
      "guava": plants[9][1].toString(),
      "pomegranate": plants[10][1].toString(),
      "coriander": plants[11][1].toString(),
      "cherry": plants[12][1].toString(),
      "lemon": plants[13][1].toString(),
    };
    plant_description = {
      "apple": plants[0][2].toString(),
      "mango": plants[1][2].toString(),
      "potato": plants[2][2].toString(),
      "tomato": plants[3][2].toString(),
      "corn": plants[4][2].toString(),
      "soybean": plants[5][2].toString(),
      "grape": plants[6][2].toString(),
      "orange": plants[7][2].toString(),
      "strawberry": plants[8][2].toString(),
      "guava": plants[9][2].toString(),
      "pomegranate": plants[10][2].toString(),
      "coriander": plants[11][2].toString(),
      "cherry": plants[12][2].toString(),
      "lemon": plants[13][2].toString(),
    };

    plant_disease_prevention = {
      "apple": plants[0][4].toString(),
      "mango": plants[1][4].toString(),
      "potato": plants[2][4].toString(),
      "tomato": plants[3][4].toString(),
      "corn": plants[4][4].toString(),
      "soybean": plants[5][4].toString(),
      "grape": plants[6][4].toString(),
      "orange": plants[7][4].toString(),
      "strawberry": plants[8][4].toString(),
      "guava": plants[9][4].toString(),
      "pomegranate": plants[10][4].toString(),
      "coriander": plants[11][4].toString(),
      "cherry": plants[12][4].toString(),
      "lemon": plants[13][4].toString(),
    };
    plant_fertilizer = {
      "apple": plants[0][5].toString(),
      "mango": plants[1][5].toString(),
      "potato": plants[2][5].toString(),
      "tomato": plants[3][5].toString(),
      "corn": plants[4][5].toString(),
      "soybean": plants[5][5].toString(),
      "grape": plants[6][5].toString(),
      "orange": plants[7][5].toString(),
      "strawberry": plants[8][5].toString(),
      "guava": plants[9][5].toString(),
      "pomegranate": plants[10][5].toString(),
      "coriander": plants[11][5].toString(),
      "cherry": plants[12][5].toString(),
      "lemon": plants[13][5].toString(),
    };

    plant_precausion = {
      "apple": plants[0][6].toString(),
      "mango": plants[1][6].toString(),
      "potato": plants[2][6].toString(),
      "tomato": plants[3][6].toString(),
      "corn": plants[4][6].toString(),
      "soybean": plants[5][6].toString(),
      "grape": plants[6][6].toString(),
      "orange": plants[7][6].toString(),
      "strawberry": plants[8][6].toString(),
      "guava": plants[9][6].toString(),
      "pomegranate": plants[10][6].toString(),
      "coriander": plants[11][6].toString(),
      "cherry": plants[12][6].toString(),
      "lemon": plants[13][6].toString(),
    };
  }
// Access the plant information using the widget.item

// Use plantDescription wherever needed in your widget
  String bullet = "\u2022 ";

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String species = plant_species[widget.item] ?? "";
    String family = plant_family[widget.item] ?? "";
    String description = plant_description[widget.item] ?? "";
    String disease = plants[widget.item_index][3].toString();
    String prevention = plant_disease_prevention[widget.item] ?? "";
    String fertilizer = plant_fertilizer[widget.item] ?? "";
    String k = disease.substring(1, disease.length - 1);
    List disease_items = k.split(",");
    String precausion = plant_precausion[widget.item] ?? "";
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.chevron_left_sharp,
                      size: 40,
                    )),
              ),
              Row(
                children: [
                  SizedBox(
                      height: 300,
                      width: 280,
                      child: Stack(children: [
                        const Positioned(
                          top: 2,
                          bottom: 12,
                          child: Image(
                            image: AssetImage(
                              "assets/icons/graph.png",
                            ),
                          ),
                        ),
                        Positioned(
                          top: 90,
                          left: 50,
                          child: Image(
                              height: 100,
                              width: 200,
                              image: AssetImage(
                                  'assets/icons/${widget.item}.png')),
                        )
                      ])),
                  Column(
                    children: [
                      items_name(
                          "plantname".tr,
                          widget.item.tr[0].toUpperCase() +
                              widget.item.tr.substring(1)),
                      items_name("species".tr, species),
                      items_name("family".tr, family),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: InformationItem(
                        title: 'desc'.tr,
                        bgColor: Colors.orange.shade100,
                        iconColor: Colors.orange,
                        icon: Icons.description,
                      ),
                    ),
                    test(description),
                    Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: InformationItem(
                        title: 'disease'.tr,
                        bgColor: Colors.blue.shade100,
                        iconColor: Colors.blue,
                        icon: Icons.bug_report_rounded,
                      ),
                    ),
                    for (int i = 0; i < 3; i++) bulletin(disease_items[i]),
                    Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: InformationItem(
                        title: 'diseaseprevention'.tr,
                        bgColor: Colors.deepPurple.shade100,
                        iconColor: Colors.deepPurple,
                        icon: Icons.shield_moon_outlined,
                      ),
                    ),
                    test(prevention),
                    Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: InformationItem(
                        title: 'fertilizeringredients'.tr,
                        bgColor: Colors.pink.shade100,
                        iconColor: Colors.pink,
                        icon: Icons.import_contacts_outlined,
                      ),
                    ),
                    test(fertilizer),
                    Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: InformationItem(
                        title: 'precautions'.tr,
                        bgColor: Colors.brown.shade100,
                        iconColor: Colors.brown,
                        icon: Icons.add_task_outlined,
                      ),
                    ),
                    test(precausion),
                    Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: InformationItem(
                        title: 'fertilizercalc'.tr,
                        bgColor: Colors.green.shade100,
                        iconColor: Colors.green,
                        icon: Icons.free_cancellation_outlined,
                      ),
                    ),
                    OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            side:
                                const BorderSide(width: 2, color: Colors.green),
                            backgroundColor: Colors.greenAccent.shade100,
                            foregroundColor: Colors.green),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyCustomForm(
                                      type: widget.item.toLowerCase())));
                        },
                        child: Text(
                            "${widget.item.tr[0].toUpperCase() + widget.item.tr.substring(1)} ${'precisecalc'.tr}")),
                    const SizedBox(
                      height: 20,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget bulletin(String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(
            left: 70,
          ),
          child: Text('\u2022',
              style:
                  TextStyle(fontSize: 20, letterSpacing: 0.8, wordSpacing: 2)),
        ),
        const SizedBox(
          width: 5,
        ),
        Expanded(
          child: Text(text,
              textAlign: TextAlign.left,
              softWrap: true,
              style: const TextStyle(
                  fontSize: 17, letterSpacing: 0.8, wordSpacing: 2)),
        ),
      ],
    );
  }

  Widget items_name(String title, String selecteditem) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
              color: Colors.blueAccent.shade700,
              wordSpacing: 3,
              fontWeight: FontWeight.bold,
              fontSize: 16),
        ),
        SizedBox(
          width: 109,
          child: Text(selecteditem,
              style: const TextStyle(
                  letterSpacing: 0,
                  color: Color.fromARGB(255, 75, 74, 74),
                  wordSpacing: 3,
                  fontWeight: FontWeight.w500,
                  fontSize: 16)),
        )
      ],
    );
  }

  Widget test(String text) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        text,
        style:
            const TextStyle(fontSize: 17, letterSpacing: 0.8, wordSpacing: 2),
      ),
    );
  }
}
