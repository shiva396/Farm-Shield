// ignore_for_file: non_constant_identifier_names, unused_local_variable

import 'package:flutter/material.dart';

class InformationPage extends StatefulWidget {
  final String item;
  const InformationPage({super.key, required this.item});

  @override
  State<InformationPage> createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
  var plants = [
    [
      "Malus domestica",
      "Rosaceae",
      "Apple (Malus domestica) is a widely cultivated fruit tree known for its crisp and sweet fruits. Apples are available in various colors and varieties, with some of the most popular including Red Delicious, Granny Smith, and Gala. Apple trees are characterized by their lush, green leaves and beautiful blossoms. Apples are appreciated for their versatility and are used in a wide range of culinary applications. They can be eaten fresh, made into pies, applesauce, or used as a key ingredient in various desserts and savory dishes. Apples are not only a favorite snack but also a staple fruit in many kitchens, enjoyed for their delicious taste and nutritional value.",
      ["apple scab", "fire blight", "cedar apple rust"],
      "Pruning, disease-resistant varieties, and proper orchard management can help prevent apple diseases.",
      "Apples benefit from fertilizers with balanced nutrients.",
      "Regular pruning and maintenance of apple trees are essential for healthy growth."
    ],
    [
      "Mangifera indica",
      "Anacardiaceae",
      "Mango (Mangifera indica) is a tropical evergreen tree renowned for its luscious, sweet, and aromatic fruits. The mango tree features large, glossy, dark green leaves, and the fruit varies in size, shape, and color, depending on the cultivar. Mangoes are cherished for their juicy, golden-orange flesh, which can be eaten fresh, blended into smoothies, or used in a wide array of culinary delights. This tropical delight is not only a favorite fruit but also holds cultural significance in many regions, often being referred to as the King of Fruits.",
      ["anthracnose", "powdery mildew", "black spot"],
      "Proper pruning, regular spraying with fungicides, and maintaining good hygiene can help prevent mango diseases.",
      "Mango trees benefit from balanced fertilizers with elements like nitrogen, phosphorus, and potassium.",
      "Be cautious when handling the sap and leaves of mango trees, as they can cause skin irritations in some individuals."
    ],
    [
      "Solanum tuberosum",
      "Solanaceae",
      "The potato (Solanum tuberosum) is a versatile, underground tuberous crop that forms the basis of countless culinary dishes worldwide. Potatoes come in various shapes, sizes, and colors, with white, red, and yellow being the most common. The plant boasts lush, green foliage and produces tubers underground. Potatoes are a dietary staple and can be prepared in various ways, from crispy fries to creamy mashed potatoes, making them a beloved and versatile ingredient in many cuisines.",
      ["late blight", "early blight", "potato scab"],
      "Crop rotation, selecting disease-resistant varieties, and proper storage can help prevent potato diseases.",
      "Potatoes benefit from fertilizers with higher levels of phosphorus and potassium.",
      "Avoid consuming green or sprouted potatoes, as they can contain toxic compounds."
    ],
    [
      "Solanum lycopersicum",
      "Solanaceae",
      "The tomato (Solanum lycopersicum) is a vibrant red or yellow fruit often mistaken for a vegetable due to its culinary uses. These juicy, tangy fruits are the quintessential ingredient in salads, sauces, and countless savory dishes. The tomato plant is characterized by its lush, green leaves and a tendency to sprawl as it produces clusters of round, plump fruit. Tomatoes are celebrated for their rich flavor and versatility in culinary applications, making them an essential ingredient in kitchens worldwide.",
      ["tomato blight", "early blight", "powdery mildew"],
      "Proper spacing, staking, and regular care can help prevent tomato diseases.",
      "Tomatoes benefit from balanced fertilizers with an emphasis on nitrogen.",
      "Overwatering and poor air circulation can contribute to disease development in tomato plants."
    ],
    [
      "Zea mays",
      "Poaceae",
      "Corn, also known as maize (Zea mays), is a vital cereal grain cultivated for its starchy kernels. This warm-season crop features tall, grassy stalks with slender leaves and produces cobs of plump, sweet, and golden-yellow kernels. Corn has various culinary uses, from fresh corn on the cob to cornmeal and corn syrup, and it is a staple in many traditional dishes, including tortillas, cornbread, and polenta. It is not only a significant food source but also a crucial ingredient in the production of livestock feed, corn oil, and ethanol.",
      ["rust", "smut", "northern corn leaf blight"],
      "Crop rotation, using disease-resistant varieties, and maintaining soil health can help prevent corn diseases.",
      "Corn benefits from fertilizers high in nitrogen and phosphorus.",
      "Plant corn in well-drained soil and provide proper spacing to reduce the risk of disease."
    ],
    [
      "Glycine max",
      "Fabaceae",
      "Soybean (Glycine max) is a leguminous crop known for its protein-rich seeds. These small, oval-shaped seeds are commonly used in various food products, including tofu, soy milk, and edamame. The soybean plant is recognizable by its trifoliate leaves and a growth pattern that includes bushy foliage and upright stems. It is an essential source of plant-based protein and is often cultivated for its nutritious properties, making it a staple in vegetarian and vegan diets.",
      ["soybean rust", "sudden death syndrome", "root rot"],
      "Crop rotation, using disease-resistant cultivars, and regular monitoring can help prevent soybean diseases.",
      "Soybeans benefit from balanced fertilizers with an emphasis on phosphorus.",
      "Proper weed management is essential for soybean cultivation."
    ],
    [
      "Vitis vinifera",
      "Vitaceae",
      "Grapes (Vitis vinifera) are woody vines that produce clusters of small, round, juicy fruits. Grapes are highly valued for their use in winemaking and for fresh consumption. The vines are characterized by their coiling tendrils, large, green leaves, and clusters of grapes that come in various colors, including green, red, and purple. Grapes are enjoyed as table grapes, raisins, and used to produce a wide range of wines, each with its unique flavor and characteristics.",
      ["powdery mildew", "downy mildew", "black rot"],
      "Pruning for good air circulation, using fungicides, and managing vine health can help prevent grape diseases.",
      "Grapes benefit from fertilizers with balanced nutrients.",
      "Proper trellising and support systems are essential for grapevine health."
    ],
    [
      "Citrus  sinensis",
      "Rutaceae",
      "The orange (Citrus  sinensis) is a citrus fruit cherished for its bright orange color and sweet-tart flavor. These round, segmented fruits are known for their juiciness and vitamin C content. Orange trees have glossy, evergreen leaves and fragrant blossoms. Oranges are a popular fruit for fresh consumption, juicing, and as a flavoring in a variety of food and beverage products. They are not only delicious but also a rich source of essential nutrients.",
      ["citrus canker", "greening disease", "brown rot"],
      "Regular inspection, using disease-free nursery stock, and proper orchard management can help prevent orange diseases.",
      "Oranges benefit from balanced fertilizers with micronutrients.",
      "Pruning and shaping orange trees is important for fruit production."
    ],
    [
      "Fragaria  ananassa",
      "Rosaceae",
      "Strawberries (Fragaria  ananassa) are small, heart-shaped, red berries known for their succulent, sweet flavor. These fruits are often enjoyed fresh, in desserts, and as a garnish. Strawberry plants are low-growing with trifoliate leaves, and they produce white flowers that give way to the delectable red berries. Strawberries are celebrated for their intense fragrance and taste, making them a quintessential summer fruit.",
      ["gray mold", "powdery mildew", "verticillium wilt"],
      "Planting disease-resistant cultivars, good spacing, and proper hygiene can help prevent strawberry diseases.",
      "Strawberries benefit from fertilizers with balanced nutrients.",
      "Mulching can help conserve soil moisture and prevent weed growth in strawberry beds."
    ],
    [
      "Psidium guajava",
      "Myrtaceae",
      "Guava (Psidium guajava) is a tropical fruit tree known for its sweet and fragrant round or oval fruits. The guava tree has simple, oblong leaves and distinctive, flaky bark. The fruit's flesh can be white, pink, or red, and it is appreciated for its unique flavor and nutritional benefits. Guavas are often eaten fresh, turned into juices, jams, or incorporated into desserts. These tropical delights are rich in vitamin C and dietary fiber.",
      ["anthracnose", "guava wilt", "root rot"],
      "Proper pruning, disease-resistant varieties, and good orchard sanitation can help prevent guava diseases.",
      "Guava trees benefit from fertilizers with balanced nutrients.",
      "Pruning guava trees can improve fruit production and airflow."
    ],
    [
      "Punica granatum",
      "Lythraceae",
      "Pomegranate (Punica granatum) is a deciduous shrub or small tree recognized for its round, reddish fruit filled with jewel-like, crimson arils. The pomegranate plant boasts glossy, lance-shaped leaves and bright, showy blossoms. Pomegranates are celebrated for their sweet-tart taste and are consumed fresh, juiced, or sprinkled over salads. These fruits have a rich history and are often associated with symbolism and mythology.",
      ["fungal fruit rot", "bacterial blight", "powdery mildew"],
      "Proper pruning, using disease-resistant varieties, and maintaining good soil health can help prevent pomegranate diseases.",
      "Pomegranates benefit from fertilizers with balanced nutrients.",
      "Pruning and shaping pomegranate trees can enhance fruit quality."
    ],
    [
      "Coriandrum sativum",
      "Apiaceae",
      "Coriander (Coriandrum sativum) is a fragrant herb known for its parsley-like leaves and small, round seeds. It is a versatile culinary ingredient, commonly used to season a wide range of dishes. Coriander leaves, also known as cilantro, have a fresh, citrusy flavor and are used in salads, salsas, and curries. Coriander seeds, on the other hand, have a warm and slightly citrusy aroma and are a common spice in various cuisines.",
      ["powdery mildew", "leaf spot", "damping-off"],
      "Proper spacing, avoiding overwatering, and using disease-free seeds can help prevent coriander diseases.",
      "Coriander benefits from well-balanced, organic fertilizers.",
      "Harvesting coriander leaves regularly encourages fresh growth."
    ],
    [
      "Prunus avium",
      "Rosaceae",
      "Cherry (Prunus avium) is a fruit tree known for its small, round, and sweet-tasting cherries. Cherries come in various colors, including red, yellow, and black, and they are celebrated for their delightful flavor. Cherry trees have lush, green foliage and produce clusters of these delectable fruits. Cherries are enjoyed fresh, in pies, jams, and a variety of desserts. They are a popular choice for both snacking and culinary applications, and their sweet and tart taste makes them a favorite in many dishes and recipes.",
      ["brown rot", "leaf spot", "powdery mildew"],
      "Pruning, disease-resistant varieties, and proper orchard management can help prevent cherry diseases.",
      "Cherry trees benefit from balanced fertilizers.",
      "Regular pruning of cherry trees supports fruit production."
    ],
    [
      "Citrus  limon",
      "Rutaceae",
      "Lemon (Citrus  limon) is a citrus fruit appreciated for its bright yellow color and tart flavor. Lemons are known for their versatility and are used in a wide range of culinary and beverage applications. Lemon trees have glossy, evergreen leaves and fragrant blossoms. Lemons are valued for their juice and zest, which add a tangy and refreshing taste to various dishes, from savory to sweet. They are also a popular ingredient in beverages, including lemonade and cocktails, and are often used as a garnish. Lemons are not only flavorful but also a rich source of vitamin C.",
      ["citrus canker", "greening disease", "brown rot"],
      "Regular inspection, using disease-free nursery stock, and proper orchard management can help prevent lemon diseases.",
      "Lemons benefit from balanced fertilizers with micronutrients.",
      "Pruning and shaping lemon trees is important for fruit production."
    ]
  ];
  Map<String, String> plant_species = {};
  Map<String, String> plant_family = {};
  Map<String, String> plant_description = {};
  Map<List, String> plant_disease = {};
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
    // plant_disease = {
    //   "apple": plants[0][3].toString(),
    //   "mango": plants[1][3].toString(),
    //   "potato": plants[2][3].toString(),
    //   "tomato": plants[3][3].toString(),
    //   "corn": plants[4][3].toString(),
    //   "soyabeans": plants[5][3].toString(),
    //   "grape": plants[6][3].toString(),
    //   "orange": plants[7][3].toString(),
    //   "strawberry": plants[8][3].toString(),
    //   "guava": plants[9][3].toString(),
    //   "pomegranate": plants[10][3].toString(),
    //   "coriander": plants[11][3].toString(),
    //   "cherry": plants[12][3].toString(),
    //   "lemon": plants[13][3].toString(),
    // };
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

  @override
  Widget build(BuildContext context) {
    String species = plant_species[widget.item] ?? "";
    String family = plant_family[widget.item] ?? "";
    String description = plant_description[widget.item] ?? "";
    String disease = plant_disease[widget.item] ?? "";
    String prevention = plant_disease_prevention[widget.item] ?? "";
    String fertilizer = plant_fertilizer[widget.item] ?? "";
    String precausion = plant_precausion[widget.item] ?? "";
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.chevron_left_sharp,
                    size: 40,
                  )),
              Container(
                height: 300,
                color: Colors.red,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(widget.item,
                        style: const TextStyle(
                            letterSpacing: 1,
                            color: Color.fromARGB(255, 75, 74, 74),
                            wordSpacing: 3,
                            fontWeight: FontWeight.w500,
                            fontSize: 16)),
                    test('image', 'Description', description),
                    // test('image', 'Diseases:', disease),
                    test('image', 'Disease prevention:', prevention),
                    test('image', 'Fertilizer ingredients', fertilizer),
                    test('image', 'Precaution:', precausion)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget test(String image, String title, String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          const Expanded(
            flex: 1,
            child: CircleAvatar(
              radius: 30,
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    letterSpacing: 1,
                    wordSpacing: 3,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 30, 238, 7),
                  ),
                ),
                Text(text),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
