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
      ['apple_disese_1'.tr, 'apple_disese_1'.tr, 'apple_disese_1'.tr],
      'apple_disease_prevention'.tr,
      'apple_fertilizer'.tr,
      'apple_precautions'.tr
    ],
    [
      'mango_species_name'.tr,
      'mango_family_name'.tr,
      'mango_description'.tr,
      ['mango_disease_1'.tr, 'mango_disease_1'.tr, 'mango_disease_1'.tr],
      'mango_disease_prevention'.tr,
      'mango_fertilizer'.tr,
      'mango_precautions'.tr
    ],
    [
      'potato_species_name'.tr,
      'potato_family_name'.tr,
      'potato_description'.tr,
      ['potato_disease_1'.tr, 'potato_disease_1'.tr, 'potato_disease_1'.tr],
      'potato_disease_prevention'.tr,
      'potato_fertilizer'.tr,
      'potato_precautions'.tr
    ],
    [
      'tomato_species_name'.tr,
      'tomato_family_name'.tr,
      'tomato_description'.tr,
      ['tomato_disease_1'.tr, 'tomato_disease_1'.tr, 'tomato_disease_1'.tr],
      'tomato_disease_prevention'.tr,
      'tomato_fertilizer'.tr,
      'tomato_precautions'.tr
    ],
    [
      'corn_species_name'.tr,
      'corn_family_name'.tr,
      'corn_description'.tr,
      ['corn_disease_1'.tr, 'corn_disease_1'.tr, 'corn_disease_1'.tr],
      'corn_disease_prevention'.tr,
      'corn_fertilizer'.tr,
      'corn_precautions'.tr
    ],
    [
      'soybean_species_name'.tr,
      'soybean_family_name'.tr,
      'soybean_description'.tr,
      ['soybean_disease_1'.tr, 'soybean_disease_1'.tr, 'soybean_disease_1'.tr],
      'soybean_disease_prevention'.tr,
      'soybean_fertilizer'.tr,
      'soybean_precautions'.tr
    ],
    [
      'grape_species_name'.tr,
      'grape_family_name'.tr,
      'grape_description'.tr,
      ['grape_disease_1'.tr, 'grape_disease_1'.tr, 'grape_disease_1'.tr],
      'grape_disease_prevention'.tr,
      'grape_fertilizer'.tr,
      'grape_precautions'.tr
    ],
    [
      'orange_species_name'.tr,
      'orange_family_name'.tr,
      'orange_description'.tr,
      ['orange_disease_1'.tr, 'orange_disease_1'.tr, 'orange_disease_1'.tr],
      'orange_disease_prevention'.tr,
      'orange_fertilizer'.tr,
      'orange_precautions'.tr
    ],
    [
      'strawberries_species_name'.tr,
      'strawberries_family_name'.tr,
      'strawberries_description'.tr,
      [
        'strawberries_disease_1'.tr,
        'strawberries_disease_1'.tr,
        'strawberries_disease_1'.tr
      ],
      'strawberries_disease_prevention'.tr,
      'strawberries_fertilizer'.tr,
      'strawberries_precautions'.tr
    ],
    [
      'guava_species_name'.tr,
      'guava_family_name'.tr,
      'guava_description'.tr,
      ['guava_disease_1'.tr, 'guava_disease_1'.tr, 'guava_disease_1'.tr],
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
        'pomegranate_disease_1'.tr,
        'pomegranate_disease_1'.tr
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
        'coriander_disease_1'.tr,
        'coriander_disease_1'.tr
      ],
      'coriander_disease_prevention'.tr,
      'coriander_fertilizer'.tr,
      'coriander_precautions'.tr
    ],
    [
      'cherry_species_name'.tr,
      'cherry_family_name'.tr,
      'cherry_description'.tr,
      ['cherry_disease_1'.tr, 'cherry_disease_1'.tr, 'cherry_disease_1'.tr],
      'cherry_disease_prevention'.tr,
      'cherry_fertilizer'.tr,
      'cherry_precautions'.tr
    ],
    [
      'lemon_species_name'.tr,
      'lemon_family_name'.tr,
      'lemon_description'.tr,
      ['lemon_disease_1'.tr, 'lemon_disease_1'.tr, 'lemon_disease_1'.tr],
      'lemon_disease_prevention'.tr,
      'lemon_fertilizer'.tr,
      'lemon_precautions'.tr
    ]
  ];

  // var plants = [
  //   [
  //     "Malus domestica",
  //     "Rosaceae",
  //     "Apple (Malus domestica) is a widely cultivated fruit tree known for its crisp and sweet fruits. Apples are available in various colors and varieties, with some of the most popular including Red Delicious, Granny Smith, and Gala. Apple trees are characterized by their lush, green leaves and beautiful blossoms. Apples are appreciated for their versatility and are used in a wide range of culinary applications. They can be eaten fresh, made into pies, applesauce, or used as a key ingredient in various desserts and savory dishes. Apples are not only a favorite snack but also a staple fruit in many kitchens, enjoyed for their delicious taste and nutritional value.",
  //     ["Apple scab", "Fire blight", "Cedar apple rust"],
  //     "Pruning, disease-resistant varieties, and proper orchard management can help prevent apple diseases.",
  //     "Apples benefit from fertilizers with balanced nutrients.",
  //     "Regular pruning and maintenance of apple trees are essential for healthy growth."
  //   ],
  //   [
  //     "Mangifera indica",
  //     "Anacardiaceae",
  //     "Mango (Mangifera indica) is a tropical evergreen tree renowned for its luscious, sweet, and aromatic fruits. The mango tree features large, glossy, dark green leaves, and the fruit varies in size, shape, and color, depending on the cultivar. Mangoes are cherished for their juicy, golden-orange flesh, which can be eaten fresh, blended into smoothies, or used in a wide array of culinary delights. This tropical delight is not only a favorite fruit but also holds cultural significance in many regions, often being referred to as the King of Fruits.",
  //     ["Anthracnose", "Powdery mildew", "Black spot"],
  //     "Proper pruning, regular spraying with fungicides, and maintaining good hygiene can help prevent mango diseases.",
  //     "Mango trees benefit from balanced fertilizers with elements like nitrogen, phosphorus, and potassium.",
  //     "Be cautious when handling the sap and leaves of mango trees, as they can cause skin irritations in some individuals."
  //   ],
  //   [
  //     "Solanum tuberosum",
  //     "Solanaceae",
  //     "The potato (Solanum tuberosum) is a versatile, underground tuberous crop that forms the basis of countless culinary dishes worldwide. Potatoes come in various shapes, sizes, and colors, with white, red, and yellow being the most common. The plant boasts lush, green foliage and produces tubers underground. Potatoes are a dietary staple and can be prepared in various ways, from crispy fries to creamy mashed potatoes, making them a beloved and versatile ingredient in many cuisines.",
  //     ["Late blight", "Early blight", "Potato scab"],
  //     "Crop rotation, selecting disease-resistant varieties, and proper storage can help prevent potato diseases.",
  //     "Potatoes benefit from fertilizers with higher levels of phosphorus and potassium.",
  //     "Avoid consuming green or sprouted potatoes, as they can contain toxic compounds."
  //   ],
  //   [
  //     "Solanum lycopersicum",
  //     "Solanaceae",
  //     "The tomato (Solanum lycopersicum) is a vibrant red or yellow fruit often mistaken for a vegetable due to its culinary uses. These juicy, tangy fruits are the quintessential ingredient in salads, sauces, and countless savory dishes. The tomato plant is characterized by its lush, green leaves and a tendency to sprawl as it produces clusters of round, plump fruit. Tomatoes are celebrated for their rich flavor and versatility in culinary applications, making them an essential ingredient in kitchens worldwide.",
  //     ["Tomato blight", "Early blight", "Powdery mildew"],
  //     "Proper spacing, staking, and regular care can help prevent tomato diseases.",
  //     "Tomatoes benefit from balanced fertilizers with an emphasis on nitrogen.",
  //     "Overwatering and poor air circulation can contribute to disease development in tomato plants."
  //   ],
  //   [
  //     "Zea mays",
  //     "Poaceae",
  //     "Corn, also known as maize (Zea mays), is a vital cereal grain cultivated for its starchy kernels. This warm-season crop features tall, grassy stalks with slender leaves and produces cobs of plump, sweet, and golden-yellow kernels. Corn has various culinary uses, from fresh corn on the cob to cornmeal and corn syrup, and it is a staple in many traditional dishes, including tortillas, cornbread, and polenta. It is not only a significant food source but also a crucial ingredient in the production of livestock feed, corn oil, and ethanol.",
  //     ["Rust", "Smut", "Northern corn leaf blight"],
  //     "Crop rotation, using disease-resistant varieties, and maintaining soil health can help prevent corn diseases.",
  //     "Corn benefits from fertilizers high in nitrogen and phosphorus.",
  //     "Plant corn in well-drained soil and provide proper spacing to reduce the risk of disease."
  //   ],
  //   [
  //     "Glycine max",
  //     "Fabaceae",
  //     "Soybean (Glycine max) is a leguminous crop known for its protein-rich seeds. These small, oval-shaped seeds are commonly used in various food products, including tofu, soy milk, and edamame. The soybean plant is recognizable by its trifoliate leaves and a growth pattern that includes bushy foliage and upright stems. It is an essential source of plant-based protein and is often cultivated for its nutritious properties, making it a staple in vegetarian and vegan diets.",
  //     ["Soybean rust", "Sudden death syndrome", "Root rot"],
  //     "Crop rotation, using disease-resistant cultivars, and regular monitoring can help prevent soybean diseases.",
  //     "Soybeans benefit from balanced fertilizers with an emphasis on phosphorus.",
  //     "Proper weed management is essential for soybean cultivation."
  //   ],
  //   [
  //     "Vitis vinifera",
  //     "Vitaceae",
  //     "Grapes (Vitis vinifera) are woody vines that produce clusters of small, round, juicy fruits. Grapes are highly valued for their use in winemaking and for fresh consumption. The vines are characterized by their coiling tendrils, large, green leaves, and clusters of grapes that come in various colors, including green, red, and purple. Grapes are enjoyed as table grapes, raisins, and used to produce a wide range of wines, each with its unique flavor and characteristics.",
  //     ["Powdery mildew", "Downy mildew", "Black rot"],
  //     "Pruning for good air circulation, using fungicides, and managing vine health can help prevent grape diseases.",
  //     "Grapes benefit from fertilizers with balanced nutrients.",
  //     "Proper trellising and support systems are essential for grapevine health."
  //   ],
  //   [
  //     "Citrus  sinensis",
  //     "Rutaceae",
  //     "The orange (Citrus  sinensis) is a citrus fruit cherished for its bright orange color and sweet-tart flavor. These round, segmented fruits are known for their juiciness and vitamin C content. Orange trees have glossy, evergreen leaves and fragrant blossoms. Oranges are a popular fruit for fresh consumption, juicing, and as a flavoring in a variety of food and beverage products. They are not only delicious but also a rich source of essential nutrients.",
  //     ["Citrus canker", "Greening disease", "Brown rot"],
  //     "Regular inspection, using disease-free nursery stock, and proper orchard management can help prevent orange diseases.",
  //     "Oranges benefit from balanced fertilizers with micronutrients.",
  //     "Pruning and shaping orange trees is important for fruit production."
  //   ],
  //   [
  //     "Fragaria  ananassa",
  //     "Rosaceae",
  //     "Strawberries (Fragaria  ananassa) are small, heart-shaped, red berries known for their succulent, sweet flavor. These fruits are often enjoyed fresh, in desserts, and as a garnish. Strawberry plants are low-growing with trifoliate leaves, and they produce white flowers that give way to the delectable red berries. Strawberries are celebrated for their intense fragrance and taste, making them a quintessential summer fruit.",
  //     ["Gray mold", "Powdery mildew", "Verticillium wilt"],
  //     "Planting disease-resistant cultivars, good spacing, and proper hygiene can help prevent strawberry diseases.",
  //     "Strawberries benefit from fertilizers with balanced nutrients.",
  //     "Mulching can help conserve soil moisture and prevent weed growth in strawberry beds."
  //   ],
  //   [
  //     "Psidium guajava",
  //     "Myrtaceae",
  //     "Guava (Psidium guajava) is a tropical fruit tree known for its sweet and fragrant round or oval fruits. The guava tree has simple, oblong leaves and distinctive, flaky bark. The fruit's flesh can be white, pink, or red, and it is appreciated for its unique flavor and nutritional benefits. Guavas are often eaten fresh, turned into juices, jams, or incorporated into desserts. These tropical delights are rich in vitamin C and dietary fiber.",
  //     ["Anthracnose", "Guava wilt", "Root rot"],
  //     "Proper pruning, disease-resistant varieties, and good orchard sanitation can help prevent guava diseases.",
  //     "Guava trees benefit from fertilizers with balanced nutrients.",
  //     "Pruning guava trees can improve fruit production and airflow."
  //   ],
  //   [
  //     "Punica granatum",
  //     "Lythraceae",
  //     "Pomegranate (Punica granatum) is a deciduous shrub or small tree recognized for its round, reddish fruit filled with jewel-like, crimson arils. The pomegranate plant boasts glossy, lance-shaped leaves and bright, showy blossoms. Pomegranates are celebrated for their sweet-tart taste and are consumed fresh, juiced, or sprinkled over salads. These fruits have a rich history and are often associated with symbolism and mythology.",
  //     ["Fungal fruit rot", "Bacterial blight", "Powdery mildew"],
  //     "Proper pruning, using disease-resistant varieties, and maintaining good soil health can help prevent pomegranate diseases.",
  //     "Pomegranates benefit from fertilizers with balanced nutrients.",
  //     "Pruning and shaping pomegranate trees can enhance fruit quality."
  //   ],
  //   [
  //     "Coriandrum sativum",
  //     "Apiaceae",
  //     "Coriander (Coriandrum sativum) is a fragrant herb known for its parsley-like leaves and small, round seeds. It is a versatile culinary ingredient, commonly used to season a wide range of dishes. Coriander leaves, also known as cilantro, have a fresh, citrusy flavor and are used in salads, salsas, and curries. Coriander seeds, on the other hand, have a warm and slightly citrusy aroma and are a common spice in various cuisines.",
  //     ["Powdery mildew", "Leaf spot", "Damping-off"],
  //     "Proper spacing, avoiding overwatering, and using disease-free seeds can help prevent coriander diseases.",
  //     "Coriander benefits from well-balanced, organic fertilizers.",
  //     "Harvesting coriander leaves regularly encourages fresh growth."
  //   ],
  //   [
  //     "Prunus avium",
  //     "Rosaceae",
  //     "Cherry (Prunus avium) is a fruit tree known for its small, round, and sweet-tasting cherries. Cherries come in various colors, including red, yellow, and black, and they are celebrated for their delightful flavor. Cherry trees have lush, green foliage and produce clusters of these delectable fruits. Cherries are enjoyed fresh, in pies, jams, and a variety of desserts. They are a popular choice for both snacking and culinary applications, and their sweet and tart taste makes them a favorite in many dishes and recipes.",
  //     ["Brown rot", "Leaf spot", "Powdery mildew"],
  //     "Pruning, disease-resistant varieties, and proper orchard management can help prevent cherry diseases.",
  //     "Cherry trees benefit from balanced fertilizers.",
  //     "Regular pruning of cherry trees supports fruit production."
  //   ],
  //   [
  //     "Citrus  limon",
  //     "Rutaceae",
  //     "Lemon (Citrus  limon) is a citrus fruit appreciated for its bright yellow color and tart flavor. Lemons are known for their versatility and are used in a wide range of culinary and beverage applications. Lemon trees have glossy, evergreen leaves and fragrant blossoms. Lemons are valued for their juice and zest, which add a tangy and refreshing taste to various dishes, from savory to sweet. They are also a popular ingredient in beverages, including lemonade and cocktails, and are often used as a garnish. Lemons are not only flavorful but also a rich source of vitamin C.",
  //     ["Citrus canker", "Greening disease", "Brown rot"],
  //     "Regular inspection, using disease-free nursery stock, and proper orchard management can help prevent lemon diseases.",
  //     "Lemons benefit from balanced fertilizers with micronutrients.",
  //     "Pruning and shaping lemon trees is important for fruit production."
  //   ]
  // ];
  Map<String, String> plant_species = {};
  Map<String, String> plant_family = {};
  Map<String, String> plant_description = {};
  // var plant_disease = {};
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
      "soyabeans": plants[5][0].toString(),
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
      "soyabeans": plants[5][1].toString(),
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
      "soyabeans": plants[5][2].toString(),
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
      "soyabeans": plants[5][4].toString(),
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
      "soyabeans": plants[5][5].toString(),
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
      "soyabeans": plants[5][6].toString(),
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
              SizedBox(
                height: 300,
                child: Stack(
                  children: [
                    const Positioned(
                      top: 2,
                      bottom: 12,
                      child: Image(
                        image: AssetImage(
                          "assets/icons/graph.png",
                        ),
                        width: 270,
                      ),
                    ),
                    const Positioned(
                      right: 159,
                      left: 0,
                      child: Image(
                        image: AssetImage("assets/icons/pot.png"),
                        width: 70,
                        height: 250,
                      ),
                    ),
                    Positioned(
                        top: 60,
                        right: 50,
                        child: items_name("Name", widget.item.tr)),
                    Positioned(
                        top: 130,
                        right: 50,
                        child: items_name("Species", species)),
                    Positioned(
                        bottom: 50,
                        right: 50,
                        child: items_name("Family", family)),
                    Positioned(
                      top: 2,
                      left: 10,
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.chevron_left_sharp,
                            size: 40,
                          )),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: InformationItem(
                        title: 'Description',
                        bgColor: Colors.orange.shade100,
                        iconColor: Colors.orange,
                        icon: Icons.description,
                      ),
                    ),
                    test(description),
                    Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: InformationItem(
                        title: 'Disease',
                        bgColor: Colors.blue.shade100,
                        iconColor: Colors.blue,
                        icon: Icons.bug_report_rounded,
                      ),
                    ),
                    for (int i = 0; i < 3; i++) bulletin(disease_items[i]),
                    Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: InformationItem(
                        title: 'Disease prevention',
                        bgColor: Colors.deepPurple.shade100,
                        iconColor: Colors.deepPurple,
                        icon: Icons.shield_moon_outlined,
                      ),
                    ),
                    test(prevention),
                    Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: InformationItem(
                        title: 'Fertlizer Ingredients',
                        bgColor: Colors.pink.shade100,
                        iconColor: Colors.pink,
                        icon: Icons.import_contacts_outlined,
                      ),
                    ),
                    test(fertilizer),
                    Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: InformationItem(
                        title: 'Precautions',
                        bgColor: Colors.brown.shade100,
                        iconColor: Colors.brown,
                        icon: Icons.add_task_outlined,
                      ),
                    ),
                    test(precausion),
                    Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: InformationItem(
                        title: 'Fertilizer Calculator',
                        bgColor: Colors.green.shade100,
                        iconColor: Colors.green,
                        icon: Icons.free_cancellation_outlined,
                      ),
                    ),
                    OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            shape: const StadiumBorder(),
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
                        child: Text("${widget.item.tr} Precise calculator"))
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
          width: 106,
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
