// ignore_for_file: use_build_context_synchronously

import 'package:farmshield/calc/fertilizer_calculator.dart';
import 'package:farmshield/models/weather_model.dart';
import 'package:farmshield/pages/information.dart';
import 'package:farmshield/services/searching.dart';
import 'package:farmshield/services/weather_service.dart';
import 'package:farmshield/utils/color_util.dart';
import 'package:farmshield/utils/custom_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List plants = [
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
  String name = "User";

//api key
  final _weatherService = WeatherService('f1fd87d085c9d19992fb6e5f415dedf0');

  //fetching weather
  Weather? _weather;
  _fetchWeather() async {
    String cityName = await _weatherService.getCurrentCity();
    try {
      final weather = await _weatherService.getWeather(cityName);
      setState(() {
        _weather = weather;
      });
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }

  @override
  void initState() {
    super.initState();
    _fetchWeather();
  }

  @override
  void dispose() {
    super.dispose();
  }

  String getWeatherAnimation(String? mainCondition) {
    if (mainCondition == null) return "assets/json/sunny.json";

    switch (mainCondition.toLowerCase()) {
      case 'clouds':
      case 'mist':
      case 'smoke':
      case 'haze':
      case 'dust':
      case 'fog':
        return "assets/json/cloudy.json";

      case 'drizzle':
        return "assets/json/sunny_rainy.json";
      case 'rain':
      case 'shower rain':
        return "assets/json/rain.json";
      case 'thunderstorm':
        return "assets/json/thunder.json";
      case 'clear':
        return "assets/json/sunny.json";
      default:
        return "assets/json/sunny.json";
    }
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
<<<<<<< HEAD
                Text(
                  "${"hello".tr}  ${name} 🌿",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: width * 0.06),
                )
=======
                Padding(
                  padding:
                      EdgeInsets.only(left: height * 0.03, top: height * 0.03),
                  child: CircleAvatar(
                    radius: height * 0.04,
                    backgroundImage:
                        const AssetImage("assets/icons/avatar.png"),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(right: height * 0.04, top: height * 0.04),
                  child: IconButton(
                      onPressed: () {
                        showSearch(
                            context: context,
                            // delegate to customize the search bar
                            delegate: CustomSearchDelegate());
                      },
                      icon: Icon(
                        Icons.search,
                        size: height * 0.03,
                      )),
                ),
>>>>>>> 9218bde1076d968904d28104e5026524a4d2f753
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: height * 0.03, top: height * 0.03),
              child: Row(
                children: [
                  Text(
                    "Hello, $name 🌿",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: width * 0.06),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(height * 0.022),
              child: Container(
                height: height * 0.20,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: height * 0.20,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 30, left: 40),
                            child: Text(
                              _weather?.cityName ?? "loading city..",
                              textAlign: TextAlign.left,
                              style: const TextStyle(
                                  color: Colors.green,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 10),
                            child: Text(
                              "${_weather?.temperature.round()}°C",
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 10),
                            child: Text(
                              DateFormat.yMMMEd().format(DateTime.now()),
                              style: const TextStyle(
                                  fontSize: 14,
                                  color: Color.fromARGB(255, 89, 87, 87)),
                            ),
                          )
                        ],
                      ),
                    ),
                    ClipRect(
                      child: Lottie.asset(
                          getWeatherAnimation(_weather?.mainCondition),
                          height: height * 0.20),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: height * 0.14,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: plants.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    String? item = plants[index];
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => InformationPage(
                                      item_index: index,
                                      item: item ?? "apple",
                                    )));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: SizedBox(
                            height: 10,
                            width: 60,
                            child: Image.asset(
                                'assets/icons/${plants[index]}.png',
                                fit: BoxFit.scaleDown),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MyCustomForm(type: "any")));
              },
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    height: 140,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(17)),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image(
                          image: AssetImage("assets/icons/fertilizer.png"),
                          height: 60,
                        ),
                        Text(
                          "Fertilizer Calculator",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
<<<<<<< HEAD
                  ClipRect(
                    child: Lottie.asset(
                        getWeatherAnimation(_weather?.mainCondition),
                        height: height * 0.20),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: height * 0.14,
              width: double.infinity,
              child: ListView.builder(
                itemCount: plants.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  String? item = plants[index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => InformationPage(
                                    item_index: index,
                                    item: item ?? "apple",
                                  )));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                        child: SizedBox(
                          height: 10,
                          width: 60,
                          child: Image.asset(
                              'assets/icons/${plants[index]}.png',
                              fit: BoxFit.scaleDown),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MyCustomForm(type: "any")));
            },
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  height: 140,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(17)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Image(
                        image: AssetImage("assets/icons/fertilizer.png"),
                        height: 60,
                      ),
                      Text(
                        "fertilizercalc".tr,
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(100.0),
            child: CustomButton(
                onPressed: () async {
                  await FirebaseAuth.instance.signOut().then((value) =>
                      Navigator.of(context, rootNavigator: true).pop(context));
                },
                text: 'signout'.tr),
          )
        ],
=======
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(100.0),
              child: CustomButton(
                  onPressed: () async {
                    await FirebaseAuth.instance.signOut().then((value) =>
                        Navigator.of(context, rootNavigator: true)
                            .pop(context));
                  },
                  text: 'Sign Out'),
            )
          ],
        ),
>>>>>>> 9218bde1076d968904d28104e5026524a4d2f753
      ),
    );
  }
}
