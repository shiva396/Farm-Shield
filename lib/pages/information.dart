import 'package:flutter/material.dart';

class InformationPage extends StatefulWidget {
  final String item;
  const InformationPage({super.key, required this.item});

  @override
  State<InformationPage> createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
  var information = [];
  @override
  Widget build(BuildContext context) {
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
                    const Text(
                        "              Apples are round, edible fruits that grow on apple trees. They are typically red, green, or yellow in color and have a sweet or tart taste. Apples are a good source of fiber, vitamin C, and potassium. They can be eaten fresh, cooked, or used to make a variety of products, such as apple cider, juice, and pies. Apples are one of the most popular fruits in the world and are grown in many different climates.",
                        style: TextStyle(
                            letterSpacing: 1,
                            color: Color.fromARGB(255, 75, 74, 74),
                            wordSpacing: 3,
                            fontWeight: FontWeight.w500,
                            fontSize: 16)),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Expanded(
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
                                Text("Description"),
                                Text(
                                    "Plant resistant varieties of apples,space trees properly to allow for good air circulation, prune trees regularly to remove diseased branches, and apply fungicides as needed."),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    test('image', 'Diseases:',
                        'Apple scab, powdery mildew, fire blight, canker, sooty blotch'),
                    test('image', 'Disease prevention:',
                        'Plant resistant varieties of apples, space trees properly to allow for good air circulation, prune trees regularly to remove diseased branches, and apply fungicides as needed.'),
                    test('Fertilizer ingredients', 'Fertilizer ingredients',
                        'Apples need a balanced fertilizer that contains nitrogen, phosphorus, and potassium.'),
                    test('image', 'Precaution:',
                        'When applying pesticides or fertilizers, be sure to follow the directions on the label. Wear protective clothing, such as gloves and goggles, when applying pesticides. Do not apply pesticides or fertilizers near bodies of water.')
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
                Text(title),
                Text(text),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
