// ignore_for_file: use_build_context_synchronously

import 'package:farmshield/models/weather_model.dart';
import 'package:farmshield/pages/information.dart';
import 'package:farmshield/services/weather_service.dart';
import 'package:farmshield/utils/color_util.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
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
    'soyabeans',
    'grape',
    'orange',
    'strawberry',
    // 'maize',
    'guava',
    'pomegranate',
    'coriander',
    // 'pudina',
    'guava',
    'cherry',
    'lemon'
  ];
  String name = "Harish";

  final user = FirebaseAuth.instance.currentUser!;
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

  String getWeatherAnimation(String? mainCondition) {
    if (mainCondition == null) return "assets/sunny.json";

    switch (mainCondition.toLowerCase()) {
      case 'clouds':
      case 'mist':
      case 'smoke':
      case 'haze':
      case 'dust':
      case 'fog':
        return "assets/cloudy.json";

      case 'drizzle':
        return "assets/sunny_rainy.json";
      case 'rain':
      case 'shower rain':
        return "assets/rain.json";
      case 'thunderstorm':
        return "assets/thunder.json";
      case 'clear':
        return "assets/sunny.json";
      default:
        return "assets/sunny.json";
    }
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: height * 0.03, top: height * 0.03),
              child: CircleAvatar(
                radius: height * 0.04,
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(right: height * 0.04, top: height * 0.04),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    size: height * 0.03,
                  )),
            ),
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
          padding: const EdgeInsets.all(20.0),
          child: Container(
            height: height * 0.20,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16), color: Colors.white),
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

            // color: Colors.amber,
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
                                  item: item ?? "apple",
                                )));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      // height: height * 0.14,
                      // width: width * 0.9,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          // borderRadius: BorderRadius.circular(1),
                          color: Colors.white),
                      child: SizedBox(
                        height: 10,
                        width: 60,
                        child: Image.asset('assets/icons/${plants[index]}.png',
                            fit: BoxFit.scaleDown),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        Text(user.email!),
        ElevatedButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
            },
            child: const Text('Sign Out'))
      ],
    );
  }
}
